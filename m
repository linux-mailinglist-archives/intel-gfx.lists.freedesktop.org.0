Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 04CAB2E6ED5
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Dec 2020 09:08:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0487892D5;
	Tue, 29 Dec 2020 08:08:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B926892D5
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Dec 2020 08:08:14 +0000 (UTC)
IronPort-SDR: vfh52NLtBw3BTiNkaNHSJZkfcj9o/Adhs6wmo/nSAsRT9ArFjDyxRgOnRRxK92iV+ewEdVVv5B
 C/hHAioNfOBw==
X-IronPort-AV: E=McAfee;i="6000,8403,9848"; a="238023669"
X-IronPort-AV: E=Sophos;i="5.78,457,1599548400"; d="scan'208";a="238023669"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Dec 2020 00:08:13 -0800
IronPort-SDR: hm7p+q4468pPXUmb2wQ/fGLE+1hVoPrcnsp7H/3A/BLppC5ZkD9Mv7osSWvt35PMGq5HukmtrH
 KzDRV+8wuVAg==
X-IronPort-AV: E=Sophos;i="5.78,457,1599548400"; d="scan'208";a="347300605"
Received: from unknown (HELO intel.com) ([10.223.74.179])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Dec 2020 00:08:12 -0800
Date: Tue, 29 Dec 2020 13:23:21 +0530
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20201229075320.GH11717@intel.com>
References: <cover.1608648128.git.jani.nikula@intel.com>
 <74cf8c0580f8efcebb7a65c31a3491893639ae44.1608648128.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <74cf8c0580f8efcebb7a65c31a3491893639ae44.1608648128.git.jani.nikula@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 10/13] drm/i915/pps: rename
 intel_power_sequencer_reset to intel_pps_reset_all
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

On 2020-12-22 at 20:19:50 +0530, Jani Nikula wrote:
> Follow the usual naming pattern for functions. "reset all" because it
> iterates over all DP encoders.
Looks good to me.
Reviewed-by: Anshuman Gupta <anshuman.gupta@intel.com>
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_power.c | 4 ++--
>  drivers/gpu/drm/i915/display/intel_pps.c           | 5 ++---
>  drivers/gpu/drm/i915/display/intel_pps.h           | 2 +-
>  3 files changed, 5 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index a11bd8213df4..c11c37c65d86 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -936,7 +936,7 @@ static void bxt_enable_dc9(struct drm_i915_private *dev_priv)
>  	 * because PPS registers are always on.
>  	 */
>  	if (!HAS_PCH_SPLIT(dev_priv))
> -		intel_power_sequencer_reset(dev_priv);
> +		intel_pps_reset_all(dev_priv);
>  	gen9_set_dc_state(dev_priv, DC_STATE_EN_DC9);
>  }
>  
> @@ -1446,7 +1446,7 @@ static void vlv_display_power_well_deinit(struct drm_i915_private *dev_priv)
>  	/* make sure we're done processing display irqs */
>  	intel_synchronize_irq(dev_priv);
>  
> -	intel_power_sequencer_reset(dev_priv);
> +	intel_pps_reset_all(dev_priv);
>  
>  	/* Prevent us from re-enabling polling on accident in late suspend */
>  	if (!dev_priv->drm.dev->power.is_suspended)
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
> index dfd6722bc40e..ceb6de9e7aff 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> @@ -22,8 +22,7 @@ intel_wakeref_t intel_pps_lock(struct intel_dp *intel_dp)
>  	intel_wakeref_t wakeref;
>  
>  	/*
> -	 * See intel_power_sequencer_reset() why we need
> -	 * a power domain reference here.
> +	 * See intel_pps_reset_all() why we need a power domain reference here.
>  	 */
>  	wakeref = intel_display_power_get(dev_priv,
>  					  intel_aux_power_domain(dp_to_dig_port(intel_dp)));
> @@ -316,7 +315,7 @@ vlv_initial_power_sequencer_setup(struct intel_dp *intel_dp)
>  	intel_dp_init_panel_power_sequencer_registers(intel_dp, false);
>  }
>  
> -void intel_power_sequencer_reset(struct drm_i915_private *dev_priv)
> +void intel_pps_reset_all(struct drm_i915_private *dev_priv)
>  {
>  	struct intel_encoder *encoder;
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.h b/drivers/gpu/drm/i915/display/intel_pps.h
> index 8dda282abd42..451d5125b2b7 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.h
> +++ b/drivers/gpu/drm/i915/display/intel_pps.h
> @@ -42,7 +42,7 @@ void wait_panel_power_cycle(struct intel_dp *intel_dp);
>  
>  void intel_pps_init(struct intel_dp *intel_dp);
>  void intel_pps_reinit(struct intel_dp *intel_dp);
> -void intel_power_sequencer_reset(struct drm_i915_private *i915);
> +void intel_pps_reset_all(struct drm_i915_private *i915);
>  
>  void vlv_init_panel_power_sequencer(struct intel_encoder *encoder,
>  				    const struct intel_crtc_state *crtc_state);
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
