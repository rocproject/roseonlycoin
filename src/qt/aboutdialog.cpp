#include "aboutdialog.h"
#include "ui_aboutdialog.h"

#include "clientmodel.h"
#include "clientversion.h"

// Copyright year (2009-this)
// Todo: update this when changing our copyright comments in the source
const int ABOUTDIALOG_COPYRIGHT_YEAR = 2013;

AboutDialog::AboutDialog(QWidget *parent) :
    QDialog(parent),
    ui(new Ui::AboutDialog)
{
    ui->setupUi(this);

    // Set current copyright year
<<<<<<< HEAD
    ui->copyrightLabel->setText(tr("Copyright") + QString(" &copy; 2009-%1 ").arg(COPYRIGHT_YEAR) + tr("The Bitcoin developers") + QString("<br>") + tr("Copyright") + QString(" &copy; ") + tr("%1 The RoseOnlycoin developers").arg(ABOUTDIALOG_COPYRIGHT_YEAR) + QString("<br>") + tr("Copyright") + QString(" &copy; 2012-%1 ").arg(COPYRIGHT_YEAR) + tr("The Peercoin developers"));
=======
    ui->copyrightLabel->setText(tr("Copyright") + QString(" &copy; 2009-%1 ").arg(COPYRIGHT_YEAR) + tr("The Bitcoin developers") + QString("<br>") + tr("Copyright") + QString(" &copy; ") + tr("%1 The Hirocoin developers").arg(ABOUTDIALOG_COPYRIGHT_YEAR) + QString("<br>") + tr("Copyright") + QString(" &copy; 2012-%1 ").arg(COPYRIGHT_YEAR) + tr("The Peercoin developers"));
>>>>>>> 4e4ef7e73515f26174f9ca9d15fdcb46b1890589
}

void AboutDialog::setModel(ClientModel *model)
{
    if(model)
    {
        ui->versionLabel->setText(model->formatFullVersion());
    }
}

AboutDialog::~AboutDialog()
{
    delete ui;
}

void AboutDialog::on_buttonBox_accepted()
{
    close();
}
