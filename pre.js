var Module = {};
Module.preRun = function() {
  FS.mkdir('/root');
  FS.mount(NODEFS, { root: '/' }, '/root');
  FS.chdir('root/' + process.cwd());
}
