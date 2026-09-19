import std.stdio;
import std.file;
void main(string[] args) {
    string source = readText(args.length > 1 ? args[1] : "main.hqx");
    int accumulator = 0;

    for (size_t i = 0; i < source.length; i++) {
    char c = source[i];
        if (c == 'H') writeln("Hello, world!");
        else if (c == 'Q') writeln(source);
        else if (c == '9') {
            for (int b = 99; b > 0; b--) {
                writefln("%d bottles of beer on the wall, %d bottles of beer.", b, b);
                writefln("Take one down and pass it around, %d bottles of beer on the wall.", b - 1);
            }
        }
        else if (c == '+') accumulator ++;
        else if (c == '-') accumulator --;
        else if (c == '.') writef("%c", cast(char)accumulator);
        else if (c == ',') {
            write("Enter something : ");
            accumulator = cast(int) readln()[0];
        }
        else if (c == '0') accumulator = 0;
        else if (c == '2') accumulator += 2;
        else if (c == 'R') writef("%d", accumulator);
        else if (c == 'I') write(readText("hq9.d"));
        else if (c == '~') {
            if (accumulator == 0) writeln("0");
            else { while (true) writeln("1"); }
        }
        else if (c == '?') {
            if (accumulator == 0) i++;
        }
        else if (c == 'N') writeln();
        else if (c == '[' && accumulator == 0) {
            int depth = 1;
            while (depth > 0) { i++; if (source[i] == '[') depth++; if (source[i] == ']') depth--; }
            }
        else if (c == ']' && accumulator != 0) {
            int depth = 1;
            while (depth > 0) { i--; if (source[i] == ']') depth++; if (source[i] == '[') depth--; }
        }
    }
}    
