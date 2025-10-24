Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F6DAC060D0
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Oct 2025 13:42:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D388D10EA62;
	Fri, 24 Oct 2025 11:42:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; secure) header.d=ffwll.ch header.i=@ffwll.ch header.b="Vx5PW7V4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com
 [209.85.218.45])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2AB010EA76
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Oct 2025 11:42:53 +0000 (UTC)
Received: by mail-ej1-f45.google.com with SMTP id
 a640c23a62f3a-b6d78062424so90085866b.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Oct 2025 04:42:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google; t=1761306172; x=1761910972; darn=lists.freedesktop.org; 
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=up5Xp7Tkw9eG+UTIBf7m3Um2qkiEpvh+aHfB1lIzgxo=;
 b=Vx5PW7V4cTC17SDjIq9EjDLnSFLwqmUCzMEvBBQYTo4JnbhnB2H04G9o4BVFpmQ7nO
 VOo0/u7Zt0/ZXxJgpzkyHS6vBnnehC2e61w7Gl9aT4l4bVjFq2k3pXJammtK29Joq4T6
 rI+ibY9TgW2IY3R1dLbTxdZrF/9he7Vum4g08=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1761306172; x=1761910972;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=up5Xp7Tkw9eG+UTIBf7m3Um2qkiEpvh+aHfB1lIzgxo=;
 b=QDagd+NV9B8X5g5e/M3AWpQKPBjUV3YoBRh3bVXaoy4h8o9OlpDCwMEuDKg82NbemO
 rICWH94UCvIpChfDiuY9z+viQGiGQ8TX63umrmk196Lrt8Si5eSxCiGWpISVkfgalctj
 kRRsKYjGbObvZlh7eoHfL+rfZeI7TgGmM4U7lZJatNX/4xdVXrGaxCxd9nbSu3d9OEbx
 UCDbWHGmqMBT+EWLgGfqsmIn5BMn0QjQhoAnX5+BheSnQcn0P6z6UZYyRxBc6bwj+ndy
 R7sEQPVZkuQ4yltS3H7PaKHvuz53WmcZheu0b7Zma9wcYkDIj/mFSEInw1yA0QKCBtvx
 sLuQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCU7VLofpAWpBG2SKAtBVAsSERl0ojXI3QmCLDD4j5DdlJ1JMoSFGNpUUONnxjnHdIKmiMe2wWDCCws=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yx6Pu1nwgWe522vuWByqfis8eg73VMEBLPOdMOsHg6f3Y+Ppiyt
 FN9s4dCTD5NxPmtBHZA9RSN7LLGcZBWCe3MPzhMrhsEkK7VAOYIyNtGFM33lLdtWPfs=
X-Gm-Gg: ASbGncsmKptregbNLCRtfpJcqPVVLwF0qF5oIxlXhtxkTrZfU5GuKrTopqddHK1FA7q
 /ybUDNnjtnbqodGusNPL6YHDd321yT1GbkWG91IgIKfQInWaWeTcr83yz49yQnkDzOPg9ETkU+g
 QILxPD6G6Rf9TNO1GNB9CDOsV5xAjLqbzdsxurPm7B3jPtn/4Ten72lo7bbFFU23JB0GwhiAZ41
 4pfhLWqJ9aZWMNnKy7kG2t67n8HlmWMVObdMcFPugzT8+XSfTOIf8kwVy6RQXQf523trPMjE3uY
 fAGdNBXM7mDaxrpMcJT5suO27fhLnDffs/J9pOYgjNMp2nzAAprGNI1mgC/+xESbvgvCu7RJsT/
 Q2kFoa9Y9BXe/mlE3wGLIMbhD1S2VePBSiqXB4ixroh4O6Y0PRlUTGS2JOQ+7/PXYBCOEKdR7LQ
 8tPp1RL/XgtFHOOaIUkuYotg==
