# frozen_string_literal: true
# typed: strict

class Test::Project::MainLib::LibTest
  # Tests can access their package's code
  Project::MainLib::Lib.new
  # Tests can access `import`
  Project::Util::MyUtil.new
  # Tests can access `test_import` names
  Project::TestOnly::SomeHelper.new # access via test_import

  Test::Project::Util::UtilHelper # allowd by import

  Test::Project::Util::Unexported
# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ error: Unable to resolve constant `Unexported`
end
