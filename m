Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F277214E9D8
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2020 09:58:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41B1E6E951;
	Fri, 31 Jan 2020 08:58:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECD146E951
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jan 2020 08:57:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Jan 2020 00:57:57 -0800
X-IronPort-AV: E=Sophos;i="5.70,385,1574150400"; d="scan'208";a="223078576"
Received: from bbiernac-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.51.157])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Jan 2020 00:57:56 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: "Kulkarni\, Vandita" <vandita.kulkarni@intel.com>,
 "intel-gfx\@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <57510F3E2013164E925CD03ED7512A3B80A1A57E@BGSMSX108.gar.corp.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200128162850.8660-1-jani.nikula@intel.com>
 <57510F3E2013164E925CD03ED7512A3B80A1A57E@BGSMSX108.gar.corp.intel.com>
Date: Fri, 31 Jan 2020 10:58:04 +0200
Message-ID: <877e189f4z.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: move pipe,
 pch and vblank enable to encoders on DDI platforms
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 29 Jan 2020, "Kulkarni, Vandita" <vandita.kulkarni@intel.com> wrote:
>> -----Original Message-----
>> From: Jani Nikula <jani.nikula@intel.com>
>> Sent: Tuesday, January 28, 2020 9:59 PM
>> To: intel-gfx@lists.freedesktop.org
>> Cc: Nikula, Jani <jani.nikula@intel.com>; Kulkarni, Vandita
>> <vandita.kulkarni@intel.com>; Ville Syrjala <ville.syrjala@linux.intel.com>
>> Subject: [PATCH 1/3] drm/i915: move pipe, pch and vblank enable to encoders
>> on DDI platforms
>> 
>> To allow better flexibility for encoder specific code, push intel_enable_pipe(),
>> lpt_pch_enable() and intel_crtc_vblank_on() down to the encoders from
>> hsw_crtc_enable().
>> 
>> There's slight duplication, but also more clarity with the reduced conditional
>> statements.
>> 
>> Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
>> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Looks good to me.
> Reviewed-by: Vandita Kulkarni <vandita.kulkarni@intel.com>

Pushed the series to dinq, thanks for the patch and review.

BR,
Jani.

