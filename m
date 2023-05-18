Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CFF5570889C
	for <lists+intel-gfx@lfdr.de>; Thu, 18 May 2023 21:50:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8736C10E547;
	Thu, 18 May 2023 19:50:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D326F10E54B
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 May 2023 19:50:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1684439436;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Jh5OmsoiniNzfPxTh2q8i8zD0yrfR3xzpW1VvlO4Lwg=;
 b=FAHtDv+7lItLOPsoGz9+C1gEFw9P8a3H1aBtq8a9jDsRL9jFxk6iOmSAdOcCK9Tc83rraG
 0iE5JMxA2YiNrjoGKJzgbDNh0R2H5o4CxFgnJiN8dBou5YV74FaXF/snvNS7d4vo0fDu6B
 gMNeSLAvKJucoSpavFNBCEw+q0GsvuI=
Received: from mail-il1-f199.google.com (mail-il1-f199.google.com
 [209.85.166.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-99--okAcwG7MXO_vIaFNSKIiA-1; Thu, 18 May 2023 15:50:32 -0400
X-MC-Unique: -okAcwG7MXO_vIaFNSKIiA-1
Received: by mail-il1-f199.google.com with SMTP id
 e9e14a558f8ab-3318938ea0bso575645ab.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 May 2023 12:50:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1684439432; x=1687031432;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Jh5OmsoiniNzfPxTh2q8i8zD0yrfR3xzpW1VvlO4Lwg=;
 b=kZ45DpcrYdPvqacNkhNF4x7Y1cjVFNMUkdF1ePgh5GZ/b/qzq9B5ryKuB2aQV6P4ht
 FJNONNzpPMEcN+bd3PY7GXXnxw9UwOBPDvzd7AsVRkyo6Cuz28J4LUUwjQnBmenMZI3z
 GQKMxlLc9NCrWPJu7Dsb//sgwYBNVwm6cP1F8RYJVoPlPTtVjxPHcc5KduRULxcX+sRH
 PRnMTCU3kPCHogH1k5LdMa2M0TtaRdgDiugo8kih2RsrwzAfjyi4ahrSKT3Z3FsVmk7+
 bOzwMHegw70P8tEBaHrngQ3gdtivL8MTzzg+BnJOK46pFWwIHo/6Jrtqj5ehFBQHBOoR
 ngrA==
X-Gm-Message-State: AC+VfDyY+GnXKKVgv1HtNbmg1/VJPy6kRkI0e69DN50H8kfAsiEa2NbM
 io5I8p1tOBpvTSIu6PJKKMVRVqwap+hcrAkTguRW2gH8gPX4c1GHbclUDH8vIXUoz6JMnSwXt/C
 pclsDEEBn1andixIHsH1gzHPFD4WQ
X-Received: by 2002:a05:6e02:1aa3:b0:333:49f9:a5f3 with SMTP id
 l3-20020a056e021aa300b0033349f9a5f3mr4588877ilv.2.1684439431996; 
 Thu, 18 May 2023 12:50:31 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ5FxhxTBMgm7TCu3seuae29eNjQqi+QvYLiW+iwyYL0QmMjButMon7ajVdlh0YbG0jeo2m46g==
X-Received: by 2002:a05:6e02:1aa3:b0:333:49f9:a5f3 with SMTP id
 l3-20020a056e021aa300b0033349f9a5f3mr4588864ilv.2.1684439431737; 
 Thu, 18 May 2023 12:50:31 -0700 (PDT)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 f16-20020a02cad0000000b0041643b78cbesm664248jap.120.2023.05.18.12.50.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 May 2023 12:50:31 -0700 (PDT)
Date: Thu, 18 May 2023 13:50:29 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: "Liu, Yi L" <yi.l.liu@intel.com>
Message-ID: <20230518135029.26abe519.alex.williamson@redhat.com>
In-Reply-To: <DS0PR11MB752963E14A652AEE1A1C2699C37F9@DS0PR11MB7529.namprd11.prod.outlook.com>
References: <20230513132136.15021-1-yi.l.liu@intel.com>
 <20230513132136.15021-7-yi.l.liu@intel.com>
 <20230517121517.4b7ceb52.alex.williamson@redhat.com>
 <DS0PR11MB752963E14A652AEE1A1C2699C37F9@DS0PR11MB7529.namprd11.prod.outlook.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.35; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v5 06/10] vfio-iommufd: Add helper to
 retrieve iommufd_ctx and devid for vfio_device
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

On Thu, 18 May 2023 13:25:59 +0000
"Liu, Yi L" <yi.l.liu@intel.com> wrote:

> > From: Alex Williamson <alex.williamson@redhat.com>
> > Sent: Thursday, May 18, 2023 2:15 AM
> > 
> > On Sat, 13 May 2023 06:21:32 -0700
> > Yi Liu <yi.l.liu@intel.com> wrote:
> >   
> > > This is needed by the vfio-pci driver to report affected devices in the
> > > hot reset for a given device.
> > >
> > > Signed-off-by: Yi Liu <yi.l.liu@intel.com>
> > > ---
> > >  drivers/iommu/iommufd/device.c | 24 ++++++++++++++++++++++++
> > >  drivers/vfio/iommufd.c         | 20 ++++++++++++++++++++
> > >  include/linux/iommufd.h        |  6 ++++++
> > >  include/linux/vfio.h           | 14 ++++++++++++++
> > >  4 files changed, 64 insertions(+)
> > >
> > > diff --git a/drivers/iommu/iommufd/device.c b/drivers/iommu/iommufd/device.c
> > > index 4f9b2142274c..81466b97023f 100644
> > > --- a/drivers/iommu/iommufd/device.c
> > > +++ b/drivers/iommu/iommufd/device.c
> > > @@ -116,6 +116,18 @@ void iommufd_device_unbind(struct iommufd_device *idev)
> > >  }
> > >  EXPORT_SYMBOL_NS_GPL(iommufd_device_unbind, IOMMUFD);
> > >
> > > +struct iommufd_ctx *iommufd_device_to_ictx(struct iommufd_device *idev)
> > > +{
> > > +	return idev->ictx;
> > > +}
> > > +EXPORT_SYMBOL_NS_GPL(iommufd_device_to_ictx, IOMMUFD);
> > > +
> > > +u32 iommufd_device_to_id(struct iommufd_device *idev)
> > > +{
> > > +	return idev->obj.id;
> > > +}
> > > +EXPORT_SYMBOL_NS_GPL(iommufd_device_to_id, IOMMUFD);
> > > +
> > >  static int iommufd_device_setup_msi(struct iommufd_device *idev,
> > >  				    struct iommufd_hw_pagetable *hwpt,
> > >  				    phys_addr_t sw_msi_start)
> > > @@ -463,6 +475,18 @@ void iommufd_access_destroy(struct iommufd_access  
> > *access)  
> > >  }
> > >  EXPORT_SYMBOL_NS_GPL(iommufd_access_destroy, IOMMUFD);
> > >
> > > +struct iommufd_ctx *iommufd_access_to_ictx(struct iommufd_access *access)
> > > +{
> > > +	return access->ictx;
> > > +}
> > > +EXPORT_SYMBOL_NS_GPL(iommufd_access_to_ictx, IOMMUFD);
> > > +
> > > +u32 iommufd_access_to_id(struct iommufd_access *access)
> > > +{
> > > +	return access->obj.id;
> > > +}
> > > +EXPORT_SYMBOL_NS_GPL(iommufd_access_to_id, IOMMUFD);
> > > +
> > >  int iommufd_access_attach(struct iommufd_access *access, u32 ioas_id)
> > >  {
> > >  	struct iommufd_ioas *new_ioas;
> > > diff --git a/drivers/vfio/iommufd.c b/drivers/vfio/iommufd.c
> > > index c1379e826052..a18e920be164 100644
> > > --- a/drivers/vfio/iommufd.c
> > > +++ b/drivers/vfio/iommufd.c
> > > @@ -105,6 +105,26 @@ void vfio_iommufd_unbind(struct vfio_device *vdev)
> > >  		vdev->ops->unbind_iommufd(vdev);
> > >  }
> > >
> > > +struct iommufd_ctx *vfio_iommufd_physical_ictx(struct vfio_device *vdev)
> > > +{
> > > +	if (vdev->iommufd_device)
> > > +		return iommufd_device_to_ictx(vdev->iommufd_device);
> > > +	if (vdev->noiommu_access)
> > > +		return iommufd_access_to_ictx(vdev->noiommu_access);
> > > +	return NULL;
> > > +}
> > > +EXPORT_SYMBOL_GPL(vfio_iommufd_physical_ictx);
> > > +
> > > +int vfio_iommufd_physical_devid(struct vfio_device *vdev)
> > > +{
> > > +	if (vdev->iommufd_device)
> > > +		return iommufd_device_to_id(vdev->iommufd_device);
> > > +	if (vdev->noiommu_access)
> > > +		return iommufd_access_to_id(vdev->noiommu_access);
> > > +	return -EINVAL;
> > > +}
> > > +EXPORT_SYMBOL_GPL(vfio_iommufd_physical_devid);  
> > 
> > I think these exemplify that it would be better if both emulated and
> > noiommu use the same iommufd_access pointer.  Thanks,  
> 
> Sure. Then I shall rename this helper. vfio_iommufd_device_devid()
> What about your opinion?

Yes, it really didn't even occur to me that "physical" in the name was
meant to suggest this shouldn't be used for emulated mdev devices.  It
should work for all devices and using a shared iommufd access pointer
between noiommu and emulated should simplify that somewhat.  Thanks,

Alex

