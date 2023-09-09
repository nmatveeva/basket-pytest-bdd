from pytest_bdd import scenarios, parsers, given, when, then

from product_basket import ProductBasket


scenarios('../features/basket.feature')

EXTRA_TYPES = {
    'number': int
}


@given(
    parsers.cfparse('the basket has "{init:number}" product(s)', extra_types=EXTRA_TYPES),
    target_fixture='basket'
)
def basket(init):
    return ProductBasket(initial_count=init)


@when(
    parsers.cfparse('"{some:number}" product(s) added to the basket', extra_types=EXTRA_TYPES)
)
def add_products(basket, some):
    basket.add(some)


@when(
    parsers.cfparse('"{some:number}" product(s) removed from the basket', extra_types=EXTRA_TYPES)
)
def remove_products(basket, some):
    basket.remove(some)


@then(
    parsers.cfparse('the basket contains "{total:number}" product(s)', extra_types=EXTRA_TYPES)
)
def basket_total_count(basket, total):
    assert basket.count == total
