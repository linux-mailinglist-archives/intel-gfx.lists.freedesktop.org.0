Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 536966D7DFE
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Apr 2023 15:45:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D902B10E968;
	Wed,  5 Apr 2023 13:45:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E109810E968
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Apr 2023 13:45:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1680702340;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=UJbIjNLXOucJBHy8O9LklHe7fXgIGsveKPjLMEj3izE=;
 b=VgFdM0jP5GTyn7mQ/d+dJ72aABzglCfShJxjgkVP4rAapUq65sHETWQ0ZMwKY4JlmXD9lr
 Kpi9stIwlUEAl/HHRVliK+vd046VxnNgm4uXaSOP6Ff68vUUT2Vr7H7LnCP/j5kB3Z1Xpa
 xo98seRgOkXmSKnsBeqLlIWAoHGIkwI=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-73-kgDSWiSLP2m0Kdaix5ZRZQ-1; Wed, 05 Apr 2023 09:45:39 -0400
X-MC-Unique: kgDSWiSLP2m0Kdaix5ZRZQ-1
Received: by mail-qk1-f197.google.com with SMTP id
 d187-20020a3768c4000000b00746864b272cso16234325qkc.15
 for <intel-gfx@lists.freedesktop.org>; Wed, 05 Apr 2023 06:45:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680702339;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:reply-to:user-agent:mime-version:date
 :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=UJbIjNLXOucJBHy8O9LklHe7fXgIGsveKPjLMEj3izE=;
 b=FQmHhY9pw3wQ8dH4BBL0JpOruB1Hiu/Ld/Cww8oe8CFw4pJ1HRKMvI/EUGBXfnm2Vg
 3aiCBhx+qgHFT5K/33sA0uXJUrEVQFdXjH+Ps3gnsHfmL54OZshSWZAyDZ9OMrqkMfRz
 rm1+lZ6u3NozSMR+QEzGHzuiEQwjWoG/W3qEkaoFVqBznMLa3mQfClHPQVBV6xEwUN3I
 7fJrQ2rRPW+E9dtyNvL7wbm1NbLuL6cCHd+4HGitzYVKbxKuXitzNutVoqCXRAz30tH3
 9XdZbKNurdOfFiHmbST2F1M0iMbPz06QD3dd+QuOZSEeAweb/EbVfJIKMSXggynqKx7t
 LWng==
X-Gm-Message-State: AAQBX9e+BiE2li2A2npn6LYjC6M9AIehD1Hr82mJedG8/1a/3flGHRE0
 yztLvV5+b0/spayCeOUStf7ujazOTLGGZqn1gTq8Wld6BU/91n49tbUOIanFTSYn38m9bGqHg3a
 4H2Y+DhVEwozZd4qNsOb55Vdbaf7H
X-Received: by 2002:a05:622a:5d2:b0:3dc:a4e5:aef0 with SMTP id
 d18-20020a05622a05d200b003dca4e5aef0mr4956638qtb.9.1680702338950; 
 Wed, 05 Apr 2023 06:45:38 -0700 (PDT)
X-Google-Smtp-Source: AKy350aMTGMNXRIFwqBsXvWp9jP9kjnDI3+mmPafsP9ntb/LA+LjDTGP5cIPhRwpuPvwZvjnbuojHA==
X-Received: by 2002:a05:622a:5d2:b0:3dc:a4e5:aef0 with SMTP id
 d18-20020a05622a05d200b003dca4e5aef0mr4956595qtb.9.1680702338584; 
 Wed, 05 Apr 2023 06:45:38 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:59e:9d80:527b:9dff:feef:3874?
 ([2a01:e0a:59e:9d80:527b:9dff:feef:3874])
 by smtp.gmail.com with ESMTPSA id
 t12-20020a37460c000000b0074a0a6ce71csm4455221qka.61.2023.04.05.06.45.32
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 05 Apr 2023 06:45:37 -0700 (PDT)
Message-ID: <cc500fe5-1fdf-1b71-a5b4-f9f917b1abf2@redhat.com>
Date: Wed, 5 Apr 2023 15:45:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
To: Yi Liu <yi.l.liu@intel.com>, alex.williamson@redhat.com, jgg@nvidia.com,
 kevin.tian@intel.com
References: <20230401151833.124749-1-yi.l.liu@intel.com>
 <20230401151833.124749-26-yi.l.liu@intel.com>
From: Eric Auger <eric.auger@redhat.com>
In-Reply-To: <20230401151833.124749-26-yi.l.liu@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
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
Reply-To: eric.auger@redhat.com
Cc: linux-s390@vger.kernel.org, yi.y.sun@linux.intel.com, kvm@vger.kernel.org,
 mjrosato@linux.ibm.com, intel-gvt-dev@lists.freedesktop.org, joro@8bytes.org,
 cohuck@redhat.com, xudong.hao@intel.com, peterx@redhat.com,
 yan.y.zhao@intel.com, terrence.xu@intel.com, nicolinc@nvidia.com,
 shameerali.kolothum.thodi@huawei.com, suravee.suthikulpanit@amd.com,
 intel-gfx@lists.freedesktop.org, chao.p.peng@linux.intel.com, lulu@redhat.com,
 robin.murphy@arm.com, jasowang@redhat.com, yanting.jiang@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Yi,

