local config = {
    cmd = { '/Users/jannekeipert/language-servers/JDT Language Server 1.39.0 202408291433/bin/jdtls' },
    root_dir = vim.fs.dirname(vim.fs.find({ 'gradlew', '.git', 'mvnw' }, { upward = true })[1]),
}

require('jdtls').start_or_attach(config)

