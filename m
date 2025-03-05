Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C30BA4FF07
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Mar 2025 13:53:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3C1710E831;
	Wed,  5 Mar 2025 12:53:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VYpFh9pC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B02210E829;
 Wed,  5 Mar 2025 12:53:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741179230; x=1772715230;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=h1ek4096IdD/UovnMrFiD6OwKOJUKM8tG1zKsWyjbdA=;
 b=VYpFh9pC8FrOynj5dsoCf2JfzBlZLKsk2ujpmqS9oqTSqQcacAwZlMB/
 6wVxW3wiEbb0Eta35z5Vfc5qc04wW2DOIxaxBeyR+NTszq9EXB/YpzNCT
 RdpH2IbbQ47ksPoQPwp8PXDH+y0QAXi7L6U6mY5S9BXK48u4XPDlXRcF0
 N2QLalz53JChRwJ5zDmABdBdCBfcJts5bnIz5+yq2cJC8KB7TgZzcyH8N
 hAgL0nrb1CW/WF8j4/H3RiBjg5QIVsk7QmEMQ3KYSDZX1SogDk3btNBLF
 vOy12lRJaQivTlKVaNtiB+S5v3yYt1ZeugbQ1SdMEJ1YQYhm/yZ2eI5BY w==;
X-CSE-ConnectionGUID: P+WT3EACT4ucTEfkmrqmSg==
X-CSE-MsgGUID: eCRNCkwJR5OAc/KDIrqORw==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="41389575"
X-IronPort-AV: E=Sophos;i="6.14,223,1736841600"; d="scan'208";a="41389575"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2025 04:53:50 -0800
X-CSE-ConnectionGUID: v3pXTqy4SYKC9aOO7DNtoQ==
X-CSE-MsgGUID: N1k+cpaBQRq6nYJYkj9sJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="123881497"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 05 Mar 2025 04:53:47 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 05 Mar 2025 14:53:46 +0200
Date: Wed, 5 Mar 2025 14:53:46 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: Re: [PATCH 15/22] drm/i915/display: Use fixed_rr timings in modeset
 sequence
Message-ID: <Z8hJWsf51NBUQG9i@intel.com>
References: <20250304081948.3177034-1-ankit.k.nautiyal@intel.com>
 <20250304081948.3177034-16-ankit.k.nautiyal@intel.com>
 <Z8dLXSTwoOFdOm7a@intel.com>
 <5f674c8e-3ac5-4e8d-9e9b-19e59d28a96b@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <5f674c8e-3ac5-4e8d-9e9b-19e59d28a96b@intel.com>
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

