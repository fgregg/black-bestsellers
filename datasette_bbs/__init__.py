from datasette import hookimpl
from datasette.views.table import TableView

@hookimpl
def register_routes(datasette):
    return [
        (r"^/$", TableView.as_view(datasette), {'db_name': 'bbs',
                                                'table': 'bbs'})
    ]
