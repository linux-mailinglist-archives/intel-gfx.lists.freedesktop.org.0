Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2D27A33ABD
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2025 10:13:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86F7310E3A5;
	Thu, 13 Feb 2025 09:13:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="R0veKzbA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C00A10E2AD;
 Thu, 13 Feb 2025 09:13:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739438014; x=1770974014;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=LV3hlONtPS9UvUDBACRcf/vznlK7X5UspxCu4019/nQ=;
 b=R0veKzbAWMb1IAei4BupVFvKh9dJ0A2qL99jWT97HuGPLgjk3T/sbGng
 UPLXY44jVmR9tZpRvTgTJoW2D3yWLg2PE93eFdodYax9UOLUbPxw5Cb08
 0Wi0wtdemIkXuylbT1fRpX9BcF9sQZ/eeyaYsoR4pR8tb0ajNE6x5sWO2
 Fc1a642xMGJjpnBUnWGFNb34Zd0kHyI8eolpkuhsq5afJo2mmbZkt6pTf
 cwrPc/c6SlLu+/xJkE53TIUvMgApxBi1Lkh+vt2FG69YqGO+wO2YbLYsu
 XajB1+2Vu2mKDgftqZ6NHDufnTedgFG+DjFTGbgMTiTnVdii+3tlDQvKL A==;
X-CSE-ConnectionGUID: /KR1MJ1cSYyS5Xa2EjC2ww==
X-CSE-MsgGUID: HUhxd6FOQiW4hwifu1BNFg==
X-IronPort-AV: E=McAfee;i="6700,10204,11343"; a="62597507"
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="62597507"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 01:13:33 -0800
X-CSE-ConnectionGUID: FuMCBvw8Q1+plIPgZEOKyg==
X-CSE-MsgGUID: 4nHtUJPXQeq9tkyQnbtIew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="117191548"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.243])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 01:13:31 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 01/14] drm/i915/dp: convert g4x_dp.[ch] to struct intel
 display
In-Reply-To: <SN7PR11MB6750A68DB16BDBA1B78D44BFE3FF2@SN7PR11MB6750.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1739378095.git.jani.nikula@intel.com>
 <89ce4f7e6aa31f3db6316537f54c5bc7df852322.1739378095.git.jani.nikula@intel.com>
 <SN7PR11MB6750A68DB16BDBA1B78D44BFE3FF2@SN7PR11MB6750.namprd11.prod.outlook.com>
Date: Thu, 13 Feb 2025 11:13:27 +0200
Message-ID: <87v7texl54.fsf@intel.com>
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

