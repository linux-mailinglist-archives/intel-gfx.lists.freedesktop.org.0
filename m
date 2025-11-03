Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C63DFC2BCA9
	for <lists+intel-gfx@lfdr.de>; Mon, 03 Nov 2025 13:46:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C42C10E3E5;
	Mon,  3 Nov 2025 12:46:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=google.com header.i=@google.com header.b="WjHqLbTe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com
 [209.85.128.53])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C58F10E1B0
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Nov 2025 09:55:41 +0000 (UTC)
Received: by mail-wm1-f53.google.com with SMTP id
 5b1f17b1804b1-47105bbb8d9so71985e9.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 03 Nov 2025 01:55:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1762163740; x=1762768540;
 darn=lists.freedesktop.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=/iKwbtWviZdAY+4F++DJl0rWWY/RQA9LSGiuI2/hl/A=;
 b=WjHqLbTeaihn0zyC2YkqBlvPkzyIXcI3WyrujAMOoihlnHLdqx6bmKOk7maHnzRdhz
 L/8tGP+MWDxdp9uasMfJfpQji3XzEGwO90JOfQfZvCH3Q16lV7nqMzBEPYdheSemkOvw
 /cW1urRZ1C+RHKyUYugIBWikLF04OKsypSE1F4qydXE2xORyuTv72KSOPcAkhweYg2rE
 8EjPRFQkdIio2eUdHBNJ8OaD7j42HeZxL3oennFo6FUy4GyGV0jM/7+bSHTddBYvGVCL
 zOPPg2DTEFMLOxfJX/lxYY4aAB56UA0ecqm+7Kv/yu8nnu+FlQxioLNSgro6dYrT/Tsf
 mjmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1762163740; x=1762768540;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=/iKwbtWviZdAY+4F++DJl0rWWY/RQA9LSGiuI2/hl/A=;
 b=Bh8gSIyE9RIFoaikkIxCyvGrP3yldXpi7sxgEN5GZAmFNeKAcgSNlgKA7O7IdHDB/c
 YFOGkvLcEauO/fIiyd9Tt/MrqT38tvzPmZHhPUVYS9gRtUSxQ1z42axH9qM3uDWwRT0K
 yasW1NPk1ITMB+pddCLTYK0EWfgNLRWu4gkrQd6PjAMA6awhZmi2N4FDR8bt9YKleKDF
 57Pbv8Ey3vNksMM4v8JZb6apAW2FXWEPJyQi4307vvOzG0XUlcF3x58uXbathzgm4EOX
 qavL9a+zDfTZwB0tNDEXOM+pAaAEBpIs53kvn6VkCQEIYzWGumqSM26rltzmfq1bYfmi
 I8EQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUJjZV32gn5YvwUcHPNvxqO4SYhhGENfOse2bzXE3CZfWcrh71xAhRcuZGjSI5Fy2mQKxB0O847zgY=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yw8NG9lfkHIaz41Zg7CRBLGKOLP2nqHPiW0bTjfLGKxp1vXtkpW
 03JD/I9riScOcwzBjcDZDLPmWcObVLfLvDEsSnp2td/WEaVjLEHYxb1ajVtRLGiZN2ve7jdhN2v
 UF672JE7M
X-Gm-Gg: ASbGncvATxQfSY732IUkNs6CU3GR2pH57eD4VtKfSmBaAuhUdpMVYNwZe/pCWR1NX4s
 yj2g10er22ywflEEzg/K6PFePC4AqF7kLmy95Qava503o2XP5wd7ExpA2ydnCBag5NzDaUZhZW1
 +z5c8DIPpmvrmjakvkfuUbQdg2J5ZaSiwS0YR5GPK7w4WRNqS2QSc5hBDV9kMfw5DOhH7Rr6hsI
 oLoILMdCyZxi5lef9KKpRCf3wkzY0ffaXceNSoCfq9fxgRoza4T/o83c9KXSZJzMVIUHTFhQNLP
 JFwqEBRSjEEQmQjS0u6lxGw1mfTkfSpb6Dn4lO/0IpngvkA81IdVzTVfhy51zOYNiALIlR0qEzI
 zZPHSAXHnbFYPEBaOgwryKvJxfri58lXqk0BhR9iAzRrPCYFIhAy4u2GC0Rh3gfZHzE+lrs2jh7
 VYCerfi1UQM8Wf/FdsXcpljgcwrdcYc6axlHh3RxlQg8f6xIvZlw==
X-Google-Smtp-Source: AGHT+IHAx+AWORE9paLXTzRW7mKzqe0hb2wtQ9DF+W6v23M9Vo/fGIuffOpRO4zhYPoMBhdyXFmsSw==
X-Received: by 2002:a05:600c:8a0d:20b0:477:255c:bea8 with SMTP id
 5b1f17b1804b1-4773da9baeemr5918155e9.7.1762163740369; 
 Mon, 03 Nov 2025 01:55:40 -0800 (PST)
Received: from google.com (54.140.140.34.bc.googleusercontent.com.
 [34.140.140.54]) by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-429c13ebfe8sm19975798f8f.35.2025.11.03.01.55.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 03 Nov 2025 01:55:39 -0800 (PST)
Date: Mon, 3 Nov 2025 09:55:36 +0000
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
Subject: Re: [PATCH 14/22] vfio: Require drivers to implement get_region_info
Message-ID: <aQh8GG15d_-Ge2Xx@google.com>
References: <0-v1-679a6fa27d31+209-vfio_get_region_info_op_jgg@nvidia.com>
 <14-v1-679a6fa27d31+209-vfio_get_region_info_op_jgg@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <14-v1-679a6fa27d31+209-vfio_get_region_info_op_jgg@nvidia.com>
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

On Thu, Oct 23, 2025 at 08:09:28PM -0300, Jason Gunthorpe wrote:
> Remove the fallback through the ioctl callback, no drivers use this now.
> 
> Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>

Reviewed-by: Mostafa Saleh <smostafa@google.com>

Thanks,
Mostafa

> ---
>  drivers/vfio/vfio_main.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/vfio/vfio_main.c b/drivers/vfio/vfio_main.c
> index a390163ce706c4..f056e82ba35075 100644
> --- a/drivers/vfio/vfio_main.c
> +++ b/drivers/vfio/vfio_main.c
> @@ -1297,13 +1297,13 @@ static long vfio_device_fops_unl_ioctl(struct file *filep,
>  		break;
>  
>  	case VFIO_DEVICE_GET_REGION_INFO:
> -		if (!device->ops->get_region_info)
> -			goto ioctl_fallback;
> -		ret = device->ops->get_region_info(device, uptr);
> +		if (unlikely(!device->ops->get_region_info))
> +			ret = -EINVAL;
> +		else
> +			ret = device->ops->get_region_info(device, uptr);
>  		break;
>  
>  	default:
> -ioctl_fallback:
>  		if (unlikely(!device->ops->ioctl))
>  			ret = -EINVAL;
>  		else
> -- 
> 2.43.0
> 
