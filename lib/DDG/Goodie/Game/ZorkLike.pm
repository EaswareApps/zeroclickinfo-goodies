package DDG::Goodie::Game::ZorkLike;

use DDG::Goodie;

zci answer_type => "game_zork_like";
zci is_cached   => 1;

# Metadata.  See https://duck.co/duckduckhack/metadata for help in filling out this section.
name "Game ZorkLike";
description "Succinct explanation of what this instant answer does";
primary_example_queries "first example query", "second example query";
secondary_example_queries "optional -- demonstrate any additional triggers";
code_url "https://github.com/duckduckgo/zeroclickinfo-goodies/blob/master/lib/DDG/Goodie/Game/ZorkLike.pm";
attribution github => ["GitHubAccount", "Friendly Name"],
            twitter => "twitterhandle";

triggers startend => "zorklike";

handle remainder => sub {
    return structured_answer => {
    	id => 'game_zork_like',
		name => 'Zork Like',
		data => {
            title => "Welcome to the game!",
            subtitle => "Subtitle here",
        },
		meta => {
            sourceName => "Name",
            sourceUrl => "website.com"
        },
		templates => {
            group => 'text',
            item => 0,
            options => {
                content => 'DDH.game_zork_like.content',
                moreAt => 1
            }
		}
    };
};

1;
