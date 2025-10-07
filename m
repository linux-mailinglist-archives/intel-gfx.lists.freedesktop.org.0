Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16801BC1E2A
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Oct 2025 17:17:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2A7610E6D6;
	Tue,  7 Oct 2025 15:17:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Xr/oGAjm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3A2910E6D5;
 Tue,  7 Oct 2025 15:17:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759850224; x=1791386224;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=kYmz2e6lyXcuVRZx5vqMgyqFxNsD4m0pNDLFALqWXJk=;
 b=Xr/oGAjmkzI2r/gypgLRoo4Be2fVPyIuveOp6pjUzDbjidn4EjEAUnKf
 hcyl8NQSfqhdUxR0f/a3IZ/8keENnGjk3NMm8GBzxN7mBKr4ZufZl46RW
 ASEoVKTAHTs4va2Lar6ewGslvFZFnJGyDzZvIZvOv/f3T5r7VfkspsxXP
 j+S6kpP25camj3J3GSwUJ5frXfcHN60RCLYeI0TyqexD1rvsou+BCRCOe
 EC7/hnvX5iCbyjVdFFjekXKtSdqNzxPTM0JFPveCEMq5K3IIRqHrrlw8V
 ydC59FWm+tHlPKjClUHwJu77hoe9Gr/xbp5gSjZPgmp/hAc/xibWOHSTc A==;
X-CSE-ConnectionGUID: sPj1AlAITyusL/sBEB2HwA==
X-CSE-MsgGUID: RdkbE9auRi2k//vy8PFh4g==
X-IronPort-AV: E=McAfee;i="6800,10657,11575"; a="62195808"
X-IronPort-AV: E=Sophos;i="6.18,321,1751266800"; d="scan'208";a="62195808"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2025 08:17:03 -0700
X-CSE-ConnectionGUID: L80he19GTfSlTb0QuA4aJQ==
X-CSE-MsgGUID: a2sHCH55RUGmqQMtlHpO7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,321,1751266800"; d="scan'208";a="185334849"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO localhost)
 ([10.245.245.166])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2025 08:17:00 -0700
Date: Tue, 7 Oct 2025 18:16:57 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 11/16] drm/i915/vblank: Add helper to get correct vblank
 length
Message-ID: <aOUu6WoGHhYv4mRy@intel.com>
References: <20251006042852.263249-1-ankit.k.nautiyal@intel.com>
 <20251006042852.263249-12-ankit.k.nautiyal@intel.com>
 <aOQe_BRj8-dQmKGO@intel.com>
 <f1a8c1bc-6977-4ba4-9ffc-b1a4922d3f43@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <f1a8c1bc-6977-4ba4-9ffc-b1a4922d3f43@intel.com>
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

