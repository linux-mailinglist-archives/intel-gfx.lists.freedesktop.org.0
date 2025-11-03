Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6846BC2BC91
	for <lists+intel-gfx@lfdr.de>; Mon, 03 Nov 2025 13:46:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA6CA10E3D9;
	Mon,  3 Nov 2025 12:46:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=google.com header.i=@google.com header.b="HgRCYkKw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com
 [209.85.214.180])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C50410E14E
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Nov 2025 06:21:48 +0000 (UTC)
Received: by mail-pl1-f180.google.com with SMTP id
 d9443c01a7336-295c64cb951so76675ad.0
 for <intel-gfx@lists.freedesktop.org>; Sun, 02 Nov 2025 22:21:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1762150907; x=1762755707;
 darn=lists.freedesktop.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=nWlZBJWMNR3o5R9SijDhT22MNLu42EpPET2zOzK998A=;
 b=HgRCYkKwSXly4mS3QfKWV/5AJTSyDV311Tq8Hlj6nRVIB0QRt11mO2R2hC/mqfGYlh
 vMr8pSEmIKBIrJ05puNCyrF8NVPDE1kQCgqSG4yFedlqQ/RM9+Ss9FiKotD0y518au9z
 hWGmuy0/+ua9osj/aSivkN8Nukz+5dcSLsV7gdc2b/dXkKCycvyxQFlzOuShLOFK1nYK
 q6sL7KmUOHYAN6H2BvpV2xUeAD9Sx2eOIaroyXxxOFNvUPPHCY+f29KLsoiJtZirnX01
 gG/HZNTEnIZL/rhhwJZxmayRklOuQgCaxa+aJfRIAhLECTol8RZgonCF1EZ7YmLFlQ4q
 9YRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1762150907; x=1762755707;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=nWlZBJWMNR3o5R9SijDhT22MNLu42EpPET2zOzK998A=;
 b=I4IA2fTJr2xffh2HHCYr/TqI2V7kAy5lHRBykrDP0xWoD8LIl+8csR6nSpN3b8POqn
 pEisJJYUZQAA1E/jMQxyQOs/V4lEo+wYrKajtWhxJ/UcRSo0MBOQthk02zpA/R6bWdQE
 S9PQ+ucobJnhr7B38fIjvj8L5GcbThxYx1ElbvVfrKj5AztErrhGfTKFneNia5cQWZhf
 /BdeFB8gBJLfBeZmXy8fpGJ1oR6gAq0LSOe36akMnhcRvka1sx4r8HMR5uItjYsmML4S
 QFK/+xplN2z/ZE6zStGw/PmrfaCN3VxuXh+q6VeLUQMAboMUl92BWE9B/uPSfiE4An1/
 GRLQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXCki5NalBqJ9RMnnsUB+lUNfPQUnvMw3Pu1dBK+MAFWTJCewKT3lv3zHu1pe0KVl9LQycFxEmSONA=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyFcHmpTc0qoVWOXOWm6R58eHRvRkFp/q9vt+KeRVm/aBzo/loy
 DfACRo1hGxgh3mutFGb2ay9DKwwGRM4Wcgh2RieMKOnSiUSxwQkPywqsrNVgScqAKg==
X-Gm-Gg: ASbGnct8rl75iemoszg7rgpuwJ/uztVpHqUFXCUO/ct7BUGofGLJr1HEkJ6kCE5l4cz
 S9ZuLu1FNi2SfF3LS2ONJIr62e8d0a443A/ubBTsvheK1xxuCULEmjAX1vsx1fduwYs30erLimh
 mlXTTDjlowm9TBVgwNwcyZvAnJjkCF6Ll8AEpjH1MlnFQT3DkAYRU+jIS6SUE+2vU/mQUuvxN2p
 BASIF4SmhiNRs84xXH9keYInbNF2+v+fqr7V4MHhkagoUBkWix0on0tCg7k8bKDd7Z2LND3p0hD
 ULwmL5xf+kXb3ZaJaYAaeFvmuxhqKZBGySAkwUQpw/NlxGHQ56n+Y4dw2dhBy3FhcAt+uLE2Tm8
 w8pTCVaaP2GfgRCdc/tas8zQ4JmL7jAsJwv9PZCjlOt1lFkpOexMZMqGt04ZejjVOXTKVpNTVPD
 BuqHDtdQqqC7VcPFr3nbiDeOjCu8IoZUApTfmnbQ==
X-Google-Smtp-Source: AGHT+IGruOwIqSOkw/c0UIqbUAnBCrsgVRvu/C4si6qjv3qWziT7RTJr58fgj5zqaOcpkLKvHmo5tQ==
X-Received: by 2002:a17:902:e891:b0:290:dd42:eb5f with SMTP id
 d9443c01a7336-29554be37d6mr5455555ad.12.1762150907195; 
 Sun, 02 Nov 2025 22:21:47 -0800 (PST)
Received: from google.com (164.210.142.34.bc.googleusercontent.com.
 [34.142.210.164]) by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-7a7db67cbdfsm9912363b3a.49.2025.11.02.22.21.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 02 Nov 2025 22:21:46 -0800 (PST)
Date: Mon, 3 Nov 2025 06:21:36 +0000
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
Subject: Re: [PATCH 03/22] vfio/virtio: Convert to the get_region_info op
Message-ID: <aQhJ8OZiVYe06hv_@google.com>
References: <0-v1-679a6fa27d31+209-vfio_get_region_info_op_jgg@nvidia.com>
 <3-v1-679a6fa27d31+209-vfio_get_region_info_op_jgg@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3-v1-679a6fa27d31+209-vfio_get_region_info_op_jgg@nvidia.com>
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

On Thu, Oct 23, 2025 at 08:09:17PM -0300, Jason Gunthorpe wrote:
> Remove virtiovf_vfio_pci_core_ioctl() and change the signature of
> virtiovf_pci_ioctl_get_region_info().
> 
> Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>
> ---
>  drivers/vfio/pci/virtio/common.h    |  4 +---
>  drivers/vfio/pci/virtio/legacy_io.c | 20 ++++----------------
>  drivers/vfio/pci/virtio/main.c      |  3 ++-
>  3 files changed, 7 insertions(+), 20 deletions(-)
> 
> diff --git a/drivers/vfio/pci/virtio/common.h b/drivers/vfio/pci/virtio/common.h
> index c7d7e27af386e9..a10f2d92cb6238 100644
> --- a/drivers/vfio/pci/virtio/common.h
> +++ b/drivers/vfio/pci/virtio/common.h
> @@ -109,10 +109,8 @@ void virtiovf_migration_reset_done(struct pci_dev *pdev);
>

Reviewed-by: Pranjal Shrivastava <praan@google.com>

Thanks,
Praan
