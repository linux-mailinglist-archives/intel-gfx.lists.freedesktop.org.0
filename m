Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A0E8C2BCBA
	for <lists+intel-gfx@lfdr.de>; Mon, 03 Nov 2025 13:46:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 058EC10E3D1;
	Mon,  3 Nov 2025 12:46:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=google.com header.i=@google.com header.b="NbXM9NFF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com
 [209.85.128.45])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DEC2C10E1B0
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Nov 2025 09:57:41 +0000 (UTC)
Received: by mail-wm1-f45.google.com with SMTP id
 5b1f17b1804b1-470ff2f6e56so81445e9.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 03 Nov 2025 01:57:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1762163860; x=1762768660;
 darn=lists.freedesktop.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=4Gxg1uZruJtA4YMzZuNynPGAWW8m9xdZihRPr7yINg8=;
 b=NbXM9NFFD/zEhZPlYAOJ6/kqFHhmXF/xukCvHt5vZy3ptK15T+kvL1L+cBuqJzUCbf
 qVOqqfn1+6ff2v7aJrfDGgTSP01Ce4/3ohsDeAvQFfS7B3gEUioAuW/PwLcWZoGUDV1S
 lwMBsqB34AvcjwgNvkFTXUmCrZQwKb4m4WKUSjvGw9R/4Kmz9A8KRi1aNjG6FU2zWkP9
 tTql38AJkgl1LkfKfMtpEiSgN0t6q1cmLLxtP3AVGNFbZGkMU9nDeAMjchN+AIZTEy7o
 Vf9EsM8r0iXv8tqkOqmdhzqSln/TYtcrE3g9KXIXGx0tDiHBiCl4RxFGlvs7D5pS3pyq
 OgeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1762163860; x=1762768660;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=4Gxg1uZruJtA4YMzZuNynPGAWW8m9xdZihRPr7yINg8=;
 b=IoHUs7lwXkpvZY0kQ47mLSMba4iqjA4i88sD+S1Snl8b9edX6AHJEstPK0E2FPWhXZ
 Mu4z2Da8jO+esb82Y2WePZNwFDPOsr5KcuJ4CzmxsxxwgJ8Latv8/eQqtY9xIsFcGu2a
 8kr5arkf13aHPWuUtmk3EiMKiPgi6IG8mjWmHHPLxZFa3b+HCeWkS7ahwLH9VyMhTh2N
 XuMRwZT4RJ4GVylUPJuAN6fdOZ+L5CbEmABb2laJkAra5e5qWHINK5xbS980v9LvLsy3
 NmxwdOx46w5WrpImaGSUAxtnn9i1pdLFZmJhnrcbhoot8AaQUG503jv4buYkCXYWVWDI
 4+9w==
X-Forwarded-Encrypted: i=1;
 AJvYcCVnLvgMXVAu7q5rXaARPqDwF8L7BmpEynpKViLzNWjDmIgVa+LTWtOusScZR69zUXVkcGLbyUdlkBY=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Ywk65iyZnE83T5S0o3zIbkSbgmz1WyaPxvvzN890GWCafGf3H7M
 gXGtzOeBOiJEYAmKeLI2jAFEzbMMfS2GaF1a2N7SrbYcwvRoCdJEzHLTWLTSrXRsIA==
X-Gm-Gg: ASbGnct1lEHeTsWzWcmJtH0rJ+nBSFL0MQ4VhA+xgM04kBuyfHGrNIe8HCOJGbZv60u
 7udgU01O0+NkXDaycl0bc4YoqQLiiGZCQP0bV97r+5v2UB0GbQPRp5AexcvCpBIf7EsyZEOmRbY
 Ugj+LQQKxm9WKAdRtqfLKXzKfUiAGJNLeea29Vn71TZqComyW5DI2GSbERcVjvS3v6sY/lvn54i
 UL5VPWXTCREGZhVnkhMP52kQYc554kO/Txm13JjZ6AXmHdeeCE0iSn9VKCoA3pHQY6iYrmxz/6/
 9VAYI4F3ritx3kog+wbPLszqbDljl0JDc3MyXJR28P6bh1Lbhc91UIe5M+axut5pxt1PmhOgz1z
 PeWVDwm5BVTA0eb4Ga4bvalsMm8oasQ8lUL9KJ4UrWHkQ5pdVJrf01e4kpVE8bsI+xvcoSb/kVL
 Itg8gMvnQyK8BE0uNuofW4P5+MVJFmT4LjsAfZgJsFATB4keIx8A==
