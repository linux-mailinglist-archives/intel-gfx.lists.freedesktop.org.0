Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9795A6D6F40
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Apr 2023 23:49:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED98610E7C6;
	Tue,  4 Apr 2023 21:49:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BF5910E7C3
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Apr 2023 21:49:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1680644941;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=BMOmz/hCD9hq0xa7lEyqqxxsKm/tr2tmPnHhHb56dRc=;
 b=Wl2FQKaclK3bIMwaPqw8tF0bHXkMeft5YD6XVT9SYhMVKcxhqXdgZLaSb/ineNNkG5oi9K
 52UtyOBShBrbobrzl3XLqOl4ZLieB38C3Qzq2G9ZMv+ZY+u2kIxLmMJCrkj/aDhfprGDx8
 FyspkpU3qUnrxiuJIDp44/pJJdcS9WU=
Received: from mail-io1-f69.google.com (mail-io1-f69.google.com
 [209.85.166.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-502-AYn99MoLNG-uttZXOLDDgA-1; Tue, 04 Apr 2023 17:48:57 -0400
X-MC-Unique: AYn99MoLNG-uttZXOLDDgA-1
Received: by mail-io1-f69.google.com with SMTP id
 d204-20020a6bb4d5000000b00758cfdd36c3so20842549iof.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 04 Apr 2023 14:48:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680644937;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=BMOmz/hCD9hq0xa7lEyqqxxsKm/tr2tmPnHhHb56dRc=;
 b=t8RARBWYOLL8RGKrP2dvRRGbYB+9Aw9A9ESe36U05OAFIclqRSm+1+JeiNZ4Id+oJo
 hBrJaY8JwQE6hD+In2vjihZEg7fg+pFdy+HgFCrLvH6u1uxe/egdS7nJ5acSi2A9G5cB
 5+nzCbOnmtaC23IVFD+hh4FzNzd1hwOifJprUNWAgT599n/3lPpq2BwIGnGbhdmXVkAf
 3ZZyM3pbnejst1wJZVr6fwYN20dL/1X8I+Gsqo1e3emGU6DmXngyVOtItjmEM6slx3FQ
 qZXTWui51NffN43knIgrwS7fD/dmG+l+IQKOPaqUykMwkO2TIpnn16eAkPVfHYplyHlQ
 oYtg==
X-Gm-Message-State: AAQBX9ck+BvbXEDIfoBeJjFWRzkRM3xMJfjUhqMznx5m7gVj5YUCE23K
 kZzraHbs38N/T+Kc26OLtUxmdpREyCmeesoUUitUED+I2+cCf/TdyykpBc6aBOYOMUBtAvP/V8h
 BkohUhjcqvxgtfafpIX76GNaYF/Lm
X-Received: by 2002:a92:dac3:0:b0:325:fb39:8494 with SMTP id
 o3-20020a92dac3000000b00325fb398494mr3960313ilq.4.1680644937174; 
 Tue, 04 Apr 2023 14:48:57 -0700 (PDT)
X-Google-Smtp-Source: AKy350b8lhguNnSPsqwDGg9DndWThvVQtcWBignwR7e7WGC5/A4W046vPbFQR7NCsx0PzkO+Dv+mIw==
X-Received: by 2002:a92:dac3:0:b0:325:fb39:8494 with SMTP id
 o3-20020a92dac3000000b00325fb398494mr3960288ilq.4.1680644936898; 
 Tue, 04 Apr 2023 14:48:56 -0700 (PDT)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 c13-20020a928e0d000000b00325df6679a7sm3456502ild.26.2023.04.04.14.48.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 Apr 2023 14:48:55 -0700 (PDT)
Date: Tue, 4 Apr 2023 15:48:54 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: Eric Auger <eric.auger@redhat.com>
Message-ID: <20230404154854.4d9a95f0.alex.williamson@redhat.com>
In-Reply-To: <702c2883-1d51-b609-1e99-337295e6e307@redhat.com>
References: <20230401144429.88673-1-yi.l.liu@intel.com>
 <20230401144429.88673-5-yi.l.liu@intel.com>
 <702c2883-1d51-b609-1e99-337295e6e307@redhat.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.35; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v3 04/12] vfio-iommufd: Add helper to
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
Cc: mjrosato@linux.ibm.com, jasowang@redhat.com, xudong.hao@intel.com,
 peterx@redhat.com, terrence.xu@intel.com, chao.p.peng@linux.intel.com,
 linux-s390@vger.kernel.org, Yi Liu <yi.l.liu@intel.com>, kvm@vger.kernel.org,
 lulu@redhat.com, yanting.jiang@intel.com, joro@8bytes.org, nicolinc@nvidia.com,
 jgg@nvidia.com, yan.y.zhao@intel.com, intel-gfx@lists.freedesktop.org,
 intel-gvt-dev@lists.freedesktop.org, yi.y.sun@linux.intel.com,
 cohuck@redhat.com, shameerali.kolothum.thodi@huawei.com,
 suravee.suthikulpanit@amd.com, robin.murphy@arm.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 4 Apr 2023 17:28:40 +0200
Eric Auger <eric.auger@redhat.com> wrote:

> Hi,
> 
> On 4/1/23 16:44, Yi Liu wrote:
> > This is needed by the vfio-pci driver to report affected devices in the
> > hot reset for a given device.
> >
> > Reviewed-by: Jason Gunthorpe <jgg@nvidia.com>
> > Tested-by: Yanting Jiang <yanting.jiang@intel.com>
> > Signed-off-by: Yi Liu <yi.l.liu@intel.com>
> > ---
> >  drivers/iommu/iommufd/device.c | 12 ++++++++++++
> >  drivers/vfio/iommufd.c         | 14 ++++++++++++++
> >  include/linux/iommufd.h        |  3 +++
> >  include/linux/vfio.h           | 13 +++++++++++++
> >  4 files changed, 42 insertions(+)
> >
> > diff --git a/drivers/iommu/iommufd/device.c b/drivers/iommu/iommufd/device.c
> > index 25115d401d8f..04a57aa1ae2c 100644
> > --- a/drivers/iommu/iommufd/device.c
> > +++ b/drivers/iommu/iommufd/device.c
> > @@ -131,6 +131,18 @@ void iommufd_device_unbind(struct iommufd_device *idev)
> >  }
> >  EXPORT_SYMBOL_NS_GPL(iommufd_device_unbind, IOMMUFD);
> >  
> > +struct iommufd_ctx *iommufd_device_to_ictx(struct iommufd_device *idev)
> > +{
> > +	return idev->ictx;
> > +}
> > +EXPORT_SYMBOL_NS_GPL(iommufd_device_to_ictx, IOMMUFD);
> > +
> > +u32 iommufd_device_to_id(struct iommufd_device *idev)
> > +{
> > +	return idev->obj.id;
> > +}
> > +EXPORT_SYMBOL_NS_GPL(iommufd_device_to_id, IOMMUFD);
> > +
> >  static int iommufd_device_setup_msi(struct iommufd_device *idev,
> >  				    struct iommufd_hw_pagetable *hwpt,
> >  				    phys_addr_t sw_msi_start)
> > diff --git a/drivers/vfio/iommufd.c b/drivers/vfio/iommufd.c
> > index 88b00c501015..809f2dd73b9e 100644
> > --- a/drivers/vfio/iommufd.c
> > +++ b/drivers/vfio/iommufd.c
> > @@ -66,6 +66,20 @@ void vfio_iommufd_unbind(struct vfio_device *vdev)
> >  		vdev->ops->unbind_iommufd(vdev);
> >  }
> >  
> > +struct iommufd_ctx *vfio_iommufd_physical_ictx(struct vfio_device *vdev)
> > +{
> > +	if (!vdev->iommufd_device)
> > +		return NULL;
> > +	return iommufd_device_to_ictx(vdev->iommufd_device);
> > +}
> > +EXPORT_SYMBOL_GPL(vfio_iommufd_physical_ictx);
> > +
> > +void vfio_iommufd_physical_devid(struct vfio_device *vdev, u32 *id)
> > +{
> > +	if (vdev->iommufd_device)
> > +		*id = iommufd_device_to_id(vdev->iommufd_device);  
> since there is no return value, may be worth to add at least a WARN_ON
> in case of !vdev->iommufd_device

Yeah, this is bizarre and makes the one caller of this interface very
awkward.  We later go on to define IOMMUFD_INVALID_ID, so this should
simply return that in the case of no iommufd_device and skip this
unnecessary pointer passing.  Thanks,

Alex

> > +}
> > +EXPORT_SYMBOL_GPL(vfio_iommufd_physical_devid);
> >  /*
> >   * The physical standard ops mean that the iommufd_device is bound to the
> >   * physical device vdev->dev that was provided to vfio_init_group_dev(). Drivers
> > diff --git a/include/linux/iommufd.h b/include/linux/iommufd.h
> > index 1129a36a74c4..ac96df406833 100644
> > --- a/include/linux/iommufd.h
> > +++ b/include/linux/iommufd.h
> > @@ -24,6 +24,9 @@ void iommufd_device_unbind(struct iommufd_device *idev);
> >  int iommufd_device_attach(struct iommufd_device *idev, u32 *pt_id);
> >  void iommufd_device_detach(struct iommufd_device *idev);
> >  
> > +struct iommufd_ctx *iommufd_device_to_ictx(struct iommufd_device *idev);
> > +u32 iommufd_device_to_id(struct iommufd_device *idev);
> > +
> >  struct iommufd_access_ops {
> >  	u8 needs_pin_pages : 1;
> >  	void (*unmap)(void *data, unsigned long iova, unsigned long length);
> > diff --git a/include/linux/vfio.h b/include/linux/vfio.h
> > index 3188d8a374bd..97a1174b922f 100644
> > --- a/include/linux/vfio.h
> > +++ b/include/linux/vfio.h
> > @@ -113,6 +113,8 @@ struct vfio_device_ops {
> >  };
> >  
> >  #if IS_ENABLED(CONFIG_IOMMUFD)
> > +struct iommufd_ctx *vfio_iommufd_physical_ictx(struct vfio_device *vdev);
> > +void vfio_iommufd_physical_devid(struct vfio_device *vdev, u32 *id);
> >  int vfio_iommufd_physical_bind(struct vfio_device *vdev,
> >  			       struct iommufd_ctx *ictx, u32 *out_device_id);
> >  void vfio_iommufd_physical_unbind(struct vfio_device *vdev);
> > @@ -122,6 +124,17 @@ int vfio_iommufd_emulated_bind(struct vfio_device *vdev,
> >  void vfio_iommufd_emulated_unbind(struct vfio_device *vdev);
> >  int vfio_iommufd_emulated_attach_ioas(struct vfio_device *vdev, u32 *pt_id);
> >  #else
> > +static inline struct iommufd_ctx *
> > +vfio_iommufd_physical_ictx(struct vfio_device *vdev)
> > +{
> > +	return NULL;
> > +}
> > +
> > +static inline void
> > +vfio_iommufd_physical_devid(struct vfio_device *vdev, u32 *id)
> > +{
> > +}
> > +
> >  #define vfio_iommufd_physical_bind                                      \
> >  	((int (*)(struct vfio_device *vdev, struct iommufd_ctx *ictx,   \
> >  		  u32 *out_device_id)) NULL)  
> besides
> 
> Reviewed-by: Eric Auger <eric.auger@redhat.com>
> 
> Eric
> 