On 4/1/23 17:18, Yi Liu wrote:
> This gives notes for userspace applications on device cdev usage.
>
> Reviewed-by: Kevin Tian <kevin.tian@intel.com>
> Signed-off-by: Yi Liu <yi.l.liu@intel.com>
> ---
>  Documentation/driver-api/vfio.rst | 132 ++++++++++++++++++++++++++++++
>  1 file changed, 132 insertions(+)
>
> diff --git a/Documentation/driver-api/vfio.rst b/Documentation/driver-api/vfio.rst
> index 363e12c90b87..4f21be7bda8a 100644
> --- a/Documentation/driver-api/vfio.rst
> +++ b/Documentation/driver-api/vfio.rst
> @@ -239,6 +239,130 @@ group and can access them as follows::
>  	/* Gratuitous device reset and go... */
>  	ioctl(device, VFIO_DEVICE_RESET);
>  
> +IOMMUFD and vfio_iommu_type1
> +----------------------------
> +
> +IOMMUFD is the new user API to manage I/O page tables from userspace.
> +It intends to be the portal of delivering advanced userspace DMA
> +features (nested translation [5], PASID [6], etc.) while also providing
> +a backwards compatibility interface for existing VFIO_TYPE1v2_IOMMU use
> +cases.  Eventually the vfio_iommu_type1 driver, as well as the legacy
> +vfio container and group model is intended to be deprecated.
> +
> +The IOMMUFD backwards compatibility interface can be enabled two ways.
> +In the first method, the kernel can be configured with
> +CONFIG_IOMMUFD_VFIO_CONTAINER, in which case the IOMMUFD subsystem
> +transparently provides the entire infrastructure for the VFIO
> +container and IOMMU backend interfaces.  The compatibility mode can
> +also be accessed if the VFIO container interface, ie. /dev/vfio/vfio is
> +simply symlink'd to /dev/iommu.  Note that at the time of writing, the
> +compatibility mode is not entirely feature complete relative to
> +VFIO_TYPE1v2_IOMMU (ex. DMA mapping MMIO) and does not attempt to
> +provide compatibility to the VFIO_SPAPR_TCE_IOMMU interface.  Therefore
> +it is not generally advisable at this time to switch from native VFIO
> +implementations to the IOMMUFD compatibility interfaces.
> +
> +Long term, VFIO users should migrate to device access through the cdev
> +interface described below, and native access through the IOMMUFD
> +provided interfaces.
> +
> +VFIO Device cdev
> +----------------
> +
> +Traditionally user acquires a device fd via VFIO_GROUP_GET_DEVICE_FD
> +in a VFIO group.
> +
> +With CONFIG_VFIO_DEVICE_CDEV=y the user can now acquire a device fd
> +by directly opening a character device /dev/vfio/devices/vfioX where
> +"X" is the number allocated uniquely by VFIO for registered devices.
> +For noiommu devices, the character device would be named with "noiommu-"
> +prefix. e.g. /dev/vfio/devices/noiommu-vfioX.
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
> +So far SPAPR does not support IOMMUFD yet.  So it cannot support device
> +cdev neither.
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
> +	crw------- 1 root root 511, 0 Feb 16 01:22 /dev/vfio/devices/vfio0
> +	$ cat /sys/bus/pci/devices/0000:6a:01.0/vfio-dev/vfio0/dev
you mentionned in the pci hot reset series that the BDF couldn't be used
if cdev is being used. According to the above, it could, no?
> +	511:0
> +	$ ls -l /dev/char/511\:0
> +	lrwxrwxrwx 1 root root 21 Feb 16 01:22 /dev/char/511:0 -> ../vfio/devices/vfio0
> +
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
> +the device except binding the cdev_fd to an iommufd.  After that point
> +then the device is fully accessible including attaching it to an
> +IOMMUFD IOAS/HWPT to enable userspace DMA::
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
> +	bind.iommufd = iommufd; // negative value means vfio-noiommu mode
> +	ioctl(cdev_fd, VFIO_DEVICE_BIND_IOMMUFD, &bind);
> +
> +	ioctl(iommufd, IOMMU_IOAS_ALLOC, &alloc_data);
> +	attach_data.pt_id = alloc_data.out_ioas_id;
> +	ioctl(cdev_fd, VFIO_DEVICE_ATTACH_IOMMUFD_PT, &attach_data);
> +
> +	/* Allocate some space and setup a DMA mapping */
> +	map.user_va = (int64_t)mmap(0, 1024 * 1024, PROT_READ | PROT_WRITE,
> +				    MAP_PRIVATE | MAP_ANONYMOUS, 0, 0);
> +	map.iova = 0; /* 1MB starting at 0x0 from device view */
> +	map.length = 1024 * 1024;
> +	map.ioas_id = alloc_data.out_ioas_id;;
> +
> +	ioctl(iommufd, IOMMU_IOAS_MAP, &map);
> +
> +	/* Other device operations as stated in "VFIO Usage Example" */
dev_id is not mentioned anywhere whereas it is used in the reset get
info. Worth to be mentioned?

Otherwise looks good to me

Eric
> +
>  VFIO User API
>  -------------------------------------------------------------------------------
>  
> @@ -566,3 +690,11 @@ This implementation has some specifics:
>  				\-0d.1
>  
>  	00:1e.0 PCI bridge: Intel Corporation 82801 PCI Bridge (rev 90)
> +
> +.. [5] Nested translation is an IOMMU feature which supports two stage
> +   address translations.  This improves the address translation efficiency
> +   in IOMMU virtualization.
> +
> +.. [6] PASID stands for Process Address Space ID, introduced by PCI
> +   Express.  It is a prerequisite for Shared Virtual Addressing (SVA)
> +   and Scalable I/O Virtualization (Scalable IOV).

