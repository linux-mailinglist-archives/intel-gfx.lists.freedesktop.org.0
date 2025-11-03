Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F01CEC2BC76
	for <lists+intel-gfx@lfdr.de>; Mon, 03 Nov 2025 13:46:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB3F310E3CF;
	Mon,  3 Nov 2025 12:46:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=google.com header.i=@google.com header.b="xtNiIoPB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com
 [209.85.214.171])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DB4110E1C9
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Nov 2025 10:52:19 +0000 (UTC)
Received: by mail-pl1-f171.google.com with SMTP id
 d9443c01a7336-27d67abd215so423785ad.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 03 Nov 2025 02:52:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1762167139; x=1762771939;
 darn=lists.freedesktop.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=WwKprwTirCt4i5Js91Sl+ZyTThwVs5kTlEuvLY+kPJk=;
 b=xtNiIoPBpihNZc9O6eZhIuttXGhdz5d5ZHRKgEVwWIEEv4vTiK3jSeZbelOpH56esQ
 s7SdDE6Sn/LVmniidT7kZlF4mKmFQ1aOpD0Q4C2LU+gut8rVvCkk2ag3gO0acpBaxjMc
 L/Ezvlo6MN1A6s1I3OilwAg3+XHFNCmv1HZMwkxXV3L3gauU02Gno1V3QwwqiOFYCrO2
 PoPwqVcT5/nXLF9cP4AE+Do1waGX9aodRgN66GssGYSGKpW/qvssTiwTsiVk8XJSLqSE
 oR3JP2qjXg17/9MrwTZ96Nlivx2Qt7w3NbztYiWf1Nlh5rIXZm2pnTjt8eW+yZ8LTS5k
 iuIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1762167139; x=1762771939;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=WwKprwTirCt4i5Js91Sl+ZyTThwVs5kTlEuvLY+kPJk=;
 b=jw2I14K6lI/Nu0OkHtBuiZFuJdEo+2AW0TRQDij0liU9vYb6fOxYsbM5w7YUdYhpcn
 ob14LbPlIsmLf1+YmjlpFhzHGLIF88kCFLnWJUanL9ou3kLfgiUAIM8IW2AsRlyUsiB4
 oI1rCAGYQ7vVnbwZ7wW/VjyJ6zP71d8mYbxhV0dpUv7qsl2IfHIdBf9Z+nGT5I5RJ3dk
 TYFpTMUejGHyNiap8zWvkNKu2nu7mYguA5g6egqBmDwJ3twD1bz+jiswZlZHTA+Fgj5W
 5tFnGCSRxCYrB3bN1PJ/ls9H7i+V9P1JGjTNS3AL6TVJB1dMs+L/kGRZCIjN2RHswvIp
 u3iQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWuQ+9C3gM9eDb7CETetQ3pWkLtLAzvRtR7WF9tWOak+ckWCkBAin2uCgjCMR+q6wVpBR6MsBVqUmE=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yz+7kSOqnXMDTJR1e+moaqvOyjxAp6tQYCiiWUsEEvwbKwjtGhB
 NvACV8ElGJlN10nHpSFeEGEWZJWf9VdmHSmBH9Om/YE4UJMA6kVUKdRUhZjUh5QeRw==
X-Gm-Gg: ASbGncuw8QfXIYiFukUCJXVJH8AxJd+QcfRh1Z4VT6XyvBQcBquc0C84O7i/or4VZSh
 91k3h5Y87xCQOj75QM0wRA13uLtMCVsw87DmdZSXa7TZH7kDQOSxwQUaXd5aKZC6qqE7d6IgLIX
 GwfNm6LvScQEg7CWpj2pxX/N30qm+4MMwG7dafZWDVU9D8jUtT9fHpNyAdUy5Zh5HuWaojAbR9X
 Z+PXoVhvJFSvmfHrfMIis6aJ/65Wto/qtxNq5S/tnaiDPyp5X1Ay18pX+fptp6S0NBXlI1tLf8u
 t5SPF8BJiE44llPikUAH4CllOkYll5zmEfwqByWIXvqp1bwn28nIsbTUSPR4OBO9rzQwrIKIt0U
 dam3bXkjtD3oKr2mdZlsI6dtRADy9j8QSqHqpvMxzvtE6bw9BwfEBUH0o7s2/I9NqUydK6FEt/l
 h8oCNGmE52S25EljPJ0y05pyvPIworG+Gv8SDImQ==
X-Google-Smtp-Source: AGHT+IHPuCzOHK+gl1PDmhIoWt8nQcQHNMFtOu890fqfdIsVUQlawn89pKWjl6bN9nnq4lv2uM5QPg==
X-Received: by 2002:a17:902:c411:b0:295:3f35:a315 with SMTP id
 d9443c01a7336-2955658e37fmr6124875ad.5.1762167138172; 
 Mon, 03 Nov 2025 02:52:18 -0800 (PST)
