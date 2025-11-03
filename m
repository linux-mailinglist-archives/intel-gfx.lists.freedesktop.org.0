Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC6E8C2BC8B
	for <lists+intel-gfx@lfdr.de>; Mon, 03 Nov 2025 13:46:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B78F10E3D8;
	Mon,  3 Nov 2025 12:46:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=google.com header.i=@google.com header.b="21i4jf8E";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com
 [209.85.214.173])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6CFD210E34C
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Nov 2025 05:58:06 +0000 (UTC)
Received: by mail-pl1-f173.google.com with SMTP id
 d9443c01a7336-295c64cb951so73715ad.0
 for <intel-gfx@lists.freedesktop.org>; Sun, 02 Nov 2025 21:58:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1762149486; x=1762754286;
 darn=lists.freedesktop.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=jNN38kSQW+Z67K4qsM9EOBHtmYi+rj4bbcXqoaYoYec=;
 b=21i4jf8ET0VQqwcye9vVm5w3xr3JcKTC46A6uY+zDcDI8UdbeB+5LuV/Fe3FHQcI/q
 41grUyUyRWqA3kLrgRuIzkoYW2W8gmuaGKZ3mUGrLxQmSke+7+nkKC4kwm/n7vyGFft2
 ISvsCLecckFnVJRxYkaNUeI+ze8oTjWFf+jHTw+WsiQPLYUeJMbD8DdmxTPt/xDSHdKE
 Ru/GytsfxJJ6JmblYkNdja3FJfpJ6/ZVgaRzspf7AF0Y+kP5zWfYeh6hxXK69AOqHdFQ
 BW9qUnLIJcb3/xObOj7RAQuzVD3me4aZ+QaiXq7HPTwVapKi1k5dAZWDvWcnLQklWYfs
 HKNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1762149486; x=1762754286;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=jNN38kSQW+Z67K4qsM9EOBHtmYi+rj4bbcXqoaYoYec=;
 b=GdzJeep5uLZp/H9HVwRKOUUSseWmUnaBAcVHwZ+hA1JcT6x+UAIoPpi+Uhqz/J+Njw
 JIIRiWh3h190Ya8pXKpq2xMnxdcyxdQv54wsf8cFMsk8wq61Jm4ZuqVS2eLx/VuXhZmS
 NHRE/fDNjsKDtW/wWUexqZVX5LFGFnCxIzoqdGYjCM8IHw4FjpAkM8xuZQN6O00n5D9m
 UNkHFcjqHX5IdST5IMivFDMjLC6Y0BXyQ9mSZqRbo6416LfaSD/j+yT1ZfaHnMgGNaXk
 D5YNaD+zW5boSAQkDmH4iZmOOGWKgb7s55fDpW34qWWOZLjv06DSCJrXZiCx5Je7M3xS
 RfLA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUBZfaGIS9KFvZtq6qPqkbs4BZRup91wEc3pZhHZBF2M+wAbhz4jOFjX9GSqv1WltqsK826zIGR9iw=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwqqIrlwLxNSalFA4joVj2wBpiRQyIIG4k2d6ee9xwbRBqHfobG
 NwfxvcfvmVFVIKs1izYXW0QTVWPZiansK3G2iY/LZI2nghlu0Zv5q7L5C6lIAjmcvg==
X-Gm-Gg: ASbGncvycGy/yOr+HkYQhZ5xOVHlAVAhN8xDnN6oml4Uuhl+BDrUlM86SIeNHywaDMW
 ZLMgNeEV51ekck3A21VjGs2NWFFkF/SCzVb1gFH2DVDKFMhErN6xfTDoqJMorH0IkMOF5SC+tRB
 LcC3139CxA8rhTlz6E8QvefjCeHeL8Qvc6HpnyybIH+uQXHUPTf+fHDNIYpGyJWB7JQV35Brw6L
 WaCSkvwiriiEsX3p36ou97ICEHhaRc3VxYfix1KjZImwaMDNN5sIQGeNOOwjYcKTdPQ0snM5JZb
 TMHnWZJUzSNPT0295r2BNlXdjNvnaLI2Vx0VqlrxS9V/AnIpw6tBkGlalx383m/W2x9sgXXKu2j
 1cq2gDI5bYBx4u+0Wsft8xbmE+GjmZPMvzZa9Qhr9uu+4L65JsN18d0yui7kKqm9RdRuM4U5ep3
 Rd1jrsCq6gwdi6sPJHxWQWuW7Gf3cUq6/zVPwn/5mIoeAUDLzt
X-Google-Smtp-Source: AGHT+IHe2S0n2gwZ091UPBX6ERfL1n+n8BtlVw9vlL1yBRvzccFZt3lfIo5NNtd6hxmzG7hv2JOREg==
X-Received: by 2002:a17:902:f68e:b0:295:5138:10f2 with SMTP id
 d9443c01a7336-29556599a23mr4787225ad.11.1762149485582; 
 Sun, 02 Nov 2025 21:58:05 -0800 (PST)
Received: from google.com (164.210.142.34.bc.googleusercontent.com.
 [34.142.210.164]) by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-3407f26e0a6sm5783366a91.5.2025.11.02.21.57.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 02 Nov 2025 21:58:04 -0800 (PST)
Date: Mon, 3 Nov 2025 05:57:54 +0000
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
Subject: Re: [PATCH 01/22] vfio: Provide a get_region_info op
Message-ID: <aQhEYq9YVzbBlWnC@google.com>
References: <0-v1-679a6fa27d31+209-vfio_get_region_info_op_jgg@nvidia.com>
 <1-v1-679a6fa27d31+209-vfio_get_region_info_op_jgg@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1-v1-679a6fa27d31+209-vfio_get_region_info_op_jgg@nvidia.com>
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

On Thu, Oct 23, 2025 at 08:09:15PM -0300, Jason Gunthorpe wrote:
> Instead of hooking the general ioctl op, have the core code directly
> decode VFIO_DEVICE_GET_REGION_INFO and call an op just for it.
> 
> This is intended to allow mechanical changes to the drivers to pull their
> VFIO_DEVICE_GET_REGION_INFO int oa function. Later patches will improve
> the function signature to consolidate more code.
> 
> Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>
> ---
>  drivers/vfio/pci/vfio_pci_core.c | 9 ++++++---
>  drivers/vfio/vfio_main.c         | 7 +++++++
>  include/linux/vfio.h             | 2 ++
>  include/linux/vfio_pci_core.h    | 2 ++
>  4 files changed, 17 insertions(+), 3 deletions(-)
> 

Reviewed-by: Pranjal Shrivastava <praan@google.com>

Thanks,
Praan
