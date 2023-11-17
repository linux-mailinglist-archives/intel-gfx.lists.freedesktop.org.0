Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D5617EF0E4
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Nov 2023 11:46:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7F4210E746;
	Fri, 17 Nov 2023 10:46:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com
 [IPv6:2a00:1450:4864:20::42d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1CC010E745
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Nov 2023 10:45:59 +0000 (UTC)
Received: by mail-wr1-x42d.google.com with SMTP id
 ffacd0b85a97d-32fa4183535so365349f8f.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Nov 2023 02:45:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google; t=1700217958; x=1700822758; darn=lists.freedesktop.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=qOlmuv/C4FNc+RsVQ+rQHs7D/XTaZYmhBhF6Gjjo5mU=;
 b=hAXZqyOqTqivYYpIDcBt7vrkCe0D6TAoMvXHH7rFiKoB9aXE2Tmjoxl6vOkOXEYdX0
 WpTTT+TWwAFG7KIA9ed1HfHLXac9iUbLtK4BoWLWEq5+TwnzBZB38CUpJy84wairkNm2
 Nlzsy4Y98ZT/D2NWfC1Vg2pzOS5dnDF8cfOcE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1700217958; x=1700822758;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=qOlmuv/C4FNc+RsVQ+rQHs7D/XTaZYmhBhF6Gjjo5mU=;
 b=bC2DNAjhRgq/w32Eg8tFssVnNlfDNHEnKP0la88suSwPOlef/5Ah3kdh0WDQYWGmpf
 a0T0slf4Say/YKJnxXn61ox23N1qUhzddJ45jwBEENPcQjrZL5Mk+WGieOJvCtIvQ6dv
 sWtT5zDaQWf3k0F6Hr3wXTMlcLmznv5LLs2BOkrobWbTBJAZGcuChGg9d4KW+1UeOAxx
 rMmmnjTM46PXpV9B8cD1CeZo6+0yBHEkkluog8E6fBo4s/vdUtyDl2+wqn2Bv76Dy9pS
 qTQ20GEsc5W/1G1vy8EzPJrTnSWLZjrkqhTusNc7AHNF5h7l76qWvkQczeeR50XlL7AX
 K//g==
X-Gm-Message-State: AOJu0Yyi4GdUKeMTFzI5Vr79bUVVs9AnMPv1hJz0KbD78XAmASZz+zhy
 QnsuZqJ2C+2y7uapgFklb0wKH72D6b63ExXvr7k=
X-Google-Smtp-Source: AGHT+IFlSc+CKyiOyxKcBSxs2/OUpxikvqzT+G8JusZUT+QSp3lPKCPxgnLbvyc8NJtw6Qzg5IRmRw==
X-Received: by 2002:a5d:47c5:0:b0:32f:acb1:ba92 with SMTP id
 o5-20020a5d47c5000000b0032facb1ba92mr10582154wrc.5.1700217937581; 
 Fri, 17 Nov 2023 02:45:37 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id
 b15-20020a056000054f00b0031980294e9fsm1898005wrf.116.2023.11.17.02.45.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Nov 2023 02:45:37 -0800 (PST)
Date: Fri, 17 Nov 2023 11:45:34 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <ZVdETuL1JOu0trL0@phenom.ffwll.local>
References: <98fc82d3-8714-45e7-bd12-c95ba8c6c35f@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <98fc82d3-8714-45e7-bd12-c95ba8c6c35f@linux.intel.com>
X-Operating-System: Linux phenom 6.5.0-4-amd64 
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
 intel-gfx@lists.freedesktop.org, Maxime Ripard <mripard@kernel.org>,
 dri-devel@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Dave Airlie <airlied@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Nov 16, 2023 at 02:48:52PM +0100, Maarten Lankhorst wrote:
> Hi Dave, Daniel,
> 
> Small pull request, mostly nouveau fixes.
> 
> Cheers,
> ~Maarten
> 
> Mostly drm-misc-fixes-2023-11-16:
> Assorted fixes for v6.7-rc2:
> - Nouveau GSP fixes.
> - Fix nouveau driver load without display.
> - Use rwlock for nouveau's event lock to break a lockdep splat.
> - Add orientation quirk for Lenovo Legion Go.
> - Fix build failure in IVPU.
> The following changes since commit b85ea95d086471afb4ad062012a4d73cd328fa86:
> 
>   Linux 6.7-rc1 (2023-11-12 16:19:07 -0800)
> 
> are available in the Git repository at:
> 
>   git://anongit.freedesktop.org/drm/drm-misc tags/drm-misc-fixes-2023-11-16

Pulled into drm-fixes, thanks!
-Sima

> 
> for you to fetch changes up to ae1aadb1eb8d3cbc52e42bee71d67bd4a71f9f07:
> 
>   nouveau: don't fail driver load if no display hw present. (2023-11-15
> 18:23:31 +0100)
> 
> ----------------------------------------------------------------
> Assorted fixes for v6.7-rc2:
> - Nouveau GSP fixes.
> - Fix nouveau driver load without display.
> - Use rwlock for nouveau's event lock to break a lockdep splat.
> - Add orientation quirk for Lenovo Legion Go.
> - Fix build failure in IVPU.
> 
> ----------------------------------------------------------------
> Arnd Bergmann (1):
>       accel/ivpu: avoid build failure with CONFIG_PM=n
> 
> Brenton Simpson (1):
>       drm: panel-orientation-quirks: Add quirk for Lenovo Legion Go
> 
> Dan Carpenter (2):
>       nouveau/gsp/r535: uninitialized variable in r535_gsp_acpi_mux_id()
>       nouveau/gsp/r535: Fix a NULL vs error pointer bug
> 
> Dave Airlie (2):
>       nouveau: use an rwlock for the event lock.
>       nouveau: don't fail driver load if no display hw present.
> 
>  drivers/accel/ivpu/ivpu_pm.c                      |  3 ---
>  drivers/gpu/drm/drm_panel_orientation_quirks.c    |  6 ++++++
>  drivers/gpu/drm/nouveau/include/nvkm/core/event.h |  4 ++--
>  drivers/gpu/drm/nouveau/nouveau_display.c         |  5 +++++
>  drivers/gpu/drm/nouveau/nvkm/core/event.c         | 12 ++++++------
>  drivers/gpu/drm/nouveau/nvkm/subdev/gsp/r535.c    |  6 +++---
>  6 files changed, 22 insertions(+), 14 deletions(-)

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
