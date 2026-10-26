from setuptools import setup, find_packages

setup(
    name='apiverve_routingnumberlookup',
    version='1.2.3',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Routing Number Lookup is a bank routing number lookup and validation API for US ABA numbers. It checks the check digit, finds the bank name and state, and identifies the routing type and Federal Reserve district, while paid plans add full street addresses, branch details, and replacement numbers.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/routinglookup?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