X-Google-Smtp-Source: AGHT+IFJKPdgx+kAqt9knaELWDJ/AnYmn24jkHgJXw1/oIix/V5fwr06CIdR2pHQv7UTrquPohNGaQ==
X-Received: by 2002:a17:907:da2:b0:b6d:7573:ccf2 with SMTP id
 a640c23a62f3a-b6d7573ceffmr125913166b.62.1761306172155; 
 Fri, 24 Oct 2025 04:42:52 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:5485:d4b2:c087:b497])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-b6d50dd0dd4sm501931366b.0.2025.10.24.04.42.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Oct 2025 04:42:51 -0700 (PDT)
Date: Fri, 24 Oct 2025 13:42:49 +0200
From: Simona Vetter <simona.vetter@ffwll.ch>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Dave Airlie <airlied@gmail.com>, Simona Vetter <simona.vetter@ffwll.ch>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
 Oded Gabbay <ogabbay@kernel.org>, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dim-tools@lists.freedesktop.org
Subject: Re: [PULL] drm-xe-fixes
Message-ID: <aPtmOeEZlhlnnDYS@phenom.ffwll.local>
References: <4p2glnvgifc6osjlvzv23xhsyqhw4diqlfxz54lmg7robv44bi@nwd37zpqfa2l>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <4p2glnvgifc6osjlvzv23xhsyqhw4diqlfxz54lmg7robv44bi@nwd37zpqfa2l>
X-Operating-System: Linux phenom 6.12.38+deb13-amd64 
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

On Thu, Oct 23, 2025 at 10:59:05PM -0500, Lucas De Marchi wrote:
> Hi Dave and Sima,
> 
> Here are the fixes towards 6.18-rc3.
> 
> drm-xe-fixes-2025-10-23:
> UAPI Changes:
>  - Make madvise autoreset an explicit behavior requested by userspace
>    (Thomas Hellström)
> 
> Driver Changes:
>  - Drop XE_VMA flag conversion and ensure GPUVA flags are passed around
>    (homas Hellström)
>  - Fix missing wq allocation error checking (Matthew Brost)
> 
> Thanks,
> Lucas De Marchi
> 
> The following changes since commit 211ddde0823f1442e4ad052a2f30f050145ccada:
> 
>   Linux 6.18-rc2 (2025-10-19 15:19:16 -1000)
> 
> are available in the Git repository at:
> 
>   https://gitlab.freedesktop.org/drm/xe/kernel.git tags/drm-xe-fixes-2025-10-23
> 
> for you to fetch changes up to ce29214ada6d08dbde1eeb5a69c3b09ddf3da146:
> 
>   drm/xe: Check return value of GGTT workqueue allocation (2025-10-23 20:09:30 -0700)

Pulled into drm-fixes, thanks.
-Sima

> 
> ----------------------------------------------------------------
> UAPI Changes:
>  - Make madvise autoreset an explicit behavior requested by userspace
>    (Thomas Hellström)
> 
> Driver Changes:
>  - Drop XE_VMA flag conversion and ensure GPUVA flags are passed around
>    (homas Hellström)
>  - Fix missing wq allocation error checking (Matthew Brost)
> 
> ----------------------------------------------------------------
> Matthew Brost (1):
>       drm/xe: Check return value of GGTT workqueue allocation
> 
> Thomas Hellström (2):
>       drm/xe: Retain vma flags when recreating and splitting vmas for madvise
>       drm/xe/uapi: Hide the madvise autoreset behind a VM_BIND flag
> 
>  drivers/gpu/drm/xe/xe_ggtt.c     |  3 ++
>  drivers/gpu/drm/xe/xe_pt.c       |  4 +-
>  drivers/gpu/drm/xe/xe_svm.c      |  5 +++
>  drivers/gpu/drm/xe/xe_vm.c       | 96 ++++++++++++++++------------------------
>  drivers/gpu/drm/xe/xe_vm_types.h | 10 +----
>  include/uapi/drm/xe_drm.h        | 15 +++++++
>  6 files changed, 64 insertions(+), 69 deletions(-)

-- 
Simona Vetter
Software Engineer
http://blog.ffwll.ch
