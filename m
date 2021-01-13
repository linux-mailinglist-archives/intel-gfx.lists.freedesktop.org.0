Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 50F282F4AC9
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Jan 2021 12:58:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8E086E80B;
	Wed, 13 Jan 2021 11:58:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43F036E80B
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Jan 2021 11:58:42 +0000 (UTC)
IronPort-SDR: D8nk6mDOZK7vQs+Pkv8fB33H+AOaT8lRLTJpBeXLfT8cVrcfrhG3tyAISwaiuWocXJ2fAWVBoi
 6LQx1DaPYNag==
X-IronPort-AV: E=McAfee;i="6000,8403,9862"; a="157373698"
X-IronPort-AV: E=Sophos;i="5.79,344,1602572400"; d="scan'208";a="157373698"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2021 03:58:41 -0800
IronPort-SDR: 4/pv3rzib3LHApjQGi+Y3cR8PLxuUcyEX4qSJVGODetefhG/SboDQQt09Ogn1A+7QGeRgqLNMC
 T8eWn3fyiqjA==
X-IronPort-AV: E=Sophos;i="5.79,344,1602572400"; d="scan'208";a="353438094"
Received: from unknown (HELO intel.com) ([10.223.74.179])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2021 03:58:40 -0800
Date: Wed, 13 Jan 2021 17:14:08 +0530
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20210113114405.GP11717@intel.com>
References: <cover.1610127741.git.jani.nikula@intel.com>
 <031b26bf4a680cf3a436d368108380064b8b541f.1610127741.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <031b26bf4a680cf3a436d368108380064b8b541f.1610127741.git.jani.nikula@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v2 14/17] drm/i915/pps: refactor init
 abstractions
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2021-01-08 at 19:44:22 +0200, Jani Nikula wrote:
> Once you realize there is no need to hold the pps mutex when calling
> pps_init_timestamps() in intel_pps_init(), we can reuse
> intel_pps_encoder_reset() which has the same code.
> 
> Since intel_dp_pps_init() is only called from one place now, move it
> inline to remove one "init" function altogether.
> 
> Finally, remove some initialization from
> vlv_initial_power_sequencer_setup() and do it in the caller to highlight
> the similarity, not the difference, in the platforms.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_pps.c | 33 +++++++-----------------
>  1 file changed, 10 insertions(+), 23 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
> index 58eff6289d12..b4d026ca3313 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> @@ -305,9 +305,6 @@ vlv_initial_power_sequencer_setup(struct intel_dp *intel_dp)
>  		    dig_port->base.base.base.id,
>  		    dig_port->base.base.name,
>  		    pipe_name(intel_dp->pps_pipe));
> -
> -	pps_init_delays(intel_dp);
> -	pps_init_registers(intel_dp, false);
>  }
>  
>  void intel_pps_reset_all(struct drm_i915_private *dev_priv)
> @@ -1342,20 +1339,9 @@ static void pps_init_registers(struct intel_dp *intel_dp, bool force_disable_vdd
>  		    (intel_de_read(dev_priv, regs.pp_ctrl) & BXT_POWER_CYCLE_DELAY_MASK));
>  }
>  
> -static void intel_dp_pps_init(struct intel_dp *intel_dp)
> -{
> -	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
> -
> -	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
> -		vlv_initial_power_sequencer_setup(intel_dp);
> -	} else {
> -		pps_init_delays(intel_dp);
> -		pps_init_registers(intel_dp, false);
> -	}
> -}
> -
>  void intel_pps_encoder_reset(struct intel_dp *intel_dp)
>  {
> +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>  	intel_wakeref_t wakeref;
>  
>  	if (!intel_dp_is_edp(intel_dp))
> @@ -1366,20 +1352,21 @@ void intel_pps_encoder_reset(struct intel_dp *intel_dp)
>  		 * Reinit the power sequencer, in case BIOS did something nasty
		IMHO above comment would need a improvement, or nuke it ?
		as intel_pps_encoder_reset() will also get called from intel_pps_init()	
		unlike only while resuming from suspend.
		Thanks,
		Anshuman Gupta.
>  		 * with it.
>  		 */
> -		intel_dp_pps_init(intel_dp);
> +		if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
> +			vlv_initial_power_sequencer_setup(intel_dp);
> +
> +		pps_init_delays(intel_dp);
> +		pps_init_registers(intel_dp, false);
> +
>  		intel_pps_vdd_sanitize(intel_dp);
>  	}
>  }
>  
>  void intel_pps_init(struct intel_dp *intel_dp)
>  {
> -	intel_wakeref_t wakeref;
> -
>  	INIT_DELAYED_WORK(&intel_dp->panel_vdd_work, edp_panel_vdd_work);
>  
> -	with_intel_pps_lock(intel_dp, wakeref) {
> -		pps_init_timestamps(intel_dp);
> -		intel_dp_pps_init(intel_dp);
> -		intel_pps_vdd_sanitize(intel_dp);
> -	}
> +	pps_init_timestamps(intel_dp);
> +
> +	intel_pps_encoder_reset(intel_dp);
>  }
> -- 
> 2.20.1
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