On Tue, Oct 07, 2025 at 11:22:44AM +0530, Nautiyal, Ankit K wrote:
> 
> On 10/7/2025 1:26 AM, Ville Syrjälä wrote:
> > On Mon, Oct 06, 2025 at 09:58:47AM +0530, Ankit Nautiyal wrote:
> >> Currently crtc_vblank_start is assumed to be the vblank_start for the fixed
> >> refresh rate case. That value can be different from the variable refresh
> >> rate case whenever always_use_vrr_tg()==false. On icl/tgl it's always
> >> different due to the extra vblank delay, and also on adl+ it could be
> >> different if we were to use an optimized guardband.
> >>
> >> So places where crtc_vblank_start is used to compute vblank length needs
> >> change so as to account for cases where vrr is enabled. Specifically
> >> with vrr.enable the effective vblank length is actually guardband.
> >>
> >> Add a helper to get the correct vblank length for both vrr and fixed
> >> refresh rate cases. Use this helper where vblank_start is used to
> >> compute the vblank length.
> >>
> >> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> >> ---
> >>   drivers/gpu/drm/i915/display/intel_pfit.c    | 11 +++++++----
> >>   drivers/gpu/drm/i915/display/intel_psr.c     |  3 +--
> >>   drivers/gpu/drm/i915/display/intel_vblank.c  | 10 ++++++++++
> >>   drivers/gpu/drm/i915/display/intel_vblank.h  |  2 ++
> >>   drivers/gpu/drm/i915/display/skl_watermark.c |  3 ++-
> >>   5 files changed, 22 insertions(+), 7 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/i915/display/intel_pfit.c b/drivers/gpu/drm/i915/display/intel_pfit.c
> >> index 68539e7c2a24..ebbaa1d419ba 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_pfit.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_pfit.c
> >> @@ -14,6 +14,7 @@
> >>   #include "intel_lvds_regs.h"
> >>   #include "intel_pfit.h"
> >>   #include "intel_pfit_regs.h"
> >> +#include "intel_vblank.h"
> >>   #include "skl_scaler.h"
> >>   
> >>   static int intel_pch_pfit_check_dst_window(const struct intel_crtc_state *crtc_state)
> >> @@ -306,14 +307,15 @@ centre_horizontally(struct drm_display_mode *adjusted_mode,
> >>   }
> >>   
> >>   static void
> >> -centre_vertically(struct drm_display_mode *adjusted_mode,
> >> +centre_vertically(struct intel_crtc_state *crtc_state,
> >> +		  struct drm_display_mode *adjusted_mode,
> >>   		  int height)
> >>   {
> >>   	u32 border, sync_pos, blank_width, sync_width;
> >>   
> >>   	/* keep the vsync and vblank widths constant */
> >>   	sync_width = adjusted_mode->crtc_vsync_end - adjusted_mode->crtc_vsync_start;
> >> -	blank_width = adjusted_mode->crtc_vblank_end - adjusted_mode->crtc_vblank_start;
> >> +	blank_width = intel_crtc_vblank_length(crtc_state);
> > This pfit stuff is computed way before the guardband, and also only
> > relevant for ancient gen2-4 hardware. So no point in touching this
> > stuff IMO.
> 
> Alright can skip this stuff.
> 
> 
> >
> >>   	sync_pos = (blank_width - sync_width + 1) / 2;
> >>   
> >>   	border = (adjusted_mode->crtc_vdisplay - height + 1) / 2;
> >> @@ -392,7 +394,8 @@ static void i9xx_scale_aspect(struct intel_crtc_state *crtc_state,
> >>   					  PFIT_HORIZ_INTERP_BILINEAR);
> >>   		}
> >>   	} else if (scaled_width < scaled_height) { /* letter */
> >> -		centre_vertically(adjusted_mode,
> >> +		centre_vertically(crtc_state,
> >> +				  adjusted_mode,
> >>   				  scaled_width / pipe_src_w);
> >>   
> >>   		*border = LVDS_BORDER_ENABLE;
> >> @@ -489,7 +492,7 @@ static int gmch_panel_fitting(struct intel_crtc_state *crtc_state,
> >>   		 * heights and modify the values programmed into the CRTC.
> >>   		 */
> >>   		centre_horizontally(adjusted_mode, pipe_src_w);
> >> -		centre_vertically(adjusted_mode, pipe_src_h);
> >> +		centre_vertically(crtc_state, adjusted_mode, pipe_src_h);
> >>   		border = LVDS_BORDER_ENABLE;
> >>   		break;
> >>   	case DRM_MODE_SCALE_ASPECT:
> >> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> >> index f7115969b4c5..ae6b94a5d450 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> >> @@ -1365,8 +1365,7 @@ static bool wake_lines_fit_into_vblank(struct intel_dp *intel_dp,
> >>   				       bool aux_less)
> >>   {
> >>   	struct intel_display *display = to_intel_display(intel_dp);
> >> -	int vblank = crtc_state->hw.adjusted_mode.crtc_vblank_end -
> >> -		crtc_state->hw.adjusted_mode.crtc_vblank_start;
> >> +	int vblank = intel_crtc_vblank_length(crtc_state);
> > I *think* this also gets computed during .compute_config() which is
> > before the guardband calculation. So if this stuff actually depends on
> > the guardband then we have a real problem here. And if it doesn't (as
> > in it really interested in the undelayed vblank length) them maybe it
> > should just compute it as crtc_vtotal-crtc_vactive.
> 
> As far as I understand it depends on guardband for VRR case.
> For non vrr case : crtc_vtotal - crtc_vactive - scl lines
> For vrr case: guardband length.
> 
> Currently since guardband is equal to vblank length this can be 
> crtc_vtotal - crtc_vactive - scl lines.
> 
> Perhaps with the optimized guardband, we need to set the guardband 
> during intel_vrr_compute_config().
> 
> Later intel_psr_compute_config gets called and then we can check the 
> guardband.

Originally we moved the vblank delay calculation to happen later
because we needed to know about PSR for it to be done correctly.
I think someone will need to try to actually write down all the 
requirements from both PSR and VRR side and sides and come up
with a way to get it all done in the right order, without any
more chicken vs. egg problems.

> 
> 
> >
> >>   	int wake_lines;
> >>   
> >>   	if (aux_less)
> >> diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
> >> index 0b7fcc05e64c..2fc0c1c0bb87 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_vblank.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_vblank.c
> >> @@ -767,3 +767,13 @@ int intel_vblank_evade(struct intel_vblank_evade_ctx *evade)
> >>   
> >>   	return scanline;
> >>   }
> >> +
> >> +int intel_crtc_vblank_length(const struct intel_crtc_state *crtc_state)
> >> +{
> >> +	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
> >> +
> >> +	if (crtc_state->vrr.enable)
> >> +		return crtc_state->vrr.guardband;
> >> +	else
> >> +		return adjusted_mode->crtc_vtotal - adjusted_mode->crtc_vblank_start;
> > Maybe that should be crtc_vblank_end instead of crtc_vtotal? I guess it
> > doesn't actually matter given where this gets used.
> 
> We can use Vblank end.
> 
> Apart from these places, do you think there are more places where 
> vblank_start adjustement is required?
> For evasion logic and wait for push in case of VRR, we are already using 
> vmin_vtotal - guardband to get the delayed vblank start so we are covered.
> 
> Regards,
> 
> Ankit
> 
> >
> > I think the only case where vblank_end!=vtotal is exactly than ancient
> > gen2-4 pfit centering stuff. But I've never actually investigated
> > whether the exact value of vblank_end there even matters. I should do
> > that one day...
> >
> >> +}
> >> diff --git a/drivers/gpu/drm/i915/display/intel_vblank.h b/drivers/gpu/drm/i915/display/intel_vblank.h
> >> index 21fbb08d61d5..98d04cacd65f 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_vblank.h
> >> +++ b/drivers/gpu/drm/i915/display/intel_vblank.h
> >> @@ -48,4 +48,6 @@ const struct intel_crtc_state *
> >>   intel_pre_commit_crtc_state(struct intel_atomic_state *state,
> >>   			    struct intel_crtc *crtc);
> >>   
> >> +int intel_crtc_vblank_length(const struct intel_crtc_state *crtc_state);
> >> +
> >>   #endif /* __INTEL_VBLANK_H__ */
> >> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> >> index 73e5b2d8ae83..6fb2c78fe29b 100644
> >> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> >> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> >> @@ -28,6 +28,7 @@
> >>   #include "intel_flipq.h"
> >>   #include "intel_pcode.h"
> >>   #include "intel_plane.h"
> >> +#include "intel_vblank.h"
> >>   #include "intel_wm.h"
> >>   #include "skl_universal_plane_regs.h"
> >>   #include "skl_scaler.h"
> >> @@ -2171,7 +2172,7 @@ skl_is_vblank_too_short(const struct intel_crtc_state *crtc_state,
> >>   	return crtc_state->framestart_delay +
> >>   		intel_usecs_to_scanlines(adjusted_mode, latency) +
> >>   		wm0_lines >
> >> -		adjusted_mode->crtc_vtotal - adjusted_mode->crtc_vblank_start;
> >> +		intel_crtc_vblank_length(crtc_state);
> >>   }
> >>   
> >>   int skl_max_wm0_lines(const struct intel_crtc_state *crtc_state)
> >> -- 
> >> 2.45.2

-- 
Ville Syrjälä
Intel