X-Google-Smtp-Source: AGHT+IGLdHq84lPWuC9+6LJzgqfOJA4DO6nS6TVGXk5Ftt4X8sQj+LIHdpfQT0AOQR/zxEXR5CFwjw==
X-Received: by 2002:a05:600c:8711:b0:45f:2940:d194 with SMTP id
 5b1f17b1804b1-4773cdce892mr7234625e9.2.1762163860205; 
 Mon, 03 Nov 2025 01:57:40 -0800 (PST)
Received: from google.com (54.140.140.34.bc.googleusercontent.com.
 [34.140.140.54]) by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-429c11182e3sm19786186f8f.11.2025.11.03.01.57.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 03 Nov 2025 01:57:39 -0800 (PST)
Date: Mon, 3 Nov 2025 09:57:36 +0000
From: Mostafa Saleh <smostafa@google.com>
To: Jason Gunthorpe <jgg@nvidia.com>
Cc: Alexander Gordeev <agordeev@linux.ibm.com>,
 David Airlie <airlied@gmail.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Ankit Agrawal <ankita@nvidia.com>,
 Christian Borntraeger <borntraeger@linux.ibm.com>,
 Brett Creeley <brett.creeley@amd.com>,
 dri-devel@lists.freedesktop.org, Eric Auger <eric.auger@redhat.com>,
 Eric Farman <farman@linux.ibm.com>,
 Giovanni Cabiddu <giovanni.cabiddu@intel.com>,
 Vasily Gorbik <gor@linux.ibm.com>,
 Heiko Carstens <hca@linux.ibm.com>, intel-gfx@lists.freedesktop.org,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Kevin Tian <kevin.tian@intel.com>, kvm@vger.kernel.org,
 Kirti Wankhede <kwankhede@nvidia.com>, linux-s390@vger.kernel.org,
 Longfang Liu <liulongfang@huawei.com>,
 Matthew Rosato <mjrosato@linux.ibm.com>,
 Nikhil Agarwal <nikhil.agarwal@amd.com>, Nipun Gupta <nipun.gupta@amd.com>,
 Peter Oberparleiter <oberpar@linux.ibm.com>,
 Halil Pasic <pasic@linux.ibm.com>,
 Pranjal Shrivastava <praan@google.com>, qat-linux@intel.com,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Simona Vetter <simona@ffwll.ch>,
 Shameer Kolothum <skolothumtho@nvidia.com>,
 Sven Schnelle <svens@linux.ibm.com>, Tvrtko Ursulin <tursulin@ursulin.net>,
 virtualization@lists.linux.dev, Vineeth Vijayan <vneethv@linux.ibm.com>,
 Yishai Hadas <yishaih@nvidia.com>, Zhenyu Wang <zhenyuw.linux@gmail.com>,
 Zhi Wang <zhi.wang.linux@gmail.com>, patches@lists.linux.dev
Subject: Re: [PATCH 20/22] vfio/platform: Convert to get_region_info_caps
Message-ID: <aQh8kE9DrbxS2x1e@google.com>
References: <0-v1-679a6fa27d31+209-vfio_get_region_info_op_jgg@nvidia.com>
 <20-v1-679a6fa27d31+209-vfio_get_region_info_op_jgg@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20-v1-679a6fa27d31+209-vfio_get_region_info_op_jgg@nvidia.com>
X-Mailman-Approved-At: Mon, 03 Nov 2025 12:46:06 +0000
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Oct 23, 2025 at 08:09:34PM -0300, Jason Gunthorpe wrote:
> Remove the duplicate code and change info to a pointer. caps are not used.
> 
> Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>

Reviewed-by: Mostafa Saleh <smostafa@google.com>

Also, I smoke tested this on Qemu.

Thanks,
Mostafa

