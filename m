Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42A06C2C4A1
	for <lists+intel-gfx@lfdr.de>; Mon, 03 Nov 2025 14:59:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0082D10E1A9;
	Mon,  3 Nov 2025 13:59:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="LsTQAlbT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18ED010E3F2
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Nov 2025 13:59:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1762178375;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=bsxzOKYHqHXC5PUWfDfFaZwNataXiFJtKNUMBtRzjIc=;
 b=LsTQAlbTKrE8RMQx3Aw8HB650kiRo5yWwXCbpN+2hhGZ3I8ILaCLSeDjuvQih9zJy5Fzob
 eUCINbG6UXcv3brhsttOpwT4rF7fOeGzi0Z5lPj+z4dSqJ4WNuAM/rSlAy/w+47NVyWoQ9
 LxGDgXtBVIhQqhsZGXkONrxhN5UMHTM=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-668-rjt0LeJKNVSYEs-9_VIWcw-1; Mon, 03 Nov 2025 08:59:34 -0500
X-MC-Unique: rjt0LeJKNVSYEs-9_VIWcw-1
X-Mimecast-MFC-AGG-ID: rjt0LeJKNVSYEs-9_VIWcw_1762178374
Received: by mail-wm1-f72.google.com with SMTP id
 5b1f17b1804b1-47106a388cfso35366795e9.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 03 Nov 2025 05:59:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1762178373; x=1762783173;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:reply-to:user-agent:mime-version:date
 :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=bsxzOKYHqHXC5PUWfDfFaZwNataXiFJtKNUMBtRzjIc=;
 b=jqG90M+o06hDPEfWl5M5PhTtmzdMbUkQVsWO0O6542u5QhoZbUkcxkhLgmWPjnp0xw
 nHxuqWG4sN6cv8pdGX9S9WKTUjtxwBUUMEd7pCxpDvWG76O2Wopiw6RZySzWCWJ+iPtu
 rD7Hf+w9i/KB/b9LhUBWcPdC1umSpclChqAmK7PFgllwJ83fyE/qWD6cPv9J+nO+NxBP
 uXvTcf2pyubT2UuWwlLQySGuxpYlt/WYKJve1Eejw6H5Mc9CsU37cGR0Vi8e37uzNaLY
 oT3NJH5qssmizOPfO+otgKvqWit3ECFiv2e4mWGZsv3WZHrk/i9oGGQirgKo6gIgw8tL
 1hPQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVTDu+fruDv1wb7jsVOFKc/EWtnd+5VZFeyxq/QvuwjwlI1ZbC+2zFE9Ka9+M7yIr40hzAo8mFZRWc=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yzk3/rBiVpUiN80vxx59TQxVieDnbRxhsmkn+E5+F46z3JQ5n5u
 jYZn6+N6XogLgZN3YqkOXWRqpIofQlsaJqZU4BGB8TI8DwJsHMCVW1wKJKz67bDNWpJ0qLfODss
 wARlAhdZlwlENivvmK41sO2eWtJLxRrVqXpS7Xi6uXQ9dhMt5Dq7amYlT2AtJPtJuReiHtA==
X-Gm-Gg: ASbGncuWNlFUi4+o7IP463/VKHndl9TYI7UGNJewyPrS9tc1i42fiAqhSKQHMbv7ody
 zNxiXkZ7IW4XLsTUTJ6/+OoShZhjaPmvmhRcfoeStCYBFlGZxoWNQfAt6SzndrTXT4IfM4GKOHY
 /Ijbx6JLuM5/Tzz+hbLvib2rNptuok2jFH/aI19xRQU1ub6Wc35WLmXmC+0Gc/sTelpPupOSMxZ
 1Ce1NldKkutRF/GwGi0b+mhMLltXJnHOioXXtINaVdhXjVWguT8ozrjVrXkUnXYg2BDay/9bGmI
 ilgpG52kFXDJq6bvJZEI14/wY6qP37A699vjcS8IPsqaGhPnkvdm1lNo/m3kzs2nh69gLr1z4pb
 nb7ys/Ls39QbnvvRB2fq/1Kw0Up3L80tZwBOIm1G+5cxRPA==
X-Received: by 2002:a05:600c:3b15:b0:46e:48fd:a1a9 with SMTP id
 5b1f17b1804b1-4773089cd1amr118452275e9.33.1762178373405; 
 Mon, 03 Nov 2025 05:59:33 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHKpOeJ3OCF2vnsxcvEkg/1eMNuJuaakX/5JjRbkHK8VRtwHXD8pikxeGoOHXlvFPGq9VVSPQ==
