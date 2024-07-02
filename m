Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 262DD9238D9
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jul 2024 10:50:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C157610E575;
	Tue,  2 Jul 2024 08:50:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FEX0Ay+I";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F37310E575
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Jul 2024 08:50:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719910237; x=1751446237;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=FG2RqnGURS4iNnBrAZ1kO/KvtMADolmK8zr2591Mh24=;
 b=FEX0Ay+IV11/H+iWyyjpu/GfTCGeJ0F3EYrrlX8cFQe97MrLgIZ7qPvg
 gGwcvvjAPwH9XBU0NV5fLLkgsdkCec8aGEnqZQClzj9bggOiR+klwr97M
 cVl5ZO88dDA5utyF8AoKtsxgl+w6l5YKrUm3QQniMK+3yr12yvCfRIaqw
 bzoVPtuwFirCTO4/KLDOZz1Xk44tByfcENXdpMTd3+tGvLceGFj4JSdyc
 CXN6u/0n/TBLLOm4fwLCsscI76Ln813AX7LISiR+c6ot/I+d8LL53tQCL
 k7gFxl/uhSUX4b+Soav6hnu1rlIRjeaD6YE6iwHdlc3wp7Qn9s9WQEU9S Q==;
X-CSE-ConnectionGUID: lHS6SN9pTdmNSZtsM5d55g==
X-CSE-MsgGUID: g9EzIfieQp2teTK7y5EhVg==
X-IronPort-AV: E=McAfee;i="6700,10204,11120"; a="16946357"
X-IronPort-AV: E=Sophos;i="6.09,178,1716274800"; d="scan'208";a="16946357"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2024 01:50:37 -0700
X-CSE-ConnectionGUID: Fa4F2i+VRFyGmBzRb2t37w==
X-CSE-MsgGUID: Fhfrllb1S/6rIBUzdMGbOg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,178,1716274800"; d="scan'208";a="45721096"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.179])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2024 01:50:33 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Cc: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "Hogander, Jouni" <jouni.hogander@intel.com>, "Murthy, Arun R"
 <arun.r.murthy@intel.com>, "Nautiyal, Ankit K"
 <ankit.k.nautiyal@intel.com>, "Golani, Mitulkumar Ajitkumar"
 <mitulkumar.ajitkumar.golani@intel.com>
Subject: RE: [PATCH v8 1/2] drm/i915/panelreplay: Panel replay workaround
 with VRR
In-Reply-To: <PH7PR11MB5981FE63C3ADEEF89B4418FDF9DC2@PH7PR11MB5981.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240702055631.3722013-1-animesh.manna@intel.com>
 <87o77g9pwi.fsf@intel.com>
 <PH7PR11MB5981FE63C3ADEEF89B4418FDF9DC2@PH7PR11MB5981.namprd11.prod.outlook.com>
