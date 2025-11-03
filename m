Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 29AAEC2BCB6
	for <lists+intel-gfx@lfdr.de>; Mon, 03 Nov 2025 13:46:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2E8810E3F6;
	Mon,  3 Nov 2025 12:46:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=google.com header.i=@google.com header.b="BY6CfqLC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com
 [209.85.214.177])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C0C210E368
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Nov 2025 07:39:48 +0000 (UTC)
Received: by mail-pl1-f177.google.com with SMTP id
 d9443c01a7336-294f3105435so343795ad.1
 for <intel-gfx@lists.freedesktop.org>; Sun, 02 Nov 2025 23:39:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1762155588; x=1762760388;
 darn=lists.freedesktop.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=zzwh3KfEQpKPksD5Xn4ZAd8EEqdDZL8lWisUmSvX4T0=;
 b=BY6CfqLCQ3uqqnHw7n/1B1wB6A1GuSwqwwWzy2hiuOtsFt3H7zYC/GnTegW3RffCJF
 pgMwjXgYYlMJMyLVxTmzw5Y3ekrLsmJTX1s+JU4Fv3i3mu+rveKMy3eJUB7PI+dG7r9i
 Kba/0c9lZoqsbYL28RIUdY4xe4cY2Jm5mt7M9eLy9CYSY7xOhTUCLqU51GfyL1mxCJ4N
 PDB9m1TZmjVJ0+iSbe6GO8RmauPJGK2+v0tCU1WQhHug8A6eZgBH1QaCRhpCRIW2NggV
 HOGbLbgHTFB3xFtra99EveYMaBZxjkqZy0D/OEsifBSnalcKL89+dYVSW8zmsLqYR5dp
 DSug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1762155588; x=1762760388;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=zzwh3KfEQpKPksD5Xn4ZAd8EEqdDZL8lWisUmSvX4T0=;
 b=wVqgebShJin+lZzQa7j2oOArq46HURLl912F3WD9QQ9/YIgh/MvV4wpkme+pENtPnJ
 F4+aUU6YA3f3CLPYqCiHcJBRuxxLdB43mKPOoMKFE8va/U69ofZmgdSAheJFUWblQNBp
 HrFo2uJOSonS89yuwRk89SwCW5EmuZV6noSKZkgflfVZfqATFuUyQKQjY8VW6OjEm/A9
 MBUGsPQU8No0FQRwJh/503GJNmJkO3PYN2rVdA9Uk1Rmo17GofY3maKrzWeRFqmjGLsp
 iHdEpQzVOE9saQLwxqsoPSn8uCxv5C71RUgDfZMM28r8Wj2d6X67MsGHjh2ass+vCg6R
 7m+g==
X-Forwarded-Encrypted: i=1;
 AJvYcCXJdEcuErrKYjyLSnKwIyW3L+uZTwWnOnex0RMnBo5WNB/DURcB5IyVVLgHuyHJSeEZTcEfsdVzOJM=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzvtHrLE+eg6XPbFyNc7xT/txJptoq++coWeSeMgKmN12t9Fhpg
 S+XMWR2T1qcGc9YCGX1iFCHW/JYKHc3uzMsxhDzyjjWJVTOZL8RU+JLcJ9LNtlk5jA==
X-Gm-Gg: ASbGncuziIy875y8NBI1pWHnO5R6XrELAj5S24m+dej323+O5xd0qNDm9JCKra9jDYQ
 GNIM1jiJyWTTBIqF+t1zzTr/FtieewdmGkgEysDQ7ZW44wtGpyCqrRSTQrXrfVuM1zAdfH/IOsC
 IE5FuT9ELh5NVkOeP1PeSYV7xfE/cinvLFM9MEQPlau6I0GYPV6pTZOZzYOjNsV2Zj8IArQkW6a
 spbsx/2Afn0bHP73n6KRgXnAsCbPGtzPRjQ/MIF0h1Y3rAZLk+o7JiN0pMcrI+OrGgxGlTM+fV5
 KKWgtPLq16YeP/fU61/01t7kh+yU2Ksnh2NzTNvIovreI7rBDGwo/BWrJ3Mvcxx7U59DkXxWgXD
 sATtA/m9b/tjYpn++DVI8+PmbT3weptUtXxvAxS0ijDsds9EtL2V9LdB6Z/Mv3ImPqElryBcdID
 AE21az/6kH5Zk1LszGrEOPmKWAsR65aJNycWMDSyAH1SoLR8UC
X-Google-Smtp-Source: AGHT+IGoX/eRPHIgiRFzzACV20d0ftHJvRprPrWC1Oq8kyrn4muK0Mu+0fpj1flmH53tBH91iPLzGw==
X-Received: by 2002:a17:902:ea0d:b0:24b:1741:1a4c with SMTP id
 d9443c01a7336-295549f6bcbmr6601575ad.0.1762155587782; 
 Sun, 02 Nov 2025 23:39:47 -0800 (PST)
Received: from google.com (164.210.142.34.bc.googleusercontent.com.
 [34.142.210.164]) by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-2952e9a399csm102714425ad.33.2025.11.02.23.39.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 02 Nov 2025 23:39:47 -0800 (PST)
Date: Mon, 3 Nov 2025 07:39:37 +0000
From: Pranjal Shrivastava <praan@google.com>
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
 Halil Pasic <pasic@linux.ibm.com>, qat-linux@intel.com,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Simona Vetter <simona@ffwll.ch>,
 Shameer Kolothum <skolothumtho@nvidia.com>,
 Mostafa Saleh <smostafa@google.com>, Sven Schnelle <svens@linux.ibm.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, virtualization@lists.linux.dev,
 Vineeth Vijayan <vneethv@linux.ibm.com>, Yishai Hadas <yishaih@nvidia.com>,
 Zhenyu Wang <zhenyuw.linux@gmail.com>,
 Zhi Wang <zhi.wang.linux@gmail.com>, patches@lists.linux.dev
Subject: Re: [PATCH 14/22] vfio: Require drivers to implement get_region_info
Message-ID: <aQhcOYVbY-LqOjW5@google.com>
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

Nit: Let's also add a warn/err log here highliting that the device
doesn't populate the get_region_info op?

> +		else
> +			ret = device->ops->get_region_info(device, uptr);
>  		break;
>  
>  	default:
> -ioctl_fallback:
>  		if (unlikely(!device->ops->ioctl))
>  			ret = -EINVAL;
>  		else

Reviewed-by: Pranjal Shrivastava <praan@google.com>

Thanks,
Praan
