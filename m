Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4471DC2BCA6
	for <lists+intel-gfx@lfdr.de>; Mon, 03 Nov 2025 13:46:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B301B10E3E6;
	Mon,  3 Nov 2025 12:46:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=google.com header.i=@google.com header.b="dQ1Y96nm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com
 [209.85.214.177])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B379110E164
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Nov 2025 07:32:02 +0000 (UTC)
Received: by mail-pl1-f177.google.com with SMTP id
 d9443c01a7336-294f3105435so342275ad.1
 for <intel-gfx@lists.freedesktop.org>; Sun, 02 Nov 2025 23:32:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1762155122; x=1762759922;
 darn=lists.freedesktop.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=dADjXQcJVAcOBFwaI/JeQVroSWZH3kzmeM+gasunsjY=;
 b=dQ1Y96nmRj/phUcFRMWzJhSwF9V4dTEvRpM73TcGqOOgUSmM3wNpag5+lNHcf01UXU
 jD+NCUOttQGKfvGMzMxKx3iApkVJkcDoxLtGhhOuwvLwA3agpB5hyXIT9MEn3mnDvDcC
 ghW7nxYaTTQ4p2qhI+eekf86bmMyJtzGxr5Yw8fxtoCiZ3HHm48peSh+mBV2AMMLYGIQ
 ujusbznP30yW28hBxMxoiEaPmz4R7gWiI7I0+7JGDIe0TUYj2FpjoayGgKju5pdH93Zn
 zWx3JW7A5yAmx4RWReuP5+FU6cxp7luoC1QX9eCaX8km7ajYmegSeGl5Gj9c6F5JKFST
 Rc4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1762155122; x=1762759922;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=dADjXQcJVAcOBFwaI/JeQVroSWZH3kzmeM+gasunsjY=;
 b=whlTSyvTDG19CphgnpjUeIh90FjPjD1ZXsCd3nDgkSAUcxRF/QMnK0nFt3LLvx/mTs
 uctLBT9IIRBPuKHB49RKdq/g9nOV6oMb5lBKCeuQaLGRKqGCEWO2g6ryBlAneo25mq2r
 bve/5+KdX175obK7dJKByg/nXRHCoyU6oN6atNXxXzeUrBlOPvfKz5N9XuQx+GGTC61S
 EZPIRKa2wh4PCyc5js48cSa6NuxxsKXTiHfzrDNB1Kpkb2OX22aWRP+JAXRCy77PYNxh
 gO2LfPhaGyI5itre4jSNU43AJL7CRutEhAyCWVVH7LN/ZCGHSDP5Y1BUQzpsE30fa951
 mQgQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWPnUX0pZJj26p8so9j1xrpwTa49hbAM70AthTirEJRGLLKDlJQtUBwhZgS1sr3ueaxrMVIbhsam9k=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yy9F1sex+ExhEmp8vYdG2ZxfcOpkbrX9MyFVS6vIuzly4HyPzox
 rQlCw/KlsFfu4AinVUtdTCvTtrjFlY8Naz89rGSiDvJNYXz2AbU8pVxRlNXgTV0CMA==
X-Gm-Gg: ASbGncsM6Z5BoSzbaxU77B3hjuTPnsh7EfslCHBh1kkl80x8/MiHNdS3yv5oeT3/hoB
 1kznXdHj8GtjwbhdiM4QNSCBuiEvqw4XNGohhMmwdC5KkUfe0Omsq55gly1HW8jE4q7Jv/BjO5p
 kDI2d2O7f6JKb00Up93HgNPuugmYH18+m3iiE0Kk6hZP+IyraL4PrMA2bxqGcLKffzqMCmekDZt
 ugZI7QGWlQSyortNWvVXufoNGve5kiyeIu1BoyKLhaGVKZePgVfNMEHf17F8ZiDCw5p/svj31EK
 BtPk0VLRwb7X3xjKWoelg+5+KQ4akXuCGCLvM2hUwUaJjtOZKeGgLB8Zn9Z2aSqgflFdjZ5Q9yY
 225hk0af2HFp9G7SpPplznvs4rYAWXtDjP+MRXl/BDwLyCMhPFvkI1d6dFZYsTCW+9Tzu9Q6tfO
 21DlkitLFBOBT6htmTovW0MVOuGKMqNgj7CxLWVg==
X-Google-Smtp-Source: AGHT+IHfrP3JzShs73f4Ou9j74BKdOau8otZ+u7WUYTtBZ6PInXsEFYOD9H0FiQHWOz2YtGspU3bog==
X-Received: by 2002:a17:902:ec8e:b0:274:1a09:9553 with SMTP id
 d9443c01a7336-29554bb5d5cmr6804875ad.6.1762155121865; 
 Sun, 02 Nov 2025 23:32:01 -0800 (PST)
Received: from google.com (164.210.142.34.bc.googleusercontent.com.
 [34.142.210.164]) by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-295512dedabsm82398675ad.5.2025.11.02.23.31.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 02 Nov 2025 23:32:01 -0800 (PST)
Date: Mon, 3 Nov 2025 07:31:51 +0000
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
Subject: Re: [PATCH 11/22] vfio/cdx: Provide a get_region_info op
Message-ID: <aQhaZ2HvTTtanNdu@google.com>
References: <0-v1-679a6fa27d31+209-vfio_get_region_info_op_jgg@nvidia.com>
 <11-v1-679a6fa27d31+209-vfio_get_region_info_op_jgg@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <11-v1-679a6fa27d31+209-vfio_get_region_info_op_jgg@nvidia.com>
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

On Thu, Oct 23, 2025 at 08:09:25PM -0300, Jason Gunthorpe wrote:
> Change the signature of vfio_cdx_ioctl_get_region_info() and hook it to
> the op.
> 
> Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>
> ---
>  drivers/vfio/cdx/main.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 

Reviewed-by: Pranjal Shrivastava <praan@google.com>

Thanks,
Praan
