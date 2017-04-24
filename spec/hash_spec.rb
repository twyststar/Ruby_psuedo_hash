require('rspec')
require('hash')

describe(MyHash) do
  describe('#keys') do
    it('Returns array of keys') do
      test_myhash = MyHash.new
      test_myhash.my_store('key1','val1')
      test_myhash.my_store('key2','val2')
      expect(test_myhash.keys()).to(eq(['key1','key2']))
    end
  end

  describe('#values') do
    it('Returns array of values') do
      test_myhash = MyHash.new
      test_myhash.my_store('key1','val1')
      test_myhash.my_store('key2','val2')
      expect(test_myhash.values()).to(eq(['val1','val2']))
    end
  end

  describe('#my_store') do
    it('stores key value parameters, returns updated value array') do
      test_myhash = MyHash.new
      expect(test_myhash.my_store('key1','val1')).to(eq([['key1','val1']]))
    end
  end

  describe('#my_fetch') do
    it('retrieves value for key parameter') do
      test_myhash = MyHash.new
      test_myhash.my_store('key1','val1')
      test_myhash.my_store('key2','val2')
      expect(test_myhash.my_fetch('key1')).to(eq('val1'))
    end
  end

  describe('#has_key?') do
    it('searches keys for parameter and returns boolean') do
      test_myhash = MyHash.new
      test_myhash.my_store('key1','val1')
      test_myhash.my_store('key2','val2')
      expect(test_myhash.has_key?('key1')).to(eq(true))
    end
  end

  describe('#has_value?') do
    it('searches values for parameter and returns boolean') do
      test_myhash = MyHash.new
      test_myhash.my_store('key1','val1')
      test_myhash.my_store('key2','val2')
      expect(test_myhash.has_value?('val2')).to(eq(true))
    end
  end

  describe('#length') do
    it('returns # of key/value entries') do
      test_myhash = MyHash.new
      test_myhash.my_store('key1','val1')
      test_myhash.my_store('key2','val2')
      expect(test_myhash.length()).to(eq(2))
    end
  end

  describe('#merge') do
    it('combines 2 MyHash objects into one, returns combined value list') do
      test_myhash = MyHash.new
      test_myhash.my_store('key1','val1')
      test_myhash2 = MyHash.new
      test_myhash2.my_store('key1','val1')
      expect(test_myhash.merge(test_myhash2)).to(eq([['key1','val1'],['key1','val1']]))
    end
  end
end
