Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A943D7088EA
	for <lists+intel-gfx@lfdr.de>; Thu, 18 May 2023 22:02:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31E4F10E560;
	Thu, 18 May 2023 20:02:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53FF710E550
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 May 2023 20:02:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1684440148;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=b8QBi0/mhuomVjhHGjilGHaXdKozwfsxXIJHR7XvYXM=;
 b=H3NCWwP1a6pAMlI4RtIOz+cFlTVG+BXWeEL0/a3LOYSDYOz/5SJgsHmIkVVuNKhovbsWa/
 eY/6a+dDljmvsZrfVVLAIxQo/nnwsxpQQPzxhtk1G8hx6og66uz6rBSEzXaEX0nj8nziN5
 tTyKLHx+9hvjoIgACef7dFYhZw/dIAI=
Received: from mail-io1-f71.google.com (mail-io1-f71.google.com
 [209.85.166.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-224-1Ch6YsQ0MmWMFAaurk9jYQ-1; Thu, 18 May 2023 16:02:24 -0400
X-MC-Unique: 1Ch6YsQ0MmWMFAaurk9jYQ-1
Received: by mail-io1-f71.google.com with SMTP id
 ca18e2360f4ac-763c341d627so197984739f.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 May 2023 13:02:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1684440144; x=1687032144;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=NxSZSODI2u28vy1MvKpnEmFi7Q8e7Naitxzu3Z7bWS4=;
 b=NnWD1fGqLRv/rGEdeGYwDMc8p4fakBLj3eLzSd9AaU8uKjfeREUz2Liq89/L0xMU/Q
 aBWz2svVWv1L1nw0Usk/k2OPBB/oJbgtsPiR7Ekh106UXIu+4SQSuDkWCuOfPFLekoTU
 cL8iQ2XohiTGSiAhCzopNcEHF04De02ugJMF8QfmM+tH006Zxs2J61DATO7P9SrQJO3F
 4VZ1CxyVGqK5Ksj/FJ0S9NutYwhPr/L110MuUnAFuRNYKfuPWPDRIJh0Ot4HGDQch7h8
 cGmWf8GIYoVdkGCf+QvMENYn194llCKY0JPylY0JYYHroszoYNKF/9rvqQD4LUOwR95/
 g+xw==
X-Gm-Message-State: AC+VfDxmRGotCTs5O3gDhReP0rPv6Wl2Dk7xWDo2kiXtj139cLTqRnik
 y33gcf14WbGLdx/mb523bKsM6e7fMZ8rFKmvvZgNr7A6mDSONv25g8JP1HNgiFKEbC7O2xn+EgP
 uEkFr6CHKz5m0NRzacYgeYvNzTopc
X-Received: by 2002:a05:6602:42cc:b0:770:f25:eea with SMTP id
 ce12-20020a05660242cc00b007700f250eeamr8109521iob.4.1684440143735; 
 Thu, 18 May 2023 13:02:23 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ78r16hyXJua6dwpFFlo7TPCXcK29v0VmS1Dgb685o6EqQWCUg5zZuAs+XNJa9yraJYnBOI3w==
X-Received: by 2002:a05:6602:42cc:b0:770:f25:eea with SMTP id
 ce12-20020a05660242cc00b007700f250eeamr8109505iob.4.1684440143240; 
 Thu, 18 May 2023 13:02:23 -0700 (PDT)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 d66-20020a026245000000b0041672c963b3sm656062jac.50.2023.05.18.13.02.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 May 2023 13:02:22 -0700 (PDT)
Date: Thu, 18 May 2023 14:02:20 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: "Liu, Yi L" <yi.l.liu@intel.com>
Message-ID: <20230518140220.0953074c.alex.williamson@redhat.com>
In-Reply-To: <DS0PR11MB75291457BBD647819B855DA0C37F9@DS0PR11MB7529.namprd11.prod.outlook.com>
References: <20230513132136.15021-1-yi.l.liu@intel.com>
 <20230513132136.15021-10-yi.l.liu@intel.com>
 <20230517160131.254be76b.alex.williamson@redhat.com>
 <DS0PR11MB75291457BBD647819B855DA0C37F9@DS0PR11MB7529.namprd11.prod.outlook.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.35; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v5 09/10] vfio/pci: Extend
 VFIO_DEVICE_GET_PCI_HOT_RESET_INFO for vfio device cdev
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Cc: "mjrosato@linux.ibm.com" <mjrosato@linux.ibm.com>,
 "jasowang@redhat.com" <jasowang@redhat.com>, "Hao,
 Xudong" <xudong.hao@intel.com>, "Duan, Zhenzhong" <zhenzhong.duan@intel.com>,
 "peterx@redhat.com" <peterx@redhat.com>, "Xu,
 Terrence" <terrence.xu@intel.com>,
 "chao.p.peng@linux.intel.com" <chao.p.peng@linux.intel.com>,
 "linux-s390@vger.kernel.org" <linux-s390@vger.kernel.org>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 "lulu@redhat.com" <lulu@redhat.com>, "Jiang,
 Yanting" <yanting.jiang@intel.com>, "joro@8bytes.org" <joro@8bytes.org>,
 "nicolinc@nvidia.com" <nicolinc@nvidia.com>, "jgg@nvidia.com" <jgg@nvidia.com>,
 "Zhao, Yan Y" <yan.y.zhao@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "eric.auger@redhat.com" <eric.auger@redhat.com>,
 "intel-gvt-dev@lists.freedesktop.org" <intel-gvt-dev@lists.freedesktop.org>,
 "yi.y.sun@linux.intel.com" <yi.y.sun@linux.intel.com>,
 "clegoate@redhat.com" <clegoate@redhat.com>,
 "cohuck@redhat.com" <cohuck@redhat.com>,
 "shameerali.kolothum.thodi@huawei.com" <shameerali.kolothum.thodi@huawei.com>,
 "suravee.suthikulpanit@amd.com" <suravee.suthikulpanit@amd.com>,
 "robin.murphy@arm.com" <robin.murphy@arm.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 18 May 2023 13:21:57 +0000
"Liu, Yi L" <yi.l.liu@intel.com> wrote:

> > From: Alex Williamson <alex.williamson@redhat.com>
> > Sent: Thursday, May 18, 2023 6:02 AM
> >=20
> > On Sat, 13 May 2023 06:21:35 -0700
> > Yi Liu <yi.l.liu@intel.com> wrote:
> >  =20
> > > This makes VFIO_DEVICE_GET_PCI_HOT_RESET_INFO ioctl to use the iommuf=
d_ctx =20
> >=20
> > s/makes/allows/?
> >=20
> > s/to//
> >  =20
> > > of the cdev device to check the ownership of the other affected devic=
es.
> > >
> > > This returns devid for each of the affected devices. If it is bound t=
o the
> > > iommufd_ctx of the cdev device, _INFO reports a valid devid > 0; If i=
t is
> > > not opened by the calling user, but it belongs to the same iommu_grou=
p of
> > > a device that is bound to the iommufd_ctx of the cdev device, reports=
 devid
> > > value of 0; If the device is un-owned device, configured within a dif=
ferent
> > > iommufd, or opened outside of the vfio device cdev API, the _INFO ioc=
tl shall
> > > report devid value of -1.
> > >
> > > devid >=3D0 doesn't block hot-reset as the affected devices are consi=
dered to
> > > be owned, while devid =3D=3D -1 will block the use of VFIO_DEVICE_PCI=
_HOT_RESET
> > > outside of proof-of-ownership calling conventions (ie. via legacy gro=
up
> > > accessed devices).
> > >
> > > This adds flag VFIO_PCI_HOT_RESET_FLAG_DEV_ID to tell the user devid =
is
> > > returned in case of calling user get device fd from other software st=
ack =20
> >=20
> > "other software stack"?  I think this is trying to say something like:
> >=20
> >   When VFIO_DEVICE_GET_PCI_HOT_RESET_INFO is called on an IOMMUFD
> >   managed device, the new flag VFIO_PCI_HOT_RESET_FLAG_DEV_ID is
> >   reported to indicate the values returned are IOMMUFD devids rather
> >   than group IDs as used when accessing vfio devices through the
> >   conventional vfio group interface.  Additionally the flag
> >   VFIO_PCI_HOT_RESET_FLAG_DEV_ID_OWNED will be reported in this mode if
> >   all of the devices affected by the hot-reset are owned by either
> >   virtue of being directly bound to the same iommufd context as the
> >   calling device, or implicitly owned via a shared IOMMU group. =20
>=20
> Yes. it is.
>=20
> > > and adds flag VFIO_PCI_HOT_RESET_FLAG_DEV_ID_OWNED to tell user if al=
l
> > > the affected devices are owned, so user can know it without looping a=
ll
> > > the returned devids.
> > >
> > > Suggested-by: Jason Gunthorpe <jgg@nvidia.com>
> > > Suggested-by: Alex Williamson <alex.williamson@redhat.com>
> > > Signed-off-by: Yi Liu <yi.l.liu@intel.com>
> > > ---
> > >  drivers/vfio/pci/vfio_pci_core.c | 52 ++++++++++++++++++++++++++++++=
--
> > >  include/uapi/linux/vfio.h        | 46 +++++++++++++++++++++++++++-
> > >  2 files changed, 95 insertions(+), 3 deletions(-)
> > >
> > > diff --git a/drivers/vfio/pci/vfio_pci_core.c b/drivers/vfio/pci/vfio=
_pci_core.c
> > > index 4df2def35bdd..57586be770af 100644
> > > --- a/drivers/vfio/pci/vfio_pci_core.c
> > > +++ b/drivers/vfio/pci/vfio_pci_core.c
> > > @@ -27,6 +27,7 @@
> > >  #include <linux/vgaarb.h>
> > >  #include <linux/nospec.h>
> > >  #include <linux/sched/mm.h>
> > > +#include <linux/iommufd.h>
> > >  #if IS_ENABLED(CONFIG_EEH)
> > >  #include <asm/eeh.h>
> > >  #endif
> > > @@ -36,6 +37,10 @@
> > >  #define DRIVER_AUTHOR   "Alex Williamson <alex.williamson@redhat.com=
>"
> > >  #define DRIVER_DESC "core driver for VFIO based PCI devices"
> > >
> > > +#ifdef CONFIG_IOMMUFD
> > > +MODULE_IMPORT_NS(IOMMUFD);
> > > +#endif
> > > +
> > >  static bool nointxmask;
> > >  static bool disable_vga;
> > >  static bool disable_idle_d3;
> > > @@ -776,6 +781,9 @@ struct vfio_pci_fill_info {
> > >  =09int max;
> > >  =09int cur;
> > >  =09struct vfio_pci_dependent_device *devices;
> > > +=09struct vfio_device *vdev;
> > > +=09bool devid:1;
> > > +=09bool dev_owned:1;
> > >  };
> > >
> > >  static int vfio_pci_fill_devs(struct pci_dev *pdev, void *data)
> > > @@ -790,7 +798,37 @@ static int vfio_pci_fill_devs(struct pci_dev *pd=
ev, void *data)
> > >  =09if (!iommu_group)
> > >  =09=09return -EPERM; /* Cannot reset non-isolated devices */
> > >
> > > -=09fill->devices[fill->cur].group_id =3D iommu_group_id(iommu_group)=
;
> > > +=09if (fill->devid) {
> > > +=09=09struct iommufd_ctx *iommufd =3D vfio_iommufd_physical_ictx(fil=
l->vdev);
> > > +=09=09struct vfio_device_set *dev_set =3D fill->vdev->dev_set;
> > > +=09=09struct vfio_device *vdev;
> > > +
> > > +=09=09/*
> > > +=09=09 * Report devid for the affected devices:
> > > +=09=09 * - valid devid > 0 for the devices that are bound with
> > > +=09=09 *   the iommufd of the calling device.
> > > +=09=09 * - devid =3D=3D 0 for the devices that have not been opened
> > > +=09=09 *   but have same group with one of the devices bound to
> > > +=09=09 *   the iommufd of the calling device.
> > > +=09=09 * - devid =3D=3D -1 for others, and clear dev_owned flag.
> > > +=09=09 */
> > > +=09=09vdev =3D vfio_find_device_in_devset(dev_set, &pdev->dev);
> > > +=09=09if (vdev && iommufd =3D=3D vfio_iommufd_physical_ictx(vdev)) {
> > > +=09=09=09int ret;
> > > +
> > > +=09=09=09ret =3D vfio_iommufd_physical_devid(vdev);
> > > +=09=09=09if (WARN_ON(ret < 0))
> > > +=09=09=09=09return ret;
> > > +=09=09=09fill->devices[fill->cur].devid =3D ret; =20
> >=20
> > Nit, @devid seems like a better variable name here rather than @ret.
> >  =20
> > > +=09=09} else if (vdev && iommufd_ctx_has_group(iommufd, iommu_group)=
) {
> > > +=09=09=09fill->devices[fill->cur].devid =3D VFIO_PCI_DEVID_OWNED;
> > > +=09=09} else {
> > > +=09=09=09fill->devices[fill->cur].devid =3D VFIO_PCI_DEVID_NOT_OWNED=
;
> > > +=09=09=09fill->dev_owned =3D false;
> > > +=09=09} =20
> >=20
> > I think we're not describing the requirements for this middle test
> > correctly.  We're essentially only stating the iommufd_ctx_has_group()
> > part of the requirement, but we're also enforcing a
> > vfio_find_device_in_devset() requirement, which means the device is not
> > just unopened within a group shared by the iommufd context, but it must
> > also still be a device registered as a member of the devset, ie. it
> > must be bound to a vfio driver. =20
>=20
> Yes. This is to make it be par with hot-reset path. This is needed. Is it=
?

Yes.  In supporting this null-array model, the kernel is taking on the
responsibility to indicate that the hot-reset is available, which
necessarily includes the devset test.  I think the logic we have is
correct, but the documentation and comments should match the code as
well.

> > It's not a new requirement, it's imposed in the hot-reset ioctl itself,
> > but it's new for the info ioctl given that it's now trying to report
> > that the user can perform the reset for cdev callers.
> >
> > This also shares too much logic with vfio_device_owned() added in the
> > next patch.  I think it might be cleaner to move the iommu_group_get() =
to
> > the group path below and change vfio_device_owned() to something that
> > can be used here and in the reset path.  For example, if we had a
> > function like:
> >=20
> > static int vfio_hot_reset_devid(struct vfio_device *vdev,
> >                                 struct iommufd_ctx *iommufd_ctx)
> > {
> >         struct iommu_group *group;
> >         int devid;
> >=20
> >         if (!vdev)
> >                 return VFIO_PCI_DEVID_NOT_OWNED;
> >=20
> >         if (vfio_iommufd_physical_ictx(vdev) =3D=3D iommufd_ctx)
> >                 return vfio_iommufd_physical_devid(vdev);
> >=20
> >         group =3D iommu_group_get(vdev->dev);
> >         if (!group)
> >                 return VFIO_PCI_DEVID_NOT_OWNED;
> >=20
> >         if (iommufd_ctx_has_group(iommufd_ctx, group))
> >                 devid =3D VFIO_PCI_DEVID_OWNED;
> >=20
> >         iommu_group_put(group);
> >=20
> >         return devid;
> > } =20
>=20
> Thanks. This can be placed in vfio/iommufd.c, hence no need to
> Import the IOMMUFD namespace in vfio_pci_core.c.
> vfio_iommufd_physical_devid() can ebe static within vfio/iommufd.c

Good, that's an improvement too.  Thanks,

Alex
=20
> > It could be called above as:
> >=20
> > =09vdev =3D vfio_find_device_in_devset(dev_set, &pdev->dev);
> > =09fill->devices[fill->cur].devid =3D
> > =09=09=09vfio_hot_reset_devid(vdev, iommufd);
> >=20
> >=20
> > And from vfio_pci_dev_set_hot_reset() as:
> >=20
> > =09bool owned;
> >=20
> > =09if (iommufd_ctx) {
> > =09=09int devid =3D vfio_hot_reset_devid(&cur_vma->vdev,
> > =09=09=09=09=09=09 iommufd_ctx);
> >=20
> > =09=09owned =3D (devid !=3D VFIO_PCI_DEVID_NOT_OWNED);
> > =09} else
> > =09=09owned =3D vfio_dev_in_groups(&cur_vma->vdev, groups);
> >=20
> > Any better? =20
>=20
> Above looks good enough.
>=20
> >  =20
> > > +=09} else {
> > > +=09=09fill->devices[fill->cur].group_id =3D iommu_group_id(iommu_gro=
up);
> > > +=09}
> > >  =09fill->devices[fill->cur].segment =3D pci_domain_nr(pdev->bus);
> > >  =09fill->devices[fill->cur].bus =3D pdev->bus->number;
> > >  =09fill->devices[fill->cur].devfn =3D pdev->devfn;
> > > @@ -1229,17 +1267,27 @@ static int vfio_pci_ioctl_get_pci_hot_reset_i=
nfo(
> > >  =09=09return -ENOMEM;
> > >
> > >  =09fill.devices =3D devices;
> > > +=09fill.vdev =3D &vdev->vdev;
> > >
> > > +=09mutex_lock(&vdev->vdev.dev_set->lock);
> > > +=09fill.devid =3D fill.dev_owned =3D vfio_device_cdev_opened(&vdev->=
vdev);
> > >  =09ret =3D vfio_pci_for_each_slot_or_bus(vdev->pdev, vfio_pci_fill_d=
evs,
> > >  =09=09=09=09=09    &fill, slot);
> > > +=09mutex_unlock(&vdev->vdev.dev_set->lock);
> > >
> > >  =09/*
> > >  =09 * If a device was removed between counting and filling, we may c=
ome up
> > >  =09 * short of fill.max.  If a device was added, we'll have a return=
 of
> > >  =09 * -EAGAIN above.
> > >  =09 */
> > > -=09if (!ret)
> > > +=09if (!ret) {
> > >  =09=09hdr.count =3D fill.cur;
> > > +=09=09if (fill.devid) {
> > > +=09=09=09hdr.flags |=3D VFIO_PCI_HOT_RESET_FLAG_DEV_ID;
> > > +=09=09=09if (fill.dev_owned)
> > > +=09=09=09=09hdr.flags |=3D =20
> > VFIO_PCI_HOT_RESET_FLAG_DEV_ID_OWNED; =20
> > > +=09=09}
> > > +=09} =20
> >=20
> > Does this clean up the flag and branching a bit? =20
>=20
> Yes. =F0=9F=98=8A
>=20
> >=20
> > diff --git a/drivers/vfio/pci/vfio_pci_core.c b/drivers/vfio/pci/vfio_p=
ci_core.c
> > index 737115d16a79..6a2a079e452d 100644
> > --- a/drivers/vfio/pci/vfio_pci_core.c
> > +++ b/drivers/vfio/pci/vfio_pci_core.c
> > @@ -786,8 +786,7 @@ struct vfio_pci_fill_info {
> >  =09int cur;
> >  =09struct vfio_pci_dependent_device *devices;
> >  =09struct vfio_device *vdev;
> > -=09bool devid:1;
> > -=09bool dev_owned:1;
> > +=09u32 flags;
> >  };
> >=20
> >  static int vfio_pci_fill_devs(struct pci_dev *pdev, void *data)
> > @@ -802,7 +801,7 @@ static int vfio_pci_fill_devs(struct pci_dev *pdev,=
 void *data)
> >  =09if (!iommu_group)
> >  =09=09return -EPERM; /* Cannot reset non-isolated devices */
> >=20
> > -=09if (fill->devid) {
> > +=09if (fill->flags & VFIO_PCI_HOT_RESET_FLAG_DEV_ID) {
> >  =09=09struct iommufd_ctx *iommufd =3D vfio_iommufd_physical_ictx(fill-=
>vdev);
> >  =09=09struct vfio_device_set *dev_set =3D fill->vdev->dev_set;
> >  =09=09struct vfio_device *vdev;
> > @@ -814,7 +813,7 @@ static int vfio_pci_fill_devs(struct pci_dev *pdev,=
 void *data)
> >  =09=09 * - devid =3D=3D 0 for the devices that have not been opened
> >  =09=09 *   but have same group with one of the devices bound to
> >  =09=09 *   the iommufd of the calling device.
> > -=09=09 * - devid =3D=3D -1 for others, and clear dev_owned flag.
> > +=09=09 * - devid =3D=3D -1 for others, and clear owned flag.
> >  =09=09 */
> >  =09=09vdev =3D vfio_find_device_in_devset(dev_set, &pdev->dev);
> >  =09=09if (vdev && iommufd =3D=3D vfio_iommufd_physical_ictx(vdev)) {
> > @@ -828,7 +827,7 @@ static int vfio_pci_fill_devs(struct pci_dev *pdev,=
 void *data)
> >  =09=09=09fill->devices[fill->cur].devid =3D VFIO_PCI_DEVID_OWNED;
> >  =09=09} else {
> >  =09=09=09fill->devices[fill->cur].devid =3D VFIO_PCI_DEVID_NOT_OWNED;
> > -=09=09=09fill->dev_owned =3D false;
> > +=09=09=09fill->flags &=3D ~VFIO_PCI_HOT_RESET_FLAG_DEV_ID_OWNED;
> >  =09=09}
> >  =09} else {
> >  =09=09fill->devices[fill->cur].group_id =3D iommu_group_id(iommu_group=
);
> > @@ -1273,8 +1272,11 @@ static int vfio_pci_ioctl_get_pci_hot_reset_info=
(
> >  =09fill.devices =3D devices;
> >  =09fill.vdev =3D &vdev->vdev;
> >=20
> > +=09if (vfio_device_cdev_opened(&vdev->vdev))
> > +=09=09fill.flags |=3D VFIO_PCI_HOT_RESET_FLAG_DEV_ID |
> > +=09=09=09     VFIO_PCI_HOT_RESET_FLAG_DEV_ID_OWNED;
> > +
> >  =09mutex_lock(&vdev->vdev.dev_set->lock);
> > -=09fill.devid =3D fill.dev_owned =3D vfio_device_cdev_opened(&vdev->vd=
ev);
> >  =09ret =3D vfio_pci_for_each_slot_or_bus(vdev->pdev, vfio_pci_fill_dev=
s,
> >  =09=09=09=09=09    &fill, slot);
> >  =09mutex_unlock(&vdev->vdev.dev_set->lock);
> > @@ -1286,11 +1288,7 @@ static int vfio_pci_ioctl_get_pci_hot_reset_info=
(
> >  =09 */
> >  =09if (!ret) {
> >  =09=09hdr.count =3D fill.cur;
> > -=09=09if (fill.devid) {
> > -=09=09=09hdr.flags |=3D VFIO_PCI_HOT_RESET_FLAG_DEV_ID;
> > -=09=09=09if (fill.dev_owned)
> > -=09=09=09=09hdr.flags |=3D
> > VFIO_PCI_HOT_RESET_FLAG_DEV_ID_OWNED;
> > -=09=09}
> > +=09=09hdr.flags =3D fill.flags;
> >  =09}
> >=20
> >  reset_info_exit:
> >=20
> > Thanks,
> > Alex =20
>=20
> Thanks,
> Yi Liu
>=20
> > >
> > >  reset_info_exit:
> > >  =09if (copy_to_user(arg, &hdr, minsz))
> > > diff --git a/include/uapi/linux/vfio.h b/include/uapi/linux/vfio.h
> > > index 0552e8dcf0cb..01203215251a 100644
> > > --- a/include/uapi/linux/vfio.h
> > > +++ b/include/uapi/linux/vfio.h
> > > @@ -650,11 +650,53 @@ enum {
> > >   * VFIO_DEVICE_GET_PCI_HOT_RESET_INFO - _IOWR(VFIO_TYPE, VFIO_BASE +=
 12,
> > >   *=09=09=09=09=09      struct vfio_pci_hot_reset_info)
> > >   *
> > > + * This command is used to query the affected devices in the hot res=
et for
> > > + * a given device.
> > > + *
> > > + * This command always reports the segment, bus, and devfn informati=
on for
> > > + * each affected device, and selectively reports the group_id or dev=
id per
> > > + * the way how the calling device is opened.
> > > + *
> > > + *=09- If the calling device is opened via the traditional group/con=
tainer
> > > + *=09  API, group_id is reported.  User should check if it has owned=
 all
> > > + *=09  the affected devices and provides a set of group fds to prove=
 the
> > > + *=09  ownership in VFIO_DEVICE_PCI_HOT_RESET ioctl.
> > > + *
> > > + *=09- If the calling device is opened as a cdev, devid is reported.
> > > + *=09  Flag VFIO_PCI_HOT_RESET_FLAG_DEV_ID is set to indicate this
> > > + *=09  data type.  For a given affected device, it is considered own=
ed by
> > > + *=09  this interface if it meets the following conditions:
> > > + *=09  1) Has a valid devid within the iommufd_ctx of the calling de=
vice.
> > > + *=09     Ownership cannot be determined across separate iommufd_ctx=
 and the
> > > + *=09     cdev calling conventions do not support a proof-of-ownersh=
ip model
> > > + *=09     as provided in the legacy group interface.  In this case a=
 valid
> > > + *=09     devid with value greater than zero is provided in the retu=
rn
> > > + *=09     structure.
> > > + *=09  2) Does not have a valid devid within the iommufd_ctx of the =
calling
> > > + *=09     device, but belongs to the same IOMMU group as the calling=
 device
> > > + *=09     or another opened device that has a valid devid within the
> > > + *=09     iommufd_ctx of the calling device.  This provides implicit=
 ownership
> > > + *=09     for devices within the same DMA isolation context.  In thi=
s case
> > > + *=09     the invalid devid value of zero is provided in the return =
structure.
> > > + *
> > > + *=09  A devid value of -1 is provided in the return structure for d=
evices
> > > + *=09  where ownership is not available.  Such devices prevent the u=
se of
> > > + *=09  VFIO_DEVICE_PCI_HOT_RESET outside of proof-of-ownership calli=
ng
> > > + *=09  conventions (ie. via legacy group accessed devices).
> > > + *=09  Flag VFIO_PCI_HOT_RESET_FLAG_DEV_ID_OWNED would be set when a=
ll the
> > > + *=09  affected devices are owned by the user.  This flag is availab=
le only
> > > + *=09  when VFIO_PCI_HOT_RESET_FLAG_DEV_ID is set, otherwise reserve=
d.
> > > + *
> > >   * Return: 0 on success, -errno on failure:
> > >   *=09-enospc =3D insufficient buffer, -enodev =3D unsupported for de=
vice.
> > >   */
> > >  struct vfio_pci_dependent_device {
> > > -=09__u32=09group_id;
> > > +=09union {
> > > +=09=09__u32   group_id;
> > > +=09=09__u32=09devid;
> > > +#define VFIO_PCI_DEVID_OWNED=09=090
> > > +#define VFIO_PCI_DEVID_NOT_OWNED=09-1
> > > +=09};
> > >  =09__u16=09segment;
> > >  =09__u8=09bus;
> > >  =09__u8=09devfn; /* Use PCI_SLOT/PCI_FUNC */
> > > @@ -663,6 +705,8 @@ struct vfio_pci_dependent_device {
> > >  struct vfio_pci_hot_reset_info {
> > >  =09__u32=09argsz;
> > >  =09__u32=09flags;
> > > +#define VFIO_PCI_HOT_RESET_FLAG_DEV_ID=09=09(1 << 0)
> > > +#define VFIO_PCI_HOT_RESET_FLAG_DEV_ID_OWNED=09(1 << 1)
> > >  =09__u32=09count;
> > >  =09struct vfio_pci_dependent_device=09devices[];
> > >  }; =20
>=20

