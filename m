Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F39216D846A
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Apr 2023 18:58:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B00D89091;
	Wed,  5 Apr 2023 16:58:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E70FD89F49
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Apr 2023 16:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1680713913;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Z16p4TvhrynbV656uH3ZplHnnqJV8WX8AdZKLgG+A38=;
 b=Rzf3FYr/YSh/lNdmeKQCdRCr8Wre4phtgXvRrLzSlkYJTgqbkFGH7c7LLg0pbtkFZDko2+
 C9sbw7E8iCxBTprGcIt41qwlBR3Kax6m/ItKBzraQr4heVKAk8vtLO8x/tmeTzyR6zsyL9
 FlEFywRedWXAhsw+AnthAi7vKWvGLyw=
Received: from mail-io1-f70.google.com (mail-io1-f70.google.com
 [209.85.166.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-314-pBr4mlkwPY2Oj9i3hqp-eQ-1; Wed, 05 Apr 2023 12:58:31 -0400
X-MC-Unique: pBr4mlkwPY2Oj9i3hqp-eQ-1
Received: by mail-io1-f70.google.com with SMTP id
 c5-20020a6b4e05000000b007601d480935so3347584iob.10
 for <intel-gfx@lists.freedesktop.org>; Wed, 05 Apr 2023 09:58:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680713910;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Z16p4TvhrynbV656uH3ZplHnnqJV8WX8AdZKLgG+A38=;
 b=qbmkoKrNNNPZot3PZV54UWJ/GAw58KXL6X5pLoirlkBt0lVDHioaRSX2+ooOkwV/i2
 Z/5SuLXo73MFya069gdttqKm5fk/lds57+RzaANBuBGKoE/ietm41wOkcQ4AiRyvzByR
 Y2sH3mgEwWJ7Y1gCrMk2W8oclegQZEDiH2SUnaSdxE3/cAavFTaZY5uMnlB6ZMbiD4vb
 oY34FD72r4PzLVZjCyT0N6IWLbpkKz45ICgBmZ8EYitJdH+AT64G682xINPqwXkS+mVN
 lZqIpHzhy0r8NNJBs1AjG3C407wpNdcGgMt7EOU6Cha+gyf4rXkrL2w8+XOcV1oQaDMP
 WnYQ==
X-Gm-Message-State: AAQBX9dNxfKiMvZR9dCbeIqRjoBtDv1594ebyvX4+Up+r4cOKIIW4Qlo
 yE7dYrQp351D9deKSOoR20+5piAsQNNhMrqrLd89JnXWj2n1JPmE7fjGJ4RgslJTc/gwQVMJHAb
 TIbKocj4XsMI2ABYM0c+Xp1pHXqWw
X-Received: by 2002:a6b:5108:0:b0:75c:ef01:8d60 with SMTP id
 f8-20020a6b5108000000b0075cef018d60mr4556793iob.21.1680713910652; 
 Wed, 05 Apr 2023 09:58:30 -0700 (PDT)
X-Google-Smtp-Source: AKy350aff3Vn7GfMi9FGUufyWN3DeUImBzAR2ar/X3c8ZJ+hx//Iy0Yg29MGqzfdN+KPQzOvdsVFhg==
X-Received: by 2002:a6b:5108:0:b0:75c:ef01:8d60 with SMTP id
 f8-20020a6b5108000000b0075cef018d60mr4556782iob.21.1680713910317; 
 Wed, 05 Apr 2023 09:58:30 -0700 (PDT)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 a22-20020a027356000000b004042607348dsm4029524jae.34.2023.04.05.09.58.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 05 Apr 2023 09:58:29 -0700 (PDT)
Date: Wed, 5 Apr 2023 10:58:28 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: "Liu, Yi L" <yi.l.liu@intel.com>
Message-ID: <20230405105828.6d170cec.alex.williamson@redhat.com>
In-Reply-To: <DS0PR11MB752960F2A336E30ACA9E9ECEC3909@DS0PR11MB7529.namprd11.prod.outlook.com>
References: <20230401151833.124749-1-yi.l.liu@intel.com>
 <20230401151833.124749-26-yi.l.liu@intel.com>
 <cc500fe5-1fdf-1b71-a5b4-f9f917b1abf2@redhat.com>
 <DS0PR11MB752960F2A336E30ACA9E9ECEC3909@DS0PR11MB7529.namprd11.prod.outlook.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.35; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v9 25/25] docs: vfio: Add vfio device cdev
 description
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
 Xudong" <xudong.hao@intel.com>, "peterx@redhat.com" <peterx@redhat.com>, "Xu,
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
 "cohuck@redhat.com" <cohuck@redhat.com>,
 "shameerali.kolothum.thodi@huawei.com" <shameerali.kolothum.thodi@huawei.com>,
 "suravee.suthikulpanit@amd.com" <suravee.suthikulpanit@amd.com>,
 "robin.murphy@arm.com" <robin.murphy@arm.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 5 Apr 2023 14:00:00 +0000
"Liu, Yi L" <yi.l.liu@intel.com> wrote:

> Hi Eric,
> 
> > From: Eric Auger <eric.auger@redhat.com>
> > Sent: Wednesday, April 5, 2023 9:46 PM
> > 
> > Hi Yi,
> > 
> > On 4/1/23 17:18, Yi Liu wrote:  
> > > This gives notes for userspace applications on device cdev usage.
> > >
> > > Reviewed-by: Kevin Tian <kevin.tian@intel.com>
> > > Signed-off-by: Yi Liu <yi.l.liu@intel.com>
> > > ---
> > >  Documentation/driver-api/vfio.rst | 132 ++++++++++++++++++++++++++++++
> > >  1 file changed, 132 insertions(+)
> > >
> > > diff --git a/Documentation/driver-api/vfio.rst b/Documentation/driver-api/vfio.rst
> > > index 363e12c90b87..4f21be7bda8a 100644
> > > --- a/Documentation/driver-api/vfio.rst
> > > +++ b/Documentation/driver-api/vfio.rst
> > > @@ -239,6 +239,130 @@ group and can access them as follows::
> > >  	/* Gratuitous device reset and go... */
> > >  	ioctl(device, VFIO_DEVICE_RESET);
> > >
> > > +IOMMUFD and vfio_iommu_type1
> > > +----------------------------
> > > +
> > > +IOMMUFD is the new user API to manage I/O page tables from userspace.
> > > +It intends to be the portal of delivering advanced userspace DMA
> > > +features (nested translation [5], PASID [6], etc.) while also providing
> > > +a backwards compatibility interface for existing VFIO_TYPE1v2_IOMMU use
> > > +cases.  Eventually the vfio_iommu_type1 driver, as well as the legacy
> > > +vfio container and group model is intended to be deprecated.
> > > +
> > > +The IOMMUFD backwards compatibility interface can be enabled two ways.
> > > +In the first method, the kernel can be configured with
> > > +CONFIG_IOMMUFD_VFIO_CONTAINER, in which case the IOMMUFD subsystem
> > > +transparently provides the entire infrastructure for the VFIO
> > > +container and IOMMU backend interfaces.  The compatibility mode can
> > > +also be accessed if the VFIO container interface, ie. /dev/vfio/vfio is
> > > +simply symlink'd to /dev/iommu.  Note that at the time of writing, the
> > > +compatibility mode is not entirely feature complete relative to
> > > +VFIO_TYPE1v2_IOMMU (ex. DMA mapping MMIO) and does not attempt to
> > > +provide compatibility to the VFIO_SPAPR_TCE_IOMMU interface.  Therefore
> > > +it is not generally advisable at this time to switch from native VFIO
> > > +implementations to the IOMMUFD compatibility interfaces.
> > > +
> > > +Long term, VFIO users should migrate to device access through the cdev
> > > +interface described below, and native access through the IOMMUFD
> > > +provided interfaces.
> > > +
> > > +VFIO Device cdev
> > > +----------------
> > > +
> > > +Traditionally user acquires a device fd via VFIO_GROUP_GET_DEVICE_FD
> > > +in a VFIO group.
> > > +
> > > +With CONFIG_VFIO_DEVICE_CDEV=y the user can now acquire a device fd
> > > +by directly opening a character device /dev/vfio/devices/vfioX where
> > > +"X" is the number allocated uniquely by VFIO for registered devices.
> > > +For noiommu devices, the character device would be named with "noiommu-"
> > > +prefix. e.g. /dev/vfio/devices/noiommu-vfioX.
> > > +
> > > +The cdev only works with IOMMUFD.  Both VFIO drivers and applications
> > > +must adapt to the new cdev security model which requires using
> > > +VFIO_DEVICE_BIND_IOMMUFD to claim DMA ownership before starting to
> > > +actually use the device.  Once BIND succeeds then a VFIO device can
> > > +be fully accessed by the user.
> > > +
> > > +VFIO device cdev doesn't rely on VFIO group/container/iommu drivers.
> > > +Hence those modules can be fully compiled out in an environment
> > > +where no legacy VFIO application exists.
> > > +
> > > +So far SPAPR does not support IOMMUFD yet.  So it cannot support device
> > > +cdev neither.
> > > +
> > > +Device cdev Example
> > > +-------------------
> > > +
> > > +Assume user wants to access PCI device 0000:6a:01.0::
> > > +
> > > +	$ ls /sys/bus/pci/devices/0000:6a:01.0/vfio-dev/
> > > +	vfio0
> > > +
> > > +This device is therefore represented as vfio0.  The user can verify
> > > +its existence::
> > > +
> > > +	$ ls -l /dev/vfio/devices/vfio0
> > > +	crw------- 1 root root 511, 0 Feb 16 01:22 /dev/vfio/devices/vfio0
> > > +	$ cat /sys/bus/pci/devices/0000:6a:01.0/vfio-dev/vfio0/dev  
> > you mentionned in the pci hot reset series that the BDF couldn't be used
> > if cdev is being used. According to the above, it could, no?  
> 
> It should be the device passing case, otherwise, BDF can be used. But
> from kernel p.o.v., it has no idea how user gets the device fd, so it needs
> to assume user may not have BDF knowledge. 
> 
> > > +	511:0
> > > +	$ ls -l /dev/char/511\:0
> > > +	lrwxrwxrwx 1 root root 21 Feb 16 01:22 /dev/char/511:0 -
> > > ../vfio/devices/vfio0
> > > +
> > > +Then provide the user with access to the device if unprivileged
> > > +operation is desired::
> > > +
> > > +	$ chown user:user /dev/vfio/devices/vfio0
> > > +
> > > +Finally the user could get cdev fd by::
> > > +
> > > +	cdev_fd = open("/dev/vfio/devices/vfio0", O_RDWR);
> > > +
> > > +An opened cdev_fd doesn't give the user any permission of accessing
> > > +the device except binding the cdev_fd to an iommufd.  After that point
> > > +then the device is fully accessible including attaching it to an
> > > +IOMMUFD IOAS/HWPT to enable userspace DMA::
> > > +
> > > +	struct vfio_device_bind_iommufd bind = {
> > > +		.argsz = sizeof(bind),
> > > +		.flags = 0,
> > > +	};
> > > +	struct iommu_ioas_alloc alloc_data  = {
> > > +		.size = sizeof(alloc_data),
> > > +		.flags = 0,
> > > +	};
> > > +	struct vfio_device_attach_iommufd_pt attach_data = {
> > > +		.argsz = sizeof(attach_data),
> > > +		.flags = 0,
> > > +	};
> > > +	struct iommu_ioas_map map = {
> > > +		.size = sizeof(map),
> > > +		.flags = IOMMU_IOAS_MAP_READABLE |
> > > +			 IOMMU_IOAS_MAP_WRITEABLE |
> > > +			 IOMMU_IOAS_MAP_FIXED_IOVA,
> > > +		.__reserved = 0,
> > > +	};
> > > +
> > > +	iommufd = open("/dev/iommu", O_RDWR);
> > > +
> > > +	bind.iommufd = iommufd; // negative value means vfio-noiommu mode
> > > +	ioctl(cdev_fd, VFIO_DEVICE_BIND_IOMMUFD, &bind);
> > > +
> > > +	ioctl(iommufd, IOMMU_IOAS_ALLOC, &alloc_data);
> > > +	attach_data.pt_id = alloc_data.out_ioas_id;
> > > +	ioctl(cdev_fd, VFIO_DEVICE_ATTACH_IOMMUFD_PT, &attach_data);
> > > +
> > > +	/* Allocate some space and setup a DMA mapping */
> > > +	map.user_va = (int64_t)mmap(0, 1024 * 1024, PROT_READ | PROT_WRITE,
> > > +				    MAP_PRIVATE | MAP_ANONYMOUS, 0, 0);
> > > +	map.iova = 0; /* 1MB starting at 0x0 from device view */
> > > +	map.length = 1024 * 1024;
> > > +	map.ioas_id = alloc_data.out_ioas_id;;
> > > +
> > > +	ioctl(iommufd, IOMMU_IOAS_MAP, &map);
> > > +
> > > +	/* Other device operations as stated in "VFIO Usage Example" */  
> > dev_id is not mentioned anywhere whereas it is used in the reset get
> > info. Worth to be mentioned?  
> 
> a good point. but it is just for PCI devices, not sure if it is good to
> mention it here. or the kdoc in the HOT_RESET_INFO ioctl is already
> enough. Alex, how about your taste?.

dev-id is just for PCI devices??  Maybe it's only a vfio-pci ioctl
that's requiring it for input, but it's not a bus specific feature.
There should be a description of how an iommufd property of the device
maps to this subsystem.  Thanks,

Alex