>
> Thanks,
> Vandita
>> ---
>>  drivers/gpu/drm/i915/display/icl_dsi.c       | 10 ++++++++++
>>  drivers/gpu/drm/i915/display/intel_crt.c     |  6 ++++++
>>  drivers/gpu/drm/i915/display/intel_ddi.c     |  6 ++++++
>>  drivers/gpu/drm/i915/display/intel_display.c | 16 +++-------------
>> drivers/gpu/drm/i915/display/intel_display.h |  3 +++
>>  drivers/gpu/drm/i915/display/vlv_dsi.c       | 11 +++++++++++
>>  6 files changed, 39 insertions(+), 13 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c
>> b/drivers/gpu/drm/i915/display/icl_dsi.c
>> index 1186a5df057e..006a29115b02 100644
>> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
>> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
>> @@ -1110,6 +1110,15 @@ static void gen11_dsi_pre_enable(struct
>> intel_encoder *encoder,
>>  	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_BACKLIGHT_ON);  }
>> 
>> +static void gen11_dsi_enable(struct intel_encoder *encoder,
>> +			     const struct intel_crtc_state *crtc_state,
>> +			     const struct drm_connector_state *conn_state) {
>> +	WARN_ON(crtc_state->has_pch_encoder);
>> +
>> +	intel_crtc_vblank_on(crtc_state);
>> +}
>> +
>>  static void gen11_dsi_disable_transcoder(struct intel_encoder *encoder)  {
>>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev); @@
>> -1727,6 +1736,7 @@ void icl_dsi_init(struct drm_i915_private *dev_priv)
>> 
>>  	encoder->pre_pll_enable = gen11_dsi_pre_pll_enable;
>>  	encoder->pre_enable = gen11_dsi_pre_enable;
>> +	encoder->enable = gen11_dsi_enable;
>>  	encoder->disable = gen11_dsi_disable;
>>  	encoder->post_disable = gen11_dsi_post_disable;
>>  	encoder->port = port;
>> diff --git a/drivers/gpu/drm/i915/display/intel_crt.c
>> b/drivers/gpu/drm/i915/display/intel_crt.c
>> index d250ddde0296..de3f9d1d927e 100644
>> --- a/drivers/gpu/drm/i915/display/intel_crt.c
>> +++ b/drivers/gpu/drm/i915/display/intel_crt.c
>> @@ -301,6 +301,12 @@ static void hsw_enable_crt(struct intel_encoder
>> *encoder,
>> 
>>  	WARN_ON(!crtc_state->has_pch_encoder);
>> 
>> +	intel_enable_pipe(crtc_state);
>> +
>> +	lpt_pch_enable(crtc_state);
>> +
>> +	intel_crtc_vblank_on(crtc_state);
>> +
>>  	intel_crt_set_dpms(encoder, crtc_state, DRM_MODE_DPMS_ON);
>> 
>>  	intel_wait_for_vblank(dev_priv, pipe); diff --git
>> a/drivers/gpu/drm/i915/display/intel_ddi.c
>> b/drivers/gpu/drm/i915/display/intel_ddi.c
>> index b1100950dd0d..5febd3a911fe 100644
>> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
>> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>> @@ -3979,6 +3979,12 @@ static void intel_enable_ddi(struct intel_encoder
>> *encoder,
>>  			     const struct intel_crtc_state *crtc_state,
>>  			     const struct drm_connector_state *conn_state)  {
>> +	WARN_ON(crtc_state->has_pch_encoder);
>> +
>> +	intel_enable_pipe(crtc_state);
>> +
>> +	intel_crtc_vblank_on(crtc_state);
>> +
>>  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
>>  		intel_enable_ddi_hdmi(encoder, crtc_state, conn_state);
>>  	else
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
>> b/drivers/gpu/drm/i915/display/intel_display.c
>> index 7f94d5ca4207..0b7112a29966 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -1811,7 +1811,7 @@ static u32 intel_crtc_max_vblank_count(const struct
>> intel_crtc_state *crtc_state
>>  		return 0; /* Gen2 doesn't have a hardware frame counter */  }
>> 
>> -static void intel_crtc_vblank_on(const struct intel_crtc_state *crtc_state)
>> +void intel_crtc_vblank_on(const struct intel_crtc_state *crtc_state)
>>  {
>>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>> 
>> @@ -1829,7 +1829,7 @@ void intel_crtc_vblank_off(const struct
>> intel_crtc_state *crtc_state)
>>  	assert_vblank_disabled(&crtc->base);
>>  }
>> 
>> -static void intel_enable_pipe(const struct intel_crtc_state *new_crtc_state)
>> +void intel_enable_pipe(const struct intel_crtc_state *new_crtc_state)
>>  {
>>  	struct intel_crtc *crtc = to_intel_crtc(new_crtc_state->uapi.crtc);
>>  	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev); @@ -
>> 5849,8 +5849,7 @@ static void ilk_pch_enable(const struct intel_atomic_state
>> *state,
>>  	ilk_enable_pch_transcoder(crtc_state);
>>  }
>> 
>> -static void lpt_pch_enable(const struct intel_atomic_state *state,
>> -			   const struct intel_crtc_state *crtc_state)
>> +void lpt_pch_enable(const struct intel_crtc_state *crtc_state)
>>  {
>>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>>  	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev); @@ -
>> 7021,15 +7020,6 @@ static void hsw_crtc_enable(struct intel_atomic_state
>> *state,
>>  	if (INTEL_GEN(dev_priv) >= 11)
>>  		icl_pipe_mbus_enable(crtc);
>> 
>> -	/* XXX: Do the pipe assertions at the right place for BXT DSI. */
>> -	if (!transcoder_is_dsi(cpu_transcoder))
>> -		intel_enable_pipe(new_crtc_state);
>> -
>> -	if (new_crtc_state->has_pch_encoder)
>> -		lpt_pch_enable(state, new_crtc_state);
>> -
>> -	intel_crtc_vblank_on(new_crtc_state);
>> -
>>  	intel_encoders_enable(state, crtc);
>> 
>>  	if (psl_clkgate_wa) {
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.h
>> b/drivers/gpu/drm/i915/display/intel_display.h
>> index 028aab728514..6805e29002ee 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display.h
>> @@ -486,6 +486,7 @@ enum phy intel_port_to_phy(struct drm_i915_private
>> *i915, enum port port);  bool is_trans_port_sync_mode(const struct
>> intel_crtc_state *state);
>> 
>>  void intel_plane_destroy(struct drm_plane *plane);
>> +void intel_enable_pipe(const struct intel_crtc_state *new_crtc_state);
>>  void intel_disable_pipe(const struct intel_crtc_state *old_crtc_state);  void
>> i830_enable_pipe(struct drm_i915_private *dev_priv, enum pipe pipe);  void
>> i830_disable_pipe(struct drm_i915_private *dev_priv, enum pipe pipe); @@ -
>> 495,6 +496,7 @@ int vlv_get_cck_clock(struct drm_i915_private *dev_priv,
>>  		      const char *name, u32 reg, int ref_freq);  int
>> vlv_get_cck_clock_hpll(struct drm_i915_private *dev_priv,
>>  			   const char *name, u32 reg);
>> +void lpt_pch_enable(const struct intel_crtc_state *crtc_state);
>>  void lpt_disable_pch_transcoder(struct drm_i915_private *dev_priv);  void
>> lpt_disable_iclkip(struct drm_i915_private *dev_priv);  void
>> intel_init_display_hooks(struct drm_i915_private *dev_priv); @@ -520,6
>> +522,7 @@ enum tc_port intel_port_to_tc(struct drm_i915_private *dev_priv,
>> int intel_get_pipe_from_crtc_id_ioctl(struct drm_device *dev, void *data,
>>  				      struct drm_file *file_priv);
>>  u32 intel_crtc_get_vblank_counter(struct intel_crtc *crtc);
>> +void intel_crtc_vblank_on(const struct intel_crtc_state *crtc_state);
>>  void intel_crtc_vblank_off(const struct intel_crtc_state *crtc_state);
>> 
>>  int ilk_get_lanes_required(int target_clock, int link_bw, int bpp); diff --git
>> a/drivers/gpu/drm/i915/display/vlv_dsi.c
>> b/drivers/gpu/drm/i915/display/vlv_dsi.c
>> index a101a4513c65..1ff935cb082a 100644
>> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
>> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
>> @@ -850,6 +850,15 @@ static void intel_dsi_pre_enable(struct intel_encoder
>> *encoder,
>>  	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_BACKLIGHT_ON);  }
>> 
>> +static void bxt_dsi_enable(struct intel_encoder *encoder,
>> +			   const struct intel_crtc_state *crtc_state,
>> +			   const struct drm_connector_state *conn_state) {
>> +	WARN_ON(crtc_state->has_pch_encoder);
>> +
>> +	intel_crtc_vblank_on(crtc_state);
>> +}
>> +
>>  /*
>>   * DSI port disable has to be done after pipe and plane disable, so we do it in
>>   * the post_disable hook.
>> @@ -1863,6 +1872,8 @@ void vlv_dsi_init(struct drm_i915_private *dev_priv)
>> 
>>  	intel_encoder->compute_config = intel_dsi_compute_config;
>>  	intel_encoder->pre_enable = intel_dsi_pre_enable;
>> +	if (IS_GEN9_LP(dev_priv))
>> +		intel_encoder->enable = bxt_dsi_enable;
>>  	intel_encoder->disable = intel_dsi_disable;
>>  	intel_encoder->post_disable = intel_dsi_post_disable;
>>  	intel_encoder->get_hw_state = intel_dsi_get_hw_state;
>> --
>> 2.20.1
>

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
