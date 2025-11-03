Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5298C2BC94
	for <lists+intel-gfx@lfdr.de>; Mon, 03 Nov 2025 13:46:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCE9010E3DA;
	Mon,  3 Nov 2025 12:46:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=google.com header.i=@google.com header.b="CQfx10Id";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com
 [209.85.214.180])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE41D10E1C9
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Nov 2025 11:03:47 +0000 (UTC)
Received: by mail-pl1-f180.google.com with SMTP id
 d9443c01a7336-295c64cb951so131785ad.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 03 Nov 2025 03:03:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1762167827; x=1762772627;
 darn=lists.freedesktop.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=JG+etGO4DCF1PIFwJUo34O2NHRXv7sGubVRA4h3tffk=;
 b=CQfx10IdZbSczTZDGaGrJzKY74WzA34tBAFmMzDnDfTY82fOYZ28bx2595bra3rCvC
 QZCgfLbYSJElnEHcJdq9xFG1ulYFBmrDUBLaOnTYWRPR861sWclU+9bGrOSEOZs7CS2w
 ia7Epjq03UaCifpxaKAkmed65wa3yxblaL4oU1x/ic3Ae5MFwO1G/qTDap1VUGG3BFBb
 kl9v08pqreXLndxn2AxpUJDiYVNhs+QxI5nPIi3NgDMGon1rxSHM9SEOCoSBgsAx9QMu
 Ewmiu4dAJXrR+CEZUZCOIjdBHi/4jW4saz4W+47n/IwNXuj2spC9yrEupHuNnoiAIzI2
 sXhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1762167827; x=1762772627;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=JG+etGO4DCF1PIFwJUo34O2NHRXv7sGubVRA4h3tffk=;
 b=qsh0ggt4MEqUBJrNVQDoy+idLy2hUjdqNFKoZjZtiq+PQOMiR+Rh7YF9arKHaSggS7
 wJxee5j/8xUjPsYw2LmvwooJrzZshVTqcfTDBJ39oh+s0gHa+NuWr2t3ruFmMO8cc7uC
 Wuj+DDCkLDBgBf9a78/f3dtmnYWxkgX0QwzLrIeCqgVvbrJ/6BQFvcmZjoZ8CAM9f6XO
 EqCQC6gNdxePRTurSe0ZslN6JQJtk3cj5wYHzq7om8JXnUe75xt3BPii6FdPCGLvwNjv
 Tt7Si1nVIiMnjBI4y6ehor/zGx3E3bfviC0Sia39QbEJ5Sjs/vEmWgDRqeWhwDNntl0p
 xDdQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUHuWgfvaZTh5FfgzYXFnb9wr2fsS4UATvDIM3HtJZ7TjIy+ESP8BCy7e0/8X77ow9qn8AtWaSesfM=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yz6+RXXd1ExZ8o3NrKqByFqxax7Sq180gkr9QPKdUhIz/wxMDK6
 +xufOrQeSdmu2qixpxI53OdVnhBUKYIO84xqtVlGzLQUE1xO7muHrDlH9CeweWcmYA==
X-Gm-Gg: ASbGncuNtW4m1BSN9gwFV8m8YrOjpzVsIE7FtW3//84Y/W4mMSNGig2qyvExY7aa8zJ
 IUhNfbHQSyu38FveH+iUeRXSEh5ytSPpmPY3tTztVKzJoe8tr/UY2hcMZhxHcFDkt2KEkb7oWBE
 d6P3iqn4ls738h9M7IORGWAD2Be8HoequtxUMMi3r+YQdg99gPny9exFpcPV14gcZjVouyIEXPk
 83lJkolmOf/8TEPcSxugqRyQbImxU7fHQo1qEEueGnUZP1Shk2ScZAIN0mLRuJJSppGtCIEZxsI
 cDUrzUEYpXZNbA2xhTByV9j+z7HtR0tJM/dUNYICgg0XAiSCAv5NtFkZaUze2uenQRkfg6qq702
 W+WM4MzK7eWpuHqo+c7uPaDmLsbae0tSVFjmpnso2l05QR8TVEFnsVdUROS/D1jDP73Nl5kymbV
 y118q6CXsZovARoDGWlhleb05gKJ5PXqqDVAEWzQ==