Date: Tue, 02 Jul 2024 11:50:30 +0300
Message-ID: <87cynw9nzd.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Tue, 02 Jul 2024, "Manna, Animesh" <animesh.manna@intel.com> wrote:
>> -----Original Message-----
>> From: Nikula, Jani <jani.nikula@intel.com>
>> Sent: Tuesday, July 2, 2024 1:39 PM
>> To: Manna, Animesh <animesh.manna@intel.com>; intel-
>> gfx@lists.freedesktop.org
>> Cc: ville.syrjala@linux.intel.com; Hogander, Jouni
>> <jouni.hogander@intel.com>; Murthy, Arun R <arun.r.murthy@intel.com>;
>> Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Golani, Mitulkumar Ajitkumar
>> <mitulkumar.ajitkumar.golani@intel.com>; Manna, Animesh
>> <animesh.manna@intel.com>
>> Subject: Re: [PATCH v8 1/2] drm/i915/panelreplay: Panel replay workaround
>> with VRR
>>
>> On Tue, 02 Jul 2024, Animesh Manna <animesh.manna@intel.com> wrote:
>> > Panel Replay VSC SDP not getting sent when VRR is enabled and W1 and
>> > W2 are 0. So Program Set Context Latency in
>> TRANS_SET_CONTEXT_LATENCY
>> > register to at least a value of 1.
>>
>> The patch does a whole lot more than what's explained in the commit
>> message. Feels like the patch should maybe do less.
>>
>> >
>> > HSD: 14015406119
>> >
>> > v1: Initial version.
>> > v2: Update timings stored in adjusted_mode struct. [Ville]
>> > v3: Add WA in compute_config(). [Ville]
>> > v4:
>> > - Add DISPLAY_VER() check and improve code comment. [Rodrigo]
>> > - Introduce centralized intel_crtc_vblank_delay(). [Ville]
>> > v5: Move to crtc_compute_config(). [Ville]
>> > v6: Restrict DISPLAY_VER till 14. [Mitul]
>> > v7:
>> > - Corrected code-comment. [Mitul]
>> > - dev_priv local variable removed. [Jani]
>> > v8: Introduce late_compute_config() which will take care late
>> > vblank-delay adjustment. [Ville]
>>
>> I presume this change is based on [1], but I have a hard time mentally
>> mapping what's going on in the patch to what Ville asks there.
>>
>> [1] https://lore.kernel.org/r/ZnlvWk-sOzDfMa0E@intel.com
>
> From the above comments from Ville, I understood the following point.
> 1. We need to split the compute config, something like usual compute-config and late-compute-config.
> 2. Second phase will consist of the part of compute-config which is dependent on adjusted vbalnk_start, vrr is one of them and the other will be psr2/panel-replay.
> 3. Calling vrr-late-compute-config which is part of dp-compute-config from crtc-compute-config I felt maybe not look nice,
> 4. Apart from point 3 we want to consider other encoder-type like HDMI/DSI if needed later for adjusted vblank-start,
> So added based on encoder-type DP/EDP intel_dp_late_compute_config() and vrr-guardband/pipeline-full values will be computed for HDMI/DSI as well.
>
> Please let me know your thought and review feedback if something is not acceptable, will modify accordingly, as there is no specific way, it can be taken care multiple way.

Adding ad hoc intel_dp_late_compute_config() called from a rather random
place is not acceptable. See the full comments inline in my previous
reply.

This kind of conflates specifity and generality.

We already have encoder->compute_config_late() hooks. I don't have the
time to dig deep into this, and I don't know if you can do what you need
there. But you just can't add something that looks like "compute config
late", which is not called via that hook. It's misleading.

BR,
Jani.


