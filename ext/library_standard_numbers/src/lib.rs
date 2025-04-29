use magnus::{function, prelude::*, Error, Ruby};
use library_stdnums::lccn::LCCN;
use library_stdnums::traits::Valid;

fn lccn_validate(identifier: String) -> bool {
    LCCN::new(identifier).valid()
}

#[magnus::init]
fn init(ruby: &Ruby) -> Result<(), Error> {
    let module = ruby.define_module("LibraryStandardNumbers")?;
    let lccn_module = module.define_module("LCCN")?;
    lccn_module.define_singleton_method("valid?", function!(lccn_validate, 1))?;
    Ok(())
}
