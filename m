Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AE0AA5682D
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Mar 2025 13:50:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 662CC10E2CF;
	Fri,  7 Mar 2025 12:50:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="S5ZUqn3+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2519C10E2BC;
 Fri,  7 Mar 2025 12:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741351852; x=1772887852;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=THE0bv8Xcez7gTTyruw0NMWrXar3ElO29Q5TfvP9t/s=;
 b=S5ZUqn3+j0OmM3tEoArGqbv1lDwcFeMAI4ShcRCvvuUUiwgCQYSKY7KB
 OiFJ1LkOonwnkv+9TDQPNqxBUlJ0rdEzjSsIEonS6CtSRw6EvhF6rZPvw
 9OUShl6daI7ijbk8+eN4UHQDF0NXgsfFfOp8EXzBDCX7UwMufhu5APi5E
 ZFyT5Xt5y6qrYAXtjcEcmte75ErILOAFEx8mkxjSrNoBJ1ig4NQbaA6E2
 0NGlkLVVy4OtSqj5N4UWpgv+9HVlFPVJ3V7RR1yusGPgFXYMNYzlJrWT3
 4qo1hBgFtB3POYqXiNlEK12ELiPM6Iu4rvrJ3E8fLTndnSn87+0pj8Q64 A==;
X-CSE-ConnectionGUID: 2pWX/uMoQnSzWveE6yvLew==
X-CSE-MsgGUID: PqdVx1/tQVKp5oemi+cyEQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="67771269"
X-IronPort-AV: E=Sophos;i="6.14,229,1736841600"; d="scan'208";a="67771269"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 04:50:49 -0800
X-CSE-ConnectionGUID: ITB/WGFiQ7yAHE25V7zYKw==
X-CSE-MsgGUID: QM/9rrgrRZ2Gefmd+ajkjA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="124541700"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 07 Mar 2025 04:50:47 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 07 Mar 2025 14:50:46 +0200
Date: Fri, 7 Mar 2025 14:50:46 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: Re: [PATCH 15/21] drm/i915/display: Use fixed_rr timings in modeset
 sequence
Message-ID: <Z8rrpvnqE4Lcc4hb@intel.com>
References: <20250306131100.3989503-1-ankit.k.nautiyal@intel.com>
 <20250306131100.3989503-16-ankit.k.nautiyal@intel.com>
 <Z8nRZPU6__OTBWHe@intel.com>
 <9d1d55c7-199b-47a6-913e-d221d7cf2853@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <9d1d55c7-199b-47a6-913e-d221d7cf2853@intel.com>
X-Patchwork-Hint: comment
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