On Wed, Mar 05, 2025 at 02:11:21PM +0530, Nautiyal, Ankit K wrote:
> 
> On 3/5/2025 12:20 AM, Ville Syrjälä wrote:
> > On Tue, Mar 04, 2025 at 01:49:41PM +0530, Ankit Nautiyal wrote:
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
> >>
> >> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> >> ---
> >>   drivers/gpu/drm/i915/display/intel_ddi.c    |  5 ++
> >>   drivers/gpu/drm/i915/display/intel_dp_mst.c |  4 ++
> >>   drivers/gpu/drm/i915/display/intel_vrr.c    | 59 ++++++++++++++++-----
> >>   drivers/gpu/drm/i915/display/intel_vrr.h    |  3 ++
> >>   4 files changed, 57 insertions(+), 14 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> >> index 20fc258a4d6d..6f083c28c455 100644
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
> >> @@ -3273,6 +3274,8 @@ static void intel_ddi_post_disable(struct intel_atomic_state *state,
> >>   				   const struct intel_crtc_state *old_crtc_state,
> >>   				   const struct drm_connector_state *old_conn_state)
> >>   {
> >> +	intel_vrr_transcoder_disable(old_crtc_state);
> >> +
> > This isn't symmetric with the enable. If we do the enable just after
> > intel_ddi_enable_transcoder_func() then I would like to see the disable
> > done just before intel_ddi_disable_transcoder_func().
> 
> Yes you are right. But as per bspec it seems enable and disable 
> sequences are different.
> For enable the sequence is: TRANS_DDI_FUNC_CTL -> VRR_CTL ->TRANS_CONF
> 
> But as per bspec: 49190, and 68849for Disable it is: VRR_CTL -> 
> TRANS_CONF -> TRANS_DDI_FUNC_CTL

I don't think that part applies to PTL anymore. In fact looks like
there's no VRR disable step listed anymore listed. But I think we
should have one, and the symmetric spot to enable makes most sense
to me.

> 
> Though I am following the spec, I am getting issues in the disabling 
> part. Specifically WARN : pipe_off wait timed out for some platforms as 
> flagged by the CI BAT failures.

Hmm. I think the hardware should have swithed over to the
legacy timing generator at that point since the transcoder
was still active. So not sure what's causing the timeout.

Did you have the TRANS_VTOTAL=0 patch included in those tests?

> 
> I can try the change you mentioned to see if it helps.
> 
> 
> >
> >>   	if (!intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_DP_MST))
> >>   		intel_ddi_post_disable_hdmi_or_sst(state, encoder, old_crtc_state,
> >>   						   old_conn_state);
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
> >> index bd47cf127b4c..7dbc9b3bdbe4 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> >> @@ -1049,6 +1049,8 @@ static void mst_stream_post_disable(struct intel_atomic_state *state,
> >>   		intel_crtc_vblank_off(old_pipe_crtc_state);
> >>   	}
> >>   
> >> +	intel_vrr_transcoder_disable(old_crtc_state);
> >> +
> > Same here.
> >
> >>   	intel_disable_transcoder(old_crtc_state);
> >>   
> >>   	drm_dp_remove_payload_part1(&intel_dp->mst.mgr, new_mst_state, new_payload);
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
> >> index c1387d3f60b2..97040ab9ed86 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> >> @@ -456,12 +456,6 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
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
> >> @@ -473,14 +467,7 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
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
> >> @@ -614,6 +601,50 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
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
> >> +	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
> >> +		       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
> >> +
> >> +	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
> >> +		       TRANS_PUSH_EN);
> > IIRC push should generally be set before the VRR_CTL enable.
> > Perhaps doesn't matter here, since the transcoder is still
> > not enabled, but would be nice to be consistent with intel_vrr_enable().
> 
> You are right will change this.
> 
> 
> >
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
> >> +		return;
> >> +	}
> >> +
> >> +	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder), 0);
> > Should probably clear the push enable for good measure too.
> 
> Will clear the push enable, while disabling.
> 
> 
> PS: I had tried both with and without clearing the PUSH enable after 
> disabling VRR, but the "pipe_off wait timed out" persisted.
> 
> 
> >
> >> +}
> >> +
> >>   static
> >>   bool intel_vrr_is_fixed_rr(const struct intel_crtc_state *crtc_state)
> >>   {
> >> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
> >> index 514822577e8a..c81f98f83b58 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_vrr.h
> >> +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
> >> @@ -12,6 +12,7 @@ struct drm_connector_state;
> >>   struct intel_atomic_state;
> >>   struct intel_connector;
> >>   struct intel_crtc_state;
> >> +struct intel_display;
> > Leftover from some other change?
> 
> Sorry about this , it was indeed leftover from other patch.
> 
> 
> Regards,
> 
> Ankit
> 
> >
> >>   struct intel_dsb;
> >>   
> >>   bool intel_vrr_is_capable(struct intel_connector *connector);
> >> @@ -35,5 +36,7 @@ int intel_vrr_vmin_vtotal(const struct intel_crtc_state *crtc_state);
> >>   int intel_vrr_vmax_vblank_start(const struct intel_crtc_state *crtc_state);
> >>   int intel_vrr_vmin_vblank_start(const struct intel_crtc_state *crtc_state);
> >>   int intel_vrr_vblank_delay(const struct intel_crtc_state *crtc_state);
> >> +void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state);
> >> +void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state);
> >>   
> >>   #endif /* __INTEL_VRR_H__ */
> >> -- 
> >> 2.45.2

-- 
Ville Syrjälä
Intel