X-Received: by 2002:a05:600c:3b15:b0:46e:48fd:a1a9 with SMTP id
 5b1f17b1804b1-4773089cd1amr118451615e9.33.1762178372957; 
 Mon, 03 Nov 2025 05:59:32 -0800 (PST)
Received: from ?IPV6:2a01:e0a:f0e:9070:527b:9dff:feef:3874?
 ([2a01:e0a:f0e:9070:527b:9dff:feef:3874])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-4773c2e6771sm156241435e9.2.2025.11.03.05.59.30
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 03 Nov 2025 05:59:32 -0800 (PST)
Message-ID: <0815321f-00d5-402c-b84d-99bc862b4575@redhat.com>
Date: Mon, 3 Nov 2025 14:59:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 09/22] vfio/platform: Provide a get_region_info op
To: Jason Gunthorpe <jgg@nvidia.com>,
 Alexander Gordeev <agordeev@linux.ibm.com>, David Airlie
 <airlied@gmail.com>, Alex Williamson <alex.williamson@redhat.com>,
 Ankit Agrawal <ankita@nvidia.com>,
 Christian Borntraeger <borntraeger@linux.ibm.com>,
 Brett Creeley <brett.creeley@amd.com>, dri-devel@lists.freedesktop.org,
 Eric Farman <farman@linux.ibm.com>,
 Giovanni Cabiddu <giovanni.cabiddu@intel.com>,
 Vasily Gorbik <gor@linux.ibm.com>, Heiko Carstens <hca@linux.ibm.com>,
 intel-gfx@lists.freedesktop.org, Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Kevin Tian <kevin.tian@intel.com>, kvm@vger.kernel.org,
 Kirti Wankhede <kwankhede@nvidia.com>, linux-s390@vger.kernel.org,
 Longfang Liu <liulongfang@huawei.com>,
 Matthew Rosato <mjrosato@linux.ibm.com>,
 Nikhil Agarwal <nikhil.agarwal@amd.com>, Nipun Gupta <nipun.gupta@amd.com>,
 Peter Oberparleiter <oberpar@linux.ibm.com>,
 Halil Pasic <pasic@linux.ibm.com>, Pranjal Shrivastava <praan@google.com>,
 qat-linux@intel.com, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Simona Vetter <simona@ffwll.ch>, Shameer Kolothum <skolothumtho@nvidia.com>,
 Mostafa Saleh <smostafa@google.com>, Sven Schnelle <svens@linux.ibm.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, virtualization@lists.linux.dev,
 Vineeth Vijayan <vneethv@linux.ibm.com>, Yishai Hadas <yishaih@nvidia.com>,
 Zhenyu Wang <zhenyuw.linux@gmail.com>, Zhi Wang <zhi.wang.linux@gmail.com>
Cc: patches@lists.linux.dev
References: <9-v1-679a6fa27d31+209-vfio_get_region_info_op_jgg@nvidia.com>
From: Eric Auger <eric.auger@redhat.com>
In-Reply-To: <9-v1-679a6fa27d31+209-vfio_get_region_info_op_jgg@nvidia.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: u5eTmeHlGmTiAgrZ2uIlSWER5DwalEQ7v7wFF70giyw_1762178374
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Jason,

