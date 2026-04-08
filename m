Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yCg1L5t51mnxFggAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 17:51:55 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F2B53BE821
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 17:51:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BB6610E69B;
	Wed,  8 Apr 2026 15:51:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HFuDAf81";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C55E10E69B;
 Wed,  8 Apr 2026 15:51:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775663512; x=1807199512;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=6k/AXjTQOgwMlcj3PWjDYabD0gZKaBkQn9DHVs4OkGA=;
 b=HFuDAf81VDiJt0GLdwqMGiKTJC37hzPOoVxsU25vk5Cq+Sv8fiLxxh/6
 ZztMw+5s4veJSBs5JV5ciAoGu0UisVavehg+6d+KTVEmK1E5nc4axNf9C
 zzdIv3YUrgDWcJnbGiwuPW6Mx/MEO20cO1NFVoFBo/VqUogYnnt3Pup52
 qPMakJVNG353dz2MupmMY07pgA26wjOwUWc5egncBXNFThIn9bK5AAkxK
 IVlMyVvnUkCfRB33es6sKW2Mc2li1knmDnKh1T3XnyJ9bYMNfAGi3HP8y
 pa+Qlj8surOuGnrREB8xWTLCfY1VjAoKsxAOeea5HUsqHzgVa1GB2cCW5 g==;
X-CSE-ConnectionGUID: cRGcroPiTdW/QcluTwn1IQ==
X-CSE-MsgGUID: jaAyHleXS/ywJZb6xGG/Vg==
X-IronPort-AV: E=McAfee;i="6800,10657,11753"; a="94233480"
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="94233480"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 08:51:52 -0700
X-CSE-ConnectionGUID: hZTdg1qcSLKwxtqmnyCcAw==
X-CSE-MsgGUID: vdfgzc5ASO2sNKdBZKK39A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="223742688"
Received: from ijarvine-mobl1.ger.corp.intel.com (HELO [10.245.245.108])
 ([10.245.245.108])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 08:51:49 -0700
Message-ID: <dc488456-5346-44f2-b504-63479c439285@intel.com>
Date: Wed, 8 Apr 2026 17:51:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] drm/i915: move fence timeout to display parent
 interface
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, maarten.lankhorst@linux.intel.com
References: <cover.1775661609.git.jani.nikula@intel.com>
 <8cde57236982fc3ca1a5608332943d3b9274a45a.1775661609.git.jani.nikula@intel.com>
