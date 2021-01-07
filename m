Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98B352ECCAF
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Jan 2021 10:28:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 429196E416;
	Thu,  7 Jan 2021 09:28:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com
 [IPv6:2a00:1450:4864:20::431])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 428E66E415
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Jan 2021 09:28:34 +0000 (UTC)
Received: by mail-wr1-x431.google.com with SMTP id d13so4867139wrc.13
 for <intel-gfx@lists.freedesktop.org>; Thu, 07 Jan 2021 01:28:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=mIjAQjbVLVh2ZD6onts6Hca0y6S3MRbV9P3RDpgSIzU=;
 b=cDzeN7pH+zhr0VU/J4popB85dQDy2H7szU7HT6l20/wNmNAGHWMC9zjDmmR2KUC7eR
 Dx+JajPlV42QRRLRoy862BRW9iS83n6TIXkb6n9th4+JdSLwoRjsCKqTpNfdviOMc5lA
 L6ON1KNicZtALIPgB+bpM9rtTxkPXpx2MI478=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=mIjAQjbVLVh2ZD6onts6Hca0y6S3MRbV9P3RDpgSIzU=;
 b=d1IG7/ATX/Wd/89LdMXYCpuUihpwWcF1wHQoPfwMI4dttIIehaPtSCGCXO3YmYZSzO
 3fzwsNhsWBDYNYmm8ODjliA/xpvOhSZ883ehagZFTybsWP2HWoQ+3fCNREC4QzBGxhoZ
 5IgOZCuUJkhUCOiS+U+4ZtU8spG+NehSmrHJBOkTxG+yjGBc5zGem1O/0ZW5M8hV6R6/
 woyXcuVjDWaqlO8vOZ0beFn/WS2A/43jiLx2YDePofk2tm7ETSvWnt8G9V0C2XZTuOX5
 5xxCEYu4vfhG1A78p8PShY4lVsxOJz0vCPcFOIigEr+/6TOjh3KSKxHTJw9pHx/p/nvO
 Lo0g==
X-Gm-Message-State: AOAM533evkMFExfwDAy6iY1H/Ce4RUHhXMEsS/SZz1BfsQ+htecdQdIN
 H82tOuLI5ECgMj1eI3FoOjTkZw==
X-Google-Smtp-Source: ABdhPJwR1ulQLLhPHBD0H9D9cJeuLeBvLo/jEMZv+hRcwc/g43/XAu/Ozf1yJ1Au3KFizo+mDAcPSA==
X-Received: by 2002:adf:fdcc:: with SMTP id i12mr7985150wrs.317.1610011712934; 
 Thu, 07 Jan 2021 01:28:32 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id g192sm6548144wme.48.2021.01.07.01.28.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Jan 2021 01:28:32 -0800 (PST)
Date: Thu, 7 Jan 2021 10:28:30 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <X/bUPkQa0j2Rh8RP@phenom.ffwll.local>
References: <877dop18zf.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <877dop18zf.fsf@intel.com>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
Subject: Re: [Intel-gfx] [PULL] drm-intel-fixes
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
 intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 07, 2021 at 09:50:28AM +0200, Jani Nikula wrote:
> 
> Hi Dave & Daniel -
> 
> Pretty quiet still, but here's some cc: stable fixes.

Pulled, thanks.
-Daniel

> 
> (Well, one doesn't have the explicit stable tag, but the Fixes tag
> points at a commit in v3.9...)
> 
> drm-intel-fixes-2021-01-07:
> drm/i915 fixes for v5.11-rc3:
> - Use per-connector PM QoS tracking for DP aux communication
> - GuC firmware fix for older Cometlakes
> - Clear the gpu reloc and shadow batches
> 
> BR,
> Jani.
> 
> The following changes since commit e71ba9452f0b5b2e8dc8aa5445198cd9214a6a62:
> 
>   Linux 5.11-rc2 (2021-01-03 15:55:30 -0800)
> 
> are available in the Git repository at:
> 
>   git://anongit.freedesktop.org/drm/drm-intel tags/drm-intel-fixes-2021-01-07
> 
> for you to fetch changes up to 9397d66212cdf7a21c66523f1583e5d63a609e84:
> 
>   drm/i915/dp: Track pm_qos per connector (2021-01-05 10:25:03 +0200)
> 
> ----------------------------------------------------------------
> drm/i915 fixes for v5.11-rc3:
> - Use per-connector PM QoS tracking for DP aux communication
> - GuC firmware fix for older Cometlakes
> - Clear the gpu reloc and shadow batches
> 
> ----------------------------------------------------------------
> Chris Wilson (2):
>       drm/i915/gt: Define guc firmware blob for older Cometlakes
>       drm/i915/dp: Track pm_qos per connector
> 
> Matthew Auld (2):
>       drm/i915: clear the shadow batch
>       drm/i915: clear the gpu reloc batch
> 
>  drivers/gpu/drm/i915/display/intel_display_types.h |  3 +++
>  drivers/gpu/drm/i915/display/intel_dp.c            |  8 +++++--
>  drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c     |  4 +++-
>  drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c           |  1 +
>  drivers/gpu/drm/i915/i915_cmd_parser.c             | 27 ++++++++--------------
>  drivers/gpu/drm/i915/i915_drv.c                    |  5 ----
>  drivers/gpu/drm/i915/i915_drv.h                    |  3 ---
>  7 files changed, 22 insertions(+), 29 deletions(-)
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
