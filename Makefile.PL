
use strict;
use warnings;

BEGIN { require 5.010; }

use ExtUtils::MakeMaker 6.31;



my %WriteMakefileArgs = (
  'ABSTRACT' => 'individuality via conformity',
  'AUTHOR' => 'John SJ Anderson <genehack@genehack.org>',
  'BUILD_REQUIRES' => {
    'File::Find' => '0',
    'File::Temp' => '0',
    'Test::More' => '0'
  },
  'CONFIGURE_REQUIRES' => {
    'ExtUtils::MakeMaker' => '6.31'
  },
  'DISTNAME' => 'Task-BeLike-GENEHACK',
  'EXE_FILES' => [],
  'LICENSE' => 'perl',
  'NAME' => 'Task::BeLike::GENEHACK',
  'PREREQ_PM' => {
    'App::Ack' => '0',
    'App::BashComplete' => '0',
    'App::Cmd' => '0',
    'App::MiseEnPlace' => '0',
    'App::Nopaste' => '0',
    'App::cpanminus' => '0',
    'App::cpanoutdated' => '0',
    'App::perlbrew' => '0',
    'CPAN::Mini' => '0',
    'DBD::SQLite' => '0',
    'Data::Dump::Streamer' => '0',
    'DateTime' => '0',
    'Devel::Cover' => '0',
    'Devel::REPL' => '0',
    'Dist::Zilla::App::Command::cover' => '0',
    'Dist::Zilla::PluginBundle::GENEHACK' => '0',
    'File::Slurp' => '0',
    'List::MoreUtils' => '0',
    'Modern::Perl' => '0',
    'Module::CoreList' => '0',
    'Module::Install' => '0',
    'Module::Which' => '0',
    'MooseX::App::Cmd' => '0',
    'MooseX::Declare' => '0',
    'MooseX::amine' => '0',
    'Perl::Tidy' => '0',
    'Task::Catalyst' => '0',
    'Task::Kensho' => '0',
    'Task::Kensho::CLI' => '0',
    'Task::Kensho::Config' => '0',
    'Task::Kensho::Dates' => '0',
    'Task::Kensho::Hackery' => '0',
    'Task::Kensho::ModuleDev' => '0',
    'Task::Kensho::WebDev' => '0',
    'Task::Kensho::XML' => '0',
    'Task::KiokuDB' => '0',
    'Test::Class' => '0',
    'Test::Exception' => '0',
    'Test::MockObject::Extends' => '0',
    'Test::Most' => '0',
    'Test::Pod' => '0',
    'Test::Pod::Coverage' => '0',
    'Try::Tiny' => '0',
    'XML::LibXML' => '0',
    'XML::Simple' => '0',
    'XML::Writer' => '0',
    'YAML' => '0',
    'autodie' => '0',
    'local::lib' => '0',
    'namespace::autospace' => '0'
  },
  'VERSION' => '0.1',
  'test' => {
    'TESTS' => 't/*.t'
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



