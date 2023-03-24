Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ACFC86C7B33
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Mar 2023 10:23:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C181110EB9A;
	Fri, 24 Mar 2023 09:23:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com
 [IPv6:2a00:1450:4864:20::32c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6180310EB9A
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Mar 2023 09:23:17 +0000 (UTC)
Received: by mail-wm1-x32c.google.com with SMTP id u1so686477wmn.5
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Mar 2023 02:23:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google; t=1679649795; x=1682241795;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=RTB1Z3y94oOxwWAMZkWjw2jZIS9g6+Ve9QViNWMmHvg=;
 b=D0FYIcNxlsoQLHPcUxPU8tg257/BAhn4krc497fsP59bc3GLyhhW9rc8XfHnfRCKQ8
 gygEcVxZvnv4DVyskqJgLICCrXFiJAx/k2sWZR/X0vmUqqBbFLNa2cHrjvxkf3e5RS7Q
 pVIV29XCyfv1pAlUC8l8BSc8HrzR85g8Vqm+o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1679649795; x=1682241795;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=RTB1Z3y94oOxwWAMZkWjw2jZIS9g6+Ve9QViNWMmHvg=;
 b=GGI3zHd1LdgIO9L6S84Q9Nu9nmlQH/aNMopxRhiKqAxmWR5wMy9/+hkeApyhgyQ4Ch
 SlzwH9FXCDF2KdgBTfKCTSFykk/urkttV9X2QdHrkQ7CGRstYr7TsWUq692zUgjEKyPl
 RdF42uQK5nPKwfoT2iu1dE2A4o3xi4BRnUl0/C4jJot6YOptC4frdtNv8OePRVp52lky
 P+plxxGL7NbDlAeVvdIrRZjuwWXt+v6HzND+ZloKYHeqYhlKbVfaQRVKD3SIyBEDZHMO
 mztPnvKYDnhiu80tseah81dq+QsP7XtR3mYDN8dCSWAftRSplYbD6cwHKA3d8OiGDX3N
 nWXg==
X-Gm-Message-State: AO0yUKV18RALOOwo3g6qEhLp5JWWjLMVbGpQvFFhEPCTjy4YU8oaf4xD
 CzRuKGiMogMwZ+78nHNuAeCZ9g==
X-Google-Smtp-Source: AK7set8ql99RaehwjTWbx+cORt6Y36mZ+EeViMa+Pf2TVfZwyHb7s9XiTmLLrnoNLwCxMB3kV8RIFQ==
X-Received: by 2002:a05:600c:1ca5:b0:3eb:3135:11f8 with SMTP id
 k37-20020a05600c1ca500b003eb313511f8mr1260242wms.4.1679649795696; 
 Fri, 24 Mar 2023 02:23:15 -0700 (PDT)
Received: from phenom.ffwll.local (212-51-149-33.fiber7.init7.net.
 [212.51.149.33]) by smtp.gmail.com with ESMTPSA id
 a18-20020a5d4d52000000b002d1e49cff35sm17960143wru.40.2023.03.24.02.23.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Mar 2023 02:23:15 -0700 (PDT)
Date: Fri, 24 Mar 2023 10:23:13 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZB1sAStAsVe9q0ja@phenom.ffwll.local>
References: <878rfn7njw.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <878rfn7njw.fsf@intel.com>
X-Operating-System: Linux phenom 6.1.0-6-amd64 
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
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Thomas Zimmermann <tzimmermann@suse.de>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Dave Airlie <airlied@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Mar 23, 2023 at 12:46:27PM +0200, Jani Nikula wrote:
> 
> Hi Dave & Daniel -
> 
> Otherwise a fairly regular fixes pull, except for two things:
> 
> First, I have not gotten CI results on this. I don't know what gives.
> 
> Second, I missed adding the hwmon revert to the tag. I accidentally
> picked up the commit for the previous pull, and it shouldn't have been
> there.
> 
> 
> BR,
> Jani.
> 
> 
> 
> drm-intel-fixes-2023-03-23:
> drm/i915 fixes for v6.3-rc4:
> - Fix an MTL workaround
> - Fix fbdev obj locking before vma pin
> - Fix state inheritance tracking in initial commit
> - Fix missing GuC error capture codes
> - Fix missing debug object activation
> - Fix uc init late order relative to probe error injection
> - Fix perf limit reasons formatting
> - Fix vblank timestamp update on seamless M/N changes
> 
> BR,
> Jani.
> 
> The following changes since commit e8d018dd0257f744ca50a729e3d042cf2ec9da65:
> 
>   Linux 6.3-rc3 (2023-03-19 13:27:55 -0700)
> 
> are available in the Git repository at:
> 
>   git://anongit.freedesktop.org/drm/drm-intel tags/drm-intel-fixes-2023-03-23

Pulled, thanks.
-Daniel

> 
> for you to fetch changes up to 22aa20e4c5dcbe6fdc480eb4fb27039b1f43217f:
> 
>   Revert "drm/i915/hwmon: Enable PL1 power limit" (2023-03-20 12:31:01 +0200)
> 
> ----------------------------------------------------------------
> drm/i915 fixes for v6.3-rc4:
> - Fix an MTL workaround
> - Fix fbdev obj locking before vma pin
> - Fix state inheritance tracking in initial commit
> - Fix missing GuC error capture codes
> - Fix missing debug object activation
> - Fix uc init late order relative to probe error injection
> - Fix perf limit reasons formatting
> - Fix vblank timestamp update on seamless M/N changes
> 
> ----------------------------------------------------------------
> Andrzej Hajda (1):
>       drm/i915/gt: perform uc late init after probe error injection
> 
> Ashutosh Dixit (1):
>       Revert "drm/i915/hwmon: Enable PL1 power limit"
> 
> Badal Nilawar (1):
>       drm/i915/mtl: Disable MC6 for MTL A step
> 
> John Harrison (1):
>       drm/i915/guc: Fix missing ecodes
> 
> Nirmoy Das (1):
>       drm/i915/active: Fix missing debug object activation
> 
> Radhakrishna Sripada (1):
>       drm/i915/mtl: Fix Wa_16015201720 implementation
> 
> Tejas Upadhyay (1):
>       drm/i915/fbdev: lock the fbdev obj before vma pin
> 
> Ville Syrjälä (2):
>       drm/i915: Preserve crtc_state->inherited during state clearing
>       drm/i915: Update vblank timestamping stuff on seamless M/N change
> 
> Vinay Belgaumkar (1):
>       drm/i915: Fix format for perf_limit_reasons
> 
>  drivers/gpu/drm/i915/display/intel_crtc.c      |  8 ++++++++
>  drivers/gpu/drm/i915/display/intel_display.c   |  1 +
>  drivers/gpu/drm/i915/display/intel_dmc.c       | 26 ++++++++++++++++++++-----
>  drivers/gpu/drm/i915/display/intel_fbdev.c     | 24 +++++++++++++++++------
>  drivers/gpu/drm/i915/gt/intel_gt.c             |  4 ++--
>  drivers/gpu/drm/i915/gt/intel_gt_pm.c          | 27 --------------------------
>  drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c  |  2 +-
>  drivers/gpu/drm/i915/gt/intel_rc6.c            |  8 ++++++++
>  drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c | 22 +++++++++++++++++++++
>  drivers/gpu/drm/i915/gt/uc/intel_guc_rc.c      | 13 +------------
>  drivers/gpu/drm/i915/i915_active.c             |  3 +--
>  drivers/gpu/drm/i915/i915_hwmon.c              |  5 -----
>  drivers/gpu/drm/i915/i915_reg.h                | 17 +++++-----------
>  13 files changed, 88 insertions(+), 72 deletions(-)
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
