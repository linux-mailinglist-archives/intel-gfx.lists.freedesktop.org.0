Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D199C2BCA1
	for <lists+intel-gfx@lfdr.de>; Mon, 03 Nov 2025 13:46:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28BFE10E3E0;
	Mon,  3 Nov 2025 12:46:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=google.com header.i=@google.com header.b="kTkZBgrX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com
 [209.85.214.182])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98E4710E366
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Nov 2025 07:19:24 +0000 (UTC)
Received: by mail-pl1-f182.google.com with SMTP id
 d9443c01a7336-27d67abd215so382195ad.0
 for <intel-gfx@lists.freedesktop.org>; Sun, 02 Nov 2025 23:19:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1762154364; x=1762759164;
 darn=lists.freedesktop.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=o0HFTQsa219SiFwfMSsmBPJDLvHU+B5q0B3I9fdpwts=;
 b=kTkZBgrXOExamALigQwF8CYC7HRjQlIsOIrqsQZTk1wQYatilSsh3phNRALDbDwCn+
 UUtx79w7dK70svVbJKh3I29/0B4qcVWHnxzIUstjlkZyLFIfIqGpJruH+bqaAgSYm5nK
 wzANhXYIfbC+TeurUoWlo/CUeylPCvFrUew6qCdfYmTqg8jp/RZwgPKPDrbVD4q6MyFk
 ClsvAjrmTogcBa4diLoLkS+ZiYtkHQKY0fxl98UHN0rz4XP9ku1J6NhWlocbhR+M0Lxy
 0uGC2wolNISrNFJ4gq1ry6HwXcbkPJ2e7M3OvrkM3hkVLYUUnFiQIRURs6JKhOQdvcta
 ESWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1762154364; x=1762759164;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=o0HFTQsa219SiFwfMSsmBPJDLvHU+B5q0B3I9fdpwts=;
 b=C1VQ3jpZbUo7IEHCVMJsUYBV4ukxz6N6YoSTUV9+2LQKu92SCNm/XuKyTC76jyasOj
 24GX75tYyqcFmpYCgomIs88JjbH00Li6SfG2albLPhmkVf7G1FCaO7etoJx3d5vvjM7i
 LCKb676EdY5R2xzshSxtqb4/iUktkwiDzVquio6nrxzL1glcvRax/IlYO+ba++GGFQag
 Ry9Ae6yM+Ta6dHATRPnW/E9m6ZHojp1hI2ajTbjzXn4/3XugoRmC07Bnkl08Vo2XZsHB
 lPdiw+kwq3OI5T1tBGhsWrafnh0kXV545w6QqzHt9rUplqy9Z8ab2VNCVEg80VMqtx6N
 6+oA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVFB0A8GA93jYVX8CFveiT5HD5HvxTku01eDByVf9OFOYvXtZoJoI0QD6IIlFm0Tfv7F5dy87AHdoA=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyWRMtDKMbHa2DCf8K+xmF34v0cCewbEGNvX99luob3GuBnz7HR
 Tunjw+GMrpibEH8wo0g35GRfuGKNZV2E6YYPrI2Uk+r5rr4FyhgL9law80gEVQywzA==
X-Gm-Gg: ASbGnctjcJdt3ScYLN4VUyx7ZMTPv8+5jrBtqs5+Xg6rxy+XVZhXpDCu1FURBdAG5Hv
 QCOJso6N8xt/IQWC6ojTL9G/QuezIq3Sq0BUuBn85mM3KDkVNcqbkFdHi75uEMtG0njv5Vjpxl7
 GU/v5Cl8HFVoZ86in8Wd3Z4PuWRPNLqmJDP0tpeMP2EfvfCKq8CJ2JyW1SqIGoAt2CG7NeVYZQ4
 Wz+gsI/WNaPdgcnHmv9tk0nmY02JcfJ7kEgF8IvDspICSZJKnf3M7FRYDad+rm2G9ZpuI5UKauR
 ZzXIolBT0W2yn5G5sNItRi1aPkuUqpUAQ5F0hf6cnAw6eQjO3eVkcvPqvUJEofcH5spdp53AclH
 3VpEDjDhsReRPy4MzCNNFVKVIjX277Ww2d1IMNadya+ID4yxRV10FIacMkXzAHONjzs0MnvVdYg
 NEdFJyKk5+cY0vmtBYs2O0nOny4N6++Vk/Cgd/2llBjcn1StAx
X-Google-Smtp-Source: AGHT+IHBQG+HPW97p+DH7DuUW/9lAGzWwwSGGkvrgXSHhhLN9zwUvIOn1ehyN1vXIvTruEG3QceI6g==
X-Received: by 2002:a17:903:228e:b0:295:1351:f63e with SMTP id
 d9443c01a7336-29554b86336mr7219425ad.10.1762154363599; 
 Sun, 02 Nov 2025 23:19:23 -0800 (PST)
Received: from google.com (164.210.142.34.bc.googleusercontent.com.
 [34.142.210.164]) by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-34050992e91sm13497150a91.7.2025.11.02.23.19.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 02 Nov 2025 23:19:23 -0800 (PST)
Date: Mon, 3 Nov 2025 07:19:13 +0000
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
Subject: Re: [PATCH 08/22] vfio/mbochs: Provide a get_region_info op
Message-ID: <aQhXcaRDSXkmPuCb@google.com>
References: <0-v1-679a6fa27d31+209-vfio_get_region_info_op_jgg@nvidia.com>
 <8-v1-679a6fa27d31+209-vfio_get_region_info_op_jgg@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8-v1-679a6fa27d31+209-vfio_get_region_info_op_jgg@nvidia.com>
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

On Thu, Oct 23, 2025 at 08:09:22PM -0300, Jason Gunthorpe wrote:
> Move it out of mbochs_ioctl() and re-indent it.
> 
> Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>
> ---
>  samples/vfio-mdev/mbochs.c | 56 +++++++++++++++++++++-----------------
>  1 file changed, 31 insertions(+), 25 deletions(-)
> 

Acked-by: Pranjal Shrivastava <praan@google.com>

- Praan
