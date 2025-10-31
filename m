Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63740C26872
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Oct 2025 19:10:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E35EE10E380;
	Fri, 31 Oct 2025 18:10:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; secure) header.d=ffwll.ch header.i=@ffwll.ch header.b="iOFka/+f";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com
 [209.85.208.51])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C760510E385
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Oct 2025 18:10:43 +0000 (UTC)
Received: by mail-ed1-f51.google.com with SMTP id
 4fb4d7f45d1cf-63c21467e5bso5441040a12.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Oct 2025 11:10:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google; t=1761934242; x=1762539042; darn=lists.freedesktop.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=goq7oUWUWsNMgZUzSM4G2HjOLnb020AUxbJ19px76+I=;
 b=iOFka/+f/oBBJ7JCNJOhlK7DHWb4muKB74jq3xmskv76tZjUZgw1Of/g/xrqV/SMew
 Ge9jxUI5l2H4oZvBHiBKYvySVoySrBDPe5a63RmjmVMu7QbakZSwgfE/zpBHwYeIZOZ5
 t++yntCIWKGsotayEl86GAv58f+cQCtKWcILk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1761934242; x=1762539042;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=goq7oUWUWsNMgZUzSM4G2HjOLnb020AUxbJ19px76+I=;
 b=Z7YmL5oyKaTO7wtDnbgAAJVkIMCKXIejpsI0nKFu9/ctrzPeTxjAHzxK0ctK2laZuP
 hZPC88sD9cSEDY0ETzJo3y0vOTLEdo3p6WkDTqvA3y50xChcqwKV0DyX+VKbPU0cDVk/
 fXyRqV4kPvELjoQWeXJJ5Oz7FPl9btfc6N6ZAMtot6vvzXlQytLKPkJNmeiHYjdWv8bl
 fUtYciLjIw9MWp2mqPupA9itF7ivVeM5mrdjW4o4JcZLYtAbgkZzkQBU3Z3LZY2Rnxoo
 ew9/HTm4ctxoF4hAgVnqRvQ38rMkbGit0G+yiKAlmdEzemIjG9EIDHOwgoqW3g9OHQGZ
 +3sA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXiqOMNMoEmoOw9uVeZGOBdRdgi1apL1Dp5CrFpI9Xnu8MHvYsG3D8u1GGdQRvxTDd75UtK9qa5Koc=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yxb0JrCNYnnxix5z2gTXiJlh8lTccNyEsxh0STCr1/hQThO47rZ
 W95NfSTfcTdbAjOmWJ8Ok75E6yazAKvbtIhunBHCHe9WwyeCPpwPs0eQm+ysxaPjQI4=
X-Gm-Gg: ASbGnctw7X4rZA+vXivFxsZJBloI4oMyw+ZbMkWK19lzP4dKsoVJ8zFKnp38lPZLnX8
 KkZXREaLrug7sr3hAbgRNfcK0nACYoh7BiFeCV1P71Ixm/RdUuWP430F2VN5lSdxrRkdgeRYud4
 3ihYDa71d3j2D9NrpUH++Sx1yo3+CVgdGwrf1bYSvnsKdphd21jxhgdLZxOLhqDMAMmEcLJBaBV
 wuXacQ6tvSPPjiWKsVyar3J3ywh/qwfVFkJ95FR9u5IlSym7D+M6kGkBygClxjH7uU9ccxI+Neg
 QEGvr8v7nZT7KxTe0J6CJh7cY3AUQ689uTs320aW/Wg2fVcPU/aq9u/Kktjc2q44cscTcs+emQK
 oyfdHgRyVrrahG+Ew/81/O+s7sIZ1uytYjekuEscZJ84hN00BFZEqU3cD2C6RmLLzt8gs/85UB8
 0vGVpZlZtxJA15v6/k4UVJDQ==
X-Google-Smtp-Source: AGHT+IG3MzUXGsIJduWiFugHvrzY+MOlJnj7mGwkcGbRKgIwXZW7ZonUMUpl0WXw619tuwJopi9knQ==
X-Received: by 2002:a05:6402:34d5:b0:637:8faa:9df7 with SMTP id
 4fb4d7f45d1cf-640771cee09mr3179026a12.29.1761934242194; 
 Fri, 31 Oct 2025 11:10:42 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:5485:d4b2:c087:b497])
 by smtp.gmail.com with ESMTPSA id
 4fb4d7f45d1cf-6407b428102sm2100968a12.20.2025.10.31.11.10.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 31 Oct 2025 11:10:41 -0700 (PDT)
Date: Fri, 31 Oct 2025 19:10:39 +0100
From: Simona Vetter <simona.vetter@ffwll.ch>
To: Thomas Zimmermann <tzimmermann@suse.de>
Cc: Dave Airlie <airlied@gmail.com>, Simona Vetter <simona.vetter@ffwll.ch>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
 Oded Gabbay <ogabbay@kernel.org>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, dim-tools@lists.freedesktop.org
