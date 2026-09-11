#pragma once

#include <QObject>

class Backend : public QObject
{
    Q_OBJECT

    Q_PROPERTY(int clickCount READ clickCount NOTIFY clickCountChanged)

public:
    explicit Backend(QObject *parent = nullptr);

    int clickCount() const;

    Q_INVOKABLE void buttonClicked();

signals:
    void clickCountChanged();

private:
    int m_clickCount = 0;
};