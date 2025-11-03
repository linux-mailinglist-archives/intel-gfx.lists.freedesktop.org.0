Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A075C2BC88
	for <lists+intel-gfx@lfdr.de>; Mon, 03 Nov 2025 13:46:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76B0E10E3D7;
	Mon,  3 Nov 2025 12:46:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=google.com header.i=@google.com header.b="gqch4w5g";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com
 [209.85.214.176])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9650910E359
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Nov 2025 06:41:52 +0000 (UTC)
Received: by mail-pl1-f176.google.com with SMTP id
 d9443c01a7336-294f3105435so333985ad.1
 for <intel-gfx@lists.freedesktop.org>; Sun, 02 Nov 2025 22:41:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1762152112; x=1762756912;
 darn=lists.freedesktop.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=xy09bbBV2an4SjPwDAIo8320NA2LlnNWvmRboTY817s=;
 b=gqch4w5gnNix3wZ9ZhLfVOdTwPxxM14a5wtZ7h3QgfpaouOSd/oigWFx/FzXdAZoYI
 ozQM1ZPLBPLUwXSgnCuk7piLxb7qEGgJ6RX1D7OPfvhwgkbpDJBaOBLivPc2smLgX/MH
 MyrRMtxPqI2TDQgGOBdmH0Yonj8c6oZabhrYbY/kO1WIbOR4OQRywvA4MIQltw6aWhd1
 FLzi+82vmk5Ng2juxWXiIoWmQUnWVr/uwH3VoN+5JDDrzyzX/JrUbRejPcWWnGhRGQrb
 r0hGk/DqsgADaP02W1Jb7z2jW6YVs92J0sxsrnkGH4mjJJvP+dV6+T5Km5yzqds7Z+C0
 xnKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1762152112; x=1762756912;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=xy09bbBV2an4SjPwDAIo8320NA2LlnNWvmRboTY817s=;
 b=Ne19pBRBRpakh7KGGJjlrbYyqE3+ORifBmd3pVS6A8hMtspEpSZM5AVwykGwpIYyue
 szk5zXq2S8zWEBNTN6cGHTeD9tsXgJMGTTzF2pClBEdVCMfKNMO3z16HoqJCRDj+6ft7
 bYIcwNd3QwD3BfHmigTZ2gRF+NLKfIg7u33sW7mjNt6/ujvne/M7UrVPH08kRHFGDwUh
 X4Ig397Ne9U6MCPj2eGeM+03yxUljv/AQrfJVxsTOBN7zFxO97F1XpacuGEWfpyHe3Ns
 zOFd2xIde6DV9inq0L3wn3JGltBacIAUxJEOfBCuovDp1StxhzOa7tOZtPxSagBXR51r
 Wk+g==
X-Forwarded-Encrypted: i=1;
 AJvYcCWGOf07NUI0jiA+YhDzGAreQouxvz5WZ/nnipNoRZ232us5k9VqVi7JYNEPZEWCZpntW9CMFMhGo2Y=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzYRd4j6onYPM1P3SU9KORFDcEw3Vd9w/rCddAn4zYtJ5sPasUz
 Wuka04Y03kUKRqD6zAE7mlpLkhBadB4p4mwDeF4p3hgvm+gJOvRZvqv4E4Nyg4moUg==
X-Gm-Gg: ASbGncu/+CUjeJ0o6HJTnyxb+K0vH+Z5n0gi5hQ0eE+vAUJDpGjUcxRcteegAbb6Az6
 /a8Rva2TP2KSMXRABjkS2vtY8b3ftGbX3PxkmvNJab+UU4wqQRMZteTbtQit4rItdstbLE1QOgR
 81wFit9hYZ7wkmCpd1W1ED/4dQ57kJkGhraHeapPZcctd7bL13Hlq6+AHY+zYEHXE8OMBonYIQQ
 2/OmCAAGU34Htp9vr8gWubd7ykxNZSZ3PzWK1tprLVRF07kL5m3g+1tXWfRvRAi9QLMT4XalA2R
 qQ7vJ6cm9cDmtdmWt/ieZyrQXutlEW7jsRq/7ayZ6UmDPplzWJdzqF4PI8n8rxeItR4YQBODcdk
 259ptbu/teHLlx5Vq+hZOr1cUOFzuZx2BSla9Db3MmvF78A963mV0rcFOwb88vW8xE/alJ4AMp7
 klje/QFBjMHLzLNca6b8fMUrcKPxHcVbB7e6YJtuhoO1cucd/y
X-Google-Smtp-Source: AGHT+IGU3X/bvekwg5vtQ6XJGr9uQJGWUTHzyQr+Es6KbcLgu8QfXVso61Ocr0oWX8j6FOttuRoGtw==
X-Received: by 2002:a17:903:1ce:b0:292:b6a0:80df with SMTP id
 d9443c01a7336-29554bb5aaemr5658455ad.10.1762152111810; 
 Sun, 02 Nov 2025 22:41:51 -0800 (PST)
Received: from google.com (164.210.142.34.bc.googleusercontent.com.
 [34.142.210.164]) by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-2952696eb6bsm105902925ad.58.2025.11.02.22.41.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 02 Nov 2025 22:41:51 -0800 (PST)
Date: Mon, 3 Nov 2025 06:41:41 +0000
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
Subject: Re: [PATCH 04/22] vfio/nvgrace: Convert to the get_region_info op
Message-ID: <aQhOpec7prJD3zKm@google.com>
References: <0-v1-679a6fa27d31+209-vfio_get_region_info_op_jgg@nvidia.com>
 <4-v1-679a6fa27d31+209-vfio_get_region_info_op_jgg@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4-v1-679a6fa27d31+209-vfio_get_region_info_op_jgg@nvidia.com>
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

On Thu, Oct 23, 2025 at 08:09:18PM -0300, Jason Gunthorpe wrote:
> Change the signature of nvgrace_gpu_ioctl_get_region_info()
> 
> Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>
> ---
>  drivers/vfio/pci/nvgrace-gpu/main.c | 15 ++++++---------
>  1 file changed, 6 insertions(+), 9 deletions(-)
> 

Reviewed-by: Pranjal Shrivastava <praan@google.com>

Thanks,
Praan
