Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED367C2BC7C
	for <lists+intel-gfx@lfdr.de>; Mon, 03 Nov 2025 13:46:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4065510E3D3;
	Mon,  3 Nov 2025 12:46:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=google.com header.i=@google.com header.b="Q7Cdbhfv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com
 [209.85.214.175])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4124A10E164
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Nov 2025 07:30:28 +0000 (UTC)
Received: by mail-pl1-f175.google.com with SMTP id
 d9443c01a7336-2959197b68eso196495ad.1
 for <intel-gfx@lists.freedesktop.org>; Sun, 02 Nov 2025 23:30:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1762155028; x=1762759828;
 darn=lists.freedesktop.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=W00R51s/bFZ7FSKiqSW+6LDxOwjjTftHVYebWZvSUlk=;
 b=Q7CdbhfvNYbrATPS3FSLfK29pzvml1HhhE+8F99PGgDau0F4kUBirKe46A73UZ8ELK
 NAo9nWqdKAq6jSqVrTEGi6O9Jz2TB2uMhZaRWeWpUruRH+KtZWe4koArWxac+1kjSrdm
 m1wpDf8RuRLbjzK+kSMxNesGIAufkLSgthZBSXnow2GpgaEbvkd+ouyEozHTSkJ3ljvg
 FXpdKJtgFt1k1dtRMZqC9snfn45msr4FM0x/vjWkoR7b4PGAu5H0i+9pbquJ4rj8BYEN
 4A1IIPKMaVD3c8THu/BZB5QQNIVhGJbgMv7+9S76ivZDhyyhutJViQlGLwaAL5vDJ16D
 Zm8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1762155028; x=1762759828;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=W00R51s/bFZ7FSKiqSW+6LDxOwjjTftHVYebWZvSUlk=;
 b=bVlgdjHghwrWzNqq988QCM45KPsjJM4YxOETWTiQjfMpwggyn0Da0kn2TIqD14jRce
 74OEM7574XNeWi+fLUgpBWxjAHlB5AtZjPoQFkHTKXUZrGz5y2y4QMoOVH/N6I6jH4b1
 pMwD68FevX1V1kffEQx/84fNwgXEuWYibtRDoxQ9pnf/Kdgf6SXFqFIUIGA62Y9cvG8X
 iaSb412bj0Af7EmQ8V/AiKQYuV69bx0bfc9Ib3/oJCXvVAdWZQgDo4ugC6jj0dQA8XJy
 SxqjySu9bBQbaPtsRh6foqTqDvjI7U36y1eLDdexl2MyeVFPRXjQEkTLREayxqY9rkn9
 Y8/w==
X-Forwarded-Encrypted: i=1;
 AJvYcCU/kJ1PP/vYcT3Fw7B5SKgVytrEX3fB+sXd0q5Rd1ItDY0rzPG69PnC+ryjzLsvyjvPDyygubfw4ZQ=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxzMy3JzM6tVlf6Ple62LxoDN0lpw7z217CzjN3ks1ARRi7XBrM
 IrSioF2Eipxce9k65VeJ06leLZQGRkRHgOZBTQgcMljTJgU4A9vKkddIPkKVK9lKEA==
X-Gm-Gg: ASbGncsyO8tCQQR6D70fRXPNHlDkCajitC8YnwTLcNfFaFnCC6zds+zaRMhMsUkB84/
 tDJ5QOICAjnzcVcGGICu91rj4OuTXqGnELMjzx//ZOrzwdIoFrtCwFT68pUA7qmkSgck/9/WQfr
 pj/VOVvUyceCt6zw5KX01VhdEdmwYk24PT3w44DjS5nMT6vlGU7Y1A7nU/S7zy4ninrfE2YvE0C
 SDh3AAVl9+61w0D4LX24OSjUkYwmct/Ij1own01TgKvSd0lVBYhszzRq/lQkJnLj+EtbIasjmHJ
 WAwfBPQTKcKA1hAala730pcpTxSlVvT/aBa5DSCXpCYdS+yeBmmte6XEXn0OHdVoOjHKFvlSoPB
 es6w74JrG5lSr/fthJ7q9C/zHlbeAwlyMhxkKLMcMi5+NjdFTNQZlk3Pp1DUfYuIJy334v0ugwL
 379Gn7vYoKmQcpuBiIuewgdX4UrvM3/2C5w+tvoQ==
X-Google-Smtp-Source: AGHT+IFjaXH+x0wDYP1YTleZ6beMQ7i4yOeGqaMcf/YJxMNIbFnQkDy7S1c8+nxpPDJ2MzqKvGx2GQ==
X-Received: by 2002:a17:903:1a70:b0:295:28a4:f0b3 with SMTP id
 d9443c01a7336-295549cab2dmr7007095ad.0.1762155027242; 
 Sun, 02 Nov 2025 23:30:27 -0800 (PST)
Received: from google.com (164.210.142.34.bc.googleusercontent.com.
 [34.142.210.164]) by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-340acfa77b8sm8320159a91.18.2025.11.02.23.30.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 02 Nov 2025 23:30:26 -0800 (PST)
Date: Mon, 3 Nov 2025 07:30:16 +0000
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
Subject: Re: [PATCH 10/22] vfio/fsl: Provide a get_region_info op
Message-ID: <aQhaCAAliYQVNjgK@google.com>
References: <0-v1-679a6fa27d31+209-vfio_get_region_info_op_jgg@nvidia.com>
 <10-v1-679a6fa27d31+209-vfio_get_region_info_op_jgg@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <10-v1-679a6fa27d31+209-vfio_get_region_info_op_jgg@nvidia.com>
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

On Thu, Oct 23, 2025 at 08:09:24PM -0300, Jason Gunthorpe wrote:
> Move it out of vfio_fsl_mc_ioctl() and re-indent it.
> 
> Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>
> ---
>  drivers/vfio/fsl-mc/vfio_fsl_mc.c | 55 +++++++++++++++++--------------
>  1 file changed, 31 insertions(+), 24 deletions(-)
> 

Acked-by: Pranjal Shrivastava <praan@google.com>

Thanks,
Praan
