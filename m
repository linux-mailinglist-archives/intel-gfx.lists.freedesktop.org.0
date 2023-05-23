Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0F5170E0F0
	for <lists+intel-gfx@lfdr.de>; Tue, 23 May 2023 17:50:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1946710E462;
	Tue, 23 May 2023 15:50:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C3E110E45D
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 May 2023 15:50:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1684857030;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=GTsrylnE6SPgGyhIieHB+Sd8dEO6K+XX+Yr8RqY4OZI=;
 b=Wjd3sIkGfUyAIpq5LVgAKNrqrDOJsoZmzkFj1HtHVMx8ENlqhtJcAgPsgoCPZCI/LcwA+3
 RJxWn9iW9dgAbytY0wqCwwMgj1VAvnzBnFEVMmbX3fOhGcEq8Cyz85hDSGLamSXTKpU0ZB
 ZKAXc2sI4arDUfkJa/HpJOnh6SG2vTQ=
Received: from mail-il1-f200.google.com (mail-il1-f200.google.com
 [209.85.166.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-561-yy8zSDaaOAOGe-m9EXijAQ-1; Tue, 23 May 2023 11:50:29 -0400
X-MC-Unique: yy8zSDaaOAOGe-m9EXijAQ-1
Received: by mail-il1-f200.google.com with SMTP id
 e9e14a558f8ab-331828cdc2dso6866835ab.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 May 2023 08:50:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1684857028; x=1687449028;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=wYFl8U0SDWnlIQQFAjgbnzByRprAY7BghMfujkqtBpA=;
 b=M2nVbhCiBzpwC3nNd48b3gsik+JSyIQRW3Tr/smxf8Hsv7Asdy38klv8nxxP4Zj5FC
 gMUTd9I3TQ0QbPgga2TS1gh40JP8MJ/ffHRmx18yCW1gFf7NusXmOIwlQ5kVVeRj0463
 8VZANDu10+pb7JgkK5rPyf5/6BOFDp6ya5C2aGokrYr9rLEHzGtTOuTDCDC0+m5MP+Qa
 n1LA4AXD/Lsu8nImx12G3BkLe4mi6VhLdOcP6+lJlmTo0n2pyV7fYAe+klPaogxmfNx9
 Fu3pnV7bfi+qYnmOB1+f0P1XgNhprMWzCvE3L+gucJZbDcXBxoWhI2B7sJKpU952k/Gu
 CNpA==
X-Gm-Message-State: AC+VfDyZUFaBrL1BQNaGofk7zbWeuc2d+f/tveJnJ0EW6urS2A3vErd8
 oN9VXU032Cea3SqNvzZetxh1m4scKGhr0xA3RULEYErTsO7Zj99KKVxeDSdF9DmO3IhDzVS2A5Z
 /39o7D0Ikqu61uhAmEcni2ilgLJZu
X-Received: by 2002:a92:cc4e:0:b0:338:b887:b674 with SMTP id
 t14-20020a92cc4e000000b00338b887b674mr7921345ilq.2.1684857028299; 
 Tue, 23 May 2023 08:50:28 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ5L5cxZeYlEeuroxDhVXKppcAZQVL21daMeMkcovyH4v9JrjGeyYnpYWoYxJebm28zcXp2DNQ==
X-Received: by 2002:a92:cc4e:0:b0:338:b887:b674 with SMTP id
 t14-20020a92cc4e000000b00338b887b674mr7921317ilq.2.1684857027956; 
 Tue, 23 May 2023 08:50:27 -0700 (PDT)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 y2-20020a056638228200b0040fa5258658sm2401119jas.77.2023.05.23.08.50.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 23 May 2023 08:50:27 -0700 (PDT)
Date: Tue, 23 May 2023 09:50:25 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: "Liu, Yi L" <yi.l.liu@intel.com>
Message-ID: <20230523095025.1898297c.alex.williamson@redhat.com>
In-Reply-To: <DS0PR11MB7529096D1BE1D337BA50884BC3409@DS0PR11MB7529.namprd11.prod.outlook.com>
References: <20230513132827.39066-1-yi.l.liu@intel.com>
 <20230513132827.39066-21-yi.l.liu@intel.com>
 <20230522161534.32f3bf8e.alex.williamson@redhat.com>
 <DS0PR11MB7529096D1BE1D337BA50884BC3409@DS0PR11MB7529.namprd11.prod.outlook.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.35; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v11 20/23] vfio: Add
 VFIO_DEVICE_[AT|DE]TACH_IOMMUFD_PT
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

On Tue, 23 May 2023 01:20:17 +0000
"Liu, Yi L" <yi.l.liu@intel.com> wrote:

> > From: Alex Williamson <alex.williamson@redhat.com>
> > Sent: Tuesday, May 23, 2023 6:16 AM
> >=20
> > On Sat, 13 May 2023 06:28:24 -0700
> > Yi Liu <yi.l.liu@intel.com> wrote:
> >  =20
> > > This adds ioctl for userspace to attach device cdev fd to and detach
> > > from IOAS/hw_pagetable managed by iommufd.
> > >
> > >     VFIO_DEVICE_ATTACH_IOMMUFD_PT: attach vfio device to IOAS, hw_pag=
etable
> > > =09=09=09=09   managed by iommufd. Attach can be
> > > =09=09=09=09   undo by VFIO_DEVICE_DETACH_IOMMUFD_PT
> > > =09=09=09=09   or device fd close.
> > >     VFIO_DEVICE_DETACH_IOMMUFD_PT: detach vfio device from the curren=
t attached
> > > =09=09=09=09   IOAS or hw_pagetable managed by iommufd.
> > >
> > > Tested-by: Yanting Jiang <yanting.jiang@intel.com>
> > > Tested-by: Shameer Kolothum <shameerali.kolothum.thodi@huawei.com>
> > > Signed-off-by: Yi Liu <yi.l.liu@intel.com>
> > > ---
> > >  drivers/vfio/device_cdev.c | 66 ++++++++++++++++++++++++++++++++++++=
++
> > >  drivers/vfio/iommufd.c     | 18 +++++++++++
> > >  drivers/vfio/vfio.h        | 18 +++++++++++
> > >  drivers/vfio/vfio_main.c   |  8 +++++
> > >  include/uapi/linux/vfio.h  | 52 ++++++++++++++++++++++++++++++
> > >  5 files changed, 162 insertions(+)
> > >
> > > diff --git a/drivers/vfio/device_cdev.c b/drivers/vfio/device_cdev.c
> > > index 291cc678a18b..3f14edb80a93 100644
> > > --- a/drivers/vfio/device_cdev.c
> > > +++ b/drivers/vfio/device_cdev.c
> > > @@ -174,6 +174,72 @@ long vfio_device_ioctl_bind_iommufd(struct vfio_=
device_file =20
> > *df, =20
> > >  =09return ret;
> > >  }
> > >
> > > +int vfio_ioctl_device_attach(struct vfio_device_file *df,
> > > +=09=09=09     struct vfio_device_attach_iommufd_pt __user *arg)
> > > +{
> > > +=09struct vfio_device *device =3D df->device;
> > > +=09struct vfio_device_attach_iommufd_pt attach;
> > > +=09unsigned long minsz;
> > > +=09int ret;
> > > +
> > > +=09minsz =3D offsetofend(struct vfio_device_attach_iommufd_pt, pt_id=
);
> > > +
> > > +=09if (copy_from_user(&attach, arg, minsz))
> > > +=09=09return -EFAULT;
> > > +
> > > +=09if (attach.argsz < minsz || attach.flags)
> > > +=09=09return -EINVAL;
> > > +
> > > +=09/* ATTACH only allowed for cdev fds */
> > > +=09if (df->group)
> > > +=09=09return -EINVAL;
> > > +
> > > +=09mutex_lock(&device->dev_set->lock);
> > > +=09ret =3D vfio_iommufd_attach(device, &attach.pt_id);
> > > +=09if (ret)
> > > +=09=09goto out_unlock;
> > > +
> > > +=09ret =3D copy_to_user(&arg->pt_id, &attach.pt_id,
> > > +=09=09=09   sizeof(attach.pt_id)) ? -EFAULT : 0;
> > > +=09if (ret)
> > > +=09=09goto out_detach;
> > > +=09mutex_unlock(&device->dev_set->lock);
> > > +
> > > +=09return 0;
> > > +
> > > +out_detach:
> > > +=09vfio_iommufd_detach(device);
> > > +out_unlock:
> > > +=09mutex_unlock(&device->dev_set->lock);
> > > +=09return ret;
> > > +}
> > > +
> > > +int vfio_ioctl_device_detach(struct vfio_device_file *df,
> > > +=09=09=09     struct vfio_device_detach_iommufd_pt __user *arg)
> > > +{
> > > +=09struct vfio_device *device =3D df->device;
> > > +=09struct vfio_device_detach_iommufd_pt detach;
> > > +=09unsigned long minsz;
> > > +
> > > +=09minsz =3D offsetofend(struct vfio_device_detach_iommufd_pt, flags=
);
> > > +
> > > +=09if (copy_from_user(&detach, arg, minsz))
> > > +=09=09return -EFAULT;
> > > +
> > > +=09if (detach.argsz < minsz || detach.flags)
> > > +=09=09return -EINVAL;
> > > +
> > > +=09/* DETACH only allowed for cdev fds */
> > > +=09if (df->group)
> > > +=09=09return -EINVAL;
> > > +
> > > +=09mutex_lock(&device->dev_set->lock);
> > > +=09vfio_iommufd_detach(device);
> > > +=09mutex_unlock(&device->dev_set->lock);
> > > +
> > > +=09return 0;
> > > +}
> > > +
> > >  static char *vfio_device_devnode(const struct device *dev, umode_t *=
mode)
> > >  {
> > >  =09return kasprintf(GFP_KERNEL, "vfio/devices/%s", dev_name(dev));
> > > diff --git a/drivers/vfio/iommufd.c b/drivers/vfio/iommufd.c
> > > index 83575b65ea01..799ea322a7d4 100644
> > > --- a/drivers/vfio/iommufd.c
> > > +++ b/drivers/vfio/iommufd.c
> > > @@ -112,6 +112,24 @@ void vfio_iommufd_unbind(struct vfio_device_file=
 *df)
> > >  =09=09vdev->ops->unbind_iommufd(vdev);
> > >  }
> > >
> > > +int vfio_iommufd_attach(struct vfio_device *vdev, u32 *pt_id)
> > > +{
> > > +=09lockdep_assert_held(&vdev->dev_set->lock);
> > > +
> > > +=09if (vfio_device_is_noiommu(vdev))
> > > +=09=09return 0; =20
> >=20
> > Isn't this an invalid operation for a noiommu cdev, ie. -EINVAL?  We
> > return success and copy back the provided pt_id, why would a user not
> > consider it a bug that they can't use whatever value was there with
> > iommufd? =20
>=20
> Yes, this is the question I asked in [1]. At that time, it appears to me
> that better to allow it [2]. Maybe it's more suitable to ask it here.

From an API perspective it seems wrong.  We return success without
doing anything.  A user would be right to consider it a bug that the
attach operation works but there's not actually any association to the
IOAS.  Thanks,

Alex


> [1] https://lore.kernel.org/kvm/c203f11f-4d9f-cf43-03ab-e41a858bdd92@inte=
l.com/
> [2] https://lore.kernel.org/kvm/ZFFUyhqID+LtUB%2FD@nvidia.com/
>=20
> > > +
> > > +=09return vdev->ops->attach_ioas(vdev, pt_id);
> > > +}
> > > +
> > > +void vfio_iommufd_detach(struct vfio_device *vdev)
> > > +{
> > > +=09lockdep_assert_held(&vdev->dev_set->lock);
> > > +
> > > +=09if (!vfio_device_is_noiommu(vdev))
> > > +=09=09vdev->ops->detach_ioas(vdev);
> > > +}
> > > +
> > >  struct iommufd_ctx *vfio_iommufd_physical_ictx(struct vfio_device *v=
dev)
> > >  {
> > >  =09if (vdev->iommufd_device)
> > > diff --git a/drivers/vfio/vfio.h b/drivers/vfio/vfio.h
> > > index 8b359a7794be..50553f67600f 100644
> > > --- a/drivers/vfio/vfio.h
> > > +++ b/drivers/vfio/vfio.h
> > > @@ -241,6 +241,8 @@ int vfio_iommufd_bind(struct vfio_device_file *df=
);
> > >  void vfio_iommufd_unbind(struct vfio_device_file *df);
> > >  int vfio_iommufd_compat_attach_ioas(struct vfio_device *device,
> > >  =09=09=09=09    struct iommufd_ctx *ictx);
> > > +int vfio_iommufd_attach(struct vfio_device *vdev, u32 *pt_id);
> > > +void vfio_iommufd_detach(struct vfio_device *vdev);
> > >  #else
> > >  static inline int
> > >  vfio_iommufd_compat_probe_noiommu(struct vfio_device *device,
> > > @@ -282,6 +284,10 @@ int vfio_device_fops_cdev_open(struct inode *ino=
de, struct =20
> > file *filep); =20
> > >  void vfio_device_cdev_close(struct vfio_device_file *df);
> > >  long vfio_device_ioctl_bind_iommufd(struct vfio_device_file *df,
> > >  =09=09=09=09    struct vfio_device_bind_iommufd __user *arg);
> > > +int vfio_ioctl_device_attach(struct vfio_device_file *df,
> > > +=09=09=09     struct vfio_device_attach_iommufd_pt __user *arg);
> > > +int vfio_ioctl_device_detach(struct vfio_device_file *df,
> > > +=09=09=09     struct vfio_device_detach_iommufd_pt __user *arg);
> > >  int vfio_cdev_init(struct class *device_class);
> > >  void vfio_cdev_cleanup(void);
> > >  #else
> > > @@ -315,6 +321,18 @@ static inline long vfio_device_ioctl_bind_iommuf=
d(struct =20
> > vfio_device_file *df, =20
> > >  =09return -EOPNOTSUPP;
> > >  }
> > >
> > > +static inline int vfio_ioctl_device_attach(struct vfio_device_file *=
df,
> > > +=09=09=09=09=09   struct vfio_device_attach_iommufd_pt __user =20
> > *arg) =20
> > > +{
> > > +=09return -EOPNOTSUPP;
> > > +}
> > > +
> > > +static inline int vfio_ioctl_device_detach(struct vfio_device_file *=
df,
> > > +=09=09=09=09=09   struct vfio_device_detach_iommufd_pt =20
> > __user *arg) =20
> > > +{
> > > +=09return -EOPNOTSUPP;
> > > +}
> > > +
> > >  static inline int vfio_cdev_init(struct class *device_class)
> > >  {
> > >  =09return 0;
> > > diff --git a/drivers/vfio/vfio_main.c b/drivers/vfio/vfio_main.c
> > > index c9fa39ac4b02..8c3f26b4929b 100644
> > > --- a/drivers/vfio/vfio_main.c
> > > +++ b/drivers/vfio/vfio_main.c
> > > @@ -1165,6 +1165,14 @@ static long vfio_device_fops_unl_ioctl(struct =
file *filep,
> > >  =09=09ret =3D vfio_ioctl_device_feature(device, (void __user *)arg);
> > >  =09=09break;
> > >
> > > +=09case VFIO_DEVICE_ATTACH_IOMMUFD_PT:
> > > +=09=09ret =3D vfio_ioctl_device_attach(df, (void __user *)arg);
> > > +=09=09break;
> > > +
> > > +=09case VFIO_DEVICE_DETACH_IOMMUFD_PT:
> > > +=09=09ret =3D vfio_ioctl_device_detach(df, (void __user *)arg);
> > > +=09=09break;
> > > +
> > >  =09default:
> > >  =09=09if (unlikely(!device->ops->ioctl))
> > >  =09=09=09ret =3D -EINVAL;
> > > diff --git a/include/uapi/linux/vfio.h b/include/uapi/linux/vfio.h
> > > index 07c917de31e9..770f5f949929 100644
> > > --- a/include/uapi/linux/vfio.h
> > > +++ b/include/uapi/linux/vfio.h
> > > @@ -222,6 +222,58 @@ struct vfio_device_bind_iommufd {
> > >
> > >  #define VFIO_DEVICE_BIND_IOMMUFD=09_IO(VFIO_TYPE, VFIO_BASE + 19)
> > >
> > > +/*
> > > + * VFIO_DEVICE_ATTACH_IOMMUFD_PT - _IOW(VFIO_TYPE, VFIO_BASE + 20,
> > > + *=09=09=09=09=09struct vfio_device_attach_iommufd_pt)
> > > + *
> > > + * Attach a vfio device to an iommufd address space specified by IOA=
S
> > > + * id or hw_pagetable (hwpt) id.
> > > + *
> > > + * Available only after a device has been bound to iommufd via
> > > + * VFIO_DEVICE_BIND_IOMMUFD
> > > + *
> > > + * Undo by VFIO_DEVICE_DETACH_IOMMUFD_PT or device fd close.
> > > + *
> > > + * @argsz:=09User filled size of this data.
> > > + * @flags:=09Must be 0.
> > > + * @pt_id:=09Input the target id which can represent an ioas or a hw=
pt
> > > + *=09=09allocated via iommufd subsystem.
> > > + *=09=09Output the input ioas id or the attached hwpt id which could
> > > + *=09=09be the specified hwpt itself or a hwpt automatically created
> > > + *=09=09for the specified ioas by kernel during the attachment.
> > > + *
> > > + * Return: 0 on success, -errno on failure.
> > > + */
> > > +struct vfio_device_attach_iommufd_pt {
> > > +=09__u32=09argsz;
> > > +=09__u32=09flags;
> > > +=09__u32=09pt_id;
> > > +};
> > > +
> > > +#define VFIO_DEVICE_ATTACH_IOMMUFD_PT=09=09_IO(VFIO_TYPE, =20
> > VFIO_BASE + 20) =20
> > > +
> > > +/*
> > > + * VFIO_DEVICE_DETACH_IOMMUFD_PT - _IOW(VFIO_TYPE, VFIO_BASE + 21,
> > > + *=09=09=09=09=09struct vfio_device_detach_iommufd_pt)
> > > + *
> > > + * Detach a vfio device from the iommufd address space it has been
> > > + * attached to. After it, device should be in a blocking DMA state.
> > > + *
> > > + * Available only after a device has been bound to iommufd via
> > > + * VFIO_DEVICE_BIND_IOMMUFD. =20
> >=20
> > These "[a]vailable only after" comments are meaningless, if the user
> > has the file descriptor the ioctl is available.  We can say that ATTACH
> > should be used after BIND to associate the device with an address space
> > within the bound iommufd and DETACH removes that association, but the
> > user is welcome to call everything in the wrong order and we need to be
> > prepared for that anyway.  Thanks, =20
>=20
> Oh, yes. it's available as long as FD is got. But it is expected to fail =
if
> the order is not met. This should be what the comment really wants
> to deliver. Will have a look at other ioctls as well.
>=20
> Regards,
> Yi Liu
>=20
> >=20
> > Alex
> >  =20
> > > + *
> > > + * @argsz:=09User filled size of this data.
> > > + * @flags:=09Must be 0.
> > > + *
> > > + * Return: 0 on success, -errno on failure.
> > > + */
> > > +struct vfio_device_detach_iommufd_pt {
> > > +=09__u32=09argsz;
> > > +=09__u32=09flags;
> > > +};
> > > +
> > > +#define VFIO_DEVICE_DETACH_IOMMUFD_PT=09=09_IO(VFIO_TYPE, =20
> > VFIO_BASE + 21) =20
> > > +
> > >  /**
> > >   * VFIO_DEVICE_GET_INFO - _IOR(VFIO_TYPE, VFIO_BASE + 7,
> > >   *=09=09=09=09=09=09struct vfio_device_info) =20
>=20

