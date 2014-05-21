#include "uritests.h"
#include "../guiutil.h"
#include "../walletmodel.h"

#include <QUrl>

void URITests::uriTests()
{
    SendCoinsRecipient rv;
    QUrl uri;
<<<<<<< HEAD
    uri.setUrl(QString("roseonlycoin:LQDPC5rbjDB72fGFVHu4enYhxGAZuRiFh9?req-dontexist="));
    QVERIFY(!GUIUtil::parseBitcoinURI(uri, &rv));

    uri.setUrl(QString("roseonlycoin:LQDPC5rbjDB72fGFVHu4enYhxGAZuRiFh9?dontexist="));
=======
    uri.setUrl(QString("hirocoin:LQDPC5rbjDB72fGFVHu4enYhxGAZuRiFh9?req-dontexist="));
    QVERIFY(!GUIUtil::parseBitcoinURI(uri, &rv));

    uri.setUrl(QString("hirocoin:LQDPC5rbjDB72fGFVHu4enYhxGAZuRiFh9?dontexist="));
>>>>>>> 4e4ef7e73515f26174f9ca9d15fdcb46b1890589
    QVERIFY(GUIUtil::parseBitcoinURI(uri, &rv));
    QVERIFY(rv.address == QString("LQDPC5rbjDB72fGFVHu4enYhxGAZuRiFh9"));
    QVERIFY(rv.label == QString());
    QVERIFY(rv.amount == 0);

<<<<<<< HEAD
    uri.setUrl(QString("roseonlycoin:LQDPC5rbjDB72fGFVHu4enYhxGAZuRiFh9?label=Wikipedia Example Address"));
=======
    uri.setUrl(QString("hirocoin:LQDPC5rbjDB72fGFVHu4enYhxGAZuRiFh9?label=Wikipedia Example Address"));
>>>>>>> 4e4ef7e73515f26174f9ca9d15fdcb46b1890589
    QVERIFY(GUIUtil::parseBitcoinURI(uri, &rv));
    QVERIFY(rv.address == QString("LQDPC5rbjDB72fGFVHu4enYhxGAZuRiFh9"));
    QVERIFY(rv.label == QString("Wikipedia Example Address"));
    QVERIFY(rv.amount == 0);

<<<<<<< HEAD
    uri.setUrl(QString("roseonlycoin:LQDPC5rbjDB72fGFVHu4enYhxGAZuRiFh9?amount=0.001"));
=======
    uri.setUrl(QString("hirocoin:LQDPC5rbjDB72fGFVHu4enYhxGAZuRiFh9?amount=0.001"));
>>>>>>> 4e4ef7e73515f26174f9ca9d15fdcb46b1890589
    QVERIFY(GUIUtil::parseBitcoinURI(uri, &rv));
    QVERIFY(rv.address == QString("LQDPC5rbjDB72fGFVHu4enYhxGAZuRiFh9"));
    QVERIFY(rv.label == QString());
    QVERIFY(rv.amount == 100000);

<<<<<<< HEAD
    uri.setUrl(QString("roseonlycoin:LQDPC5rbjDB72fGFVHu4enYhxGAZuRiFh9?amount=1.001"));
=======
    uri.setUrl(QString("hirocoin:LQDPC5rbjDB72fGFVHu4enYhxGAZuRiFh9?amount=1.001"));
>>>>>>> 4e4ef7e73515f26174f9ca9d15fdcb46b1890589
    QVERIFY(GUIUtil::parseBitcoinURI(uri, &rv));
    QVERIFY(rv.address == QString("LQDPC5rbjDB72fGFVHu4enYhxGAZuRiFh9"));
    QVERIFY(rv.label == QString());
    QVERIFY(rv.amount == 100100000);

<<<<<<< HEAD
    uri.setUrl(QString("roseonlycoin:LQDPC5rbjDB72fGFVHu4enYhxGAZuRiFh9?amount=100&label=Wikipedia Example"));
=======
    uri.setUrl(QString("hirocoin:LQDPC5rbjDB72fGFVHu4enYhxGAZuRiFh9?amount=100&label=Wikipedia Example"));
>>>>>>> 4e4ef7e73515f26174f9ca9d15fdcb46b1890589
    QVERIFY(GUIUtil::parseBitcoinURI(uri, &rv));
    QVERIFY(rv.address == QString("LQDPC5rbjDB72fGFVHu4enYhxGAZuRiFh9"));
    QVERIFY(rv.amount == 10000000000LL);
    QVERIFY(rv.label == QString("Wikipedia Example"));

<<<<<<< HEAD
    uri.setUrl(QString("roseonlycoin:LQDPC5rbjDB72fGFVHu4enYhxGAZuRiFh9?message=Wikipedia Example Address"));
=======
    uri.setUrl(QString("hirocoin:LQDPC5rbjDB72fGFVHu4enYhxGAZuRiFh9?message=Wikipedia Example Address"));
>>>>>>> 4e4ef7e73515f26174f9ca9d15fdcb46b1890589
    QVERIFY(GUIUtil::parseBitcoinURI(uri, &rv));
    QVERIFY(rv.address == QString("LQDPC5rbjDB72fGFVHu4enYhxGAZuRiFh9"));
    QVERIFY(rv.label == QString());

<<<<<<< HEAD
    QVERIFY(GUIUtil::parseBitcoinURI("roseonlycoin://LQDPC5rbjDB72fGFVHu4enYhxGAZuRiFh9?message=Wikipedia Example Address", &rv));
=======
    QVERIFY(GUIUtil::parseBitcoinURI("hirocoin://LQDPC5rbjDB72fGFVHu4enYhxGAZuRiFh9?message=Wikipedia Example Address", &rv));
>>>>>>> 4e4ef7e73515f26174f9ca9d15fdcb46b1890589
    QVERIFY(rv.address == QString("LQDPC5rbjDB72fGFVHu4enYhxGAZuRiFh9"));
    QVERIFY(rv.label == QString());

    // We currently don't implement the message parameter (ok, yea, we break spec...)
<<<<<<< HEAD
    uri.setUrl(QString("roseonlycoin:LQDPC5rbjDB72fGFVHu4enYhxGAZuRiFh9?req-message=Wikipedia Example Address"));
    QVERIFY(!GUIUtil::parseBitcoinURI(uri, &rv));

    uri.setUrl(QString("roseonlycoin:LQDPC5rbjDB72fGFVHu4enYhxGAZuRiFh9?amount=1,000&label=Wikipedia Example"));
    QVERIFY(!GUIUtil::parseBitcoinURI(uri, &rv));

    uri.setUrl(QString("roseonlycoin:LQDPC5rbjDB72fGFVHu4enYhxGAZuRiFh9?amount=1,000.0&label=Wikipedia Example"));
=======
    uri.setUrl(QString("hirocoin:LQDPC5rbjDB72fGFVHu4enYhxGAZuRiFh9?req-message=Wikipedia Example Address"));
    QVERIFY(!GUIUtil::parseBitcoinURI(uri, &rv));

    uri.setUrl(QString("hirocoin:LQDPC5rbjDB72fGFVHu4enYhxGAZuRiFh9?amount=1,000&label=Wikipedia Example"));
    QVERIFY(!GUIUtil::parseBitcoinURI(uri, &rv));

    uri.setUrl(QString("hirocoin:LQDPC5rbjDB72fGFVHu4enYhxGAZuRiFh9?amount=1,000.0&label=Wikipedia Example"));
>>>>>>> 4e4ef7e73515f26174f9ca9d15fdcb46b1890589
    QVERIFY(!GUIUtil::parseBitcoinURI(uri, &rv));
}