>
> Regards,
> Animesh
>>
>> >
>> > Signed-off-by: Animesh Manna <animesh.manna@intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/display/intel_alpm.c    |  3 +-
>> >  drivers/gpu/drm/i915/display/intel_alpm.h    |  6 ++-
>> >  drivers/gpu/drm/i915/display/intel_display.c | 54
>> > +++++++++++++++++++-  drivers/gpu/drm/i915/display/intel_display.h |  2
>> +
>> >  drivers/gpu/drm/i915/display/intel_dp.c      | 20 +++++++-
>> >  drivers/gpu/drm/i915/display/intel_dp.h      |  2 +
>> >  drivers/gpu/drm/i915/display/intel_psr.c     | 12 ++---
>> >  drivers/gpu/drm/i915/display/intel_vrr.c     | 13 -----
>> >  8 files changed, 84 insertions(+), 28 deletions(-)
>> >
>> > diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c
>> > b/drivers/gpu/drm/i915/display/intel_alpm.c
>> > index 866b3b409c4d..021e970d8209 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_alpm.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_alpm.c
>> > @@ -266,8 +266,7 @@ bool intel_alpm_compute_params(struct intel_dp
>> > *intel_dp,  }
>> >
>> >  void intel_alpm_lobf_compute_config(struct intel_dp *intel_dp,
>> > -                               struct intel_crtc_state *crtc_state,
>> > -                               struct drm_connector_state *conn_state)
>> > +                               struct intel_crtc_state *crtc_state)
>> >  {
>> >     struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>> >     struct drm_display_mode *adjusted_mode =
>> > &crtc_state->hw.adjusted_mode; diff --git
>> > a/drivers/gpu/drm/i915/display/intel_alpm.h
>> > b/drivers/gpu/drm/i915/display/intel_alpm.h
>> > index 8c409b10dce6..8abe7bd9bc37 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_alpm.h
>> > +++ b/drivers/gpu/drm/i915/display/intel_alpm.h
>> > @@ -16,9 +16,11 @@ struct intel_connector;  void
>> > intel_alpm_init_dpcd(struct intel_dp *intel_dp);  bool
>> > intel_alpm_compute_params(struct intel_dp *intel_dp,
>> >                            const struct intel_crtc_state *crtc_state);
>> > +bool intel_alpm_config_valid(struct intel_dp *intel_dp,
>> > +                        const struct intel_crtc_state *crtc_state,
>> > +                        bool aux_less);
>> >  void intel_alpm_lobf_compute_config(struct intel_dp *intel_dp,
>> > -                               struct intel_crtc_state *crtc_state,
>> > -                               struct drm_connector_state *conn_state);
>> > +                               struct intel_crtc_state *crtc_state);
>> >  void intel_alpm_configure(struct intel_dp *intel_dp,
>> >                       const struct intel_crtc_state *crtc_state);  void
>> > intel_alpm_lobf_debugfs_add(struct intel_connector *connector); diff
>> > --git a/drivers/gpu/drm/i915/display/intel_display.c
>> > b/drivers/gpu/drm/i915/display/intel_display.c
>> > index c2c388212e2e..cdab71f81eaa 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_display.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> > @@ -2512,9 +2512,21 @@ static int intel_crtc_compute_pipe_mode(struct
>> > intel_crtc_state *crtc_state)  static int intel_crtc_compute_config(struct
>> intel_atomic_state *state,
>> >                                  struct intel_crtc *crtc)
>> >  {
>> > +   struct drm_connector *connector;
>> > +   struct drm_connector_state *connector_state;
>> >     struct intel_crtc_state *crtc_state =
>> >             intel_atomic_get_new_crtc_state(state, crtc);
>> > -   int ret;
>> > +   int ret, i;
>> > +
>> > +   for_each_new_connector_in_state(&state->base, connector,
>> connector_state, i) {
>> > +           struct intel_encoder *encoder =
>> > +                   to_intel_encoder(connector_state->best_encoder);
>> > +
>> > +           if (connector_state->crtc != &crtc->base)
>> > +                   continue;
>> > +
>> > +           intel_crtc_adjust_vblank_delay(crtc_state, encoder);
>> > +   }
>> >
>> >     ret = intel_dpll_crtc_compute_clock(state, crtc);
>> >     if (ret)
>> > @@ -3925,6 +3937,46 @@ bool intel_crtc_get_pipe_config(struct
>> intel_crtc_state *crtc_state)
>> >     return true;
>> >  }
>> >
>> > +void intel_crtc_adjust_vblank_delay(struct intel_crtc_state *crtc_state,
>> > +                               struct intel_encoder *encoder)
>>
>> This could be static.
>>
>> > +{
>> > +   struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>> > +   struct drm_display_mode *adjusted_mode =
>> > +&crtc_state->hw.adjusted_mode;
>> > +
>> > +   /*
>> > +    * wa_14015401596 for display versions 13, 14.
>> > +    * Program Set Context Latency in TRANS_SET_CONTEXT_LATENCY
>> register
>> > +    * to at least a value of 1 when Panel Replay is enabled with VRR.
>> > +    * Value for TRANS_SET_CONTEXT_LATENCY is calculated by
>> substracting
>> > +    * crtc_vdisplay from crtc_vblank_start, so incrementing
>> crtc_vblank_start
>> > +    * by 1 if both are equal.
>> > +    */
>> > +   if (crtc_state->vrr.enable && crtc_state->has_panel_replay &&
>> > +       adjusted_mode->crtc_vblank_start == adjusted_mode-
>> >crtc_vdisplay &&
>> > +       IS_DISPLAY_VER(to_i915(crtc->base.dev), 13, 14))
>> > +           adjusted_mode->crtc_vblank_start += 1;
>> > +
>> > +   if (crtc_state->vrr.enable) {
>> > +           /*
>> > +            * For XE_LPD+, we use guardband and pipeline override
>> > +            * is deprecated.
>> > +            */
>> > +           if (DISPLAY_VER(to_i915(crtc->base.dev)) >= 13) {
>> > +                   crtc_state->vrr.guardband =
>> > +                   crtc_state->vrr.vmin + 1 - adjusted_mode-
>> >crtc_vblank_start;
>> > +           } else {
>> > +                   crtc_state->vrr.pipeline_full =
>> > +                   min(255, crtc_state->vrr.vmin - adjusted_mode-
>> >crtc_vblank_start -
>>
>> Misleading indentation (see where you're copy-pasting this from).
>>
>> > +                       crtc_state->framestart_delay - 1);
>> > +           }
>>
>> I think only intel_vrr.c should be modifying vrr.guardband, vrr.pipeline_full.
>>
>> > +   }
>> > +
>> > +   if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP) ||
>> > +       intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP)) {
>> > +           intel_dp_late_compute_config(encoder, crtc_state);
>>
>> So, ugh. Naming this intel_dp_late_compute_config() is *very* confusing.
>>
>> We have intel_modeset_pipe_config() calling encoder->compute_config().
>>
>> Now you're adding intel_modeset_pipe_config() calling
>> intel_crtc_compute_config() calling intel_crtc_adjust_vblank_delay() calling
>> intel_dp_late_compute_config().
>>
>> Yet there's separate intel_modeset_pipe_config_late() and
>> encoder->compute_config_late().
>>
>> In general, it's very surprising to have a function called
>> intel_crtc_adjust_vblank_delay() do *much* more than, well, adjust vblank
>> delay.
>>
>> > +   }
>> > +}
>> > +
>> >  int intel_dotclock_calculate(int link_freq,
>> >                          const struct intel_link_m_n *m_n)  { diff --git
>> > a/drivers/gpu/drm/i915/display/intel_display.h
>> > b/drivers/gpu/drm/i915/display/intel_display.h
>> > index b0cf6ca70952..21fd330b8834 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_display.h
>> > +++ b/drivers/gpu/drm/i915/display/intel_display.h
>> > @@ -428,6 +428,8 @@ bool intel_crtc_is_joiner_primary(const struct
>> > intel_crtc_state *crtc_state);
>> >  u8 intel_crtc_joiner_secondary_pipes(const struct intel_crtc_state
>> > *crtc_state);  struct intel_crtc *intel_primary_crtc(const struct
>> > intel_crtc_state *crtc_state);  bool intel_crtc_get_pipe_config(struct
>> > intel_crtc_state *crtc_state);
>> > +void intel_crtc_adjust_vblank_delay(struct intel_crtc_state *crtc_state,
>> > +                               struct intel_encoder *encoder);
>> >  bool intel_pipe_config_compare(const struct intel_crtc_state
>> *current_config,
>> >                            const struct intel_crtc_state *pipe_config,
>> >                            bool fastset);
>> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
>> > b/drivers/gpu/drm/i915/display/intel_dp.c
>> > index 3903f6ead6e6..e01e72ec48b3 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> > @@ -3009,7 +3009,6 @@ intel_dp_compute_config(struct intel_encoder
>> *encoder,
>> >     intel_vrr_compute_config(pipe_config, conn_state);
>> >     intel_dp_compute_as_sdp(intel_dp, pipe_config);
>> >     intel_psr_compute_config(intel_dp, pipe_config, conn_state);
>> > -   intel_alpm_lobf_compute_config(intel_dp, pipe_config, conn_state);
>> >     intel_dp_drrs_compute_config(connector, pipe_config,
>> link_bpp_x16);
>> >     intel_dp_compute_vsc_sdp(intel_dp, pipe_config, conn_state);
>> >     intel_dp_compute_hdr_metadata_infoframe_sdp(intel_dp,
>> pipe_config,
>> > conn_state); @@ -3018,6 +3017,25 @@ intel_dp_compute_config(struct
>> intel_encoder *encoder,
>> >                                                     pipe_config);
>> >  }
>> >
>> > +void intel_dp_late_compute_config(struct intel_encoder *encoder,
>> > +                             struct intel_crtc_state *crtc_state) {
>> > +   struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
>> > +
>> > +   if (crtc_state->has_sel_update &&
>> > +       !intel_alpm_config_valid(intel_dp, crtc_state, false)) {
>> > +           crtc_state->enable_psr2_sel_fetch = false;
>> > +           crtc_state->has_sel_update = false;
>> > +   }
>> > +
>> > +   if (crtc_state->has_panel_replay && intel_dp_is_edp(intel_dp) &&
>> > +       !intel_alpm_config_valid(intel_dp, crtc_state, false)) {
>> > +           crtc_state->has_panel_replay = false;
>> > +   }
>>
>> I think only intel_psr.c should be modifying enable_psr2_sel_fetch,
>> has_sel_update, has_panel_replay.
>>
>> > +
>> > +   intel_alpm_lobf_compute_config(intel_dp, crtc_state); }
>> > +
>> >  void intel_dp_set_link_params(struct intel_dp *intel_dp,
>> >                           int link_rate, int lane_count)  { diff --git
>> > a/drivers/gpu/drm/i915/display/intel_dp.h
>> > b/drivers/gpu/drm/i915/display/intel_dp.h
>> > index a0f990a95ecc..cd473f939941 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_dp.h
>> > +++ b/drivers/gpu/drm/i915/display/intel_dp.h
>> > @@ -74,6 +74,8 @@ void intel_dp_encoder_flush_work(struct
>> drm_encoder
>> > *encoder);  int intel_dp_compute_config(struct intel_encoder *encoder,
>> >                         struct intel_crtc_state *pipe_config,
>> >                         struct drm_connector_state *conn_state);
>> > +void intel_dp_late_compute_config(struct intel_encoder *encoder,
>> > +                             struct intel_crtc_state *crtc_state);
>> >  int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>> >                             struct intel_crtc_state *pipe_config,
>> >                             struct drm_connector_state *conn_state, diff
>> --git
>> > a/drivers/gpu/drm/i915/display/intel_psr.c
>> > b/drivers/gpu/drm/i915/display/intel_psr.c
>> > index 9cb1cdaaeefa..4dc917b7f447 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_psr.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
>> > @@ -1344,9 +1344,9 @@ static bool wake_lines_fit_into_vblank(struct
>> intel_dp *intel_dp,
>> >     return true;
>> >  }
>> >
>> > -static bool alpm_config_valid(struct intel_dp *intel_dp,
>> > -                         const struct intel_crtc_state *crtc_state,
>> > -                         bool aux_less)
>> > +bool intel_alpm_config_valid(struct intel_dp *intel_dp,
>> > +                        const struct intel_crtc_state *crtc_state,
>> > +                        bool aux_less)
>> >  {
>> >     struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>> >
>> > @@ -1442,9 +1442,6 @@ static bool intel_psr2_config_valid(struct intel_dp
>> *intel_dp,
>> >             return false;
>> >     }
>> >
>> > -   if (!alpm_config_valid(intel_dp, crtc_state, false))
>> > -           return false;
>> > -
>>
>> The commit message does not explain this.
>>
>> >     if (!crtc_state->enable_psr2_sel_fetch &&
>> >         (crtc_hdisplay > psr_max_h || crtc_vdisplay > psr_max_v)) {
>> >             drm_dbg_kms(&dev_priv->drm,
>> > @@ -1583,9 +1580,6 @@ _panel_replay_compute_config(struct intel_dp
>> *intel_dp,
>> >             return false;
>> >     }
>> >
>> > -   if (!alpm_config_valid(intel_dp, crtc_state, true))
>> > -           return false;
>> > -
>>
>> Ditto.
>>
>> >     return true;
>> >  }
>> >
>> > diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c
>> > b/drivers/gpu/drm/i915/display/intel_vrr.c
>> > index 5a0da64c7db3..46341367d250 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_vrr.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>> > @@ -242,19 +242,6 @@ intel_vrr_compute_config(struct intel_crtc_state
>> *crtc_state,
>> >                     (crtc_state->hw.adjusted_mode.crtc_vtotal -
>> >                      crtc_state->hw.adjusted_mode.vsync_end);
>> >     }
>> > -
>> > -   /*
>> > -    * For XE_LPD+, we use guardband and pipeline override
>> > -    * is deprecated.
>> > -    */
>> > -   if (DISPLAY_VER(i915) >= 13) {
>> > -           crtc_state->vrr.guardband =
>> > -                   crtc_state->vrr.vmin + 1 - adjusted_mode-
>> >crtc_vblank_start;
>> > -   } else {
>> > -           crtc_state->vrr.pipeline_full =
>> > -                   min(255, crtc_state->vrr.vmin - adjusted_mode-
>> >crtc_vblank_start -
>> > -                       crtc_state->framestart_delay - 1);
>> > -   }
>> >  }
>> >
>> >  static u32 trans_vrr_ctl(const struct intel_crtc_state *crtc_state)
>>
>> --
>> Jani Nikula, Intel

-- 
Jani Nikula, Intel
