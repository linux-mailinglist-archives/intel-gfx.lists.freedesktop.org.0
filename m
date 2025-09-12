Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C04E0B55042
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Sep 2025 16:03:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94EE310E1C5;
	Fri, 12 Sep 2025 14:03:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BTo6OJhB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9778C10E1C5;
 Fri, 12 Sep 2025 14:03:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757685815; x=1789221815;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=jwShY/Ze54nToVareWZPaA1JB9gCyqfzYO71VT8BluQ=;
 b=BTo6OJhB+gONXRLsI5YQ346/0ctraFEZfZ/wTnTjCJUPX57sBwy6Xekp
 7zbR1DhDOQDWu+BYpr3p1ytTS9rCGAQ/1EBnRi5ggZSEz2WLltVlNursR
 1G9al+g/HwM1XxQb0KChbVBy96VKA5BKwG+SJ5ltUyJtzA8x3HrDcwYsn
 sGMKX+qwjnr6mi1PHftxxB7sXAw9/9q3xhZU9oVS9H3WWp4vN4nBDoHBT
 gpRY6mLFp2dRrH3mL4d1wAiFCY2YBOsFpMnXM1bPsqmTFxzQBikYgSBGR
 ZLh6nsyObFgSIk4nwCnoimSEpg/Xn8FA2kmB407YumcBH4aNNdyhT1KWG Q==;
X-CSE-ConnectionGUID: h/HA4q27RlSDZqlMcwvafw==
X-CSE-MsgGUID: BN+brtIGRmGRF5j5d04n0w==
X-IronPort-AV: E=McAfee;i="6800,10657,11551"; a="60105920"
X-IronPort-AV: E=Sophos;i="6.18,259,1751266800"; d="scan'208";a="60105920"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2025 07:03:35 -0700
X-CSE-ConnectionGUID: T6eIeHsvTHC8jWY+9o9aow==
X-CSE-MsgGUID: BpvW8T0BRfSd+sChBhl6GA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,259,1751266800"; d="scan'208";a="173139741"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.171])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2025 07:03:33 -0700
Date: Fri, 12 Sep 2025 17:03:30 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 00/15] Optimize vrr.guardband and fix LRR
Message-ID: <aMQoMoQnj6eD1KL2@intel.com>
References: <20250911024554.692469-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250911024554.692469-1-ankit.k.nautiyal@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Thu, Sep 11, 2025 at 08:15:39AM +0530, Ankit Nautiyal wrote:
> Instead of setting vrr.guardband to vblank, use optimal guardband that
> works for most of the cases. This will help in avoiding need of change
> in guardband and fix the LRR feature that needs seamless switching to
> a lower refresh rate.

I think the _only_ thing we need for that is intel_crtc_vblank_delay()
to return a different number. But this series is doing all kinds of
stuff to other VRR logic that I don't understand at all.

> 
> First few patches fix/refactor and extract common functions required for
> dsc/scaler prefill time computation. Later patches use these helpers to
> compute an optimized guardband.
> 
> Also, for seamless_mn where vtotal is same but mode clock is changed to
> seamlessly switch to lower rate, re-compute the vrr timings.

As Art pointed out that stuff is defeatured on LNL+ (just sent
a patch for that) so we don't need to worry about it too much.

