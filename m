Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FAD7C2BCAF
	for <lists+intel-gfx@lfdr.de>; Mon, 03 Nov 2025 13:46:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C9B110E3F3;
	Mon,  3 Nov 2025 12:46:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=google.com header.i=@google.com header.b="tmv2JVIW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com
 [209.85.214.175])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 766B610E365
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Nov 2025 07:18:41 +0000 (UTC)
Received: by mail-pl1-f175.google.com with SMTP id
 d9443c01a7336-295c64cb951so84795ad.0
 for <intel-gfx@lists.freedesktop.org>; Sun, 02 Nov 2025 23:18:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1762154321; x=1762759121;
 darn=lists.freedesktop.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=Y22k5ngiq32o4MbKE/s0CLErP3q9IoFtmfwfCLBHatI=;
 b=tmv2JVIW7MaseLzMVRvMfN/OoB4WwKjDLSDjw+3holZuK9V+11cAlg9dJWD+5gLnnc
 knNXBbXzQS9/8aUI5hb6izxchAcC2FVYKgg0gVLCIn8q3IpgESL+W6oESV0cGhgRFKGs
 wd9X+6INkXzudBpCMkdaZiVbc7P65O9mqQBYZob6bjU7Fi0+XgJ6m1Y3MxGuzaI39Vbp
 NFeCf5B+U2846crrArFEAS6fcg3ZtxOHjDTKajgHIFuVAi9/ocqWlA7UMh2ukeci6+kj
 d4cJnGVZvw7IvcMYjXw20LMpuUPX6GhE+q3j+yjALatSe/phVO8jsvKxC/AzH3q+DrHN
 P2cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1762154321; x=1762759121;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Y22k5ngiq32o4MbKE/s0CLErP3q9IoFtmfwfCLBHatI=;
 b=gOAj+f93L97TbINo8sxTt3s04wZZp3l4N8IuKtI6oNSlp1yyQ18yRBj2D+AcK+hXUh
 5J+qzhLlze/MrGSDldhMSS57pq9OKnlXHTUn8+chCwCzPUV5oBYFJCNK3EJ8CR7DfqdZ
 vDWj7Rvb/Q9tS1S3neLfDORrdGhtAUD+KR2QMXYxpiVx74l1sFmEvoQDM9yvdnD3nnzz
 rWYWlimvSoCeiX/0pJqB/U7Nkmb1whUrcQI4JNYs0/MXzgFiGOqLvxuKFmPZTxTvuXSL
 w8ReqkmIKLNLP9KRZHB9nN/VPyTuUGoCPOI9DB9xr6vjUCaeXoxoKa6wpXL24dY1i8FB
 ncuQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCX5FeBAUM82d3zD8B0aVaIueOB/nKMeilzTBhhqiFGf4xuDdzQnH6LthyXLQBcYhsSxlipvSKq6vTU=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwyM1iEbwcnkcWiHCobfbL0yrMdjfvoAtBQAzQ/EpU1pP6AUqj2
 KzymNKUd871YPY1gr0Vr1fnVkA4kmXikJVPfPjZyiLVY9S4MIGd3DqFqAfqZHaObIw==
X-Gm-Gg: ASbGncvXoosDvMlAZJM/q9i2zm1SIwSdVx7fxeCXCPg/hJ5ySDMzn8+MuVUMgOfC1Uv
 0Y8f6HOKcz0PXTPw73gNlNfVQrRSzUjtS+QaH9HZr+y/h9Ubyq0Xov02BMc46/R4mTxkVtsf82Z
 CCRtGPrhamqFebDGo1bmfCDYj4eZR27eoklZXWNFnTeDsg21yNUXdmMvcO4BSWsQg/FuPIjCBQw
 AM7q4Q/UhT1UrFx4go2qo75y0DON49dlA7GcSvQPfxlSHa+S4P0ygPdyKr7N7w19uF1MZcy3zVn
 aHN+Ujz7Y32xvJ4GRfM9qQYLP8p1/pES+66N5PW86O9bQ/GaSwgW9jmtN088NcabXKAdZO+apv7
 2a7xv+OEzeKzJw2IAiM1ElLV5/5LHCmAA9CZ417S6lCh/chMVWP5fhR+W7WaBBOaJ0JyGhadsHr
 0oPyWjixmDisnMKSLd0+UT1AoLOaBS6tuIqFi9SA==
X-Google-Smtp-Source: AGHT+IHz7vQ0cm4SGWCD8qu7hNB41Aed4i8aC1NkscOeFOjchnLwW8gMwvqn5xaYYumt7DzVtDnmgQ==
X-Received: by 2002:a17:902:d2d0:b0:295:30bc:458e with SMTP id
 d9443c01a7336-29556477728mr5855785ad.3.1762154320729; 
 Sun, 02 Nov 2025 23:18:40 -0800 (PST)
Received: from google.com (164.210.142.34.bc.googleusercontent.com.
 [34.142.210.164]) by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-7a7db197340sm10108242b3a.44.2025.11.02.23.18.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 02 Nov 2025 23:18:40 -0800 (PST)
Date: Mon, 3 Nov 2025 07:18:31 +0000
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
Subject: Re: [PATCH 07/22] vfio/mdpy: Provide a get_region_info op
Message-ID: <aQhXR2M6riHmufl7@google.com>
References: <0-v1-679a6fa27d31+209-vfio_get_region_info_op_jgg@nvidia.com>
 <7-v1-679a6fa27d31+209-vfio_get_region_info_op_jgg@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7-v1-679a6fa27d31+209-vfio_get_region_info_op_jgg@nvidia.com>
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

On Thu, Oct 23, 2025 at 08:09:21PM -0300, Jason Gunthorpe wrote:
> Move it out of mdpy_ioctl() and re-indent it.
> 
> Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>
> ---
>  samples/vfio-mdev/mdpy.c | 53 ++++++++++++++++++++++------------------
>  1 file changed, 29 insertions(+), 24 deletions(-)
> 

Acked-by: Pranjal Shrivastava <praan@google.com>

- Praan