Subject: Re: [PULL] drm-misc-fixes
Message-ID: <aQT7n1Z617Y2oKTs@phenom.ffwll.local>
References: <20251030195644.GA188441@localhost.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251030195644.GA188441@localhost.localdomain>
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

On Thu, Oct 30, 2025 at 08:56:44PM +0100, Thomas Zimmermann wrote:
> Hi Dave, Sima,
> 
> here's the drm-misc-fixes PR for this week.
> 
> Best regards
> Thomas
> 
> drm-misc-fixes-2025-10-30:
> Short summary of fixes pull:
> 
> ast:
> - Preserve correct bits on register I/O
> 
> dma-fence:
> - Use correct timeline name
> 
> etnaviv:
> - Use correct GPU adress space for flush
> 
> imx:
> - parallel-display: Fix bridge handling
> 
> nouveau:
> - Fix locking in scheduler
> 
> panel:
> - kingdisplay-kd097d04: Disable EOT packet
> - sitronix-st7789v: Use correct SYNC flags
> 
> sched:
> - Fix locking to avoid race condition
> - Fix SIGKILL handling
> 
> sysfb:
> - Avoid NULL-pointer access
> The following changes since commit 23437509a69476d4f896891032d62ac868731668:
> 
>   drm/panic: Fix 24bit pixel crossing page boundaries (2025-10-21 11:28:03 +0200)
> 
> are available in the Git repository at:
> 
>   https://gitlab.freedesktop.org/drm/misc/kernel.git tags/drm-misc-fixes-2025-10-30
> 
> for you to fetch changes up to a9fb41b5def8e1e0103d5fd1453787993587281e:
> 
>   drm/ast: Clear preserved bits from register output value (2025-10-30 20:44:44 +0100)

Pulled into drm-fixes, thanks!
-Sima

> 
> ----------------------------------------------------------------
> Short summary of fixes pull:
> 
> ast:
> - Preserve correct bits on register I/O
> 
> dma-fence:
> - Use correct timeline name
> 
> etnaviv:
> - Use correct GPU adress space for flush
> 
> imx:
> - parallel-display: Fix bridge handling
> 
> nouveau:
> - Fix locking in scheduler
> 
> panel:
> - kingdisplay-kd097d04: Disable EOT packet
> - sitronix-st7789v: Use correct SYNC flags
> 
> sched:
> - Fix locking to avoid race condition
> - Fix SIGKILL handling
> 
> sysfb:
> - Avoid NULL-pointer access
> 
> ----------------------------------------------------------------
> Akash Goel (1):
>       dma-fence: Fix safe access wrapper to call timeline name method
> 
> David Rosca (1):
>       drm/sched: avoid killing parent entity on child SIGKILL
> 
> Luca Ceresoli (2):
>       drm/imx: parallel-display: convert to devm_drm_bridge_alloc() API
>       drm/imx: parallel-display: add the bridge before attaching it
> 
> Philipp Stanner (2):
>       drm/sched: Fix race in drm_sched_entity_select_rq()
>       drm/nouveau: Fix race in nouveau_sched_fini()
> 
> Sebastian Fleer (1):
>       drm/panel: kingdisplay-kd097d04: Disable EoTp
> 
> Sebastian Reichel (1):
>       drm/panel: sitronix-st7789v: fix sync flags for t28cp45tn89
> 
> Thomas Zimmermann (2):
>       drm/sysfb: Do not dereference NULL pointer in plane reset
>       drm/ast: Clear preserved bits from register output value
> 
> Tomeu Vizoso (1):
>       drm/etnaviv: fix flush sequence logic
> 
>  drivers/dma-buf/dma-fence.c                        |  2 +-
>  drivers/gpu/drm/ast/ast_drv.h                      |  8 ++++----
>  drivers/gpu/drm/drm_gem_atomic_helper.c            |  8 ++++++--
>  drivers/gpu/drm/etnaviv/etnaviv_buffer.c           |  2 +-
>  drivers/gpu/drm/imx/ipuv3/parallel-display.c       | 18 +++++++++---------
>  drivers/gpu/drm/nouveau/nouveau_sched.c            | 14 ++++++++++++--
>  drivers/gpu/drm/panel/panel-kingdisplay-kd097d04.c |  2 +-
>  drivers/gpu/drm/panel/panel-sitronix-st7789v.c     |  7 ++++++-
>  drivers/gpu/drm/scheduler/sched_entity.c           |  6 ++++--
>  9 files changed, 44 insertions(+), 23 deletions(-)
> 
> -- 
> Thomas Zimmermann
> Graphics Driver Developer
> SUSE Software Solutions Germany GmbH
> Frankenstrasse 146, 90461 Nuernberg, Germany
> GF: Ivo Totev, Andrew Myers, Andrew McDonald, Boudien Moerman
> HRB 36809 (AG Nuernberg)

-- 
Simona Vetter
Software Engineer
http://blog.ffwll.ch