On Thu, 13 Feb 2025, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
>> -----Original Message-----
>> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Jani
>> Nikula
>> Sent: Wednesday, February 12, 2025 10:07 PM
>> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
>> Cc: Nikula, Jani <jani.nikula@intel.com>
>> Subject: [PATCH 01/14] drm/i915/dp: convert g4x_dp.[ch] to struct intel
>> display
>>
>> Going forward, struct intel_display is the main display device data pointer.
>> Convert as much as possible of g4x_dp.[ch] to struct intel_display.
>>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/g4x_dp.c         | 80 +++++++++----------
>>  drivers/gpu/drm/i915/display/g4x_dp.h         | 14 ++--
>>  drivers/gpu/drm/i915/display/intel_display.c  | 20 ++---
>> .../gpu/drm/i915/display/intel_pch_display.c  |  2 +-
>>  drivers/gpu/drm/i915/display/intel_pps.c      | 11 ++-
>>  5 files changed, 61 insertions(+), 66 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c
>> b/drivers/gpu/drm/i915/display/g4x_dp.c
>> index d3b5ead188ba..cfc796607a78 100644
>> --- a/drivers/gpu/drm/i915/display/g4x_dp.c
>> +++ b/drivers/gpu/drm/i915/display/g4x_dp.c
>> @@ -51,28 +51,29 @@ static const struct dpll chv_dpll[] = {
>>       { .dot = 270000, .p1 = 4, .p2 = 1, .n = 1, .m1 = 2, .m2 = 0x6c00000 /*
>> 27.0 */ },  };
>>
>> -const struct dpll *vlv_get_dpll(struct drm_i915_private *i915)
>> +const struct dpll *vlv_get_dpll(struct intel_display *display)
>>  {
>> -     return IS_CHERRYVIEW(i915) ? &chv_dpll[0] : &vlv_dpll[0];
>> +     return display->platform.cherryview ? &chv_dpll[0] : &vlv_dpll[0];
>>  }
>>
>>  static void g4x_dp_set_clock(struct intel_encoder *encoder,
>>                            struct intel_crtc_state *pipe_config)  {
>> +     struct intel_display *display = to_intel_display(encoder);
>>       struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>>       const struct dpll *divisor = NULL;
>>       int i, count = 0;
>>
>> -     if (IS_G4X(dev_priv)) {
>> +     if (display->platform.g4x) {
>>               divisor = g4x_dpll;
>>               count = ARRAY_SIZE(g4x_dpll);
>>       } else if (HAS_PCH_SPLIT(dev_priv)) {
>>               divisor = pch_dpll;
>>               count = ARRAY_SIZE(pch_dpll);
>> -     } else if (IS_CHERRYVIEW(dev_priv)) {
>> +     } else if (display->platform.cherryview) {
>>               divisor = chv_dpll;
>>               count = ARRAY_SIZE(chv_dpll);
>> -     } else if (IS_VALLEYVIEW(dev_priv)) {
>> +     } else if (display->platform.valleyview) {
>>               divisor = vlv_dpll;
>>               count = ARRAY_SIZE(vlv_dpll);
>>       }
>> @@ -129,7 +130,7 @@ static void intel_dp_prepare(struct intel_encoder
>> *encoder,
>>
>>       /* Split out the IBX/CPU vs CPT settings */
>>
>> -     if (IS_IVYBRIDGE(dev_priv) && port == PORT_A) {
>> +     if (display->platform.ivybridge && port == PORT_A) {
>>               if (adjusted_mode->flags & DRM_MODE_FLAG_PHSYNC)
>>                       intel_dp->DP |= DP_SYNC_HS_HIGH;
>>               if (adjusted_mode->flags & DRM_MODE_FLAG_PVSYNC) @@
>> -148,7 +149,7 @@ static void intel_dp_prepare(struct intel_encoder
>> *encoder,
>>                            pipe_config->enhanced_framing ?
>>                            TRANS_DP_ENH_FRAMING : 0);
>>       } else {
>> -             if (IS_G4X(dev_priv) && pipe_config->limited_color_range)
>> +             if (display->platform.g4x && pipe_config-
>> >limited_color_range)
>>                       intel_dp->DP |= DP_COLOR_RANGE_16_235;
>>
>>               if (adjusted_mode->flags & DRM_MODE_FLAG_PHSYNC) @@
>> -160,7 +161,7 @@ static void intel_dp_prepare(struct intel_encoder
>> *encoder,
>>               if (pipe_config->enhanced_framing)
>>                       intel_dp->DP |= DP_ENHANCED_FRAMING;
>>
>> -             if (IS_CHERRYVIEW(dev_priv))
>> +             if (display->platform.cherryview)
>>                       intel_dp->DP |= DP_PIPE_SEL_CHV(crtc->pipe);
>>               else
>>                       intel_dp->DP |= DP_PIPE_SEL(crtc->pipe); @@ -180,9
>> +181,8 @@ static void assert_dp_port(struct intel_dp *intel_dp, bool state)
>> }  #define assert_dp_port_disabled(d) assert_dp_port((d), false)
>>
>> -static void assert_edp_pll(struct drm_i915_private *dev_priv, bool state)
>> +static void assert_edp_pll(struct intel_display *display, bool state)
>>  {
>> -     struct intel_display *display = &dev_priv->display;
>>       bool cur_state = intel_de_read(display, DP_A) & DP_PLL_ENABLE;
>>
>>       INTEL_DISPLAY_STATE_WARN(display, cur_state != state, @@ -201,7
>> +201,7 @@ static void ilk_edp_pll_on(struct intel_dp *intel_dp,
>>
>>       assert_transcoder_disabled(dev_priv, pipe_config->cpu_transcoder);
>>       assert_dp_port_disabled(intel_dp);
>> -     assert_edp_pll_disabled(dev_priv);
>> +     assert_edp_pll_disabled(display);
>>
>>       drm_dbg_kms(display->drm, "enabling eDP PLL for clock %d\n",
>>                   pipe_config->port_clock);
>> @@ -223,7 +223,7 @@ static void ilk_edp_pll_on(struct intel_dp *intel_dp,
>>        * 1. Wait for the start of vertical blank on the enabled pipe going to
>> FDI
>>        * 2. Program DP PLL enable
>>        */
>> -     if (IS_IRONLAKE(dev_priv))
>> +     if (display->platform.ironlake)
>>               intel_wait_for_vblank_if_active(display, !crtc->pipe);
>>
>>       intel_dp->DP |= DP_PLL_ENABLE;
>> @@ -242,7 +242,7 @@ static void ilk_edp_pll_off(struct intel_dp *intel_dp,
>>
>>       assert_transcoder_disabled(dev_priv, old_crtc_state-
>> >cpu_transcoder);
>>       assert_dp_port_disabled(intel_dp);
>> -     assert_edp_pll_enabled(dev_priv);
>> +     assert_edp_pll_enabled(display);
>>
>>       drm_dbg_kms(display->drm, "disabling eDP PLL\n");
>>
>> @@ -253,10 +253,9 @@ static void ilk_edp_pll_off(struct intel_dp *intel_dp,
>>       udelay(200);
>>  }
>>
>> -static bool cpt_dp_port_selected(struct drm_i915_private *dev_priv,
>> +static bool cpt_dp_port_selected(struct intel_display *display,
>>                                enum port port, enum pipe *pipe)
>>  {
>> -     struct intel_display *display = &dev_priv->display;
>>       enum pipe p;
>>
>>       for_each_pipe(display, p) {
>> @@ -277,11 +276,11 @@ static bool cpt_dp_port_selected(struct
>> drm_i915_private *dev_priv,
>>       return false;
>>  }
>>
>> -bool g4x_dp_port_enabled(struct drm_i915_private *dev_priv,
>> +bool g4x_dp_port_enabled(struct intel_display *display,
>>                        i915_reg_t dp_reg, enum port port,
>>                        enum pipe *pipe)
>>  {
>> -     struct intel_display *display = &dev_priv->display;
>> +     struct drm_i915_private *dev_priv = to_i915(display->drm);
>>       bool ret;
>>       u32 val;
>>
>> @@ -290,11 +289,11 @@ bool g4x_dp_port_enabled(struct
>> drm_i915_private *dev_priv,
>>       ret = val & DP_PORT_EN;
>>
>>       /* asserts want to know the pipe even if the port is disabled */
>> -     if (IS_IVYBRIDGE(dev_priv) && port == PORT_A)
>> +     if (display->platform.ivybridge && port == PORT_A)
>>               *pipe = (val & DP_PIPE_SEL_MASK_IVB) >>
>> DP_PIPE_SEL_SHIFT_IVB;
>>       else if (HAS_PCH_CPT(dev_priv) && port != PORT_A)
>> -             ret &= cpt_dp_port_selected(dev_priv, port, pipe);
>> -     else if (IS_CHERRYVIEW(dev_priv))
>> +             ret &= cpt_dp_port_selected(display, port, pipe);
>> +     else if (display->platform.cherryview)
>>               *pipe = (val & DP_PIPE_SEL_MASK_CHV) >>
>> DP_PIPE_SEL_SHIFT_CHV;
>>       else
>>               *pipe = (val & DP_PIPE_SEL_MASK) >> DP_PIPE_SEL_SHIFT;
>> @@ -306,7 +305,6 @@ static bool intel_dp_get_hw_state(struct
>> intel_encoder *encoder,
>>                                 enum pipe *pipe)
>>  {
>>       struct intel_display *display = to_intel_display(encoder);
>> -     struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>>       struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
>>       intel_wakeref_t wakeref;
>>       bool ret;
>> @@ -316,7 +314,7 @@ static bool intel_dp_get_hw_state(struct
>> intel_encoder *encoder,
>>       if (!wakeref)
>>               return false;
>>
>> -     ret = g4x_dp_port_enabled(dev_priv, intel_dp->output_reg,
>> +     ret = g4x_dp_port_enabled(display, intel_dp->output_reg,
>>                                 encoder->port, pipe);
>>
>>       intel_display_power_put(display, encoder->power_domain,
>> wakeref); @@ -391,7 +389,7 @@ static void intel_dp_get_config(struct
>> intel_encoder *encoder,
>>
>>       pipe_config->hw.adjusted_mode.flags |= flags;
>>
>> -     if (IS_G4X(dev_priv) && tmp & DP_COLOR_RANGE_16_235)
>> +     if (display->platform.g4x && tmp & DP_COLOR_RANGE_16_235)
>>               pipe_config->limited_color_range = true;
>>
>>       pipe_config->lane_count =
>> @@ -433,7 +431,7 @@ intel_dp_link_down(struct intel_encoder *encoder,
>>
>>       drm_dbg_kms(display->drm, "\n");
>>
>> -     if ((IS_IVYBRIDGE(dev_priv) && port == PORT_A) ||
>> +     if ((display->platform.ivybridge && port == PORT_A) ||
>>           (HAS_PCH_CPT(dev_priv) && port != PORT_A)) {
>>               intel_dp->DP &= ~DP_LINK_TRAIN_MASK_CPT;
>>               intel_dp->DP |= DP_LINK_TRAIN_PAT_IDLE_CPT; @@ -479,7
>> +477,7 @@ intel_dp_link_down(struct intel_encoder *encoder,
>>
>>       msleep(intel_dp->pps.panel_power_down_delay);
>>
>> -     if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
>> +     if (display->platform.valleyview || display->platform.cherryview)
>>               vlv_pps_port_disable(encoder, old_crtc_state);  }
>>
>> @@ -682,7 +680,6 @@ static void intel_enable_dp(struct intel_atomic_state
>> *state,
>>                           const struct drm_connector_state *conn_state)  {
>>       struct intel_display *display = to_intel_display(state);
>> -     struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>>       struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
>>       u32 dp_reg = intel_de_read(display, intel_dp->output_reg);
>>       intel_wakeref_t wakeref;
>> @@ -691,7 +688,7 @@ static void intel_enable_dp(struct intel_atomic_state
>> *state,
>>               return;
>>
>>       with_intel_pps_lock(intel_dp, wakeref) {
>> -             if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
>> +             if (display->platform.valleyview || display-
>> >platform.cherryview)
>>                       vlv_pps_port_enable_unlocked(encoder,
>> pipe_config);
>>
>>               intel_dp_enable_port(intel_dp, pipe_config); @@ -701,10
>> +698,10 @@ static void intel_enable_dp(struct intel_atomic_state *state,
>>               intel_pps_vdd_off_unlocked(intel_dp, true);
>>       }
>>
>> -     if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
>> +     if (display->platform.valleyview || display->platform.cherryview) {
>>               unsigned int lane_mask = 0x0;
>>
>> -             if (IS_CHERRYVIEW(dev_priv))
>> +             if (display->platform.cherryview)
>>                       lane_mask =
>> intel_dp_unused_lane_mask(pipe_config->lane_count);
>>
>>               vlv_wait_port_ready(display, dp_to_dig_port(intel_dp),
>> lane_mask); @@ -1264,7 +1261,6 @@ static void
>> intel_dp_encoder_destroy(struct drm_encoder *encoder)  static void
>> intel_dp_encoder_reset(struct drm_encoder *encoder)  {
>>       struct intel_display *display = to_intel_display(encoder->dev);
>> -     struct drm_i915_private *dev_priv = to_i915(encoder->dev);
>
> I know this hasn't changed in this patch and is already there merged in code but a good chance to
> Do to_intel_display(encoder) instead of encoder->dev

to_intel_display() intentionally doesn't handle drm_encoder, so can't.

> Otherwise
> LGTM,
> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

Thanks, but I've just merged the series with Ville's Reviewed-by.

BR,
Jani.

>
>>       struct intel_dp *intel_dp =
>> enc_to_intel_dp(to_intel_encoder(encoder));
>>
>>       intel_dp->DP = intel_de_read(display, intel_dp->output_reg); @@ -
>> 1272,7 +1268,7 @@ static void intel_dp_encoder_reset(struct drm_encoder
>> *encoder)
>>       intel_dp->reset_link_params = true;
>>       intel_dp_invalidate_source_oui(intel_dp);
>>
>> -     if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
>> +     if (display->platform.valleyview || display->platform.cherryview)
>>               vlv_pps_pipe_reset(intel_dp);
>>
>>       intel_pps_encoder_reset(intel_dp);
>> @@ -1283,10 +1279,10 @@ static const struct drm_encoder_funcs
>> intel_dp_enc_funcs = {
>>       .destroy = intel_dp_encoder_destroy,
>>  };
>>
>> -bool g4x_dp_init(struct drm_i915_private *dev_priv,
>> +bool g4x_dp_init(struct intel_display *display,
>>                i915_reg_t output_reg, enum port port)  {
>> -     struct intel_display *display = &dev_priv->display;
>> +     struct drm_i915_private *dev_priv = to_i915(display->drm);
>>       const struct intel_bios_encoder_data *devdata;
>>       struct intel_digital_port *dig_port;
>>       struct intel_encoder *intel_encoder;
>> @@ -1337,14 +1333,14 @@ bool g4x_dp_init(struct drm_i915_private
>> *dev_priv,
>>       intel_encoder->suspend = intel_dp_encoder_suspend;
>>       intel_encoder->suspend_complete = g4x_dp_suspend_complete;
>>       intel_encoder->shutdown = intel_dp_encoder_shutdown;
>> -     if (IS_CHERRYVIEW(dev_priv)) {
>> +     if (display->platform.cherryview) {
>>               intel_encoder->pre_pll_enable = chv_dp_pre_pll_enable;
>>               intel_encoder->pre_enable = chv_pre_enable_dp;
>>               intel_encoder->enable = vlv_enable_dp;
>>               intel_encoder->disable = vlv_disable_dp;
>>               intel_encoder->post_disable = chv_post_disable_dp;
>>               intel_encoder->post_pll_disable = chv_dp_post_pll_disable;
>> -     } else if (IS_VALLEYVIEW(dev_priv)) {
>> +     } else if (display->platform.valleyview) {
>>               intel_encoder->pre_pll_enable = vlv_dp_pre_pll_enable;
>>               intel_encoder->pre_enable = vlv_pre_enable_dp;
>>               intel_encoder->enable = vlv_enable_dp; @@ -1359,24
>> +1355,24 @@ bool g4x_dp_init(struct drm_i915_private *dev_priv,
>>       intel_encoder->audio_enable = g4x_dp_audio_enable;
>>       intel_encoder->audio_disable = g4x_dp_audio_disable;
>>
>> -     if ((IS_IVYBRIDGE(dev_priv) && port == PORT_A) ||
>> +     if ((display->platform.ivybridge && port == PORT_A) ||
>>           (HAS_PCH_CPT(dev_priv) && port != PORT_A))
>>               dig_port->dp.set_link_train = cpt_set_link_train;
>>       else
>>               dig_port->dp.set_link_train = g4x_set_link_train;
>>
>> -     if (IS_CHERRYVIEW(dev_priv))
>> +     if (display->platform.cherryview)
>>               intel_encoder->set_signal_levels = chv_set_signal_levels;
>> -     else if (IS_VALLEYVIEW(dev_priv))
>> +     else if (display->platform.valleyview)
>>               intel_encoder->set_signal_levels = vlv_set_signal_levels;
>> -     else if (IS_IVYBRIDGE(dev_priv) && port == PORT_A)
>> +     else if (display->platform.ivybridge && port == PORT_A)
>>               intel_encoder->set_signal_levels =
>> ivb_cpu_edp_set_signal_levels;
>> -     else if (IS_SANDYBRIDGE(dev_priv) && port == PORT_A)
>> +     else if (display->platform.sandybridge && port == PORT_A)
>>               intel_encoder->set_signal_levels =
>> snb_cpu_edp_set_signal_levels;
>>       else
>>               intel_encoder->set_signal_levels = g4x_set_signal_levels;
>>
>> -     if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv) ||
>> +     if (display->platform.valleyview || display->platform.cherryview ||
>>           (HAS_PCH_SPLIT(dev_priv) && port != PORT_A)) {
>>               dig_port->dp.preemph_max = intel_dp_preemph_max_3;
>>               dig_port->dp.voltage_max = intel_dp_voltage_max_3; @@ -
>> 1390,7 +1386,7 @@ bool g4x_dp_init(struct drm_i915_private *dev_priv,
>>
>>       intel_encoder->type = INTEL_OUTPUT_DP;
>>       intel_encoder->power_domain =
>> intel_display_power_ddi_lanes_domain(display, port);
>> -     if (IS_CHERRYVIEW(dev_priv)) {
>> +     if (display->platform.cherryview) {
>>               if (port == PORT_D)
>>                       intel_encoder->pipe_mask = BIT(PIPE_C);
>>               else
>> diff --git a/drivers/gpu/drm/i915/display/g4x_dp.h
>> b/drivers/gpu/drm/i915/display/g4x_dp.h
>> index 839a251dc069..0b28951b8365 100644
>> --- a/drivers/gpu/drm/i915/display/g4x_dp.h
>> +++ b/drivers/gpu/drm/i915/display/g4x_dp.h
>> @@ -12,30 +12,30 @@
>>
>>  enum pipe;
>>  enum port;
>> -struct drm_i915_private;
>>  struct intel_crtc_state;
>> +struct intel_display;
>>  struct intel_dp;
>>  struct intel_encoder;
>>
>>  #ifdef I915
>> -const struct dpll *vlv_get_dpll(struct drm_i915_private *i915); -bool
>> g4x_dp_port_enabled(struct drm_i915_private *dev_priv,
>> +const struct dpll *vlv_get_dpll(struct intel_display *display); bool
>> +g4x_dp_port_enabled(struct intel_display *display,
>>                        i915_reg_t dp_reg, enum port port,
>>                        enum pipe *pipe);
>> -bool g4x_dp_init(struct drm_i915_private *dev_priv,
>> +bool g4x_dp_init(struct intel_display *display,
>>                i915_reg_t output_reg, enum port port);  #else -static inline
>> const struct dpll *vlv_get_dpll(struct drm_i915_private *i915)
>> +static inline const struct dpll *vlv_get_dpll(struct intel_display
>> +*display)
>>  {
>>       return NULL;
>>  }
>> -static inline bool g4x_dp_port_enabled(struct drm_i915_private *dev_priv,
>> +static inline bool g4x_dp_port_enabled(struct intel_display *display,
>>                                      i915_reg_t dp_reg, int port,
>>                                      enum pipe *pipe)
>>  {
>>       return false;
>>  }
>> -static inline bool g4x_dp_init(struct drm_i915_private *dev_priv,
>> +static inline bool g4x_dp_init(struct intel_display *display,
>>                              i915_reg_t output_reg, int port)  {
>>       return false;
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
>> b/drivers/gpu/drm/i915/display/intel_display.c
>> index 6c1e7441313e..e5ceedf56335 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -8229,7 +8229,7 @@ void intel_setup_outputs(struct drm_i915_private
>> *dev_priv)
>>               dpd_is_edp = intel_dp_is_port_edp(display, PORT_D);
>>
>>               if (ilk_has_edp_a(dev_priv))
>> -                     g4x_dp_init(dev_priv, DP_A, PORT_A);
>> +                     g4x_dp_init(display, DP_A, PORT_A);
>>
>>               if (intel_de_read(dev_priv, PCH_HDMIB) & SDVO_DETECTED)
>> {
>>                       /* PCH SDVOB multiplex with HDMIB */ @@ -8237,7
>> +8237,7 @@ void intel_setup_outputs(struct drm_i915_private *dev_priv)
>>                       if (!found)
>>                               g4x_hdmi_init(dev_priv, PCH_HDMIB,
>> PORT_B);
>>                       if (!found && (intel_de_read(dev_priv, PCH_DP_B) &
>> DP_DETECTED))
>> -                             g4x_dp_init(dev_priv, PCH_DP_B, PORT_B);
>> +                             g4x_dp_init(display, PCH_DP_B, PORT_B);
>>               }
>>
>>               if (intel_de_read(dev_priv, PCH_HDMIC) & SDVO_DETECTED)
>> @@ -8247,10 +8247,10 @@ void intel_setup_outputs(struct
>> drm_i915_private *dev_priv)
>>                       g4x_hdmi_init(dev_priv, PCH_HDMID, PORT_D);
>>
>>               if (intel_de_read(dev_priv, PCH_DP_C) & DP_DETECTED)
>> -                     g4x_dp_init(dev_priv, PCH_DP_C, PORT_C);
>> +                     g4x_dp_init(display, PCH_DP_C, PORT_C);
>>
>>               if (intel_de_read(dev_priv, PCH_DP_D) & DP_DETECTED)
>> -                     g4x_dp_init(dev_priv, PCH_DP_D, PORT_D);
>> +                     g4x_dp_init(display, PCH_DP_D, PORT_D);
>>       } else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
>>               bool has_edp, has_port;
>>
>> @@ -8275,14 +8275,14 @@ void intel_setup_outputs(struct
>> drm_i915_private *dev_priv)
>>               has_edp = intel_dp_is_port_edp(display, PORT_B);
>>               has_port = intel_bios_is_port_present(display, PORT_B);
>>               if (intel_de_read(dev_priv, VLV_DP_B) & DP_DETECTED ||
>> has_port)
>> -                     has_edp &= g4x_dp_init(dev_priv, VLV_DP_B,
>> PORT_B);
>> +                     has_edp &= g4x_dp_init(display, VLV_DP_B,
>> PORT_B);
>>               if ((intel_de_read(dev_priv, VLV_HDMIB) & SDVO_DETECTED
>> || has_port) && !has_edp)
>>                       g4x_hdmi_init(dev_priv, VLV_HDMIB, PORT_B);
>>
>>               has_edp = intel_dp_is_port_edp(display, PORT_C);
>>               has_port = intel_bios_is_port_present(display, PORT_C);
>>               if (intel_de_read(dev_priv, VLV_DP_C) & DP_DETECTED ||
>> has_port)
>> -                     has_edp &= g4x_dp_init(dev_priv, VLV_DP_C,
>> PORT_C);
>> +                     has_edp &= g4x_dp_init(display, VLV_DP_C,
>> PORT_C);
>>               if ((intel_de_read(dev_priv, VLV_HDMIC) & SDVO_DETECTED
>> || has_port) && !has_edp)
>>                       g4x_hdmi_init(dev_priv, VLV_HDMIC, PORT_C);
>>
>> @@ -8293,7 +8293,7 @@ void intel_setup_outputs(struct drm_i915_private
>> *dev_priv)
>>                        */
>>                       has_port = intel_bios_is_port_present(display,
>> PORT_D);
>>                       if (intel_de_read(dev_priv, CHV_DP_D) &
>> DP_DETECTED || has_port)
>> -                             g4x_dp_init(dev_priv, CHV_DP_D, PORT_D);
>> +                             g4x_dp_init(display, CHV_DP_D, PORT_D);
>>                       if (intel_de_read(dev_priv, CHV_HDMID) &
>> SDVO_DETECTED || has_port)
>>                               g4x_hdmi_init(dev_priv, CHV_HDMID,
>> PORT_D);
>>               }
>> @@ -8320,7 +8320,7 @@ void intel_setup_outputs(struct drm_i915_private
>> *dev_priv)
>>                       }
>>
>>                       if (!found && IS_G4X(dev_priv))
>> -                             g4x_dp_init(dev_priv, DP_B, PORT_B);
>> +                             g4x_dp_init(display, DP_B, PORT_B);
>>               }
>>
>>               /* Before G4X SDVOC doesn't have its own detect register */
>> @@ -8338,11 +8338,11 @@ void intel_setup_outputs(struct
>> drm_i915_private *dev_priv)
>>                               g4x_hdmi_init(dev_priv, GEN4_HDMIC,
>> PORT_C);
>>                       }
>>                       if (IS_G4X(dev_priv))
>> -                             g4x_dp_init(dev_priv, DP_C, PORT_C);
>> +                             g4x_dp_init(display, DP_C, PORT_C);
>>               }
>>
>>               if (IS_G4X(dev_priv) && (intel_de_read(dev_priv, DP_D) &
>> DP_DETECTED))
>> -                     g4x_dp_init(dev_priv, DP_D, PORT_D);
>> +                     g4x_dp_init(display, DP_D, PORT_D);
>>
>>               if (SUPPORTS_TV(dev_priv))
>>                       intel_tv_init(display);
>> diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c
>> b/drivers/gpu/drm/i915/display/intel_pch_display.c
>> index 75ff5592312f..98a6b57ac956 100644
>> --- a/drivers/gpu/drm/i915/display/intel_pch_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
>> @@ -45,7 +45,7 @@ static void assert_pch_dp_disabled(struct
>> drm_i915_private *dev_priv,
>>       enum pipe port_pipe;
>>       bool state;
>>
>> -     state = g4x_dp_port_enabled(dev_priv, dp_reg, port, &port_pipe);
>> +     state = g4x_dp_port_enabled(display, dp_reg, port, &port_pipe);
>>
>>       INTEL_DISPLAY_STATE_WARN(display, state && port_pipe == pipe,
>>                                "PCH DP %c enabled on transcoder %c,
>> should be disabled\n", diff --git a/drivers/gpu/drm/i915/display/intel_pps.c
>> b/drivers/gpu/drm/i915/display/intel_pps.c
>> index ef6effaf82e0..617ce4993172 100644
>> --- a/drivers/gpu/drm/i915/display/intel_pps.c
>> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
>> @@ -134,7 +134,7 @@ vlv_power_sequencer_kick(struct intel_dp *intel_dp)
>>               release_cl_override = display->platform.cherryview &&
>>                       !chv_phy_powergate_ch(display, phy, ch, true);
>>
>> -             if (vlv_force_pll_on(dev_priv, pipe, vlv_get_dpll(dev_priv))) {
>> +             if (vlv_force_pll_on(dev_priv, pipe, vlv_get_dpll(display))) {
>>                       drm_err(display->drm,
>>                               "Failed to force on PLL for pipe %c!\n",
>>                               pipe_name(pipe));
>> @@ -1225,11 +1225,10 @@ static void vlv_steal_power_sequencer(struct
>> intel_display *display,  static enum pipe vlv_active_pipe(struct intel_dp
>> *intel_dp)  {
>>       struct intel_display *display = to_intel_display(intel_dp);
>> -     struct drm_i915_private *dev_priv = to_i915(display->drm);
>>       struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
>>       enum pipe pipe;
>>
>> -     if (g4x_dp_port_enabled(dev_priv, intel_dp->output_reg,
>> +     if (g4x_dp_port_enabled(display, intel_dp->output_reg,
>>                               encoder->port, &pipe))
>>               return pipe;
>>
>> @@ -1859,13 +1858,13 @@ void assert_pps_unlocked(struct intel_display
>> *display, enum pipe pipe)
>>                       intel_lvds_port_enabled(dev_priv, PCH_LVDS,
>> &panel_pipe);
>>                       break;
>>               case PANEL_PORT_SELECT_DPA:
>> -                     g4x_dp_port_enabled(dev_priv, DP_A, PORT_A,
>> &panel_pipe);
>> +                     g4x_dp_port_enabled(display, DP_A, PORT_A,
>> &panel_pipe);
>>                       break;
>>               case PANEL_PORT_SELECT_DPC:
>> -                     g4x_dp_port_enabled(dev_priv, PCH_DP_C, PORT_C,
>> &panel_pipe);
>> +                     g4x_dp_port_enabled(display, PCH_DP_C, PORT_C,
>> &panel_pipe);
>>                       break;
>>               case PANEL_PORT_SELECT_DPD:
>> -                     g4x_dp_port_enabled(dev_priv, PCH_DP_D, PORT_D,
>> &panel_pipe);
>> +                     g4x_dp_port_enabled(display, PCH_DP_D, PORT_D,
>> &panel_pipe);
>>                       break;
>>               default:
>>                       MISSING_CASE(port_sel);
>> --
>> 2.39.5
>

-- 
Jani Nikula, Intel