> ---
>  drivers/vfio/platform/vfio_amba.c             |  2 +-
>  drivers/vfio/platform/vfio_platform.c         |  2 +-
>  drivers/vfio/platform/vfio_platform_common.c  | 24 ++++++-------------
>  drivers/vfio/platform/vfio_platform_private.h |  3 ++-
>  4 files changed, 11 insertions(+), 20 deletions(-)
> 
> diff --git a/drivers/vfio/platform/vfio_amba.c b/drivers/vfio/platform/vfio_amba.c
> index d600deaf23b6d7..fa754f203b2dfc 100644
> --- a/drivers/vfio/platform/vfio_amba.c
> +++ b/drivers/vfio/platform/vfio_amba.c
> @@ -115,7 +115,7 @@ static const struct vfio_device_ops vfio_amba_ops = {
>  	.open_device	= vfio_platform_open_device,
>  	.close_device	= vfio_platform_close_device,
>  	.ioctl		= vfio_platform_ioctl,
> -	.get_region_info = vfio_platform_ioctl_get_region_info,
> +	.get_region_info_caps = vfio_platform_ioctl_get_region_info,
>  	.read		= vfio_platform_read,
>  	.write		= vfio_platform_write,
>  	.mmap		= vfio_platform_mmap,
> diff --git a/drivers/vfio/platform/vfio_platform.c b/drivers/vfio/platform/vfio_platform.c
> index 0e85c914b65105..a4d3ace3e02dda 100644
> --- a/drivers/vfio/platform/vfio_platform.c
> +++ b/drivers/vfio/platform/vfio_platform.c
> @@ -101,7 +101,7 @@ static const struct vfio_device_ops vfio_platform_ops = {
>  	.open_device	= vfio_platform_open_device,
>  	.close_device	= vfio_platform_close_device,
>  	.ioctl		= vfio_platform_ioctl,
> -	.get_region_info = vfio_platform_ioctl_get_region_info,
> +	.get_region_info_caps = vfio_platform_ioctl_get_region_info,
>  	.read		= vfio_platform_read,
>  	.write		= vfio_platform_write,
>  	.mmap		= vfio_platform_mmap,
> diff --git a/drivers/vfio/platform/vfio_platform_common.c b/drivers/vfio/platform/vfio_platform_common.c
> index 3ebd50fb78fbb7..c2990b7e900fa5 100644
> --- a/drivers/vfio/platform/vfio_platform_common.c
> +++ b/drivers/vfio/platform/vfio_platform_common.c
> @@ -273,30 +273,20 @@ int vfio_platform_open_device(struct vfio_device *core_vdev)
>  EXPORT_SYMBOL_GPL(vfio_platform_open_device);
>  
>  int vfio_platform_ioctl_get_region_info(struct vfio_device *core_vdev,
> -					struct vfio_region_info __user *arg)
> +					struct vfio_region_info *info,
> +					struct vfio_info_cap *caps)
>  {
>  	struct vfio_platform_device *vdev =
>  		container_of(core_vdev, struct vfio_platform_device, vdev);
> -	struct vfio_region_info info;
> -	unsigned long minsz;
>  
> -	minsz = offsetofend(struct vfio_region_info, offset);
> -
> -	if (copy_from_user(&info, arg, minsz))
> -		return -EFAULT;
> -
> -	if (info.argsz < minsz)
> -		return -EINVAL;
> -
> -	if (info.index >= vdev->num_regions)
> +	if (info->index >= vdev->num_regions)
>  		return -EINVAL;
>  
>  	/* map offset to the physical address  */
> -	info.offset = VFIO_PLATFORM_INDEX_TO_OFFSET(info.index);
> -	info.size = vdev->regions[info.index].size;
> -	info.flags = vdev->regions[info.index].flags;
> -
> -	return copy_to_user(arg, &info, minsz) ? -EFAULT : 0;
> +	info->offset = VFIO_PLATFORM_INDEX_TO_OFFSET(info->index);
> +	info->size = vdev->regions[info->index].size;
> +	info->flags = vdev->regions[info->index].flags;
> +	return 0;
>  }
>  EXPORT_SYMBOL_GPL(vfio_platform_ioctl_get_region_info);
>  
> diff --git a/drivers/vfio/platform/vfio_platform_private.h b/drivers/vfio/platform/vfio_platform_private.h
> index a6008320e77bae..05084212a76eb6 100644
> --- a/drivers/vfio/platform/vfio_platform_private.h
> +++ b/drivers/vfio/platform/vfio_platform_private.h
> @@ -86,7 +86,8 @@ void vfio_platform_close_device(struct vfio_device *core_vdev);
>  long vfio_platform_ioctl(struct vfio_device *core_vdev,
>  			 unsigned int cmd, unsigned long arg);
>  int vfio_platform_ioctl_get_region_info(struct vfio_device *core_vdev,
> -					struct vfio_region_info __user *arg);
> +					struct vfio_region_info *info,
> +					struct vfio_info_cap *caps);
>  ssize_t vfio_platform_read(struct vfio_device *core_vdev,
>  			   char __user *buf, size_t count,
>  			   loff_t *ppos);
> -- 
> 2.43.0
> 
