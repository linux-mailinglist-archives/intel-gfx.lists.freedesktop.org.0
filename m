Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 677CEC2BC79
	for <lists+intel-gfx@lfdr.de>; Mon, 03 Nov 2025 13:46:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1745410E3D0;
	Mon,  3 Nov 2025 12:46:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=google.com header.i=@google.com header.b="pluaPc8k";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com
 [209.85.214.171])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28B8B10E35E
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Nov 2025 06:43:19 +0000 (UTC)
Received: by mail-pl1-f171.google.com with SMTP id
 d9443c01a7336-294f3105435so334385ad.1
 for <intel-gfx@lists.freedesktop.org>; Sun, 02 Nov 2025 22:43:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1762152199; x=1762756999;
 darn=lists.freedesktop.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=vxS6TWyQqtdZLWaYvGIMM/0/SSg5nejyyCdpsoAJAw4=;
 b=pluaPc8kePuCRi+TZ5YOzm2lerWQR5WqV6LX+gGG290uNiSW9tpl7WTMO0oM3jaMRe
 Y+kG0LElUP7kzq7Vceb5XD18uPoZ7lH+1ouC3UslKkU4vYVXprXQHN+4heWXsN27vafU
 klsoRA4xxGEm610woEpfcH53I2qz9wslgsSgvzf4PBa9i5eRc4DWWaErQQY5sLUytGhC
 9dQuO9OaIQ0AMbOinFSNgKADLF//KJdpxAgMBXsifZqq1DKADTZOt3UiH7fSDRh6b6kq
 l5pGGG9yniTbKSjBfKh1gbjqkPW2Cr4QQdJQF1YSeMDC2ZSyYT/bcANYp6rK95aY/If6
 asXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1762152199; x=1762756999;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=vxS6TWyQqtdZLWaYvGIMM/0/SSg5nejyyCdpsoAJAw4=;
 b=iXlRxlf20AvZgKWWc/SnWof9YwDdfhwXflrTN3dDNaNI8n5zJ4Usr/h5fuHB2IegWM
 YICE78uMmqU8SEeYJ6drpvOskeN7ZDSWG5hkpXNNu3azGU7sngLA7u9qbWEHNJV+/OZ6
 G7Btz7dn4wy0y6Wfqht1cVlOKizeHFfiIYtT+dxJCGbexp4JRhnrN4Uz04qYck/UT68T
 emx2es51bqdgP5lWwJz0eQbUIknj85KLoy2i4lqgXBkMhg3TRZ/4Pn1ybnEj77oSFc/8
 UkqR/+If5QSqJ4Ox6WIFA/J+SRcbcYJ34BNd7ZqW+vBCsE5V8LG1qjfyg6cAs/CPiFxU
 iK4g==
X-Forwarded-Encrypted: i=1;
 AJvYcCVUF+6q0sfc2tMQustVQE4KWkB75YkoA+um6kzs4DSWxgjHOROXuLX8zWXfIsnBPSeJ0f2DAdSrg+g=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzmkH1HrFqw/X/rsNVrWH9qn9k+8PQElj9kw601QyG331FXBGpO
 1saDaahhaSCQe7YSusXvDHtcyk4dz1n7SYsed6IkY6NyzdfYCs3tVDsEp0mEz2OOOg==
X-Gm-Gg: ASbGncveBBbHZz8mBNCenuQznKpi4jQp057uT3Bcgcl9/qPWYHYUKs1bvLzu6p6RURJ
 89QOILgD35i2z0gL0XDYrirlMWMcEUgYh96CMP34x6W9NhTMBg2BQ9nHuoexv9fMZgFMnqK70D0
 ZOFBBJRmOU7N/kHTP4VN2umk6ixsCwZJzN/Zt9BDzyTGovXHPuTVQGbetpskaAA0qlZLTdAB8GR
 ZZGyHe5RszZGLROIYNuMtDtBYl7Jx5qJsTCnG00WffhEsM40bT6m7sGkGQrs+tNakuw0RTNz9Zc
 bZpq4RznrB6kIsHqkSgvF9VaDYavSIoyvXw4QUfadAX1HTMFc7j3OommgA/CR91Lu7wmpzC9sxl
 p8XtQgr+aRksyWPE/XP1dLV1Rzn073CumB2slPedhxhkK+5REU+OGbeYTr5Q9dk/7ATPWSru4mW
 4jB8ofnD1h1kojMnsZM5LsXG4dV+NZypIrEakpWpGov5+x+/Vt
X-Google-Smtp-Source: AGHT+IEazENwFhX4zlZOAPlLrsglGHn3aC4ae1C3vchxLK4wgltvDYn1olscExUoutjpE7Up5ejKXA==
X-Received: by 2002:a17:903:2f81:b0:295:5405:46be with SMTP id
 d9443c01a7336-295562f73a8mr5347545ad.1.1762152198351; 
 Sun, 02 Nov 2025 22:43:18 -0800 (PST)
Received: from google.com (164.210.142.34.bc.googleusercontent.com.
 [34.142.210.164]) by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-2954d5ee092sm80708835ad.62.2025.11.02.22.43.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 02 Nov 2025 22:43:17 -0800 (PST)
Date: Mon, 3 Nov 2025 06:43:07 +0000
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
Subject: Re: [PATCH 05/22] vfio/pci: Fill in the missing get_region_info ops
Message-ID: <aQhO-5Ka4b8Mcwxf@google.com>
References: <0-v1-679a6fa27d31+209-vfio_get_region_info_op_jgg@nvidia.com>
 <5-v1-679a6fa27d31+209-vfio_get_region_info_op_jgg@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5-v1-679a6fa27d31+209-vfio_get_region_info_op_jgg@nvidia.com>
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

On Thu, Oct 23, 2025 at 08:09:19PM -0300, Jason Gunthorpe wrote:
> Now that every variant driver provides a get_region_info op remove the
> ioctl based dispatch from vfio_pci_core_ioctl().
> 
> Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>
> ---
>  drivers/vfio/pci/hisilicon/hisi_acc_vfio_pci.c | 1 +
>  drivers/vfio/pci/mlx5/main.c                   | 1 +
>  drivers/vfio/pci/nvgrace-gpu/main.c            | 1 +
>  drivers/vfio/pci/pds/vfio_dev.c                | 1 +
>  drivers/vfio/pci/qat/main.c                    | 1 +
>  drivers/vfio/pci/vfio_pci.c                    | 1 +
>  drivers/vfio/pci/vfio_pci_core.c               | 2 --
>  drivers/vfio/pci/virtio/main.c                 | 2 ++
>  8 files changed, 8 insertions(+), 2 deletions(-)
> 

Reviewed-by: Pranjal Shrivastava <praan@google.com>

Thanks,
Praan
