#include "backend.h"

Backend::Backend(QObject *parent)
    : QObject(parent)
{
}

int Backend::clickCount() const
{
    return m_clickCount;
}

void Backend::buttonClicked()
{
    ++m_clickCount;
    emit clickCountChanged();
}