Content-Language: en-US
From: Maarten Lankhorst <maarten.lankhorst@intel.com>
In-Reply-To: <8cde57236982fc3ca1a5608332943d3b9274a45a.1775661609.git.jani.nikula@intel.com>
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	ARC_NA(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MIME_TRACE(0.00)[0:+];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[maarten.lankhorst@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 2F2B53BE821
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hey,

Den 2026-04-08 kl. 17:21, skrev Jani Nikula:
> i915 has the Kconfig option DRM_I915_FENCE_TIMEOUT, defaulting to 10
> seconds. xe doesn't use it, instead defaulting to MAX_SCHEDULE_TIMEOUT.
>
> There was an attempt to unify the behaviour by switching to
> dma_fence_wait() which defaults to MAX_SCHEDULE_TIMEOUT, but that
> resulted in CI failures. See the link below.
>
> Move the fence timeout to the optional parent interface, retaining
> existing behaviour for each driver. With this, we can drop the xe compat
> i915_config.h header.
>
> While at it, order the declarations in intel_parent.h the same way as in
> the struct.
>
> Link: https://lore.kernel.org/r/20251113155332.789554-1-jani.nikula@intel.com
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Cc: Maarten Lankhorst <maarten.lankhorst@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c     |  8 ++++++--
>  drivers/gpu/drm/i915/display/intel_parent.c      |  6 ++++++
>  drivers/gpu/drm/i915/display/intel_parent.h      |  3 ++-
>  drivers/gpu/drm/i915/i915_driver.c               |  2 ++
>  .../gpu/drm/xe/compat-i915-headers/i915_config.h | 16 ----------------
>  include/drm/intel/display_parent_interface.h     |  3 +++
>  6 files changed, 19 insertions(+), 19 deletions(-)
>  delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/i915_config.h
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 58a654ca0d20..765cc09b70da 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -49,7 +49,6 @@
>  #include "g4x_dp.h"
>  #include "g4x_hdmi.h"
>  #include "hsw_ips.h"
> -#include "i915_config.h"
>  #include "i9xx_plane.h"
>  #include "i9xx_plane_regs.h"
>  #include "i9xx_wm.h"
> @@ -105,6 +104,7 @@
>  #include "intel_modeset_verify.h"
>  #include "intel_overlay.h"
>  #include "intel_panel.h"
> +#include "intel_parent.h"
>  #include "intel_pch_display.h"
>  #include "intel_pch_refclk.h"
>  #include "intel_pfit.h"
> @@ -7149,15 +7149,19 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
>  
>  static void intel_atomic_commit_fence_wait(struct intel_atomic_state *intel_state)
>  {
> +	struct intel_display *display = to_intel_display(intel_state);
>  	struct drm_plane *plane;
>  	struct drm_plane_state *new_plane_state;
> +	unsigned long fence_timeout;
>  	long ret;
>  	int i;
>  
> +	fence_timeout = intel_parent_fence_timeout(display);
> +
>  	for_each_new_plane_in_state(&intel_state->base, plane, new_plane_state, i) {
>  		if (new_plane_state->fence) {
>  			ret = dma_fence_wait_timeout(new_plane_state->fence, false,
> -						     i915_fence_timeout());
> +						     fence_timeout);
>  			if (ret <= 0)
>  				break;
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_parent.c b/drivers/gpu/drm/i915/display/intel_parent.c
> index 47ce3b6fdd5b..f22dd16ddb40 100644
> --- a/drivers/gpu/drm/i915/display/intel_parent.c
> +++ b/drivers/gpu/drm/i915/display/intel_parent.c
> @@ -388,6 +388,12 @@ void intel_parent_fence_priority_display(struct intel_display *display, struct d
>  		display->parent->fence_priority_display(fence);
>  }
>  
> +unsigned long intel_parent_fence_timeout(struct intel_display *display)
> +{
> +	return display->parent->fence_timeout ? display->parent->fence_timeout() :
> +		MAX_SCHEDULE_TIMEOUT;
> +}
> +
>  bool intel_parent_has_auxccs(struct intel_display *display)
>  {
>  	return display->parent->has_auxccs && display->parent->has_auxccs(display->drm);
> diff --git a/drivers/gpu/drm/i915/display/intel_parent.h b/drivers/gpu/drm/i915/display/intel_parent.h
> index 1e89d24163cc..f06e0f9f2e41 100644
> --- a/drivers/gpu/drm/i915/display/intel_parent.h
> +++ b/drivers/gpu/drm/i915/display/intel_parent.h
> @@ -120,9 +120,10 @@ int intel_parent_vlv_iosf_write(struct intel_display *display, enum vlv_iosf_sb_
>  int intel_parent_vma_fence_id(struct intel_display *display, const struct i915_vma *vma);
>  
>  /* generic */
> +void intel_parent_fence_priority_display(struct intel_display *display, struct dma_fence *fence);
> +unsigned long intel_parent_fence_timeout(struct intel_display *display);
>  bool intel_parent_has_auxccs(struct intel_display *display);
>  bool intel_parent_has_fenced_regions(struct intel_display *display);
>  bool intel_parent_vgpu_active(struct intel_display *display);
> -void intel_parent_fence_priority_display(struct intel_display *display, struct dma_fence *fence);
>  
>  #endif /* __INTEL_PARENT_H__ */
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index 129013c5fb42..b7098d80b92d 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -91,6 +91,7 @@
>  #include "pxp/intel_pxp_pm.h"
>  
>  #include "i915_bo.h"
> +#include "i915_config.h"
>  #include "i915_debugfs.h"
>  #include "i915_display_pc8.h"
>  #include "i915_dpt.h"
> @@ -783,6 +784,7 @@ static const struct intel_display_parent_interface parent = {
>  	.vma = &i915_display_vma_interface,
>  
>  	.fence_priority_display = fence_priority_display,
> +	.fence_timeout = i915_fence_timeout,
>  	.has_auxccs = has_auxccs,
>  	.has_fenced_regions = has_fenced_regions,
>  	.vgpu_active = vgpu_active,
> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_config.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_config.h
> deleted file mode 100644
> index d4522203e2dd..000000000000
> --- a/drivers/gpu/drm/xe/compat-i915-headers/i915_config.h
> +++ /dev/null
> @@ -1,16 +0,0 @@
> -/* SPDX-License-Identifier: MIT */
> -/*
> - * Copyright © 2023 Intel Corporation
> - */
> -
> -#ifndef __I915_CONFIG_H__
> -#define __I915_CONFIG_H__
> -
> -#include <linux/sched.h>
> -
> -static inline unsigned long i915_fence_timeout(void)
> -{
> -	return MAX_SCHEDULE_TIMEOUT;
> -}
> -
> -#endif /* __I915_CONFIG_H__ */
> diff --git a/include/drm/intel/display_parent_interface.h b/include/drm/intel/display_parent_interface.h
> index 258e6388ef77..e0293e6cfdab 100644
> --- a/include/drm/intel/display_parent_interface.h
> +++ b/include/drm/intel/display_parent_interface.h
> @@ -261,6 +261,9 @@ struct intel_display_parent_interface {
>  		/** @fence_priority_display: Set display priority. Optional. */
>  		void (*fence_priority_display)(struct dma_fence *fence);
>  
> +		/** @fence_timeout: Fence timeout. Optional. */
> +		unsigned long (*fence_timeout)(void);
> +
>  		/** @has_auxccs: Are AuxCCS formats supported by the parent. Optional. */
>  		bool (*has_auxccs)(struct drm_device *drm);
>  
I just replied the same but more elaborate in the previous discussion from CI results,
would it be possible to remove waiting for old_obj on gen9+ instead?

Kind regards,
~Maarten Lankhorst
