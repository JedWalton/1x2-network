package com.x2.interview;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ApiController {

    @GetMapping("/gopher")
    public String gopher() {
        return "   ,_---~~~~~----._\n" +
                " _,,_,*^____      _____``*g*\\\"*,\n" +
                " / __/ /'     ^.  /      \\ ^@q   f\n" +
                "[  @f | @))    |  | @))   l  0 _/\n" +
                " \\`/   \\~____ / __ \\_____/    \\\n" +
                "  |           _l__l_           I\n" +
                "  }          [______]           I\n" +
                "  ]            | | |            |\n" +
                "  ]             ~ ~             |\n" +
                "  /                             |\n" +
                " /                               |\n" +
                "|                                 |\n\n" +
                "\n";
    }
}