X-Google-Smtp-Source: AGHT+IGcDUbk6qqLdQjGL3Yxey3X8mTSWxpSXkjqaoDl6gxo10SeAyfD2HQnpWNy1nfGBwMDtJcUBw==
X-Received: by 2002:a17:903:228c:b0:271:9873:80d9 with SMTP id
 d9443c01a7336-29556476bd0mr5742325ad.7.1762167826744; 
 Mon, 03 Nov 2025 03:03:46 -0800 (PST)
Received: from google.com (164.210.142.34.bc.googleusercontent.com.
 [34.142.210.164]) by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-29537cccdecsm102934645ad.19.2025.11.03.03.03.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 03 Nov 2025 03:03:46 -0800 (PST)
Date: Mon, 3 Nov 2025 11:03:36 +0000
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
Subject: Re: [PATCH 15/22] vfio: Add get_region_info_caps op
Message-ID: <aQiMCKszFCvDDHhH@google.com>
References: <0-v1-679a6fa27d31+209-vfio_get_region_info_op_jgg@nvidia.com>
 <15-v1-679a6fa27d31+209-vfio_get_region_info_op_jgg@nvidia.com>
 <aQiBGEgQ3vCpCvXM@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aQiBGEgQ3vCpCvXM@google.com>
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

On Mon, Nov 03, 2025 at 10:16:56AM +0000, Pranjal Shrivastava wrote:
> On Thu, Oct 23, 2025 at 08:09:29PM -0300, Jason Gunthorpe wrote:
> > This op does the copy to/from user for the info and can return back
> > a cap chain through a vfio_info_cap * result.
> > 
> > Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>
> > ---
> >  drivers/vfio/vfio_main.c | 54 +++++++++++++++++++++++++++++++++++++---
> >  include/linux/vfio.h     |  4 +++
> >  2 files changed, 54 insertions(+), 4 deletions(-)
> 
> The newly added vfio_get_region_info seems to pull-in common boilerplate
> code (like copy_from_user, arg size validation) into the core code,
> removing redundancy across all other vfio drivers. LGTM.

I missed one thing in this patch (luckily caught it in patch 22):

> diff --git a/drivers/vfio/vfio_main.c b/drivers/vfio/vfio_main.c
> index f056e82ba35075..82e7d79b1f9fe2 100644
> --- a/drivers/vfio/vfio_main.c
> +++ b/drivers/vfio/vfio_main.c
> @@ -1259,6 +1259,55 @@ static int vfio_ioctl_device_feature(struct vfio_device *device,
>  	}
>  }
>  
> +static long vfio_get_region_info(struct vfio_device *device,
> +				 struct vfio_region_info __user *arg)
> +{
> +	unsigned long minsz = offsetofend(struct vfio_region_info, offset);
> +	struct vfio_region_info info = {};
> +	int ret;
> +
> +	if (copy_from_user(&info, arg, minsz))
> +		return -EFAULT;
> +	if (info.argsz < minsz)
> +		return -EINVAL;
> +
> +	if (device->ops->get_region_info_caps) {
> +		struct vfio_info_cap caps = { .buf = NULL, .size = 0 };
> +
> +		ret = device->ops->get_region_info_caps(device, &info, &caps);
> +		if (ret)
> +			return ret;

device->ops->get_region_info_caps (via vfio_info_add_capability) can
allocate caps.buf and then return an error for a different reason. The
if (ret) check returns early and the kfree(caps.buf) on the success path
is never reached.

Should we add kfree(caps.buf) to the error path here?
This keeps the allocation and cleanup logic centralized in the core code

Let's either write comment saying that the get_region_info_caps op is required
to free caps.buf before returning error OR add a kfree(caps.buf) here.

> +
> +		if (caps.size) {
> +			info.flags |= VFIO_REGION_INFO_FLAG_CAPS;
> +			if (info.argsz < sizeof(info) + caps.size) {
> +				info.argsz = sizeof(info) + caps.size;
> +				info.cap_offset = 0;
> +			} else {
> +				vfio_info_cap_shift(&caps, sizeof(info));
> +				if (copy_to_user(arg + 1, caps.buf,
> +						 caps.size)) {
> +					kfree(caps.buf);
> +					return -EFAULT;
> +				}
> +				info.cap_offset = sizeof(info);
> +			}
> +			kfree(caps.buf);
> +		}
> +
> +		if (copy_to_user(arg, &info, minsz))
> +			return -EFAULT;
> +	} else if (device->ops->get_region_info) {
> +		ret = device->ops->get_region_info(device, arg);
> +		if (ret)
> +			return ret;

With the above comment addressed,

Reviewed-by: Pranjal Shrivastava <praan@google.com>

Thanks,
Praan
