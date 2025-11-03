Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 646E1C2BC7F
	for <lists+intel-gfx@lfdr.de>; Mon, 03 Nov 2025 13:46:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BB1110E3D4;
	Mon,  3 Nov 2025 12:46:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=google.com header.i=@google.com header.b="tLDKZftg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com
 [209.85.214.176])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AED75891C0
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Nov 2025 10:17:07 +0000 (UTC)
Received: by mail-pl1-f176.google.com with SMTP id
 d9443c01a7336-27d67abd215so417775ad.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 03 Nov 2025 02:17:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1762165027; x=1762769827;
 darn=lists.freedesktop.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=+B58KtJn/bs233pgZmMdorp656WS5EnyOqIx/RHoAag=;
 b=tLDKZftgHKQQLVwaCKJ8JIkQGhrrlePOvpWm/156thXzlGEuzCyjW1Sb407/o+KV6V
 XWoigw2uNw4F6OaVeApYLVAiOipvh95aXFJMUvTVxsRsYu+pwsNH707GKPC2aAfPOnFr
 PWg3A54s61QRBEM3WaSYxp9jtDisZjSEyKIXecc/IGZrwbITX10GN26c/bFPMRcSkrLn
 e4Z+BxfvDXbm7g2MKI0H0AjIKLiPe3Hpyww+cDLKoqY8cA7ungDGCUpck5IL8lxUCmfY
 2bIBFngJnj/M3mLXlt3sRXI5aRJXd9r2HkP09+1/1xvHsv2dSgC20jOfAsoW/oei0Kv1
 XmIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1762165027; x=1762769827;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=+B58KtJn/bs233pgZmMdorp656WS5EnyOqIx/RHoAag=;
 b=en5I1wHkZw992IpeWTI5gXeHv+iaFfQoP3MgnVvBBYCVkWB70Jij4hKLv+O4NQM455
 kgALkwrvSfWmAyQT/9581RyPkxRF4EgXrK5LX7kCqgW11/8izbpHrMK6ZxYNH+aeDrHq
 6SX/LIBh3/QT60T1FbxUuiobGgNuTd2W+YrLgfPOGvXi1XjuuDLwptD6TKsa8pZMu2st
 e0Esl7nkWo+L88Pb5PPMgsbmxX4iHM7T7saFAa0QomD7fbBnSCf33lPPGAXUV63Da4iS
 M0Z+xvGMfxJkzWtMkiukkQB66n1HVE/Hu+4E0HElGHe8yZ/ocTj54RwigLqeSTAkGIh9
 AR1g==
X-Forwarded-Encrypted: i=1;
 AJvYcCVle1Ft/puVB5ubG9Y6U3wiiVJnC+ECBqXp33SHdyY8JoavL8Je/GQbX6r0NzPXdzXBMBOmaM1I2r4=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yww8aRSRO07rx63tqw4wyvrLE7HMadAZ3BhqY/QRJjQ/B8iesgD
 ZvT1sU41/m+Ms9yOizqVKSOJgfD1P0Tr7I7D7GrpHgvmVA2yqFdijfI25ZvzOcm+tg==
X-Gm-Gg: ASbGncvjjU4X+HNPvgMHE/jsXDP5LlWVtWF/0psS49I2GDByHzpn0+2FrQv+XhCRLDY
 /knZ9/Js0VOB130QJK5qEdw3yFQboG3g/m3nFy+3OV78cnC+hWn+9U3/zkF3JpS+HlfvO9yeWl4
 1cySynrFjreGi1UBUNH3AQTz+Di0eeIxWcessHIFh6amWOo0wjk8Xri3X6jMfaeRfZMqGQqCrlU
 /ct94g2Dh794eHa6cscQ52iJiDUgWQQ1IWaVahhKm1nx5CGfBJ9Tc345azgSVBNZTI62pVks1ui
 dWUMHWZG42lcriwYfOyrQpW/JSwhKlh+/tT4neTofoHgtOMn6cxLAG5FM2i3BM7dc2yJHBe9IMI
 yZOeVjhNr5v4N1rspfDIBfer+JVnsEz6nxtpmiCgEo5eCY5ZPLrUoBaaixosrt0gZH62BAh+zlJ
 X8HF7wrarI83LhPgmJBei9V3e3afEzcg/PIOZ8rg==
X-Google-Smtp-Source: AGHT+IHxzXLAyCFx7IPmcOnpFb2vp8Rgf1l3Kna0V2OUhXGSl0YxnYi8nj1MD1lWW9qX+m9LVNsxvQ==
X-Received: by 2002:a17:902:e88c:b0:290:d4dd:b042 with SMTP id
 d9443c01a7336-29554bc5206mr7508255ad.16.1762165026873; 
 Mon, 03 Nov 2025 02:17:06 -0800 (PST)
Received: from google.com (164.210.142.34.bc.googleusercontent.com.
 [34.142.210.164]) by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-7aa4f4c28easm4658013b3a.31.2025.11.03.02.16.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 03 Nov 2025 02:17:06 -0800 (PST)
Date: Mon, 3 Nov 2025 10:16:56 +0000
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
Message-ID: <aQiBGEgQ3vCpCvXM@google.com>
References: <0-v1-679a6fa27d31+209-vfio_get_region_info_op_jgg@nvidia.com>
 <15-v1-679a6fa27d31+209-vfio_get_region_info_op_jgg@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <15-v1-679a6fa27d31+209-vfio_get_region_info_op_jgg@nvidia.com>
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

On Thu, Oct 23, 2025 at 08:09:29PM -0300, Jason Gunthorpe wrote:
> This op does the copy to/from user for the info and can return back
> a cap chain through a vfio_info_cap * result.
> 
> Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>
> ---
>  drivers/vfio/vfio_main.c | 54 +++++++++++++++++++++++++++++++++++++---
>  include/linux/vfio.h     |  4 +++
>  2 files changed, 54 insertions(+), 4 deletions(-)

The newly added vfio_get_region_info seems to pull-in common boilerplate
code (like copy_from_user, arg size validation) into the core code,
removing redundancy across all other vfio drivers. LGTM.

Reviewed-by: Pranjal Shrivastava <praan@google.com>

Thanks,
Praan
