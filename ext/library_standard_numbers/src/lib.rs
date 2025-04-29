use magnus::{function, prelude::*, Error, RModule, Ruby};
use library_stdnums::lccn::LCCN;
use library_stdnums::isbn::ISBN;
use library_stdnums::traits::{Normalize, Valid};

fn lccn_validate(identifier: String) -> bool {
    LCCN::new(identifier).valid()
}

fn lccn_normalize(identifier: String) -> Option<String> {
    LCCN::new(identifier).normalize()
}

fn isbn_validate(identifier: String) -> bool {
    ISBN::new(identifier).valid()
}

#[magnus::init]
fn init(ruby: &Ruby) -> Result<(), Error> {
    let module = ruby.define_module("LibraryStandardNumbers")?;
    create_lccn_module(&module)?;
    create_isbn_module(&module)?;  

    Ok(())
}

fn create_lccn_module(module: &RModule) -> Result<(), Error> {
    let lccn_module = module.define_module("LCCN")?;
    lccn_module.define_singleton_method("valid?", function!(lccn_validate, 1))?;
    lccn_module.define_singleton_method("normalize", function!(lccn_normalize, 1))?;

    Ok(())
}

fn create_isbn_module(module: &RModule) -> Result<(), Error> {
    let isbn_module = module.define_module("ISBN")?;
    isbn_module.define_singleton_method("valid?", function!(isbn_validate, 1))?;

    Ok(())
}