> 
> Few things that still need work:
> -The timestamps corresponding with next start of vactive still need to be
> fixed with the new scheme.
> -Re-enabling CMRR
> 
> Rev2:
> -Address comments from Mitul.
> -Extract helpers for dsc/scaler prefill latencies.
> -Fix downscaling factor for chroma subsampling.
> -Use missing pkg C max latency.
> -Fix guardband computation for seamless mn, always use vblank for
> higher resolution.
> 
> Rev3:
> -Drop patches for computing and storing PSR/Panel Replay wake times
> latencies and use existing helpers to compute these in intel_alpm.c.
> -Drop patch to change the Vmin as it was not required.
> 
> Rev4:
> -Rebase
> -Drop patch for checking bounds for scaler array access.
> -Use a new flag for setting vrr timings for seamless drrs.
> 
> Rev5:
> -Address comments from Mitul, Jani:
> -Refactor few helpers for computing latencies.
> -Rename the helper to check the guardband to intel_crtc_guardband_atomic_check()
> -Refactor the helper intel_panel_highest_mode().
> 
> Rev6:
> -Rebase
> -Address review comments from Mitul.
> -Improve documentation for and other minor fixes in Patch#12
> 
> Rev7:
> -Address comments from Jani.
> -Move the latency helpers from intel_display.c to intel_vrr.c and rename
> the helpers appropriately.
> -Drop redundant check for HAS_VRR with intel_vrr_possible().
> 
> Rev8:
> -Fix CI issues.
> -For fixed RR wait for delayed vblank before dsb interrupt.
> 
> Rev9:
> -Fix vrr.vsync_start/end timings for 3D modes (patch#1)
> -Rewrite the patch to wait for delayed vblank before dsb interrupt
> (patch #11)
> -Fix the flipline and vmin timings with optimized guardband (patch#12)
> 
> Rev10:
> -Address comments from Ville: Use min guardband computation for setting
> the vblank delay and set the crtc_vblank_start to delayed vblank.
> (Patch#13)
> -Modify the TRANS_SET_CONTEXT_LATENCY as per new guardband and use
> vrr.guardband to readback vblank_start. (Patch#11)
> 
> -From previous revision:
> ->Drop patch#11 "drm/i915/dsb: Align flipdone with delayed vblank using
> guardband wait", as this is no longer required.
> ->Modify Patch#12 "drm/i915/vrr: Use static guardband to support seamless
> LRR switching" to only introduce a helper to compute the fix guardband.
> Modify the commit message and the subject.
> 
> Ankit Nautiyal (15):
>   drm/i915/vrr: Use crtc_vsync_start/end for computing
>     vrr.vsync_start/end
>   drm/i915/skl_watermark: Fix the scaling factor for chroma subsampling
>   drm/i915/skl_watermark: Pass linetime as argument to latency helpers
>   drm/i915/skl_scaler: Introduce helper for chroma downscale factor
>   drm/i915/display: Extract helpers to set dsc/scaler prefill latencies
>   drm/i915/dp: Add SDP latency computation helper
>   drm/i915/alpm: Add function to compute max link-wake latency
>   drm/i915/vrr: Use vrr.sync_start for getting vtotal
>   drm/i915/display: Add guardband check for feature latencies
>   drm/i915/skl_watermark: Remove redundant latency checks from vblank
>     validation
>   drm/i915/display: Use vrr.guardband to derive vblank_start
>   drm/i915/vrr: Introduce helper to compute min static guardband
>   drm/i915/display: Use optimized guardband to set vblank start
>   drm/i915/panel: Refactor helper to get highest fixed mode
>   drm/i915/vrr: Fix seamless_mn drrs for PTL
> 
>  drivers/gpu/drm/i915/display/intel_alpm.c     |  15 +
>  drivers/gpu/drm/i915/display/intel_alpm.h     |   2 +
>  drivers/gpu/drm/i915/display/intel_display.c  | 236 ++++++++++++++-
>  .../drm/i915/display/intel_display_types.h    |   2 +
>  drivers/gpu/drm/i915/display/intel_dp.c       |  63 +++-
>  drivers/gpu/drm/i915/display/intel_dp.h       |   3 +
>  drivers/gpu/drm/i915/display/intel_panel.c    |  11 +-
>  drivers/gpu/drm/i915/display/intel_panel.h    |   3 +-
>  drivers/gpu/drm/i915/display/intel_vrr.c      | 272 ++++++++++++++++--
>  drivers/gpu/drm/i915/display/intel_vrr.h      |  10 +
>  drivers/gpu/drm/i915/display/skl_scaler.c     |   5 +
>  drivers/gpu/drm/i915/display/skl_scaler.h     |   3 +
>  drivers/gpu/drm/i915/display/skl_watermark.c  |  89 +-----
>  drivers/gpu/drm/i915/display/skl_watermark.h  |   1 +
>  14 files changed, 586 insertions(+), 129 deletions(-)
> 
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
