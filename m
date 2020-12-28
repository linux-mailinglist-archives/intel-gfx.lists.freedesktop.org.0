Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 86F822E361D
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Dec 2020 11:57:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9956889AAE;
	Mon, 28 Dec 2020 10:57:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97D3D89AAE
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Dec 2020 10:57:44 +0000 (UTC)
IronPort-SDR: 1UElwJLynBf1jefEaT3fRbuc99rPwos8Bep/bMlf0i1nHIuLL2jZu4U99NyADTGb9MkUXPxJjL
 +rRfbgkeNrww==
X-IronPort-AV: E=McAfee;i="6000,8403,9847"; a="173793321"
X-IronPort-AV: E=Sophos;i="5.78,455,1599548400"; d="scan'208";a="173793321"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Dec 2020 02:57:41 -0800
IronPort-SDR: avZq5YOVmlyUUipaH5a0AZEP3dDiBaMhOpnaRPg+OcgTgc0+ITB8Sbfh7kuW6p3IMdoAwJK/70
 lr3O87W1G6Yw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,455,1599548400"; d="scan'208";a="494281859"
Received: from irsmsx601.ger.corp.intel.com ([163.33.146.7])
 by orsmga004.jf.intel.com with ESMTP; 28 Dec 2020 02:57:41 -0800
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 irsmsx601.ger.corp.intel.com (163.33.146.7) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 28 Dec 2020 10:57:39 +0000
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.1713.004;
 Mon, 28 Dec 2020 16:27:38 +0530
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 02/13] drm/i915/pps: rename pps_{, un}lock ->
 intel_pps_{, un}lock
Thread-Index: AQHW2HHMCfsNFBLqc0OrFO6BsfrD/KoMX1mA
Date: Mon, 28 Dec 2020 10:57:38 +0000
Message-ID: <254ec24cfbe747b8a339f877762550c5@intel.com>
References: <cover.1608648128.git.jani.nikula@intel.com>
 <650e676e57eb7720ef1f3c382165ad8d1b17241d.1608648128.git.jani.nikula@intel.com>
