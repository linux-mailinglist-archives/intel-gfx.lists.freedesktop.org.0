Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 634F6C2BCC2
	for <lists+intel-gfx@lfdr.de>; Mon, 03 Nov 2025 13:46:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DCC610E3E8;
	Mon,  3 Nov 2025 12:46:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=google.com header.i=@google.com header.b="nMI/K8SL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com
 [209.85.214.179])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86C0E10E3A5
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Nov 2025 10:21:40 +0000 (UTC)
Received: by mail-pl1-f179.google.com with SMTP id
 d9443c01a7336-294f3105435so372525ad.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 03 Nov 2025 02:21:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1762165300; x=1762770100;
 darn=lists.freedesktop.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=zM2bsN+XnlGuvDGqw1tQvaweGHKrw1JAZACa3YqST0c=;
 b=nMI/K8SLY4YtqSwaUrj1MCKb6229hgNVZjlAn/NiRDsDlLFMRJ7heYLW+mkmKWEPRA
 ady3HeBteN3rJI3JpdIJ5ggffn2fGMvUOOeCsoZhwGgF0+JAY5gVh10q3vBslOojnc6N
 8qXrxMDw5UpuMAQGgpBvFnf4TBGa4eE1kTi1HxeMs2VCtjIHooBXTRN33PCb5xrsGx2y
 WlmSbBCl4m/ruqfuElw/04jTuorqADtxA4sTT6ZGwp95oP56A4Wavz+JUlZBwXAhddgi
 hFwDofaIvwbeAG1VA4MdReVoZgVXrU+7mICxGCCI12ET/O2g2Kgf09GTDBDYw3f8FVSo
 vZ1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1762165300; x=1762770100;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=zM2bsN+XnlGuvDGqw1tQvaweGHKrw1JAZACa3YqST0c=;
 b=GSqw/N8Qdx6OzkI0xvce/T+q8qJkLsaCNmn/oO9aTSqIfjN+GmXYk0q/fR1RXiQ+sT
 qJtotKj7YYDu9Ci9h0s6jDKeCCwM5Gkf4+PET+UqA5rDTTsnfPLCNmrqo5dZfQJLjkjo
 UFAzszR7umzccv9tIkv1PwyZ2aAbwEap529YULklp/Dw49clgRK+DiWlB1ZCuRIb9/+7
 c2afa6T7LT0glh4Uit0AtXy0qLfgpKUj1LXbc7BHrNv1t9IpHrVmfbFhtAWRdOJra8z8
 n0wiFhjYNlq4djlM3FHKUYFm9tgf2e5D5B0cTVMvzTUP4CoDCuAitgreLwTkEtYDI4DF
 M3Yw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVM8yMaJlQ41HKXglPzoE+2UVYnwLlUGT9KXe/IIRJzRLyQ5QHUrY7RZ6Vxb1sVhgWwcpBjgvYN894=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwHNkz7NoPivch06w2oPbKEjNSgod+sF5qURBi5+lYgZ1Opt6XT
 voJTfutp7E09Ebql2ISKOjV+3Zl5nk+N4WHuwu0Kq9t7neTP7wPPVbeNDfpOMDD/Lg==
X-Gm-Gg: ASbGncuQElbaqV1KCF3BPhx8pRVQtahmhgq+YgR0R2nKdpWQpLyuWjGpdTnyFcl6xeS
 bPuci0NQHJN6j2T0D2Qw0q/fRRagqc32drAhln6BTbfd7eqq6j/6GVVFH7AlNEdoQO9nhjZ6u0h
 WF4m8FFtlJsfKU84JLCQNToG4MWsXxKlYyLI4Fum5jRgoHTFUdVOSreQUs2TJni305lXUOYiFRS
 2UoRZqCV3Go1z1/z/vxXFMCx9qZ22Z2L1UC+KloJQfQpnaLFxeLJFF8j65NkNPOdyTwgk2nRNUu
 dpbKikhO6StWxARLIFfsGGI86NHpLU5TTCxU4eDTm0H3YFhBt7oPEl0lr9ChsDbb2glf6C91vam
 wcchTFaIKvzGc0dhKtzyPz3m8DLNsJwRaog0k8uCDhQbMl7QZZtRh7pH59TQv9K7ax7/mSSidVT
 ODQyTFGh3aJaLdqm5H8DxsVNKl9toizS7h9XYpj69xGFEb/D7/
X-Google-Smtp-Source: AGHT+IHDQYQU+xgcIcym40SdSIPVCJL4E/vz3sWG3WXd+xmfQ1K9iSuwfFgvjeHeyY3RCG42umC9MA==
X-Received: by 2002:a17:903:1a70:b0:295:28a4:f0f5 with SMTP id
 d9443c01a7336-29556476c7amr6429175ad.5.1762165299489; 
 Mon, 03 Nov 2025 02:21:39 -0800 (PST)
Received: from google.com (164.210.142.34.bc.googleusercontent.com.
 [34.142.210.164]) by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-3407f26e0a6sm6205722a91.5.2025.11.03.02.21.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 03 Nov 2025 02:21:38 -0800 (PST)
Date: Mon, 3 Nov 2025 10:21:28 +0000
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
Subject: Re: [PATCH 20/22] vfio/platform: Convert to get_region_info_caps
Message-ID: <aQiCKBl0ScO78Le9@google.com>
References: <0-v1-679a6fa27d31+209-vfio_get_region_info_op_jgg@nvidia.com>
 <20-v1-679a6fa27d31+209-vfio_get_region_info_op_jgg@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20-v1-679a6fa27d31+209-vfio_get_region_info_op_jgg@nvidia.com>
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

On Thu, Oct 23, 2025 at 08:09:34PM -0300, Jason Gunthorpe wrote:
> Remove the duplicate code and change info to a pointer. caps are not used.
> 
> Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>
> ---
>  drivers/vfio/platform/vfio_amba.c             |  2 +-
>  drivers/vfio/platform/vfio_platform.c         |  2 +-
>  drivers/vfio/platform/vfio_platform_common.c  | 24 ++++++-------------
>  drivers/vfio/platform/vfio_platform_private.h |  3 ++-
>  4 files changed, 11 insertions(+), 20 deletions(-)
>

Removes all the boilerplate (copy_from_user, copy_to_user, argsz
validation) and lets the VFIO core handle it.

Reviewed-by: Pranjal Shrivastava <praan@google.com>

Thanks!
Praan
