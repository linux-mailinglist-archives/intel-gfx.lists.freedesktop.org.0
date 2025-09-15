Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BDA0FB57CCD
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Sep 2025 15:25:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E2F810E4AD;
	Mon, 15 Sep 2025 13:25:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gXU/EYT3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BE1010E0CD;
 Mon, 15 Sep 2025 13:25:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757942719; x=1789478719;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=YL/Beuya4Jl0+9lga+3+jDyuYtQLEt3W7X+7PBNKzmg=;
 b=gXU/EYT3vADsC5mlPYuQxnZeW7qW84sPkqAwAReMbZLslEH7SA5xGiNb
 FBDA4VCkoAgg++lC5WnXi5b4F/qHX2MOmwI2LM/DXmBtWpbF8fEcQH1Mh
 9GfG09lqQolE8gGqizItQcn4m/tkDvhE/6Foe4Yx4q8UANqzqDqnlMewF
 e4PkP8bZd2o1kmjnbZtXHhLHUPM8gZ8NJkQys0LpXkZys/uHhfCXvY470
 zl5BrdefmCIi26AbsszX568MhBkYNvwykfuJCwPT1L4AQUMrcDl887YQC
 SOyy2kj692NzjMj1ubftLvsU+r3hfbBe8DCHcQscfWaM0s82A801QBFAQ Q==;
X-CSE-ConnectionGUID: Oyxs+ACyTIG5eM6W9P1K+g==
X-CSE-MsgGUID: RasUfAGwT46Y3gHWxP3Mhg==
X-IronPort-AV: E=McAfee;i="6800,10657,11554"; a="59236921"
X-IronPort-AV: E=Sophos;i="6.18,266,1751266800"; d="scan'208";a="59236921"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2025 06:25:18 -0700
X-CSE-ConnectionGUID: bBC7X19SQuKRnf5kbTfZPA==
X-CSE-MsgGUID: fddvAm4rQcCOiIdqzl9yyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,266,1751266800"; d="scan'208";a="174458682"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.90])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2025 06:25:17 -0700
Date: Mon, 15 Sep 2025 16:25:14 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Subject: Re: [PATCH 15/15] drm/i915/vrr: Fix seamless_mn drrs for PTL
Message-ID: <aMgTunAuMTchtYu8@intel.com>
References: <20250911024554.692469-1-ankit.k.nautiyal@intel.com>
 <20250911024554.692469-16-ankit.k.nautiyal@intel.com>
 <aMLfmlp0u6KKpSwa@intel.com>
 <39f69ef0-c585-4a9d-a2bd-2ae316983a58@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <39f69ef0-c585-4a9d-a2bd-2ae316983a58@intel.com>
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

