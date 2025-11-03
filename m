Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CEDE3C2C61A
	for <lists+intel-gfx@lfdr.de>; Mon, 03 Nov 2025 15:21:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59EA810E409;
	Mon,  3 Nov 2025 14:21:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="RDcSarTK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 348BF10E409
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Nov 2025 14:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1762179658;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=F7uJpM+IX3iswe8DPfd0iPbF2mfDVsJfMczQqxcPMxc=;
 b=RDcSarTKLRgEH/rUCWYOFdKYYfxJxAlC7QrLa82uUSjMmMuVGfGKZkjU5HBjV9xA6N1Acn
 UZN+dZXQHu/E5Ehtcc83y8T4uUICBodpbM/mzHDt60O3B+cNpKKVnti1tS9DERUfsBrNwj
 c563B7wIBrRiHqSWZ0dAFrBIdEs6l64=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-100-XG9goF37NqKM5OyeawZyIQ-1; Mon, 03 Nov 2025 09:20:56 -0500
X-MC-Unique: XG9goF37NqKM5OyeawZyIQ-1
X-Mimecast-MFC-AGG-ID: XG9goF37NqKM5OyeawZyIQ_1762179655
Received: by mail-wr1-f71.google.com with SMTP id
 ffacd0b85a97d-429c71c5892so1566022f8f.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 03 Nov 2025 06:20:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1762179655; x=1762784455;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:reply-to:user-agent:mime-version:date
 :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=F7uJpM+IX3iswe8DPfd0iPbF2mfDVsJfMczQqxcPMxc=;
 b=mrSC64BEeuHQIbFXJhE9WPbfklklqlB8372rUyQm7TyMXJ5c51Rr8WtWY98NWbCN0h
 fzCnsR42O0Jn7ImEhjHR5PN9/iQ0ej8qDC92B20FV2N3qK+E+vMweUuaO620K29O2Wlp
 /TSxEL1tU3NbFIBk0tyGPqd+O19SdcGm3VjmYRfIPZRl5+8rSurwQNEr1WLr2I+fLHn7
 4B6ueiRuU5s/mY+GpRnltSo/kY5g1jJtziAtWejpuB/KYxqIsaz6wCU32xul82XHqPHM
 P5wbdwPfIipaby9r47THw5bZL/Y/I9Gce5+EcOMkQlr9TFt1rHyftgW2HbKkiF2P6Nu8
 NIzg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWyeoB1jyiXuX/do1uCD2+kafOquskxCUgx5l7vawB/oB34MD7uvme489g990UfmgYoWMTAbHIpvb4=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwYuNg26VjRk6VBU670vfxNQjD0vP4bnV1ItT0/kvo28COIBM6k
 TVpps64TpMmg0hZIoQxCOWJJUy+B6ooi8BDCUmSfu6D9eFuxA4ZeRFv0f9JNnETMnvGFlzl8Zvi
 nnUBpmA8jFyCDk/5H4T6fM7ZJ8JqifMKRL5tGCHpCRYfdNE5F9+RuhYfHnJSQNuYZv1OJ7A==
X-Gm-Gg: ASbGncsf+SKYGq3bVYSxBAfGaonSV1k2ffRokXhJ2emTM/l0iHOryGoWrXQjheHIXHU
 T+NC7/SAr6wSAkIraXD/3XNBxRWJNi5WInqUVxbZUat+cbUczCxx6lfsy4lOeUkJsLUoBx1LZhY
 K7jcAz5q5Xm2l2F4AMjODiF3FlvtamNVV8kvb4HTlzsozKoBmGPYuGHESKymSwUydWhZqRiLSr5
 Bs5vKH1Ecv5HKQzL+8l0XSjSuVNyEmazPJCUVhweSOCQTvkP+VpPt4tV3NLZvyZ6Xejo1OSufVh
 avVKloQaq9PD5TUdpY9DUVynCygNoIPHthgC/I+3er4WgCrY38CPjzPiDaXmGqVTJS09qHM7tmp
 EbzMASK+7IlcQwlE1jIeFhoYHkCBIAYn4GHov+nsjz5Bj0g==
X-Received: by 2002:a05:6000:2c07:b0:429:d436:f142 with SMTP id
 ffacd0b85a97d-429d436f26fmr2390282f8f.57.1762179655419; 
 Mon, 03 Nov 2025 06:20:55 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEzkoLi+d77cMUSgKnEhwbdSo0rEoMdb6I48dSnxMn95tj2GQKmjbzhfBOjcWOs+RDqyIi7wg==
X-Received: by 2002:a05:6000:2c07:b0:429:d436:f142 with SMTP id
 ffacd0b85a97d-429d436f26fmr2390227f8f.57.1762179654772; 
 Mon, 03 Nov 2025 06:20:54 -0800 (PST)
Received: from ?IPV6:2a01:e0a:f0e:9070:527b:9dff:feef:3874?
 ([2a01:e0a:f0e:9070:527b:9dff:feef:3874])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-429c13e1d47sm20888368f8f.23.2025.11.03.06.20.53
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 03 Nov 2025 06:20:54 -0800 (PST)
Message-ID: <e3eb5b90-5f56-4669-8c89-1f405d23c5d6@redhat.com>
Date: Mon, 3 Nov 2025 15:20:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 20/22] vfio/platform: Convert to get_region_info_caps
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
References: <20-v1-679a6fa27d31+209-vfio_get_region_info_op_jgg@nvidia.com>
From: Eric Auger <eric.auger@redhat.com>
In-Reply-To: <20-v1-679a6fa27d31+209-vfio_get_region_info_op_jgg@nvidia.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: eEPPAU-L4xNBx-r9x-bideFDFO9nlKLCcs6HO5AJ5Ew_1762179655
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
> Remove the duplicate code and change info to a pointer. caps are not used.
>
> Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>
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
This would be nicer if called vfio_platform_get_region_info_caps I think
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
Thanks

Eric

