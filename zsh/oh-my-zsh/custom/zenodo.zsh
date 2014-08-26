# Author: Joao Goncalves
# Path: ~/.oh-my-zsh/custom/

# Start a developing session on tmux with tmuxinator
alias dev-zenodo='mux s zenodo'

alias test-zenodo='nosetests -s  zenodo/modules/preservationmeter/testsuite/test_api.py --with-coverage --cover-package=zenodo.modules.preservationmeter --rednose --cover-html --cover-branches'

