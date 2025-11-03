Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 15CBDC2BCA0
	for <lists+intel-gfx@lfdr.de>; Mon, 03 Nov 2025 13:46:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2807310E3DF;
	Mon,  3 Nov 2025 12:46:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=google.com header.i=@google.com header.b="i2nMaQim";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com
 [209.85.214.180])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D74C710E0B5
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Nov 2025 10:29:42 +0000 (UTC)
Received: by mail-pl1-f180.google.com with SMTP id
 d9443c01a7336-294f3105435so373925ad.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 03 Nov 2025 02:29:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1762165782; x=1762770582;
 darn=lists.freedesktop.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=gNHaVozbtXB8nI6t/qtWfMkb6Kn6PYTAjlMTSN+Ugyg=;
 b=i2nMaQimrsb1Qf4b/h9jQKAABIR/gEjvN+h5Oyosi84eYx88ANFY9c4ku1DXc8p7CW
 aX3qes/a9M3QFzqZKTJDO33n3isQXtkMQ7JvMInEdHrlYZoRwnvO2U+7Mc92Joezp3+c
 B1GRZOyOFAeteZTDyWJQePuUTJ+gg/Ucc9vUrlnhlz88XjaaYpnA1Iz0tVro1/nZgI8D
 bo9dfK4D6GoaLyYLUXcIQXZg3Nmv7AXbNp7a9faQOSxg51UxBTIdjK3J1gwDSVyJILjW
 L4DsqIQcXslMW+VYVDtxaOGgXlA1H1RkR+QGd4voq2J4ijY92KIsQhGvYNkUzNh31Lvo
 EHkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1762165782; x=1762770582;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=gNHaVozbtXB8nI6t/qtWfMkb6Kn6PYTAjlMTSN+Ugyg=;
 b=O6hlOEWshgwrHMWY8QFEQWm5C6gNBFAf8yMmLxPjoJ+cbxi6/ukBaq1EMG5KW6dENr
 lMt4h8AIAptkaFmVHp9GfYd3jbiMu3nLL6LP9kzPcx5bEJZYljWIexjXoBi7q8G24dAi
 AHBIPy7bZUTG7XUql6QxMwKFvcEGE86CZk42a2Nig77I7sggnj3wZ9QXx7mh0x+0BjiX
 jekAq62uDv0r7g8Xp/nDGBoqjDI+ybEoh2AIwiGoUI2AgrLnhM2hmp1bW4bIPuTSBqLd
 FO9QyhSRf8hsKoyuYfm4Xvr0laY23yM5bh8WbTInz9XtV1T1ZctZ0HqQ90yL7jC9xJWH
 J6Zg==
X-Forwarded-Encrypted: i=1;
 AJvYcCXgaw8ZSBgEA795JFzPe4aAQ6xSYdat9sJFCLxSB8v0TOfVzmJ5xQO7UUVa85LeIOiR455nh369xDs=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzRzApXDFUsz+qVVxLnb7BWTitdBUof4RkN7nQqVNsMYAscIl6h
 8ufAfEqc8setaoVygBUUiZ3L6gF2y5wrhcWCfSDrKHmLDJ2VlfojS8wOIWjFr6Sksw==
X-Gm-Gg: ASbGncvFQmF/NNMsWpYPLhm0uPg23pgA8AOeEBUJM6VgflM5Et1sqUKwKzmo9qGOgRL
 ddRk6LNHl2qF50PQMCP+L8WKfHw0EEa5Ls/4AGveTuslDrP6hJ9bWdaOWAFbZ9vU/eeRUEVEMS+
 uEK0E6N60VodTC7sjNoEYDsSyPnAQPGePnlGlKPJ3xhzDZrlV2Vv6TgQ/Fd0D0HUJjb1y4m+mG/
 IC6GFMCN1Uf1nz5RsLIj/w4LqhMgVBXVYwywWB88mJdd/hLt6FLLCJYYifcN/4T9IDNA6hnInui
 TRY0rVaBfvdxrgXKcVRALfTU9w1urPzAji7LmgjQIOWvFFW7lFkfBnrk4mdLEl6SfdO8Fil4EyG
 +uPktKXtyOc76lGBk2WH7o6h+eJyvbCxLqZ+49//M6JLbKy+t5Atfh3drEvig6goZgJwyk7zkY/
 NVkHkZ1tUluUcoSGIpK2k1B93ZIqvanW4syQloxA==
X-Google-Smtp-Source: AGHT+IE7RbmruVQhXsny/j8l+SFhjfD6jlGy79IZqby3HlHJSxLaU8PrnA03I6j8kd1hYd7zo15JRw==
X-Received: by 2002:a17:902:d2d0:b0:295:30bc:458e with SMTP id
 d9443c01a7336-29556477728mr6652975ad.3.1762165781842; 
 Mon, 03 Nov 2025 02:29:41 -0800 (PST)
Received: from google.com (164.210.142.34.bc.googleusercontent.com.
 [34.142.210.164]) by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-7ab30909fccsm2991326b3a.20.2025.11.03.02.29.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 03 Nov 2025 02:29:41 -0800 (PST)
Date: Mon, 3 Nov 2025 10:29:31 +0000
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
Subject: Re: [PATCH 21/22] vfio: Move the remaining drivers to
 get_region_info_caps
Message-ID: <aQiEC2Z3lqxAIY3J@google.com>
References: <0-v1-679a6fa27d31+209-vfio_get_region_info_op_jgg@nvidia.com>
 <21-v1-679a6fa27d31+209-vfio_get_region_info_op_jgg@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <21-v1-679a6fa27d31+209-vfio_get_region_info_op_jgg@nvidia.com>
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

On Thu, Oct 23, 2025 at 08:09:35PM -0300, Jason Gunthorpe wrote:
> Remove the duplicate code and change info to a pointer. caps are not used.
> 
> Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>
> ---
>  drivers/vfio/cdx/main.c           | 24 +++++++------------
>  drivers/vfio/fsl-mc/vfio_fsl_mc.c | 26 ++++++---------------
>  samples/vfio-mdev/mdpy.c          | 39 ++++++-------------------------
>  samples/vfio-mdev/mtty.c          | 38 +++++-------------------------
>  4 files changed, 28 insertions(+), 99 deletions(-)
> 

Acked-by: Pranjal Shrivastava <praan@google.com>

Thanks,
Praan
