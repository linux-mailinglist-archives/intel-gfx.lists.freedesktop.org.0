Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 959E8588885
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Aug 2022 10:13:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2D3410F260;
	Wed,  3 Aug 2022 08:13:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44CBD11A441
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Aug 2022 08:13:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659514423; x=1691050423;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=g4uN+fYTrTGh8FHJT6BFuQB5v1CcUsFGo8EhSTFQ4j4=;
 b=jLpgEkkMzRE0aD++Q0y2lBQbWbkMqp0wGwulHo5Gia1ZmfRFRMNpmp7z
 H48tZkF4aVQR8K9jfz1d83PYTPkZYrwMNmE7hEZGdx8XpT79TzvmFa0md
 zgzzMMwyIYU5QNO77UFrM+G/jcPg6HzCCByhYQ2nDIAH+LCkvP/9vKYzT
 +AL6GskiKM4zY1z9j9DH7S0yNfDslSNe7GhdqRTDwH71y7fEWL0QUjQXI
 CezAZ0MCuN/mqXftClKfm8ayD0aLxgI49WKu6J+vFy3zGaVZrhnN8O7xz
 nwaQO77eGIDBOMMP0P/+83kIrudH8yG6WWlt0tbA7u3BnVtF3doVnpkjz g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10427"; a="375914642"
X-IronPort-AV: E=Sophos;i="5.93,213,1654585200"; d="scan'208";a="375914642"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2022 01:13:42 -0700
X-IronPort-AV: E=Sophos;i="5.93,213,1654585200"; d="scan'208";a="661981412"
Received: from gpanagop-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.61.119])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2022 01:13:40 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Animesh Manna <animesh.manna@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20220803052944.28069-1-animesh.manna@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220803052944.28069-1-animesh.manna@intel.com>
Date: Wed, 03 Aug 2022 11:13:38 +0300
Message-ID: <87les5eoct.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/pps: added get_pps_idx() hook as
 part of pps_get_register() cleanup
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

On Wed, 03 Aug 2022, Animesh Manna <animesh.manna@intel.com> wrote:
> To support dual LFP two instances of pps added from display gen12 onwards.
> Few older platform like VLV also has dual pps support but handling is
> different. So added separate hook get_pps_idx() to formulate which pps
> instance to used for a soecific LFP on a specific platform.
>
> Simplified pps_get_register() which use get_pps_idx() hook to derive the
> pps instance and get_pps_idx() will be initialized at pps_init().
>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bios.c     |  5 ++++
>  drivers/gpu/drm/i915/display/intel_bios.h     |  1 +
>  .../drm/i915/display/intel_display_types.h    |  2 ++
>  drivers/gpu/drm/i915/display/intel_pps.c      | 25 ++++++++++++++-----
>  4 files changed, 27 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> index 51dde5bfd956..42315615a728 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -611,6 +611,11 @@ static int opregion_get_panel_type(struct drm_i915_private *i915,
>  	return intel_opregion_get_panel_type(i915);
>  }
>  
> +bool intel_bios_is_lfp2(struct intel_encoder *encoder)
> +{
> +	return encoder->devdata && encoder->devdata->child.handle == DEVICE_HANDLE_LFP2;
> +}

AFAICS the encoder never really needs to know whether it's "lfp1" or
"lfp2". It needs to know the pps controller number.

