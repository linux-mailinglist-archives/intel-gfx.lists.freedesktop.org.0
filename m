Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 158E5C56C15
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Nov 2025 11:08:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8DDA10E637;
	Thu, 13 Nov 2025 10:08:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=lankhorst.se header.i=@lankhorst.se header.b="lqnUgr8M";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79D6710E637;
 Thu, 13 Nov 2025 10:08:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1763028517;
 bh=kIKj6i/+NQG9EHx5kURspdctnUsJIRpMsX3Qv53sIV8=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=lqnUgr8MejNQC5P/dNbN1hFerunOvn3/YVIqNn3LnPMtU7QegsVc/BcfQlP7D2eSc
 YBPN2zr2B5orepEZX2BxOWY+Eb+ln92Ju2VfioJsCQf3Sr2ykZNAeX1kmH77208u6k
 dL9R/Iz9ITijh1khchQ0HCHxM7lSTmyMilNhjjKzfuNVeI855kCoEwVCJGwJn4+oIk
 lCjfiBIq9SK/FkmyBgMgqTAVklHb40UKB8Zv90ILvq64b4wW7doIIoStvhCv2XIHgj
 68EucuogYRgD86pJtVcyGZnz81UNnlg7m5bDpsXKegI+ksEjrxXsmcV6ueJX5guLgQ
 ldS4RVTxQNO3Q==
Message-ID: <4417e4fb-d031-4c25-b233-26620a996f51@lankhorst.se>
Date: Thu, 13 Nov 2025 11:08:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/display: stop using the configurable fence
 timeout
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20251112155612.8320-1-jani.nikula@intel.com>
Content-Language: en-US
From: Maarten Lankhorst <dev@lankhorst.se>
In-Reply-To: <20251112155612.8320-1-jani.nikula@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

Hey,

Den 2025-11-12 kl. 16:56, skrev Jani Nikula:
> i915 has the Kconfig option DRM_I915_FENCE_TIMEOUT, defaulting to 10
> seconds. xe doesn't use it, instead defaulting to
> MAX_SCHEDULE_TIMEOUT. Do the same for i915.
> 
> Cc: Maarten Lankhorst <dev@lankhorst.se>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> 
> ---
> 
> I am not sure about all the implications here. I'm just wondering if we
> need to go through all the trouble of adding an interface to query this
> from the parent driver.
> ---
>  drivers/gpu/drm/i915/display/intel_display.c  |  4 +---
>  .../drm/xe/compat-i915-headers/i915_config.h  | 19 -------------------
>  2 files changed, 1 insertion(+), 22 deletions(-)
>  delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/i915_config.h
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 6bca186608ce..cc502dfe8aff 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -49,7 +49,6 @@
>  #include "g4x_dp.h"
>  #include "g4x_hdmi.h"
>  #include "hsw_ips.h"
> -#include "i915_config.h"
>  #include "i915_drv.h"
>  #include "i915_reg.h"
>  #include "i9xx_plane.h"
> @@ -7150,7 +7149,6 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
>  
>  static void intel_atomic_commit_fence_wait(struct intel_atomic_state *intel_state)
>  {
> -	struct drm_i915_private *i915 = to_i915(intel_state->base.dev);
>  	struct drm_plane *plane;
>  	struct drm_plane_state *new_plane_state;
>  	long ret;
> @@ -7159,7 +7157,7 @@ static void intel_atomic_commit_fence_wait(struct intel_atomic_state *intel_stat
>  	for_each_new_plane_in_state(&intel_state->base, plane, new_plane_state, i) {
>  		if (new_plane_state->fence) {
>  			ret = dma_fence_wait_timeout(new_plane_state->fence, false,
> -						     i915_fence_timeout(i915));
> +						     MAX_SCHEDULE_TIMEOUT);
>  			if (ret <= 0)
>  				break;
>  
You should probably use dma_fence_wait instead now. ret == 0 should never happen any more either. :-)j

Otherwise looks good.

Reviewed-by: Maarten Lankhorst <dev@lankhorst.se>