Received: from google.com (164.210.142.34.bc.googleusercontent.com.
 [34.142.210.164]) by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-3415994181esm651172a91.5.2025.11.03.02.52.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 03 Nov 2025 02:52:17 -0800 (PST)
Date: Mon, 3 Nov 2025 10:52:07 +0000
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
Subject: Re: [PATCH 22/22] vfio: Remove the get_region_info op
Message-ID: <aQiJV4p3AKZSDH08@google.com>
References: <0-v1-679a6fa27d31+209-vfio_get_region_info_op_jgg@nvidia.com>
 <22-v1-679a6fa27d31+209-vfio_get_region_info_op_jgg@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <22-v1-679a6fa27d31+209-vfio_get_region_info_op_jgg@nvidia.com>
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

On Thu, Oct 23, 2025 at 08:09:36PM -0300, Jason Gunthorpe wrote:
> No driver uses it now, all are using get_region_info_caps().
> 
> Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>
> ---
>  drivers/vfio/vfio_main.c | 50 +++++++++++++++++-----------------------
>  include/linux/vfio.h     |  2 --
>  2 files changed, 21 insertions(+), 31 deletions(-)
> 
> diff --git a/drivers/vfio/vfio_main.c b/drivers/vfio/vfio_main.c
> index 82e7d79b1f9fe2..f911c1980c9420 100644
> --- a/drivers/vfio/vfio_main.c
> +++ b/drivers/vfio/vfio_main.c
> @@ -1263,48 +1263,40 @@ static long vfio_get_region_info(struct vfio_device *device,
>  				 struct vfio_region_info __user *arg)
>  {
>  	unsigned long minsz = offsetofend(struct vfio_region_info, offset);
> +	struct vfio_info_cap caps = { .buf = NULL, .size = 0 };
>  	struct vfio_region_info info = {};
>  	int ret;
>  
> +	if (unlikely(!device->ops->get_region_info_caps))
> +		return -EINVAL;
> +
>  	if (copy_from_user(&info, arg, minsz))
>  		return -EFAULT;
>  	if (info.argsz < minsz)
>  		return -EINVAL;
>  
> -	if (device->ops->get_region_info_caps) {
> -		struct vfio_info_cap caps = { .buf = NULL, .size = 0 };
> +	ret = device->ops->get_region_info_caps(device, &info, &caps);
> +	if (ret)
> +		return ret;

Shall we kfree(caps.buf); before returning?

> -		ret = device->ops->get_region_info_caps(device, &info, &caps);
> -		if (ret)
> -			return ret;
> -
> -		if (caps.size) {
> -			info.flags |= VFIO_REGION_INFO_FLAG_CAPS;
> -			if (info.argsz < sizeof(info) + caps.size) {
> -				info.argsz = sizeof(info) + caps.size;
> -				info.cap_offset = 0;
> -			} else {
> -				vfio_info_cap_shift(&caps, sizeof(info));
> -				if (copy_to_user(arg + 1, caps.buf,
> -						 caps.size)) {
> -					kfree(caps.buf);
> -					return -EFAULT;
> -				}
> -				info.cap_offset = sizeof(info);
> +	if (caps.size) {
> +		info.flags |= VFIO_REGION_INFO_FLAG_CAPS;
> +		if (info.argsz < sizeof(info) + caps.size) {
> +			info.argsz = sizeof(info) + caps.size;
> +			info.cap_offset = 0;
> +		} else {
> +			vfio_info_cap_shift(&caps, sizeof(info));
> +			if (copy_to_user(arg + 1, caps.buf, caps.size)) {
> +				kfree(caps.buf);
> +				return -EFAULT;
>  			}
> -			kfree(caps.buf);
> +			info.cap_offset = sizeof(info);
>  		}
> -
> -		if (copy_to_user(arg, &info, minsz))
> -			return -EFAULT;
> -	} else if (device->ops->get_region_info) {
> -		ret = device->ops->get_region_info(device, arg);
> -		if (ret)
> -			return ret;
> -	} else {
> -		return -EINVAL;
> +		kfree(caps.buf);
>  	}
>  
> +	if (copy_to_user(arg, &info, minsz))
> +		return -EFAULT;
>  	return 0;
>  }
>  
> diff --git a/include/linux/vfio.h b/include/linux/vfio.h
> index 6311ddc837701d..8e1ddb48b9b54e 100644
> --- a/include/linux/vfio.h
> +++ b/include/linux/vfio.h
> @@ -133,8 +133,6 @@ struct vfio_device_ops {
>  			 size_t count, loff_t *size);
>  	long	(*ioctl)(struct vfio_device *vdev, unsigned int cmd,
>  			 unsigned long arg);
> -	int	(*get_region_info)(struct vfio_device *vdev,
> -				   struct vfio_region_info __user *arg);
>  	int	(*get_region_info_caps)(struct vfio_device *vdev,
>  					struct vfio_region_info *info,
>  					struct vfio_info_cap *caps);

Thanks,
Praan