> +
>  static int vbt_get_panel_type(struct drm_i915_private *i915,
>  			      const struct intel_bios_encoder_data *devdata,
>  			      const struct edid *edid)
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i915/display/intel_bios.h
> index e47582b0de0a..aea72a87ea2c 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.h
> +++ b/drivers/gpu/drm/i915/display/intel_bios.h
> @@ -251,6 +251,7 @@ bool intel_bios_is_lspcon_present(const struct drm_i915_private *i915,
>  				  enum port port);
>  bool intel_bios_is_lane_reversal_needed(const struct drm_i915_private *i915,
>  					enum port port);
> +bool intel_bios_is_lfp2(struct intel_encoder *encoder);
>  enum aux_ch intel_bios_port_aux_ch(struct drm_i915_private *dev_priv, enum port port);
>  bool intel_bios_get_dsc_params(struct intel_encoder *encoder,
>  			       struct intel_crtc_state *crtc_state,
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 0da9b208d56e..95f71a572b07 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1723,6 +1723,8 @@ struct intel_dp {
>  
>  	/* When we last wrote the OUI for eDP */
>  	unsigned long last_oui_write;
> +
> +	int (*get_pps_idx)(struct intel_dp *intel_dp);

Making this a function pointer should be a separate step. Please don't
try to do too many things at once. Rule of thumb, one change per patch.

Also, this should be placed near the other function pointer members in
struct intel_dp.

>  };
>  
>  enum lspcon_vendor {
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
> index 1b21a341962f..c9cdb302d318 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> @@ -231,6 +231,17 @@ bxt_power_sequencer_idx(struct intel_dp *intel_dp)
>  	return backlight_controller;
>  }
>  
> +static int
> +gen12_power_sequencer_idx(struct intel_dp *intel_dp)
> +{
> +	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
> +
> +	if (intel_bios_is_lfp2(encoder))
> +		return 1;

This is actually not how this works. The bxt_power_sequencer_idx()
matches bspec 20149: "PWM and PPS are assumed to be aligned to be from
same block and not mismatch" i.e. the backlight controller id and the
pps id are the same. There are no requirements to map lfp# and pps
controller like this, even if it might be true in the common case.

The problem is we need the information *before* we call
intel_bios_init_panel().

It's a catch-22. We need the pps id to read the panel EDID, and we need
the panel EDID to choose the correct panel type in VBT, which we need to
get the pps id from the VBT.

This is highlighted in [1]. The 2nd eDP (which is not even physically
present, only in the VBT, *sigh*) screws up the PPS for the 1st during
init.

I think Ville had some ideas here.


BR,
Jani.


[1] https://gitlab.freedesktop.org/drm/intel/-/issues/5531


> +
> +	return 0;
> +}
> +
>  typedef bool (*vlv_pipe_check)(struct drm_i915_private *dev_priv,
>  			       enum pipe pipe);
>  
> @@ -361,15 +372,10 @@ static void intel_pps_get_registers(struct intel_dp *intel_dp,
>  				    struct pps_registers *regs)
>  {
>  	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
> -	int pps_idx = 0;
> +	int pps_idx = intel_dp->get_pps_idx(intel_dp);
>  
>  	memset(regs, 0, sizeof(*regs));
>  
> -	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
> -		pps_idx = bxt_power_sequencer_idx(intel_dp);
> -	else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
> -		pps_idx = vlv_power_sequencer_pipe(intel_dp);
> -
>  	regs->pp_ctrl = PP_CONTROL(pps_idx);
>  	regs->pp_stat = PP_STATUS(pps_idx);
>  	regs->pp_on = PP_ON_DELAYS(pps_idx);
> @@ -1431,6 +1437,13 @@ void intel_pps_init(struct intel_dp *intel_dp)
>  	intel_dp->pps.initializing = true;
>  	INIT_DELAYED_WORK(&intel_dp->pps.panel_vdd_work, edp_panel_vdd_work);
>  
> +	if (IS_GEMINILAKE(i915) || IS_BROXTON(i915))
> +		intel_dp->get_pps_idx = bxt_power_sequencer_idx;
> +	else if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
> +		intel_dp->get_pps_idx = vlv_power_sequencer_pipe;
> +	else if (DISPLAY_VER(i915) >= 12)
> +		intel_dp->get_pps_idx = gen12_power_sequencer_idx;
> +
>  	pps_init_timestamps(intel_dp);
>  
>  	with_intel_pps_lock(intel_dp, wakeref) {

-- 
Jani Nikula, Intel Open Source Graphics Center