On Fri, Mar 07, 2025 at 05:33:46PM +0530, Nautiyal, Ankit K wrote:
> 
> On 3/6/2025 10:16 PM, Ville Syrjälä wrote:
> > On Thu, Mar 06, 2025 at 06:40:54PM +0530, Ankit Nautiyal wrote:
> >> During modeset enable sequence, program the fixed timings, and turn on the
> >> VRR Timing Generator (VRR TG) for platforms that always use VRR TG.
> >>
> >> For this intel_vrr_set_transcoder now always programs fixed timings.
> >> Later if vrr timings are required, vrr_enable() will switch
> >> to the real VRR timings.
> >>
> >> For platforms that will always use VRR TG, the VRR_CTL Enable bit is set
> >> and reset in the transcoder enable/disable path.
> >>
> >> v2: Update intel_vrr_set_transcoder_timings for fixed_rr.
> >> v3: Update intel_set_transcoder_timings_lrr for fixed_rr. (Ville)
> >> v4: Have separate functions to enable/disable VRR CTL
> >> v5:
> >> -For platforms that do not always have VRRTG on, do write bits other
> >> than enable bit and also use write the TRANS_VRR_PUSH register. (Ville)
> >> -Avoid writing trans_ctl_vrr if !vrr_possible().
> >> v6:
> >> -Disable VRR just before intel_ddi_disable_transcoder_func(). (Ville)
> >> -Correct the sequence of configuring PUSH and VRR Enable/Disable. (Ville)
> >>
> >> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> >> ---
> >>   drivers/gpu/drm/i915/display/intel_ddi.c    |  5 ++
> >>   drivers/gpu/drm/i915/display/intel_dp_mst.c |  4 ++
> >>   drivers/gpu/drm/i915/display/intel_vrr.c    | 63 ++++++++++++++++-----
> >>   drivers/gpu/drm/i915/display/intel_vrr.h    |  2 +
> >>   4 files changed, 60 insertions(+), 14 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> >> index 676c1826f15c..6d89a87b3419 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> >> @@ -78,6 +78,7 @@
> >>   #include "intel_tc.h"
> >>   #include "intel_vdsc.h"
> >>   #include "intel_vdsc_regs.h"
> >> +#include "intel_vrr.h"
> >>   #include "skl_scaler.h"
> >>   #include "skl_universal_plane.h"
> >>   
> >> @@ -3248,6 +3249,8 @@ static void intel_ddi_post_disable_hdmi_or_sst(struct intel_atomic_state *state,
> >>   		drm_dp_dpcd_poll_act_handled(&intel_dp->aux, 0);
> >>   	}
> >>   
> >> +	intel_vrr_transcoder_disable(old_crtc_state);
> >> +
> >>   	intel_ddi_disable_transcoder_func(old_crtc_state);
> >>   
> >>   	for_each_pipe_crtc_modeset_disable(display, pipe_crtc, old_crtc_state, i) {
> >> @@ -3521,6 +3524,8 @@ static void intel_ddi_enable(struct intel_atomic_state *state,
> >>   
> >>   	intel_ddi_enable_transcoder_func(encoder, crtc_state);
> >>   
> >> +	intel_vrr_transcoder_enable(crtc_state);
> >> +
> >>   	/* Enable/Disable DP2.0 SDP split config before transcoder */
> >>   	intel_audio_sdp_split_update(crtc_state);
> >>   
> >> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> >> index bd47cf127b4c..d2988b9a6e7b 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> >> @@ -1065,6 +1065,8 @@ static void mst_stream_post_disable(struct intel_atomic_state *state,
> >>   	drm_dp_remove_payload_part2(&intel_dp->mst.mgr, new_mst_state,
> >>   				    old_payload, new_payload);
> >>   
> >> +	intel_vrr_transcoder_disable(old_crtc_state);
> >> +
> >>   	intel_ddi_disable_transcoder_func(old_crtc_state);
> >>   
> >>   	for_each_pipe_crtc_modeset_disable(display, pipe_crtc, old_crtc_state, i) {
> >> @@ -1326,6 +1328,8 @@ static void mst_stream_enable(struct intel_atomic_state *state,
> >>   
> >>   	intel_ddi_enable_transcoder_func(encoder, pipe_config);
> >>   
> >> +	intel_vrr_transcoder_enable(pipe_config);
> >> +
> >>   	intel_ddi_clear_act_sent(encoder, pipe_config);
> >>   
> >>   	intel_de_rmw(display, TRANS_DDI_FUNC_CTL(display, trans), 0,
> >> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> >> index f523a48e6186..d7580b6e4e37 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> >> @@ -460,12 +460,6 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
> >>   		intel_de_rmw(display, CHICKEN_TRANS(display, cpu_transcoder),
> >>   			     0, PIPE_VBLANK_WITH_DELAY);
> >>   
> >> -	if (!intel_vrr_possible(crtc_state)) {
> >> -		intel_de_write(display,
> >> -			       TRANS_VRR_CTL(display, cpu_transcoder), 0);
> >> -		return;
> >> -	}
> >> -
> >>   	if (crtc_state->cmrr.enable) {
> >>   		intel_de_write(display, TRANS_CMRR_M_HI(display, cpu_transcoder),
> >>   			       upper_32_bits(crtc_state->cmrr.cmrr_m));
> >> @@ -477,14 +471,7 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
> >>   			       lower_32_bits(crtc_state->cmrr.cmrr_n));
> >>   	}
> >>   
> >> -	intel_de_write(display, TRANS_VRR_VMIN(display, cpu_transcoder),
> >> -		       crtc_state->vrr.vmin - 1);
> >> -	intel_de_write(display, TRANS_VRR_VMAX(display, cpu_transcoder),
> >> -		       crtc_state->vrr.vmax - 1);
> >> -	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
> >> -		       trans_vrr_ctl(crtc_state));
> >> -	intel_de_write(display, TRANS_VRR_FLIPLINE(display, cpu_transcoder),
> >> -		       crtc_state->vrr.flipline - 1);
> >> +	intel_vrr_set_fixed_rr_timings(crtc_state);
> >>   
> >>   	if (HAS_AS_SDP(display))
> >>   		intel_de_write(display,
> >> @@ -618,6 +605,54 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
> >>   	intel_vrr_set_fixed_rr_timings(old_crtc_state);
> >>   }
> >>   
> >> +void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state)
> >> +{
> >> +	struct intel_display *display = to_intel_display(crtc_state);
> >> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> >> +
> >> +	if (!HAS_VRR(display))
> >> +		return;
> >> +
> >> +	if (!intel_vrr_possible(crtc_state))
> >> +		return;
> >> +
> >> +	if (!intel_vrr_always_use_vrr_tg(display)) {
> >> +		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
> >> +			       trans_vrr_ctl(crtc_state));
> >> +		return;
> >> +	}
> >> +
> >> +	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
> >> +		       TRANS_PUSH_EN);
> >> +
> >> +	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
> >> +		       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
> >> +}
> >> +
> >> +void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state)
> >> +{
> >> +	struct intel_display *display = to_intel_display(crtc_state);
> >> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> >> +
> >> +	if (!HAS_VRR(display))
> >> +		return;
> >> +
> >> +	if (!intel_vrr_possible(crtc_state))
> >> +		return;
> >> +
> >> +	if (!intel_vrr_always_use_vrr_tg(display)) {
> >> +		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
> >> +			       trans_vrr_ctl(crtc_state));
> > IMO we should write 0 here too.
> 
> There is one problem. If we do not write trans_vrr_ctl but crtc_state 
> has flipline, vmin, vmax all set to some value, then we get mismatch in 
> vrr_get_config.

This is intel_vrr_transcoder_disable(). Nothing is expected to be
configured for disabled transcoders.

-- 
Ville Syrjälä
Intel
