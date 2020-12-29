Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DD8502E6EAF
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Dec 2020 08:14:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF36F892A7;
	Tue, 29 Dec 2020 07:14:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6506892A7
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Dec 2020 07:14:18 +0000 (UTC)
IronPort-SDR: fWN+61gBXm/xier+2bSZFbV9oc0QlC4LAFcaQcE2DBI+Av/NOy6gXGdy05mto5wmYfEo5KDVak
 YTyRxxTmGszg==
X-IronPort-AV: E=McAfee;i="6000,8403,9848"; a="175692236"
X-IronPort-AV: E=Sophos;i="5.78,457,1599548400"; d="scan'208";a="175692236"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Dec 2020 23:14:18 -0800
IronPort-SDR: pqZEJnthKdTITnOuJ931kWJqUHKgW1rhHTKL2aCdPg4ixn1DIyl2E/l0mRunOSkg7J+sDtHx0h
 SUIaUGQhkvmQ==
X-IronPort-AV: E=Sophos;i="5.78,457,1599548400"; d="scan'208";a="460016491"
Received: from unknown (HELO intel.com) ([10.223.74.179])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Dec 2020 23:14:17 -0800
Date: Tue, 29 Dec 2020 12:29:25 +0530
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20201229065925.GF11717@intel.com>
References: <cover.1608648128.git.jani.nikula@intel.com>
 <aa645d7124f995fda140ec594de7203647a784fa.1608648128.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aa645d7124f995fda140ec594de7203647a784fa.1608648128.git.jani.nikula@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 08/13] drm/i915/pps: abstract
 intel_pps_reinit()
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2020-12-22 at 20:19:48 +0530, Jani Nikula wrote:
> Add a "reinit" call to hide some more pps functions, and clean up the
> callers. A minor functional change is not holding the pps lock across
> the whole operation in intel_dp_encoder_reset, but instead doing it in
> two steps.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Looks good to me.
Reviewed-by: Anshuman Gupta <anshuman.gupta@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c  | 20 +++++---------------
>  drivers/gpu/drm/i915/display/intel_pps.c | 21 +++++++++++++++++++--
>  drivers/gpu/drm/i915/display/intel_pps.h |  3 +--
>  3 files changed, 25 insertions(+), 19 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index de2642d5be3b..334ba1775cd3 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5859,30 +5859,20 @@ void intel_dp_encoder_reset(struct drm_encoder *encoder)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(encoder->dev);
>  	struct intel_dp *intel_dp = enc_to_intel_dp(to_intel_encoder(encoder));
> -	intel_wakeref_t wakeref;
>  
>  	if (!HAS_DDI(dev_priv))
>  		intel_dp->DP = intel_de_read(dev_priv, intel_dp->output_reg);
>  
>  	intel_dp->reset_link_params = true;
>  
> -	if (!IS_VALLEYVIEW(dev_priv) && !IS_CHERRYVIEW(dev_priv) &&
> -	    !intel_dp_is_edp(intel_dp))
> -		return;
> +	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
> +		intel_wakeref_t wakeref;
>  
> -	with_intel_pps_lock(intel_dp, wakeref) {
> -		if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
> +		with_intel_pps_lock(intel_dp, wakeref)
>  			intel_dp->active_pipe = vlv_active_pipe(intel_dp);
> -
> -		if (intel_dp_is_edp(intel_dp)) {
> -			/*
> -			 * Reinit the power sequencer, in case BIOS did
> -			 * something nasty with it.
> -			 */
> -			intel_dp_pps_init(intel_dp);
> -			intel_pps_vdd_sanitize(intel_dp);
> -		}
>  	}
> +
> +	intel_pps_reinit(intel_dp);
>  }
>  
>  static int intel_modeset_tile_group(struct intel_atomic_state *state,
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
> index 651c79ce4bdd..3e62d1450682 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> @@ -1043,7 +1043,7 @@ void vlv_init_panel_power_sequencer(struct intel_encoder *encoder,
>  	intel_dp_init_panel_power_sequencer_registers(intel_dp, true);
>  }
>  
> -void intel_pps_vdd_sanitize(struct intel_dp *intel_dp)
> +static void intel_pps_vdd_sanitize(struct intel_dp *intel_dp)
>  {
>  	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
>  	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
> @@ -1340,7 +1340,7 @@ intel_dp_init_panel_power_sequencer_registers(struct intel_dp *intel_dp,
>  		    (intel_de_read(dev_priv, regs.pp_ctrl) & BXT_POWER_CYCLE_DELAY_MASK));
>  }
>  
> -void intel_dp_pps_init(struct intel_dp *intel_dp)
> +static void intel_dp_pps_init(struct intel_dp *intel_dp)
>  {
>  	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
>  
> @@ -1352,6 +1352,23 @@ void intel_dp_pps_init(struct intel_dp *intel_dp)
>  	}
>  }
>  
> +void intel_pps_reinit(struct intel_dp *intel_dp)
> +{
> +	intel_wakeref_t wakeref;
> +
> +	if (!intel_dp_is_edp(intel_dp))
> +		return;
> +
> +	with_intel_pps_lock(intel_dp, wakeref) {
> +		/*
> +		 * Reinit the power sequencer, in case BIOS did something nasty
> +		 * with it.
> +		 */
> +		intel_dp_pps_init(intel_dp);
> +		intel_pps_vdd_sanitize(intel_dp);
> +	}
> +}
> +
>  void intel_pps_init(struct intel_dp *intel_dp)
>  {
>  	intel_wakeref_t wakeref;
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.h b/drivers/gpu/drm/i915/display/intel_pps.h
> index 53c0fafd1440..4780b59a59df 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.h
> +++ b/drivers/gpu/drm/i915/display/intel_pps.h
> @@ -32,7 +32,6 @@ void intel_pps_vdd_off_unlocked(struct intel_dp *intel_dp, bool sync);
>  void intel_pps_on_unlocked(struct intel_dp *intel_dp);
>  void intel_pps_off_unlocked(struct intel_dp *intel_dp);
>  
> -void intel_pps_vdd_sanitize(struct intel_dp *intel_dp);
>  void intel_pps_vdd_on(struct intel_dp *intel_dp);
>  void intel_pps_on(struct intel_dp *intel_dp);
>  void intel_pps_off(struct intel_dp *intel_dp);
> @@ -42,7 +41,7 @@ bool intel_pps_have_power(struct intel_dp *intel_dp);
>  void wait_panel_power_cycle(struct intel_dp *intel_dp);
>  
>  void intel_pps_init(struct intel_dp *intel_dp);
> -void intel_dp_pps_init(struct intel_dp *intel_dp);
> +void intel_pps_reinit(struct intel_dp *intel_dp);
>  void intel_power_sequencer_reset(struct drm_i915_private *i915);
>  
>  void vlv_init_panel_power_sequencer(struct intel_encoder *encoder,
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