On Sun, Sep 14, 2025 at 11:37:09AM +0530, Nautiyal, Ankit K wrote:
> 
> On 9/11/2025 8:11 PM, Ville Syrjälä wrote:
> > On Thu, Sep 11, 2025 at 08:15:54AM +0530, Ankit Nautiyal wrote:
> >> With VRR timing generator always on, the fixed refresh rate is achieved
> >> by setting vrr.flipline and vrr.vmax as the vtotal for the desired mode.
> >>
> >> This creates a problem for seamless_mn drrs feature, where user can
> >> seamlessly set a lower mode on the supporting panels. With VRR timing
> >> generator, the vrr.flipline and vrr.vmax are set to vtotal, but that
> >> corresponds to the higher mode.
> >>
> >> To fix this, re-compute the vrr timings when seamless_mn drrs is in
> >> picture. At the same time make sure that the vrr.guardband is set as
> >> per the highest mode for such panels, so that switching between higher
> >> to lower mode, does not change the vrr.guardband.
> >>
> >> v2: Add a new member `use_highest_mode` to vrr struct to help set the
> >> vrr timings for highest mode for the seamless_mn drrs case.
> >> v3:
> >> -Modify existing function to compute fixed refresh rate timings instead
> >> of adding a new function. (Mitul)
> >> -Tweak computation for scaling the vtotal and use DIV_ROUND_UP_ULL.
> >> -Improve documentation.
> >>
> >> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> >> Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> >> ---
> >>   .../drm/i915/display/intel_display_types.h    |  2 +
> >>   drivers/gpu/drm/i915/display/intel_dp.c       |  2 +-
> >>   drivers/gpu/drm/i915/display/intel_dp.h       |  1 +
> >>   drivers/gpu/drm/i915/display/intel_vrr.c      | 90 ++++++++++++++++++-
> >>   4 files changed, 90 insertions(+), 5 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> >> index 358ab922d7a7..9796c7b855d0 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> >> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> >> @@ -1321,6 +1321,8 @@ struct intel_crtc_state {
> >>   		u8 pipeline_full;
> >>   		u16 flipline, vmin, vmax, guardband;
> >>   		u32 vsync_end, vsync_start;
> >> +		/* Indicates VRR timing is scaled to highest mode for seamless M/N */
> >> +		bool use_highest_mode;
> >>   	} vrr;
> >>   
> >>   	/* Content Match Refresh Rate state */
> >> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> >> index f74ac98062d4..5c29c696c83e 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> >> @@ -1742,7 +1742,7 @@ static int intel_dp_max_bpp(struct intel_dp *intel_dp,
> >>   	return bpp;
> >>   }
> >>   
> >> -static bool has_seamless_m_n(struct intel_connector *connector)
> >> +bool has_seamless_m_n(struct intel_connector *connector)
> >>   {
> >>   	struct intel_display *display = to_intel_display(connector);
> >>   
> >> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> >> index d222749b191c..6da0196c23d1 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> >> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> >> @@ -217,5 +217,6 @@ void intel_dp_dpcd_set_probe(struct intel_dp *intel_dp, bool force_on_external);
> >>   bool intel_dp_in_hdr_mode(const struct drm_connector_state *conn_state);
> >>   int intel_dp_compute_sdp_latency(const struct intel_crtc_state *crtc_state,
> >>   				 bool assume_all_enabled);
> >> +bool has_seamless_m_n(struct intel_connector *connector);
> >>   
> >>   #endif /* __INTEL_DP_H__ */
> >> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> >> index 002165026a20..80bbe4b1ef7f 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> >> @@ -11,6 +11,7 @@
> >>   #include "intel_display_regs.h"
> >>   #include "intel_display_types.h"
> >>   #include "intel_dp.h"
> >> +#include "intel_panel.h"
> >>   #include "intel_vrr.h"
> >>   #include "intel_vrr_regs.h"
> >>   #include "skl_scaler.h"
> >> @@ -299,6 +300,16 @@ void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_state)
> >>   	if (!intel_vrr_possible(crtc_state))
> >>   		return;
> >>   
> >> +	if (crtc_state->vrr.use_highest_mode) {
> >> +		intel_de_write(display, TRANS_VRR_VMIN(display, cpu_transcoder),
> >> +			       crtc_state->vrr.vmin - 1);
> >> +		intel_de_write(display, TRANS_VRR_VMAX(display, cpu_transcoder),
> >> +			       crtc_state->vrr.vmax - 1);
> >> +		intel_de_write(display, TRANS_VRR_FLIPLINE(display, cpu_transcoder),
> >> +			       crtc_state->vrr.flipline - 1);
> >> +		return;
> >> +	}
> >> +
> >>   	intel_de_write(display, TRANS_VRR_VMIN(display, cpu_transcoder),
> >>   		       intel_vrr_fixed_rr_vmin(crtc_state) - 1);
> >>   	intel_de_write(display, TRANS_VRR_VMAX(display, cpu_transcoder),
> >> @@ -307,15 +318,69 @@ void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_state)
> >>   		       intel_vrr_fixed_rr_flipline(crtc_state) - 1);
> >>   }
> >>   
> >> +static bool needs_seamless_m_n_timings(struct intel_crtc_state *crtc_state,
> >> +				       struct intel_connector *connector)
> >> +{
> >> +	if (!has_seamless_m_n(connector) || crtc_state->joiner_pipes)
> >> +		return false;
> >> +
> >> +	return true;
> >> +}
> >> +
> >> +static int intel_vrr_scale_vtotal_for_seamless_m_n(struct intel_crtc_state *crtc_state,
> >> +						   struct intel_connector *connector)
> >> +{
> >> +	const struct drm_display_mode *highest_mode = intel_panel_highest_mode(connector);
> >> +	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
> >> +	int vtotal = adjusted_mode->crtc_vtotal;
> >> +
> >> +	/*
> >> +	 * For panels with seamless_m_n drrs, the user can seamlessly switch to
> >> +	 * a lower mode, which has a lower clock. This works with legacy timing
> >> +	 * generator, but not with the VRR timing generator.
> >> +	 *
> >> +	 * The VRR timing generator requires flipline and vmax to be equal for
> >> +	 * fixed refresh rate operation. The default fixed RR computation sets
> >> +	 * these to the current mode's vtotal. However, when switching to a
> >> +	 * lower clock mode, this would result in a higher refresh rate than
> >> +	 * desired.
> >> +	 *
> >> +	 * To simulate the lower refresh rate correctly, we scale the vtotal
> >> +	 * based on the ratio of the highest mode's clock to the current mode's
> >> +	 * clock.
> >> +	 *
> >> +	 * When switching to a higher clock mode, the current vtotal already
> >> +	 * results in the desired refresh rate, so no scaling is needed.
> >> +	 *
> >> +	 * So compute the scaled vtotal if required, and update vrr.vmin to
> >> +	 * the scaled value. Also, set vrr.use_highest_mode to indicate that
> >> +	 * VRR timings are based on the highest mode.
> >> +	 */
> >> +	if (highest_mode && adjusted_mode->crtc_clock < highest_mode->clock) {
> >> +		vtotal = DIV_ROUND_UP_ULL(vtotal * highest_mode->clock,
> >> +					  adjusted_mode->crtc_clock);
> >> +		crtc_state->vrr.vmin = vtotal;
> >> +		crtc_state->vrr.use_highest_mode = true;
> >> +	}
> > I have no idea what is happening here. I think the only thing we should
> > be aiming for is a fixed guardband length, but this is now doing all kinds
> > of otehr massaging of VRR parameters. Why?
> 
> 
> The idea was to support Seamless M/N DRRS with VRR timing generator.
> 
> Currently if user sets the lower mode i.e. same mode with lower clock we 
> were able to seamlessly switch with legacy timing generator.
> 
> With VRR Timing generator this doesn’t work as we need to change the 
> flipline/Vmax vtotal to achieve the same effect.
> 
> I was trying to do something like that.

We definitely don't want to sneakily start converting M/N changes
into some kind of VRR changes in low level code. If we did ever
want to do something like then it should be done in some high level
code by simply adjusting the mode. And we already do that for eDP
to some degree since there the userspace mode is partly a lie.

I don't think we should seriously even be thinking about such
things for external panels. Although one idea I've had occasionally
is to allow userspace to provide separate "fixed mode" timings
also for external panels, at which point we could handle external
panels similar to internal panels where the actual timings are
specified by the "fixed mode" and the normal mode just provides
the crtc dimensions and vrefresh.

-- 
Ville Syrjälä
Intel