On 10/24/25 1:09 AM, Jason Gunthorpe wrote:
> Move it out of vfio_platform_ioctl() and re-indent it. Add it to all
> platform drivers.
>
> Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>
> ---
>  drivers/vfio/platform/vfio_amba.c             |  1 +
>  drivers/vfio/platform/vfio_platform.c         |  1 +
>  drivers/vfio/platform/vfio_platform_common.c  | 50 +++++++++++--------
>  drivers/vfio/platform/vfio_platform_private.h |  2 +
>  4 files changed, 32 insertions(+), 22 deletions(-)
>
> diff --git a/drivers/vfio/platform/vfio_amba.c b/drivers/vfio/platform/vfio_amba.c
> index 9f5c527baa8a36..d600deaf23b6d7 100644
> --- a/drivers/vfio/platform/vfio_amba.c
> +++ b/drivers/vfio/platform/vfio_amba.c
> @@ -115,6 +115,7 @@ static const struct vfio_device_ops vfio_amba_ops = {
>  	.open_device	= vfio_platform_open_device,
>  	.close_device	= vfio_platform_close_device,
>  	.ioctl		= vfio_platform_ioctl,
> +	.get_region_info = vfio_platform_ioctl_get_region_info,
Any rationale behind why using _ioctl naming in some drivers and not in
some others?

>  	.read		= vfio_platform_read,
>  	.write		= vfio_platform_write,
>  	.mmap		= vfio_platform_mmap,
> diff --git a/drivers/vfio/platform/vfio_platform.c b/drivers/vfio/platform/vfio_platform.c
> index 512533501eb7f3..0e85c914b65105 100644
> --- a/drivers/vfio/platform/vfio_platform.c
> +++ b/drivers/vfio/platform/vfio_platform.c
> @@ -101,6 +101,7 @@ static const struct vfio_device_ops vfio_platform_ops = {
>  	.open_device	= vfio_platform_open_device,
>  	.close_device	= vfio_platform_close_device,
>  	.ioctl		= vfio_platform_ioctl,
> +	.get_region_info = vfio_platform_ioctl_get_region_info,
>  	.read		= vfio_platform_read,
>  	.write		= vfio_platform_write,
>  	.mmap		= vfio_platform_mmap,
> diff --git a/drivers/vfio/platform/vfio_platform_common.c b/drivers/vfio/platform/vfio_platform_common.c
> index 3bf1043cd7957c..3ebd50fb78fbb7 100644
> --- a/drivers/vfio/platform/vfio_platform_common.c
> +++ b/drivers/vfio/platform/vfio_platform_common.c
> @@ -272,6 +272,34 @@ int vfio_platform_open_device(struct vfio_device *core_vdev)
>  }
>  EXPORT_SYMBOL_GPL(vfio_platform_open_device);
>  
> +int vfio_platform_ioctl_get_region_info(struct vfio_device *core_vdev,
> +					struct vfio_region_info __user *arg)
> +{
> +	struct vfio_platform_device *vdev =
> +		container_of(core_vdev, struct vfio_platform_device, vdev);
> +	struct vfio_region_info info;
> +	unsigned long minsz;
> +
> +	minsz = offsetofend(struct vfio_region_info, offset);
> +
> +	if (copy_from_user(&info, arg, minsz))
> +		return -EFAULT;
> +
> +	if (info.argsz < minsz)
> +		return -EINVAL;
> +
> +	if (info.index >= vdev->num_regions)
> +		return -EINVAL;
> +
> +	/* map offset to the physical address  */
> +	info.offset = VFIO_PLATFORM_INDEX_TO_OFFSET(info.index);
> +	info.size = vdev->regions[info.index].size;
> +	info.flags = vdev->regions[info.index].flags;
> +
> +	return copy_to_user(arg, &info, minsz) ? -EFAULT : 0;
> +}
> +EXPORT_SYMBOL_GPL(vfio_platform_ioctl_get_region_info);
> +
>  long vfio_platform_ioctl(struct vfio_device *core_vdev,
>  			 unsigned int cmd, unsigned long arg)
>  {
> @@ -300,28 +328,6 @@ long vfio_platform_ioctl(struct vfio_device *core_vdev,
>  		return copy_to_user((void __user *)arg, &info, minsz) ?
>  			-EFAULT : 0;
>  
> -	} else if (cmd == VFIO_DEVICE_GET_REGION_INFO) {
> -		struct vfio_region_info info;
> -
> -		minsz = offsetofend(struct vfio_region_info, offset);
> -
> -		if (copy_from_user(&info, (void __user *)arg, minsz))
> -			return -EFAULT;
> -
> -		if (info.argsz < minsz)
> -			return -EINVAL;
> -
> -		if (info.index >= vdev->num_regions)
> -			return -EINVAL;
> -
> -		/* map offset to the physical address  */
> -		info.offset = VFIO_PLATFORM_INDEX_TO_OFFSET(info.index);
> -		info.size = vdev->regions[info.index].size;
> -		info.flags = vdev->regions[info.index].flags;
> -
> -		return copy_to_user((void __user *)arg, &info, minsz) ?
> -			-EFAULT : 0;
> -
>  	} else if (cmd == VFIO_DEVICE_GET_IRQ_INFO) {
>  		struct vfio_irq_info info;
>  
> diff --git a/drivers/vfio/platform/vfio_platform_private.h b/drivers/vfio/platform/vfio_platform_private.h
> index 8d8fab51684909..a6008320e77bae 100644
> --- a/drivers/vfio/platform/vfio_platform_private.h
> +++ b/drivers/vfio/platform/vfio_platform_private.h
> @@ -85,6 +85,8 @@ int vfio_platform_open_device(struct vfio_device *core_vdev);
>  void vfio_platform_close_device(struct vfio_device *core_vdev);
>  long vfio_platform_ioctl(struct vfio_device *core_vdev,
>  			 unsigned int cmd, unsigned long arg);
> +int vfio_platform_ioctl_get_region_info(struct vfio_device *core_vdev,
> +					struct vfio_region_info __user *arg);
>  ssize_t vfio_platform_read(struct vfio_device *core_vdev,
>  			   char __user *buf, size_t count,
>  			   loff_t *ppos);
Besides Reviewed-by: Eric Auger <eric.auger@redhat.com>

Thanks

Eric

