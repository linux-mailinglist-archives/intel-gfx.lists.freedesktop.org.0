Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6537A6D0D2B
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Mar 2023 19:52:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBD7910E1CA;
	Thu, 30 Mar 2023 17:52:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com
 [IPv6:2a00:1450:4864:20::436])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D196710E19E
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Mar 2023 17:52:52 +0000 (UTC)
Received: by mail-wr1-x436.google.com with SMTP id y14so19949074wrq.4
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Mar 2023 10:52:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google; t=1680198771; x=1682790771;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=OJN42HUIXatEVsphzTXsI54WsPnHXrVN2/FN+y4BWSc=;
 b=WECfBZyrezPCEpBUuK0L8waWB+hjWvgiY8ZqCOE4ANJ/CnQrHHQXCjMWfA0tGmOT/O
 OpAxW1v9cFRE7l6BdhlnKflfDCEH5pDOn4VbMFS4yQricwN5F0zIcfqurc9zCrrTe8xj
 BpBLvTA7fgtvj5x8xuvRX6aexBz9Y7vev44pM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680198771; x=1682790771;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=OJN42HUIXatEVsphzTXsI54WsPnHXrVN2/FN+y4BWSc=;
 b=K6ewRHNOMF75+ppjS90WLwe36KxKgsDRl3MJPXJPWhnVMW7tw8rpsARhp4zMZyQ9PC
 bJiFNzSgecQiiRsVwu/SbOLHdIY+WHsHM4i6uvqDUIpD0va6PXOXyCp1ErTMpzS71qGw
 6XCJDwV9ItlUJ2YAkagJegS9gvdA49ZPaDa64EgcS/ZDlx60rRKuy0fmDG4qsjTzNMxR
 DwOIsmPeTqYx0gt27SA1XLzrEgJBaC9ddYGOV1hWH3U2J19zwwBZiAyz7bZFniKKmIRN
 ZfCVWnLavxwOIzu89VJTKa5MYA9LOg/BFSrRWppa9jJ+QQ7JreM7gSFPqPL1RY3DbQkk
 n1Sg==
X-Gm-Message-State: AAQBX9eYEIqLOrfS3snjyYrkIIzaB8Ei+p/+kDxNnZbmZpL5xVETaKmN
 LzCkStV525xUOwBjDqrwgldZ3g==
X-Google-Smtp-Source: AKy350bPBL1U9Qq27XmR9YCFBY0I7vFIQzO9w+sTisBsouvzj+IIC0BM1GWDn87RvvAeewqA1IQl0A==
X-Received: by 2002:a5d:548e:0:b0:2ce:a773:1150 with SMTP id
 h14-20020a5d548e000000b002cea7731150mr1816701wrv.6.1680198771040; 
 Thu, 30 Mar 2023 10:52:51 -0700 (PDT)
Received: from phenom.ffwll.local (212-51-149-33.fiber7.init7.net.
 [212.51.149.33]) by smtp.gmail.com with ESMTPSA id
 b9-20020a05600010c900b002c7163660a9sm33404646wrx.105.2023.03.30.10.52.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Mar 2023 10:52:49 -0700 (PDT)
Date: Thu, 30 Mar 2023 19:52:22 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Thomas Zimmermann <tzimmermann@suse.de>
Message-ID: <ZCXMVgiIr92GEEIG@phenom.ffwll.local>
References: <20230330141006.GA22908@linux-uq9g>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230330141006.GA22908@linux-uq9g>
X-Operating-System: Linux phenom 6.1.0-6-amd64 
Subject: Re: [Intel-gfx] [PULL] drm-misc-fixes
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
Cc: dim-tools@lists.freedesktop.org, Daniel Vetter <daniel.vetter@ffwll.ch>,
 dri-devel@lists.freedesktop.org, Maxime Ripard <mripard@kernel.org>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Dave Airlie <airlied@gmail.com>,
 intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Mar 30, 2023 at 04:10:06PM +0200, Thomas Zimmermann wrote:
> Hi Dave and Daniel,
> 
> here's the weekly PR for drm-misc-fixes.
> 
> Best regards
> Thomas
> 
> drm-misc-fixes-2023-03-30:
> Short summary of fixes pull:
> 
>  * various ivpu fixes
>  * fix nouveau backlight registration
>  * fix buddy allocator in 32-bit systems
> The following changes since commit 1a70ca89d59c7c8af006d29b965a95ede0abb0da:
> 
>   drm/bridge: lt8912b: return EPROBE_DEFER if bridge is not found (2023-03-22 18:01:57 +0100)
> 
> are available in the Git repository at:
> 
>   git://anongit.freedesktop.org/drm/drm-misc tags/drm-misc-fixes-2023-03-30

Pulled, thanks

> 
> for you to fetch changes up to 25bbe844ef5c4fb4d7d8dcaa0080f922b7cd3a16:
> 
>   drm: test: Fix 32-bit issue in drm_buddy_test (2023-03-29 17:14:15 +0200)
> 
> ----------------------------------------------------------------
> Short summary of fixes pull:
> 
>  * various ivpu fixes
>  * fix nouveau backlight registration
>  * fix buddy allocator in 32-bit systems
> 
> ----------------------------------------------------------------
> Andrzej Kacprowski (1):
>       accel/ivpu: Fix IPC buffer header status field value
> 
> David Gow (2):
>       drm: buddy_allocator: Fix buddy allocator init on 32-bit systems
>       drm: test: Fix 32-bit issue in drm_buddy_test
> 
> Hans de Goede (1):
>       drm/nouveau/kms: Fix backlight registration
> 
> Stanislaw Gruszka (7):
>       accel/ivpu: Do not access HW registers after unbind
>       accel/ivpu: Cancel recovery work
>       accel/ivpu: Do not use SSID 1
>       accel/ivpu: Fix power down sequence
>       accel/ivpu: Disable buttress on device removal
>       accel/ivpu: Remove support for 1 tile SKUs
>       accel/ivpu: Fix VPU clock calculation
> 
>  drivers/accel/ivpu/ivpu_drv.c               |  18 ++++-
>  drivers/accel/ivpu/ivpu_drv.h               |   7 +-
>  drivers/accel/ivpu/ivpu_hw_mtl.c            | 113 +++++++++-------------------
>  drivers/accel/ivpu/ivpu_ipc.h               |   2 +-
>  drivers/accel/ivpu/ivpu_job.c               |  11 ++-
>  drivers/accel/ivpu/ivpu_pm.c                |  17 ++++-
>  drivers/accel/ivpu/ivpu_pm.h                |   1 +
>  drivers/gpu/drm/drm_buddy.c                 |   4 +-
>  drivers/gpu/drm/nouveau/nouveau_backlight.c |   7 +-
>  drivers/gpu/drm/tests/drm_buddy_test.c      |   3 +-
>  10 files changed, 90 insertions(+), 93 deletions(-)
> 
> -- 
> Thomas Zimmermann
> Graphics Driver Developer
> SUSE Software Solutions Germany GmbH
> Maxfeldstr. 5, 90409 Nürnberg, Germany
> (HRB 36809, AG Nürnberg)
> Geschäftsführer: Felix Imendörffer

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
