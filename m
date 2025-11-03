Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5157C2BC82
	for <lists+intel-gfx@lfdr.de>; Mon, 03 Nov 2025 13:46:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 634B710E3D5;
	Mon,  3 Nov 2025 12:46:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=google.com header.i=@google.com header.b="YL2YI5Pt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com
 [209.85.214.182])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7579710E15E
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Nov 2025 07:17:58 +0000 (UTC)
Received: by mail-pl1-f182.google.com with SMTP id
 d9443c01a7336-2959197b68eso193775ad.1
 for <intel-gfx@lists.freedesktop.org>; Sun, 02 Nov 2025 23:17:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1762154278; x=1762759078;
 darn=lists.freedesktop.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=fkl25q/g8s7OS88Wbysk4mwVIyDLafMsvz/s+Uj9Ki4=;
 b=YL2YI5PtWs40P0oXipqq+vz2+JsTFcz4n38h4O25OVMjPu4DapvJII2q5F0m6DLxrh
 zRkPu4yX8mkEIa1AhETlC36DcCTgamyIaVkg9DC5PIazrmWIqDdgzrjdsKcGLwroGzqc
 LZQC/dEhvbr/6DrUSBfQm87+OeFDslEKha+tyOMNRSpWtLflFVD+/om3W3vglkUU5EDU
 Djz9ygtwFqnaNZpy7wHWuVL1711grgDftY71MJAzLCoODQz9Dst1DYiNAF8fxQSvBHdP
 EdVgnfKlNYtP4oachVmgx9rTVeSmaJ3LNra3h900Vzbmf3aZ4GoGC+V8KF72TuRKuo0H
 ZN8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1762154278; x=1762759078;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=fkl25q/g8s7OS88Wbysk4mwVIyDLafMsvz/s+Uj9Ki4=;
 b=lFt/dhn7At7NveCBPDj6VW+4+LiTjPOAErBce1yFqT/PdoZujIlHJZtQY6iPFrVrfo
 kjtuXyUCFf0j/MTctHsywO+m4WCbdfzcdwsOgLWb+Ctpa3XIdXSTCcij1aM5ers8H1Lh
 OTy2IcRc/YMbn3PNa/FY+HQAbEUqIExoTnqPFq69kcw9eGLU9Y83HWOTqWLNpMY48mW3
 0HfIoaE0mFbEIxfNTxyCTw8YGUJ9A6J4BKyDVSYp3betAJVD89FYKpeVyC3O+kJ2fGBj
 YDc+RCyuBEGv97fz7bsDMdQQMJKkpIT+64FsFnzHjzeF+otMo5tSfcfGBBoJO7h/qeHb
 hDqw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWorJEij5HtqaKSyD3nIPBsOHsa6BTHWB+NMIm3v3IHcSgksFY39W1yeAeNvpwAdECm1bUiK7/zgDU=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Ywnn0C9FdWODfhLvMNIvEY69NCFpiXQKBE0uS0+ZDgxXoHt1o3s
 rpAmPiF9BVqiDIsWA7EAJbwD+m23g2x2C2yZO+eLgU2RhSfTlgJ6qtHKQDONBFg8uA==
X-Gm-Gg: ASbGncvOHvVWUs2kYn6umvNHGHBs1PwQ/nxLMvgTr4tCVZJ7E6TfAqCyzsC7bYxFJpG
 lo+My58Psz5vgI9LGfUmtXztz7yP1zRR7fzqH3hlR+5QtORcTtK6GzqDCfDXJHMXSGxUM2MMt7m
 hEJlWVMcezVigRNex4YtAj6LzW7qa3kd4Hedf8rCvKhcLMW0b8DVZMRB9jUUecEPud1MNjsjyC2
 dL9+LtJfDe8bPefr+ck4WtE5k+hGuamIaBR63YMy4SDwXt6OVH984E/mPjJG9HciRvuWgCU/3sf
 97nXJNklDZHoRAcjqiDCXfWn3Wl0uLdoSqMlpj9EnDJBOh6dj681wrOq8Bb0qFx+Ujty0bTuyQi
 zCRo29MTmgTN1Oj+7b+bCKO6DcR1yGPSnZqpegKR/9XfYcP3MoW24CF/ALZeymP8OcehYYmlVA0
 2vTshoJKY97cgFaku5A8k9ePSl3S2jRGJV/DiRzt0P6R6IRVDv
X-Google-Smtp-Source: AGHT+IHfDR3pQIMSIQjN/GyrpnHhW694vgQCyWpAq5GaAMMYhNpX5IKRikqyk5tXJtqoi708RLXBcA==
X-Received: by 2002:a17:902:e88c:b0:290:d4dd:b042 with SMTP id
 d9443c01a7336-29554bc5206mr6800415ad.16.1762154277664; 
 Sun, 02 Nov 2025 23:17:57 -0800 (PST)
Received: from google.com (164.210.142.34.bc.googleusercontent.com.
 [34.142.210.164]) by smtp.gmail.com with ESMTPSA id
 41be03b00d2f7-b93b7e19ea0sm9634160a12.5.2025.11.02.23.17.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 02 Nov 2025 23:17:57 -0800 (PST)
Date: Mon, 3 Nov 2025 07:17:47 +0000
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
Subject: Re: [PATCH 06/22] vfio/mtty: Provide a get_region_info op
Message-ID: <aQhXGwlxZrZl5GMN@google.com>
References: <0-v1-679a6fa27d31+209-vfio_get_region_info_op_jgg@nvidia.com>
 <6-v1-679a6fa27d31+209-vfio_get_region_info_op_jgg@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6-v1-679a6fa27d31+209-vfio_get_region_info_op_jgg@nvidia.com>
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

On Thu, Oct 23, 2025 at 08:09:20PM -0300, Jason Gunthorpe wrote:
> Move it out of mtty_ioctl() and re-indent it.
> 
> Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>
> ---
>  samples/vfio-mdev/mtty.c | 53 ++++++++++++++++++++++------------------
>  1 file changed, 29 insertions(+), 24 deletions(-)
> 

Acked-by: Pranjal Shrivastava <praan@google.com>

-Praan
