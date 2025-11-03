Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6DEBC2BCB2
	for <lists+intel-gfx@lfdr.de>; Mon, 03 Nov 2025 13:46:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C6EE10E3EE;
	Mon,  3 Nov 2025 12:46:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=google.com header.i=@google.com header.b="ieWBsyZU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com
 [209.85.214.176])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E83110E360
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Nov 2025 07:14:50 +0000 (UTC)
Received: by mail-pl1-f176.google.com with SMTP id
 d9443c01a7336-27d67abd215so381225ad.0
 for <intel-gfx@lists.freedesktop.org>; Sun, 02 Nov 2025 23:14:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1762154090; x=1762758890;
 darn=lists.freedesktop.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=krxDO85tsubF5J6uxcbfpS+xA/eKw7o0+Vmbt9d1Ois=;
 b=ieWBsyZUNlAA1D4YhNe084VqV80x3mV+/8uTZw5DHgCA8ltiriktD6xU/nny+CfwV3
 vuMZNmXU6u2+Ypm7vc7gA7/7Xy7K8XaTDJkHdVz7jrpygPS9MYPSeg+Q620SKCakElLc
 5wCMC8FJX2Zpz47PYBwl8wlh++p0WnBD87+VEPqMyUd2jtEh4Nh/Ijoo42NDtfraVt/M
 dBOI+D/C0y3BeLci9iG2AseP72cLLPlj1jA0TXuMUt1m0P5M4t9JL5Hf77U4p3CQaR9e
 wFolPyeliUnlVIRI9MxjEqme1zohixGS9Bjr4azJ+Ni0vYpif/R1nWOT78xmEguaPdeJ
 zgkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1762154090; x=1762758890;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=krxDO85tsubF5J6uxcbfpS+xA/eKw7o0+Vmbt9d1Ois=;
 b=XXYNaU/F8qTPijk6y/py+8jRD5obXlWJAgeKQq3lmClbvML0WIrMJYIs5m4S/KBajd
 lnPosO84f6k1JQhg6320StizfzMwC3DRuHiFzlKZJqYX5PlvTSJ4trXD/nZ43vAMY13U
 coSy6CssWbr0e7XD82geF/rGHtVeYmsIi4CIf1Z/mUiAHCAaErxaKucFaJj3hQA95ylg
 5UCaKNHD82U2xeCVNC/r7HIXhf/rJG+ZdbKXr56JBOskQRr0GnH6JZaxE5c8+ARVdcIE
 3uYDzEeJhOp03gFhfqPhQUwv+LcRA4UfjbVU89phTeSBRP60vOXOQk4lZoR92P1EGxK9
 9aAw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWLZPH+LL5TsmaVnND55reUdN2nYqi72ptwEXM2UPn3b0IRW8hI8FmUIkyYVgo7+C/FaQxieolOh3U=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyaqQcCb77Uj29lHGs5eytmlCg6a5XNIvufH3YqQ9Jr21Su9Tue
 kM0UrgmOqEYmiFwNg6EOkpmUSpU7buL7W8QqpKFIDMX8p+1ZQwSiold+KF5DqR7k/w==
X-Gm-Gg: ASbGncs/rpmq1S6hPaf38+DuXyTR+Lpf4JANs33IzUobCQwlFWVT13sYtl3BkPIg2qH
 gn/TTAc4HeWpLo554Gl1tkgcXgNgqSUI89XLcQsN+cNdfRZG5gyNQv/6NtxsA1dfw9DfheANjDO
 Dh2teaB0v6CZVyKPTm5CtLqbp23ILAVN7A0p1QIL3oRO9yRNQbGoP5zuOWLffsxT7odLMb015jY
 UswNp84jwPMjtXNv5DjH95iTMQjvSH6LZtIfuOkEkmzfkVgdySH2315UO0tvdn7LIwNiZIfhsq8
 Zdtm26a9HF0x5JBdNPlzGa66/FoHG174WGvqI7rG8vICXh4E7g7T7olHBy9dMykuFt1ZPWtHb1H
 V2eAqeqzdu+VGEYLg8P5urw73GObrQkYBvvpGlVT6i0beAhHwAgx15Q/1a2wxdPfyTCbtUwxvKt
 ZW5H4tkdAETrLCEa32qBh40THY2/jYIMRqw5VdEg==
X-Google-Smtp-Source: AGHT+IE97CemVwDodrlEsACTbu3ii+CcSlX4Mt/UH1nASQkOOWezhknbfsTfFcSLebBhaZ2a41/idw==
X-Received: by 2002:a17:903:184:b0:25b:fba3:afb5 with SMTP id
 d9443c01a7336-295565ad1aemr5343685ad.11.1762154089465; 
 Sun, 02 Nov 2025 23:14:49 -0800 (PST)
Received: from google.com (164.210.142.34.bc.googleusercontent.com.
 [34.142.210.164]) by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-2952696eae8sm107020535ad.61.2025.11.02.23.14.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 02 Nov 2025 23:14:48 -0800 (PST)
Date: Mon, 3 Nov 2025 07:14:38 +0000
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
Subject: Re: [PATCH 09/22] vfio/platform: Provide a get_region_info op
Message-ID: <aQhWXmluuFaU3XPL@google.com>
References: <0-v1-679a6fa27d31+209-vfio_get_region_info_op_jgg@nvidia.com>
 <9-v1-679a6fa27d31+209-vfio_get_region_info_op_jgg@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9-v1-679a6fa27d31+209-vfio_get_region_info_op_jgg@nvidia.com>
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

On Thu, Oct 23, 2025 at 08:09:23PM -0300, Jason Gunthorpe wrote:
> Move it out of vfio_platform_ioctl() and re-indent it. Add it to all
> platform drivers.
> 
> Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>
> ---
>  drivers/vfio/platform/vfio_amba.c             |  1 +
>  drivers/vfio/platform/vfio_platform.c         |  1 +
>  drivers/vfio/platform/vfio_platform_common.c  | 50 +++++++++++--------
>  drivers/vfio/platform/vfio_platform_private.h |  2 +
>  4 files changed, 32 insertions(+), 22 deletions(-)
> 

Moving the GET_REGION_INFO logic to vfio_platform_common.c and exporting
it for both the vfio-amba and vfio-platform drivers to use in the new op
looks correct. LGTM

Reviewed-by: Pranjal Shrivastava <praan@google.com>

Thanks,
Praan
