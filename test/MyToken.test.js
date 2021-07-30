const MyToken = artifacts.require('MyToken');

require('chai').should();

contract('MyToken', accounts => {
    const _name = 'My Token';
    const _symbol = 'MTK';
    
    beforeEach( async function () {
        this.token = await MyToken.new(_name, _symbol);
    });

    describe('token attributes', async function() {
        it('has the correct name', async function () {
            const name = await this.token.name();
            name.should.equal(_name);
        });

        it('has the correct symbol', async function () {
            const symbol = await this.token.symbol();
            symbol.should.equal(_symbol);
        });
    })
})