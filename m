Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC7ED6E1528
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Apr 2023 21:27:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0B8210EBF7;
	Thu, 13 Apr 2023 19:27:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com
 [IPv6:2a00:1450:4864:20::332])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1446B10E02F
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Apr 2023 19:27:17 +0000 (UTC)
Received: by mail-wm1-x332.google.com with SMTP id
 5b1f17b1804b1-3f0a7c48633so1640285e9.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Apr 2023 12:27:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google; t=1681414034; x=1684006034;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=/a2zE3xd3xG33l/VNL2fMsP52KS7UNXGPG9UmSq+uv4=;
 b=QHNvfSFQNS1HyatYr7G2sVOSIUHRtbZucFfO8MgaVT2iapJTKOmPqPwQhA0vmHFvJ/
 xE0LwrQMXgbUyhWyHBPLmv7viFy8lngXYlYllJTJYsSjuO+0Toer6v4yLNQl2AbGPYrt
 wy2HkHjDCUJwPWBUuATX+CB4AKhqNiDFWk7Io=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1681414034; x=1684006034;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=/a2zE3xd3xG33l/VNL2fMsP52KS7UNXGPG9UmSq+uv4=;
 b=JwmNw7V4PdJB8PJcAfiZPylsTaw64HJdSbzQk9SqTOBKjOuMrE9omMnUK9dK8Owe5Y
 qM+O9ZkxhReNc4WLYpiIQRYzBZlrMxnvfVOmPO/16n4N2i3i1j0inKeHTdrAO1n3aAk+
 hlf4YKHzdkUDh/XP734wBAL7yzTigG2u9DZlUZy/l3jhrmbb+DOkmxetYy1RHGi/8Ghi
 ixyaE+/zq5rjq5EfnZ9DUBZvFMnv9Ef+T7FQSU0C+Tkh+pOIbhZJSnkz1aQLH+FPckAS
 /VWKoLWqwwVMjfw9nT/9jUI/N/yag5GvpoZBF184mZ2RHAPdMob7BtnxUacH8zMdW0YU
 5pUw==
X-Gm-Message-State: AAQBX9e775CkEgH5qUR1QKAAC/q5uNLUabxWU8GqomhrZRlCujkZJnsS
 Fp0aZ+9p+5fzzZ5+U+CbzC5Wwg==
X-Google-Smtp-Source: AKy350ZChyKkNqVKRdO6kwmgPYECP09fiu+j3ECCVHCO6Aa6TzTKbFsygO2rEW8FVTrXzK4GrBHTzw==
X-Received: by 2002:a5d:42d0:0:b0:2ce:a773:1150 with SMTP id
 t16-20020a5d42d0000000b002cea7731150mr1746694wrr.6.1681414034000; 
 Thu, 13 Apr 2023 12:27:14 -0700 (PDT)
Received: from phenom.ffwll.local (212-51-149-33.fiber7.init7.net.
 [212.51.149.33]) by smtp.gmail.com with ESMTPSA id
 r17-20020a5d4e51000000b002f01e181c4asm1925079wrt.5.2023.04.13.12.27.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 13 Apr 2023 12:27:13 -0700 (PDT)
Date: Thu, 13 Apr 2023 21:27:11 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Thomas Zimmermann <tzimmermann@suse.de>
Message-ID: <ZDhXj8PFyzTSfibk@phenom.ffwll.local>
References: <20230413184233.GA8148@linux-uq9g>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230413184233.GA8148@linux-uq9g>
X-Operating-System: Linux phenom 6.1.0-7-amd64 
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

On Thu, Apr 13, 2023 at 08:42:33PM +0200, Thomas Zimmermann wrote:
> Hi Dave and Daniel,
> 
> this is the PR for drm-misc-fixes for this week.
> 
> Best regards
> Thomas
> 
> drm-misc-fixes-2023-04-13:
> Short summary of fixes pull:
> 
>  * armada: Fix double free
>  * fb: Clear FB_ACTIVATE_KD_TEXT in ioctl
>  * nouveau: Add missing callbacks
>  * scheduler: Fix use-after-free error
> The following changes since commit 09a9639e56c01c7a00d6c0ca63f4c7c41abe075d:
> 
>   Linux 6.3-rc6 (2023-04-09 11:15:57 -0700)
> 
> are available in the Git repository at:
> 
>   git://anongit.freedesktop.org/drm/drm-misc tags/drm-misc-fixes-2023-04-13

Pulled, thanks

> 
> for you to fetch changes up to 5603effb8295ada8419408d038a34ca89d658229:
> 
>   Merge remote-tracking branch 'drm/drm-fixes' into drm-misc-fixes (2023-04-12 12:01:32 +0200)
> 
> ----------------------------------------------------------------
> Short summary of fixes pull:
> 
>  * armada: Fix double free
>  * fb: Clear FB_ACTIVATE_KD_TEXT in ioctl
>  * nouveau: Add missing callbacks
>  * scheduler: Fix use-after-free error
> 
> ----------------------------------------------------------------
> Asahi Lina (1):
>       drm/scheduler: Fix UAF race in drm_sched_entity_push_job()
> 
> Christophe JAILLET (1):
>       drm/armada: Fix a potential double free in an error handling path
> 
> Daniel Vetter (1):
>       fbmem: Reject FB_ACTIVATE_KD_TEXT from userspace
> 
> Karol Herbst (1):
>       drm/nouveau/fb: add missing sysmen flush callbacks
> 
> Maarten Lankhorst (1):
>       Merge remote-tracking branch 'drm/drm-fixes' into drm-misc-fixes
> 
>  drivers/gpu/drm/armada/armada_drv.c            |  1 -
>  drivers/gpu/drm/nouveau/nvkm/subdev/fb/gf108.c |  1 +
>  drivers/gpu/drm/nouveau/nvkm/subdev/fb/gk104.c |  1 +
>  drivers/gpu/drm/nouveau/nvkm/subdev/fb/gk110.c |  1 +
>  drivers/gpu/drm/nouveau/nvkm/subdev/fb/gm107.c |  1 +
>  drivers/gpu/drm/scheduler/sched_entity.c       | 11 +++++++++--
>  drivers/video/fbdev/core/fbmem.c               |  2 ++
>  7 files changed, 15 insertions(+), 3 deletions(-)
> 
> -- 
> Thomas Zimmermann
> Graphics Driver Developer
> SUSE Software Solutions Germany GmbH
> Maxfeldstr. 5, 90409 N�rnberg, Germany
> (HRB 36809, AG N�rnberg)
> Gesch�ftsf�hrer: Felix Imend�rffer

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
