Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7A64C2BCAA
	for <lists+intel-gfx@lfdr.de>; Mon, 03 Nov 2025 13:46:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24B3610E3EB;
	Mon,  3 Nov 2025 12:46:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=google.com header.i=@google.com header.b="4SvQflJK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com
 [209.85.214.172])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0523710E3A8
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Nov 2025 10:25:52 +0000 (UTC)
Received: by mail-pl1-f172.google.com with SMTP id
 d9443c01a7336-2959197b68eso230385ad.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 03 Nov 2025 02:25:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1762165551; x=1762770351;
 darn=lists.freedesktop.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=gv2e9ygsp9GWwcHVuU/GyMuAUbYvn3xLnsbOpkJhe98=;
 b=4SvQflJKYP3bxjMBq7lTNgD1a4YGIo7KFtoUJHCDjdwndfsw8dMX8+aet8S0Hkl0vJ
 ohUNpbVV3C4K5EeKNAYDYZI9D1XXbpEU9z35CAlQkGgPQ0errfnb8Idys43pZK3vmjCX
 NyZACsgJc/H74ZGIxQpc2iCHSaTSdZ4MtvWcHHNM2cRNpUniMri5wna+M6DKVxYyHoES
 B4Z250xDugYCt2/+p65JURxPcoapMpv13kAUv1jPp7OPntg/Nrj+KkAt4D4QCG7ZqDuC
 SIj+Tkqlpx43vsJOs8MfQ/LOHPzLnfG61tnv2n4ubR5kaQsYAkzykIYE5XB/qzf0OUSK
 cpFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1762165551; x=1762770351;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=gv2e9ygsp9GWwcHVuU/GyMuAUbYvn3xLnsbOpkJhe98=;
 b=kfH/W9EIN9VMMqXWkzaZ+gVG+K4MGgSkVNnuhWj6JCCiwlgoZhVTgFfP0e0UAAPF4D
 8MMdD7MHlT04x5Aw8U+R+nFIoZ2XZZYV6kF+Atzpg1+pYD/9NrxbO45WVPCm67DKE+rm
 4ibZ3EdeK/29xS9KoQ4V7eGjB6dtJjNBa/rFi+d7PKgAztS2J6ZBQlML/Pft/MppI2yy
 K0FNXcpy4m2epOx/lEJ4a/hRfX9HPna6K5xcKoQaPxbWCZfnq7KpMX3yrkF0yEZNum1n
 ZTbzW1ArqH2cA4/tchLfKRfXJUEXUMjue8ep/C2gOUyOfcSz5frxEyjb12y/VufyQbMi
 ZsLA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVNUFoATodc+wD20qC29+14GQ/4iwO3XgnsI4WYhIsTE4R5Xcev/XFG+4OfMHIrGx2ooI0E8liK6GU=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxMJaRAEtDrGO7lEe4UPed2WJnykZqO4kEBlD6RCW1J0AXIZxVZ
 G5QilGaOOirKvjMsi85WdZOt1+hm1Sjj68vDjY8jA1sz2iaeAlc7I4Ssn9yMrCf/TQ==
X-Gm-Gg: ASbGncvH4Y4OoyPEENJndMqYiAEV4aNeSjhWaezChsPRdy7bJg4kM1yGI/5fIyTZvtm
 DHwSdVl3wXSYHotLidNn+6327lCJia0YmaANz3SKNG7IJIOlsczAd/aVYiDWBqS8uMNHwvylzyy
 BOaAohHZQ7XSJ44yDnA6pi1VJkY+HCFRYnV9j2PrAsKPib/0x6OkAhEbPxRjGHt/bJuaVxDXlbg
 t/PgrwVRiOLRellSCASdBPAx4kNdQE5WJu5sXPqOgbKHsHmUHK7su+mj5nq5uvDXv28oypTWpTr
 slWFRm9S1IfYCo+0amX5zbqG+w5WYDImwqyM/XVfdWZrTrW/XZjhLH8gNnAKtA7O7ll8EqZlPlL
 Ar4gidaBSmkneQCu5azP834AKkKkqfMBxty4Tyg4alaLkwnXdr7Yq3esyBOz+2jqsq/xf48FTLL
 zDuLZj4mXbBpTKZxsz+atvxDuncQtRWuU8ROUxyg==
X-Google-Smtp-Source: AGHT+IGWMvk41x0fPTVw6ZYdCrfpoxx7g/UVoBFTBuqaFXqto2Ol7yP/kHVO5kf2HNRBirU7N6KCng==
X-Received: by 2002:a17:903:41c8:b0:294:ecba:c8e with SMTP id
 d9443c01a7336-2955658e7b9mr5841305ad.3.1762165550799; 
 Mon, 03 Nov 2025 02:25:50 -0800 (PST)
Received: from google.com (164.210.142.34.bc.googleusercontent.com.
 [34.142.210.164]) by smtp.gmail.com with ESMTPSA id
 41be03b00d2f7-b9b8f2b5403sm3684424a12.17.2025.11.03.02.25.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 03 Nov 2025 02:25:50 -0800 (PST)
Date: Mon, 3 Nov 2025 10:25:40 +0000
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
Subject: Re: [PATCH 19/22] vfio/pci: Convert all PCI drivers to
 get_region_info_caps
Message-ID: <aQiDJDdJGigjtkeU@google.com>
References: <0-v1-679a6fa27d31+209-vfio_get_region_info_op_jgg@nvidia.com>
 <19-v1-679a6fa27d31+209-vfio_get_region_info_op_jgg@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <19-v1-679a6fa27d31+209-vfio_get_region_info_op_jgg@nvidia.com>
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

On Thu, Oct 23, 2025 at 08:09:33PM -0300, Jason Gunthorpe wrote:
> Since the core function signature changes it has to flow up to all
> drivers.
> 
> Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>
> ---
>  .../vfio/pci/hisilicon/hisi_acc_vfio_pci.c    |  30 ++---
>  drivers/vfio/pci/mlx5/main.c                  |   2 +-
>  drivers/vfio/pci/nvgrace-gpu/main.c           |  51 ++-------
>  drivers/vfio/pci/pds/vfio_dev.c               |   2 +-
>  drivers/vfio/pci/qat/main.c                   |   2 +-
>  drivers/vfio/pci/vfio_pci.c                   |   2 +-
>  drivers/vfio/pci/vfio_pci_core.c              | 103 +++++++-----------
>  drivers/vfio/pci/virtio/common.h              |   3 +-
>  drivers/vfio/pci/virtio/legacy_io.c           |  26 ++---
>  drivers/vfio/pci/virtio/main.c                |   6 +-
>  include/linux/vfio_pci_core.h                 |   3 +-
>  11 files changed, 80 insertions(+), 150 deletions(-)
> 

Reviewed-by: Pranjal Shrivastava <praan@google.com>

Thanks,
Praan
