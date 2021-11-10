Domains
 file = input_file; output_file
 numbers = real
 list = real*

Predicates
  read_numbers(file, list, list)
  _sum(list, numbers)

Clauses
  read_numbers(File, Buffer, Buffer) :- eof(File), !.
  read_numbers(File, Buffer, List):- readreal(Number), !,
	read_numbers(File, [Number|Buffer], List).
  _sum([],0).
  _sum([Head|Tail],S):- _sum(Tail, _S), S=_S+Head*Head.

Goal
  clearwindow,
  makewindow(1, 1, 5, "main window", 8, 10, 15, 60),
  write("enter file name: "), readln(FileName),
  openread(input_file, FileName), !, readdevice(input_file),
  read_numbers(input_file , [], List),
  _sum(List, Res), nl,
  write("result: ", Res),
  closefile(input_file ),
  openwrite(output_file, "result.txt"), writedevice(output_file),
  write(Res), closefile(output_file).
