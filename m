Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95FECC37F25
	for <lists+intel-gfx@lfdr.de>; Wed, 05 Nov 2025 22:19:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDC4010E309;
	Wed,  5 Nov 2025 21:19:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=google.com header.i=@google.com header.b="rAXmz12i";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com
 [209.85.214.175])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E2BE10E7AE
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Nov 2025 21:19:25 +0000 (UTC)
Received: by mail-pl1-f175.google.com with SMTP id
 d9443c01a7336-2959197b68eso11065ad.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 05 Nov 2025 13:19:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1762377565; x=1762982365;
 darn=lists.freedesktop.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=wsPKARLgoDbiEbqdjmx1yQIPjPrrWc4YFZC2utX6iXU=;
 b=rAXmz12iagzl3rrZQ6Mv65fUg0lzmu70rSxgE39B/59u58EiLOGr1QK0Th9Mt4tDdt
 +wbz4x/FrOL3uMOwtNFt/ihmzwO+9ClMnnoZWJ70q/0dK0EVhvV3z3jnxeyG1nuitn26
 AHga1mQjTiVjNcnetN+UxuBQHx7i2E6nDKsnz/RE1nB241RaEKnjrO2atWC3IT+6slCx
 jDiUFu92n/92viMIy+lNzSkhn6/W2HqtPs49r+zQZwOaaXY/evpSRu/CLghtYpko/WJc
 LP64gRehy30rtJ50JsV/oPbu/p3ROFFW3xFDMagH8tg71qxTKiu2vuzdLUdHjrWf1Wvp
 BQqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1762377565; x=1762982365;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=wsPKARLgoDbiEbqdjmx1yQIPjPrrWc4YFZC2utX6iXU=;
 b=Vk1SemU+lCDWi56/dc/VXMDuRKKAamBMBU1cQGY2sfFFffQCpD8Z3ljlFM6UEW0jjA
 3yod8VrIhE6Sn+KBwROTPC4ypjrGGoqVo4+msEiGS1JSaHm6MWgGn4+00MMRkQJsFQi1
 QwpDNGBrqdplYRZXAscEdz/zr6kUyAGnEOvovvL4mLhDtlFHxEBg1aHq30yjIM0yh3Sj
 hmFgui8Oep7A0ODzW1LSdDNQYu6fuY5U0fdDB2n2zrf6KjLAikJpfxCOz6BitP0tfG6p
 vN5HN80bo6zzN/3jYyyiV0vPlFKCBGPWcOs1LT3k0Exg9M3szmeLlOiK0/Pm+yMyzNHK
 q56Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCWRJ41B/J1nC2XYIWNB0n+WWyE7UMIWyx2yaw+r1+i67B3Tvqt9YJNREdJ2qDaSMe9TmxvFPEBXWgE=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzHwoRBgJshLhd3ullKc6mGek007ldSaSznPI8AzlueJCbaOw+h
 MsoFPDC/4xJ96D46+4658FIDsIn9prvro2tpzSDB0dJykNN/Dq381j9hsAT1ydx71g==
X-Gm-Gg: ASbGncu8Mn68oJKwxc7F+4+Z+cRY4/dCKe8o1N6GF7VH2CKCB2p9OLw489vYyWaJQlT
 I/Pg4FCjVe1JWcCQWJJUmgSF3Nd4840PT3jmtVKi6sg0crGJ6mezZSg6v66DOc0uWiN8mYj1cN0
 4RQCj5Gwo2qRXqzXAP4ABQLr7F8drmmLrELx/2e7CPVNBF2I4E3DRcJKn/+ojsmNJv1HkWMbpjK
 auPTxBu2yJz07QG+qSa9a2PO+omUaxzTXzcs44RnCw2gm3fr6Vq9aOWq8OI3fMfFM2MJQtZq5Sg
 AQvftjNrv02JczeDvgvZV587LtTMv6pVmn35/TM0+dxI6jwUD/Anf8puG3tj259Wx7DpkEqDWp8
 y3tStco2sjcgocwM9FYy44037B4dO3mopfiMY9y8wCGdxuP7ncri7sKcXRcbqmlOAx5GuzGETTQ
 arHRpPNBlblET/ASk5at73XXd6Ifkvq//zgh/tMA==