In-Reply-To: <650e676e57eb7720ef1f3c382165ad8d1b17241d.1608648128.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.5.1.3
dlp-reaction: no-action
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 02/13] drm/i915/pps: rename pps_{,
 un}lock -> intel_pps_{, un}lock
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Jani
> Nikula
> Sent: Tuesday, December 22, 2020 8:20 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>
> Subject: [Intel-gfx] [PATCH 02/13] drm/i915/pps: rename pps_{, un}lock ->
> intel_pps_{, un}lock
> 
> Start following the usual naming pattern for functions.
LGTM.
Reviewed-by: Anshuman Gupta <anshuman.gupta@intel.com>
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c  | 20 ++++++++++----------
> drivers/gpu/drm/i915/display/intel_pps.c | 21 +++++++++++----------
> drivers/gpu/drm/i915/display/intel_pps.h |  8 ++++----
>  3 files changed, 25 insertions(+), 24 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index d4760c478653..0870872fb594 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1030,7 +1030,7 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
>  	aux_domain = intel_aux_power_domain(dig_port);
> 
>  	aux_wakeref = intel_display_power_get(i915, aux_domain);
> -	pps_wakeref = pps_lock(intel_dp);
> +	pps_wakeref = intel_pps_lock(intel_dp);
> 
>  	/*
>  	 * We will be called with VDD already enabled for dpcd/edid/oui
> reads.
> @@ -1182,7 +1182,7 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
>  	if (vdd)
>  		edp_panel_vdd_off(intel_dp, false);
> 
> -	pps_unlock(intel_dp, pps_wakeref);
> +	intel_pps_unlock(intel_dp, pps_wakeref);
>  	intel_display_power_put_async(i915, aux_domain, aux_wakeref);
> 
>  	if (is_tc_port)
> @@ -3153,7 +3153,7 @@ static void intel_enable_dp(struct
> intel_atomic_state *state,
>  	if (drm_WARN_ON(&dev_priv->drm, dp_reg & DP_PORT_EN))
>  		return;
> 
> -	with_pps_lock(intel_dp, wakeref) {
> +	with_intel_pps_lock(intel_dp, wakeref) {
>  		if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
>  			vlv_init_panel_power_sequencer(encoder,
> pipe_config);
> 
> @@ -3719,7 +3719,7 @@ intel_dp_link_down(struct intel_encoder
> *encoder,
>  	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
>  		intel_wakeref_t wakeref;
> 
> -		with_pps_lock(intel_dp, wakeref)
> +		with_intel_pps_lock(intel_dp, wakeref)
>  			intel_dp->active_pipe = INVALID_PIPE;
>  	}
>  }
> @@ -5817,7 +5817,7 @@ void intel_dp_encoder_flush_work(struct
> drm_encoder *encoder)
>  		 * vdd might still be enabled do to the delayed vdd off.
>  		 * Make sure vdd is actually turned off here.
>  		 */
> -		with_pps_lock(intel_dp, wakeref)
> +		with_intel_pps_lock(intel_dp, wakeref)
>  			edp_panel_vdd_off_sync(intel_dp);
>  	}
> 
> @@ -5845,7 +5845,7 @@ void intel_dp_encoder_suspend(struct
> intel_encoder *intel_encoder)
>  	 * Make sure vdd is actually turned off here.
>  	 */
>  	cancel_delayed_work_sync(&intel_dp->panel_vdd_work);
> -	with_pps_lock(intel_dp, wakeref)
> +	with_intel_pps_lock(intel_dp, wakeref)
>  		edp_panel_vdd_off_sync(intel_dp);
>  }
> 
> @@ -5857,7 +5857,7 @@ void intel_dp_encoder_shutdown(struct
> intel_encoder *intel_encoder)
>  	if (!intel_dp_is_edp(intel_dp))
>  		return;
> 
> -	with_pps_lock(intel_dp, wakeref)
> +	with_intel_pps_lock(intel_dp, wakeref)
>  		wait_panel_power_cycle(intel_dp);
>  }
> 
> @@ -5889,7 +5889,7 @@ void intel_dp_encoder_reset(struct
> drm_encoder *encoder)
>  	    !intel_dp_is_edp(intel_dp))
>  		return;
> 
> -	with_pps_lock(intel_dp, wakeref) {
> +	with_intel_pps_lock(intel_dp, wakeref) {
>  		if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
>  			intel_dp->active_pipe = vlv_active_pipe(intel_dp);
> 
> @@ -6628,7 +6628,7 @@ static bool intel_edp_init_connector(struct
> intel_dp *intel_dp,
>  		return false;
>  	}
> 
> -	with_pps_lock(intel_dp, wakeref) {
> +	with_intel_pps_lock(intel_dp, wakeref) {
>  		intel_dp_init_panel_power_timestamps(intel_dp);
>  		intel_dp_pps_init(intel_dp);
>  		intel_edp_panel_vdd_sanitize(intel_dp);
> @@ -6705,7 +6705,7 @@ static bool intel_edp_init_connector(struct
> intel_dp *intel_dp,
>  	 * vdd might still be enabled do to the delayed vdd off.
>  	 * Make sure vdd is actually turned off here.
>  	 */
> -	with_pps_lock(intel_dp, wakeref)
> +	with_intel_pps_lock(intel_dp, wakeref)
>  		edp_panel_vdd_off_sync(intel_dp);
> 
>  	return false;
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c
> b/drivers/gpu/drm/i915/display/intel_pps.c
> index cfe347076031..9b0c432552b7 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> @@ -16,7 +16,7 @@ static void
>  intel_dp_init_panel_power_sequencer_registers(struct intel_dp *intel_dp,
>  					      bool force_disable_vdd);
> 
> -intel_wakeref_t pps_lock(struct intel_dp *intel_dp)
> +intel_wakeref_t intel_pps_lock(struct intel_dp *intel_dp)
>  {
>  	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
>  	intel_wakeref_t wakeref;
> @@ -33,7 +33,8 @@ intel_wakeref_t pps_lock(struct intel_dp *intel_dp)
>  	return wakeref;
>  }
> 
> -intel_wakeref_t pps_unlock(struct intel_dp *intel_dp, intel_wakeref_t
> wakeref)
> +intel_wakeref_t intel_pps_unlock(struct intel_dp *intel_dp,
> +				 intel_wakeref_t wakeref)
>  {
>  	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
> 
> @@ -633,7 +634,7 @@ void intel_edp_panel_vdd_on(struct intel_dp
> *intel_dp)
>  		return;
> 
>  	vdd = false;
> -	with_pps_lock(intel_dp, wakeref)
> +	with_intel_pps_lock(intel_dp, wakeref)
>  		vdd = edp_panel_vdd_on(intel_dp);
>  	I915_STATE_WARN(!vdd, "[ENCODER:%d:%s] VDD already
> requested on\n",
>  			dp_to_dig_port(intel_dp)->base.base.base.id,
> @@ -688,7 +689,7 @@ void edp_panel_vdd_work(struct work_struct
> *__work)
>  			     struct intel_dp, panel_vdd_work);
>  	intel_wakeref_t wakeref;
> 
> -	with_pps_lock(intel_dp, wakeref) {
> +	with_intel_pps_lock(intel_dp, wakeref) {
>  		if (!intel_dp->want_panel_vdd)
>  			edp_panel_vdd_off_sync(intel_dp);
>  	}
> @@ -789,7 +790,7 @@ void intel_edp_panel_on(struct intel_dp *intel_dp)
>  	if (!intel_dp_is_edp(intel_dp))
>  		return;
> 
> -	with_pps_lock(intel_dp, wakeref)
> +	with_intel_pps_lock(intel_dp, wakeref)
>  		edp_panel_on(intel_dp);
>  }
> 
> @@ -841,7 +842,7 @@ void intel_edp_panel_off(struct intel_dp *intel_dp)
>  	if (!intel_dp_is_edp(intel_dp))
>  		return;
> 
> -	with_pps_lock(intel_dp, wakeref)
> +	with_intel_pps_lock(intel_dp, wakeref)
>  		edp_panel_off(intel_dp);
>  }
> 
> @@ -859,7 +860,7 @@ void _intel_edp_backlight_on(struct intel_dp
> *intel_dp)
>  	 */
>  	wait_backlight_on(intel_dp);
> 
> -	with_pps_lock(intel_dp, wakeref) {
> +	with_intel_pps_lock(intel_dp, wakeref) {
>  		i915_reg_t pp_ctrl_reg = _pp_ctrl_reg(intel_dp);
>  		u32 pp;
> 
> @@ -880,7 +881,7 @@ void _intel_edp_backlight_off(struct intel_dp
> *intel_dp)
>  	if (!intel_dp_is_edp(intel_dp))
>  		return;
> 
> -	with_pps_lock(intel_dp, wakeref) {
> +	with_intel_pps_lock(intel_dp, wakeref) {
>  		i915_reg_t pp_ctrl_reg = _pp_ctrl_reg(intel_dp);
>  		u32 pp;
> 
> @@ -907,7 +908,7 @@ void intel_edp_backlight_power(struct
> intel_connector *connector, bool enable)
>  	bool is_enabled;
> 
>  	is_enabled = false;
> -	with_pps_lock(intel_dp, wakeref)
> +	with_intel_pps_lock(intel_dp, wakeref)
>  		is_enabled = ilk_get_pp_control(intel_dp) &
> EDP_BLC_ENABLE;
>  	if (is_enabled == enable)
>  		return;
> @@ -1057,7 +1058,7 @@ bool intel_edp_have_power(struct intel_dp
> *intel_dp)
>  	intel_wakeref_t wakeref;
>  	bool have_power = false;
> 
> -	with_pps_lock(intel_dp, wakeref) {
> +	with_intel_pps_lock(intel_dp, wakeref) {
>  		have_power = edp_have_panel_power(intel_dp) &&
> 
> edp_have_panel_vdd(intel_dp);
>  	}
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.h
> b/drivers/gpu/drm/i915/display/intel_pps.h
> index 76d5cc565501..f44e6ce9e8c1 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.h
> +++ b/drivers/gpu/drm/i915/display/intel_pps.h
> @@ -16,11 +16,11 @@ struct intel_crtc_state;  struct intel_dp;  struct
> intel_encoder;
> 
> -intel_wakeref_t pps_lock(struct intel_dp *intel_dp); -intel_wakeref_t
> pps_unlock(struct intel_dp *intel_dp, intel_wakeref_t wakeref);
> +intel_wakeref_t intel_pps_lock(struct intel_dp *intel_dp);
> +intel_wakeref_t intel_pps_unlock(struct intel_dp *intel_dp,
> +intel_wakeref_t wakeref);
> 
> -#define with_pps_lock(dp, wf)
> 	\
> -	for ((wf) = pps_lock(dp); (wf); (wf) = pps_unlock((dp), (wf)))
> +#define with_intel_pps_lock(dp, wf)
> 	\
> +	for ((wf) = intel_pps_lock(dp); (wf); (wf) = intel_pps_unlock((dp),
> +(wf)))
> 
>  void intel_dp_check_edp(struct intel_dp *intel_dp);  void
> _intel_edp_backlight_on(struct intel_dp *intel_dp);
> --
> 2.20.1
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
