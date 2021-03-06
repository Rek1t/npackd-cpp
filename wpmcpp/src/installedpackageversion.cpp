#include "installedpackageversion.h"

#include <QDir>

#include "windowsregistry.h"
#include "repository.h"
#include "installedpackages.h"

InstalledPackageVersion::InstalledPackageVersion(const QString &package,
        const Version &version, const QString &directory): version(version)
{
    this->package = package;
    this->directory = directory;

    //qCDebug(npackd) << "InstalledPackageVersion::InstalledPackageVersion " <<
    //        package << " " << directory;
}

bool InstalledPackageVersion::operator==(const InstalledPackageVersion &other)
{
    return this->package == other.package && this->version == other.version &&
            this->directory == other.directory &&
            this->detectionInfo == other.detectionInfo;
}

bool InstalledPackageVersion::operator!=(const InstalledPackageVersion &other)
{
    return !(*this == other);
}

QString InstalledPackageVersion::getDirectory() const
{
    return this->directory;
}

InstalledPackageVersion *InstalledPackageVersion::clone() const
{
    InstalledPackageVersion* r = new InstalledPackageVersion(this->package,
            this->version, this->directory);
    r->detectionInfo = this->detectionInfo;
    return r;
}

QString InstalledPackageVersion::toString() const
{
    return this->package + " " + this->version.getVersionString() + " " +
            this->directory;
}

QString InstalledPackageVersion::getDetectionInfo() const
{
    return this->detectionInfo;
}

bool InstalledPackageVersion::installed() const
{
    return !this->directory.isEmpty();
}

void InstalledPackageVersion::setPath(const QString& path)
{
    this->directory = path;
}


