Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B51E6CF692
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Mar 2023 00:48:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF97C10E1A5;
	Wed, 29 Mar 2023 22:47:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD57A10E1A4
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Mar 2023 22:47:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1680130076;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=EAFNXL8OuvVCp+ZsG3YYv2EZft385+WcsO116CuPnRc=;
 b=i7Zbv+YbqOOn+vCs1J1xhLWYszoFwqg4u9GX9sMdsNvqdKMu1myO/kX1iwzi8CL6jZdhJZ
 Pr5cZZTv/bxoyDyZmHEem0x+yCc4ZX8hgIRuQwAwgLhAunOhVfgwppQaNbii9q43sbdCl5
 ev1do/k5GARP4QZ/PK4iiRnnyaYCJeE=
Received: from mail-io1-f70.google.com (mail-io1-f70.google.com
 [209.85.166.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-30-NjIh_HnIOMyKvP_86WcXig-1; Wed, 29 Mar 2023 18:47:55 -0400
X-MC-Unique: NjIh_HnIOMyKvP_86WcXig-1
Received: by mail-io1-f70.google.com with SMTP id
 s3-20020a056602240300b007589413aea0so10328542ioa.5
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Mar 2023 15:47:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680130072;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=EAFNXL8OuvVCp+ZsG3YYv2EZft385+WcsO116CuPnRc=;
 b=wh8syryptZovkq6N1Dgy3Ux/4WONkcrHHzAwJu6/ZvK3ka78zeSX3egva141PG14e1
 xp1DqSzeaevyPxj/axmu8u+kPvVPnW8zOJgHjtxYBKdStAT8SGnif2XkwJ+7UzckBlmq
 C3Quqismvf/q4RJjRb2pZlTsYHYAmoUmfNZl8y8Q0l5tgzCNgD4RwP0ZjIXkRFn/e0eW
 t0Yvy6YG3xnCvnanXjPUyfJKt5yu9kxAjcE8kpXAL/H5rd12IRL402epUszeEPJkx+gD
 BVMf79XmbfayYgR53bqUP7N0fBazNp0h78Jpu0x5M9Ep7j9tHR3VH4/T4Dac6j0ijMeH
 Zhew==
X-Gm-Message-State: AO0yUKVuC79WKHagQgq5m37ycg3c8lhNjZ5kE9EpcOShuER+vagPJADW
 W6aIY8goye80xXwD+qpS0iEjAEcoukFKeEHUC2kHVdQs1tErLULJkmCA3oj0CWciYwmyZ3is4e1
 IFdBLs/GvgWgo+u4a+XZcFIhwon+D
X-Received: by 2002:a5e:8344:0:b0:753:7cef:6383 with SMTP id
 y4-20020a5e8344000000b007537cef6383mr15654864iom.8.1680130072210; 
 Wed, 29 Mar 2023 15:47:52 -0700 (PDT)
X-Google-Smtp-Source: AK7set/Oqs+6kFDxn2w3FS9AhA0ZvLLKl4b6L1jIAXFQAIPVYEF2juJ8F1iY+ayWQ8fgbwnI9kAVIQ==
X-Received: by 2002:a5e:8344:0:b0:753:7cef:6383 with SMTP id
 y4-20020a5e8344000000b007537cef6383mr15654839iom.8.1680130071903; 
 Wed, 29 Mar 2023 15:47:51 -0700 (PDT)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 n13-20020a5e8c0d000000b0074555814e73sm4853842ioj.32.2023.03.29.15.47.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Mar 2023 15:47:51 -0700 (PDT)
Date: Wed, 29 Mar 2023 16:47:49 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: Yi Liu <yi.l.liu@intel.com>
Message-ID: <20230329164749.2778aa04.alex.williamson@redhat.com>
In-Reply-To: <20230327094047.47215-25-yi.l.liu@intel.com>
References: <20230327094047.47215-1-yi.l.liu@intel.com>
 <20230327094047.47215-25-yi.l.liu@intel.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.35; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v8 24/24] docs: vfio: Add vfio device cdev
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
Cc: mjrosato@linux.ibm.com, jasowang@redhat.com, xudong.hao@intel.com,
 peterx@redhat.com, terrence.xu@intel.com, chao.p.peng@linux.intel.com,
 linux-s390@vger.kernel.org, kvm@vger.kernel.org, lulu@redhat.com,
 yanting.jiang@intel.com, joro@8bytes.org, nicolinc@nvidia.com, jgg@nvidia.com,
 yan.y.zhao@intel.com, intel-gfx@lists.freedesktop.org, eric.auger@redhat.com,
 intel-gvt-dev@lists.freedesktop.org, yi.y.sun@linux.intel.com,
 cohuck@redhat.com, shameerali.kolothum.thodi@huawei.com,
 suravee.suthikulpanit@amd.com, robin.murphy@arm.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 27 Mar 2023 02:40:47 -0700
Yi Liu <yi.l.liu@intel.com> wrote:

> This gives notes for userspace applications on device cdev usage.
> 
> Reviewed-by: Kevin Tian <kevin.tian@intel.com>
> Signed-off-by: Yi Liu <yi.l.liu@intel.com>
> ---
>  Documentation/driver-api/vfio.rst | 127 ++++++++++++++++++++++++++++++
>  1 file changed, 127 insertions(+)
> 
> diff --git a/Documentation/driver-api/vfio.rst b/Documentation/driver-api/vfio.rst
> index 363e12c90b87..77408788b98d 100644
> --- a/Documentation/driver-api/vfio.rst
> +++ b/Documentation/driver-api/vfio.rst
> @@ -239,6 +239,125 @@ group and can access them as follows::
>  	/* Gratuitous device reset and go... */
>  	ioctl(device, VFIO_DEVICE_RESET);
>  
> +IOMMUFD and vfio_iommu_type1
> +----------------------------
> +
> +IOMMUFD is the new user API to manage I/O page tables from userspace.
> +It intends to be the portal of delivering advanced userspace DMA
> +features (nested translation [5], PASID [6], etc.) while being backward
> +compatible with the vfio_iommu_type1 driver.  Eventually vfio_iommu_type1
> +will be deprecated.

"... while also providing a backwards compatibility interface for
existing VFIO_TYPE1v2_IOMMU use cases.  Eventually the vfio_iommu_type1
driver, as well as the legacy vfio container and group model is
intended to be deprecated."

> +
> +With the backward compatibility, no change is required for legacy
> VFIO +drivers or applications to connect a VFIO device to IOMMUFD.
> +
> +	When CONFIG_IOMMUFD_VFIO_CONTAINER=n, VFIO container still provides
> +	/dev/vfio/vfio which connects to vfio_iommu_type1.  To disable VFIO
> +	container and vfio_iommu_type1, the administrator could symbol link
> +	/dev/vfio/vfio to /dev/iommu to enable VFIO container emulation
> +	in IOMMUFD.
> +
> +	When CONFIG_IOMMUFD_VFIO_CONTAINER=y, IOMMUFD directly provides
> +	/dev/vfio/vfio while the VFIO container and vfio_iommu_type1 are
> +	explicitly disabled.
> +

"The IOMMUFD backwards compatibility interface can be enabled two ways.
In the first method, the kernel can be configured with
CONFIG_IOMMUFD_VFIO_CONTAINER, in which case the IOMMUFD subsystem
transparently provides the entire infrastructure for the the VFIO
container and IOMMU backend interfaces.  The compatibility mode can
also be accessed if the VFIO container interface, ie. /dev/vfio/vfio is
simply symlink'd to /dev/iommu.  Note that at the time of writing, the
compatibility mode is not entirely feature complete relative to
VFIO_TYPE1v2_IOMMU (ex. DMA mapping MMIO) and does not attempt to
provide compatibility to the VFIO_SPAPR_TCE_IOMMU interface.  Therefore
it is not generally advisable at this time to switch from native VFIO
implementations to the IOMMUFD compatibility interfaces.

Long term, VFIO users should migrate to device access through the cdev
interface described below, and native access through the IOMMUFD
provided interfaces."

Thanks,
Alex

> +VFIO Device cdev
> +----------------
> +
> +Traditionally user acquires a device fd via VFIO_GROUP_GET_DEVICE_FD
> +in a VFIO group.
> +
> +With CONFIG_VFIO_DEVICE_CDEV=y the user can now acquire a device fd
> +by directly opening a character device /dev/vfio/devices/vfioX where
> +"X" is the number allocated uniquely by VFIO for registered devices.
> +For noiommu devices, the character device would be named with
> "noiommu-" +prefix. e.g. /dev/vfio/devices/noiommu-vfioX.
> +
> +The cdev only works with IOMMUFD.  Both VFIO drivers and applications
> +must adapt to the new cdev security model which requires using
> +VFIO_DEVICE_BIND_IOMMUFD to claim DMA ownership before starting to
> +actually use the device.  Once BIND succeeds then a VFIO device can
> +be fully accessed by the user.
> +
> +VFIO device cdev doesn't rely on VFIO group/container/iommu drivers.
> +Hence those modules can be fully compiled out in an environment
> +where no legacy VFIO application exists.
> +
> +So far SPAPR does not support IOMMUFD yet.  So it cannot support
> device +cdev neither.
> +
> +Device cdev Example
> +-------------------
> +
> +Assume user wants to access PCI device 0000:6a:01.0::
> +
> +	$ ls /sys/bus/pci/devices/0000:6a:01.0/vfio-dev/
> +	vfio0
> +
> +This device is therefore represented as vfio0.  The user can verify
> +its existence::
> +
> +	$ ls -l /dev/vfio/devices/vfio0
> +	crw------- 1 root root 511, 0 Feb 16 01:22
> /dev/vfio/devices/vfio0
> +	$ cat /sys/bus/pci/devices/0000:6a:01.0/vfio-dev/vfio0/dev
> +	511:0
> +	$ ls -l /dev/char/511\:0
> +	lrwxrwxrwx 1 root root 21 Feb 16 01:22 /dev/char/511:0 ->
> ../vfio/devices/vfio0 +
> +Then provide the user with access to the device if unprivileged
> +operation is desired::
> +
> +	$ chown user:user /dev/vfio/devices/vfio0
> +
> +Finally the user could get cdev fd by::
> +
> +	cdev_fd = open("/dev/vfio/devices/vfio0", O_RDWR);
> +
> +An opened cdev_fd doesn't give the user any permission of accessing
> +the device except binding the cdev_fd to an iommufd.  After that
> point +then the device is fully accessible including attaching it to
> an +IOMMUFD IOAS/HWPT to enable userspace DMA::
> +
> +	struct vfio_device_bind_iommufd bind = {
> +		.argsz = sizeof(bind),
> +		.flags = 0,
> +	};
> +	struct iommu_ioas_alloc alloc_data  = {
> +		.size = sizeof(alloc_data),
> +		.flags = 0,
> +	};
> +	struct vfio_device_attach_iommufd_pt attach_data = {
> +		.argsz = sizeof(attach_data),
> +		.flags = 0,
> +	};
> +	struct iommu_ioas_map map = {
> +		.size = sizeof(map),
> +		.flags = IOMMU_IOAS_MAP_READABLE |
> +			 IOMMU_IOAS_MAP_WRITEABLE |
> +			 IOMMU_IOAS_MAP_FIXED_IOVA,
> +		.__reserved = 0,
> +	};
> +
> +	iommufd = open("/dev/iommu", O_RDWR);
> +
> +	bind.iommufd = iommufd; // negative value means vfio-noiommu
> mode
> +	ioctl(cdev_fd, VFIO_DEVICE_BIND_IOMMUFD, &bind);
> +
> +	ioctl(iommufd, IOMMU_IOAS_ALLOC, &alloc_data);
> +	attach_data.pt_id = alloc_data.out_ioas_id;
> +	ioctl(cdev_fd, VFIO_DEVICE_ATTACH_IOMMUFD_PT, &attach_data);
> +
> +	/* Allocate some space and setup a DMA mapping */
> +	map.user_va = (int64_t)mmap(0, 1024 * 1024, PROT_READ |
> PROT_WRITE,
> +				    MAP_PRIVATE | MAP_ANONYMOUS, 0,
> 0);
> +	map.iova = 0; /* 1MB starting at 0x0 from device view */
> +	map.length = 1024 * 1024;
> +	map.ioas_id = alloc_data.out_ioas_id;;
> +
> +	ioctl(iommufd, IOMMU_IOAS_MAP, &map);
> +
> +	/* Other device operations as stated in "VFIO Usage Example"
> */ +
>  VFIO User API
>  -------------------------------------------------------------------------------
>  
> @@ -566,3 +685,11 @@ This implementation has some specifics:
>  				\-0d.1
>  
>  	00:1e.0 PCI bridge: Intel Corporation 82801 PCI Bridge (rev
> 90) +
> +.. [5] Nested translation is an IOMMU feature which supports two
> stage
> +   address translations.  This improves the address translation
> efficiency
> +   in IOMMU virtualization.
> +
> +.. [6] PASID stands for Process Address Space ID, introduced by PCI
> +   Express.  It is a prerequisite for Shared Virtual Addressing (SVA)
> +   and Scalable I/O Virtualization (Scalable IOV).