X-Google-Smtp-Source: AGHT+IEIIO35cH2PrBkhqYMd/E+xZSf3lgI2yKX1DyfVtbO2pYBYeKyrnA3lBD1BQHg2AJrJT8JqeQ==
X-Received: by 2002:a17:902:d505:b0:266:b8a2:f5d8 with SMTP id
 d9443c01a7336-29655c7a119mr1205695ad.14.1762377564053; 
 Wed, 05 Nov 2025 13:19:24 -0800 (PST)
Received: from google.com (164.210.142.34.bc.googleusercontent.com.
 [34.142.210.164]) by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-7af82bf14d6sm365224b3a.66.2025.11.05.13.19.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 05 Nov 2025 13:19:23 -0800 (PST)
Date: Wed, 5 Nov 2025 21:19:13 +0000
From: Pranjal Shrivastava <praan@google.com>
To: Jason Gunthorpe <jgg@nvidia.com>
Cc: Alex Williamson <alex@shazbot.org>,
 Alexander Gordeev <agordeev@linux.ibm.com>,
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
Message-ID: <aQu_Uc_ZmBJUgw0_@google.com>
References: <0-v1-679a6fa27d31+209-vfio_get_region_info_op_jgg@nvidia.com>
 <14-v1-679a6fa27d31+209-vfio_get_region_info_op_jgg@nvidia.com>
 <aQhcOYVbY-LqOjW5@google.com>
 <20251105134829.333243dd.alex@shazbot.org>
 <20251105205600.GX1537560@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251105205600.GX1537560@nvidia.com>
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

On Wed, Nov 05, 2025 at 04:56:00PM -0400, Jason Gunthorpe wrote:
> On Wed, Nov 05, 2025 at 01:48:29PM -0700, Alex Williamson wrote:
> > On Mon, 3 Nov 2025 07:39:37 +0000
> > Pranjal Shrivastava <praan@google.com> wrote:
> > 
> > > On Thu, Oct 23, 2025 at 08:09:28PM -0300, Jason Gunthorpe wrote:
> > > > Remove the fallback through the ioctl callback, no drivers use this now.
> > > > 
> > > > Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>
> > > > ---
> > > >  drivers/vfio/vfio_main.c | 8 ++++----
> > > >  1 file changed, 4 insertions(+), 4 deletions(-)
> > > > 
> > > > diff --git a/drivers/vfio/vfio_main.c b/drivers/vfio/vfio_main.c
> > > > index a390163ce706c4..f056e82ba35075 100644
> > > > --- a/drivers/vfio/vfio_main.c
> > > > +++ b/drivers/vfio/vfio_main.c
> > > > @@ -1297,13 +1297,13 @@ static long vfio_device_fops_unl_ioctl(struct file *filep,
> > > >  		break;
> > > >  
> > > >  	case VFIO_DEVICE_GET_REGION_INFO:
> > > > -		if (!device->ops->get_region_info)
> > > > -			goto ioctl_fallback;
> > > > -		ret = device->ops->get_region_info(device, uptr);
> > > > +		if (unlikely(!device->ops->get_region_info))
> > > > +			ret = -EINVAL;  
> > 
> > Nit, typically I would have expected a success oriented flow, ie.
> > 
> > 		if (likely(device->ops->get_region_info))
> > 			ret = device->ops->get_region_info(device, uptr);
> > 		else
> > 			ret = -EINVAL;
> > 
> > But it goes away in the next patch, so *shrug*.
> 
> Yeah, still I can edit it..
> 
> > > Nit: Let's also add a warn/err log here highliting that the device
> > > doesn't populate the get_region_info op?
> > 
> > Are devices required to implement regions?  If so, it'd be more
> > appropriate to fail the device registration in __vfio_register_dev()
> > for the missing op than wait for an ioctl.  However, here in the device
> > agnostic layer of vfio, I think the answer leans more towards no, we
> > could theoretically have a device with no regions.  We also want to be
> > careful not to introduce a WARN_ON that's user trigger'able.  Thanks,
> 
> Yeah, I had the same thought, so lets leave this. If we do want a warn
> it should be in registration.
> 
> A device without regions does not seem useful, but also it doesn't
> malfunction if someone does want to do that.
> 

I agree with the both of you.. I just thought if we should remind the
user with a log that the dev doesn't expose a region. But I guess we
don't need to worry about that.

> Thanks,
> Jason

Thanks,
Praan
