Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E7CCA68A355
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Feb 2023 21:01:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A1A910E0C9;
	Fri,  3 Feb 2023 20:01:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15F6C10E0C9
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Feb 2023 20:00:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675454460; x=1706990460;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=rS7S6qHRlDS/NNfriuubNyoZhyCZivPRkviwx6amnOE=;
 b=fpXUMrfkjwX4mm3G4NsjoyGsakBiDJl9zvdBFgKliDBgc6KfR4SmT7YN
 FQqJmmmTfutuWP0B+qVWbIidKvd+9VMytYW8VtCZsglRzVA3BCadlPbY0
 GyWVJAm5O3pgsEY5hEVd3MQEQtvjZHC6n2Jvrih5PySSlq4dzmC/pidoR
 5+lkl9KrH+5rhywn7KnUMcbbmqjUDPsIkbnk92Kd0Z8/y6w2VLgNZg9l7
 8wZKHnIUMVk2MxE1EwfCofAp5GZ12U34YND+mjZs3DsTgKZBBy0+Rg7tm
 IzthDpVun9M4Dln2NIN3HmJiZesAa39TQp1GLBiJnoGfBH0d+oQgUgsPk Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10610"; a="391233945"
X-IronPort-AV: E=Sophos;i="5.97,271,1669104000"; d="scan'208";a="391233945"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2023 12:00:56 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10610"; a="911266034"
X-IronPort-AV: E=Sophos;i="5.97,271,1669104000"; d="scan'208";a="911266034"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2023 12:00:55 -0800
Date: Fri, 3 Feb 2023 22:00:52 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <Y91n9NfNyV9F0dWw@ideak-desk.fi.intel.com>
References: <cover.1675370801.git.jani.nikula@intel.com>
 <2bff992c6db17dabe4470d3babf1fc1144ad4d83.1675370801.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2bff992c6db17dabe4470d3babf1fc1144ad4d83.1675370801.git.jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [RFC 1/3] drm/i915/power: move dc state members to
 struct i915_power_domains
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Feb 02, 2023 at 10:47:46PM +0200, Jani Nikula wrote:
> There's only one reference to the struct intel_dmc members dc_state,
> target_dc_state, and allowed_dc_mask within intel_dmc.c, begging the
> question why they are under struct intel_dmc to begin with.
> 
> Moreover, the only references to i915->display.dmc outside of
> intel_dmc.c are to these members.
> 
> They don't belong. Move them from struct intel_dmc to struct
> i915_power_domains, which seems like a more suitable place.
> 
> Cc: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
> [...]
>
> @@ -481,7 +482,7 @@ void intel_dmc_load_program(struct drm_i915_private *dev_priv)
>  		}
>  	}
>  
> -	dev_priv->display.dmc.dc_state = 0;
> +	power_domains->dc_state = 0;

This could be dropped as well, as it's already inited by the time the
function is called.

I agree with making struct intel_dmc internal to intel_dmc.c. Since DC
state is a functionality provided by the firmware (except of DC9), an
alternative would be to move/add get/set/assert etc. DC state functions
to intel_dmc.c instead and call these from intel_display_power*.c.

>  
>  	gen9_set_dc_state_debugmask(dev_priv);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.h b/drivers/gpu/drm/i915/display/intel_dmc.h
> index 88eae74dbcf2..da8ba246013e 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.h
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.h
> @@ -40,9 +40,6 @@ struct intel_dmc {
>  		bool present;
>  	} dmc_info[DMC_FW_MAX];
>  
> -	u32 dc_state;
> -	u32 target_dc_state;
> -	u32 allowed_dc_mask;
>  	intel_wakeref_t wakeref;
>  };
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 2954759e9d12..cf13580af34a 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -702,6 +702,7 @@ tgl_dc3co_exitline_compute_config(struct intel_dp *intel_dp,
>  {
>  	const u32 crtc_vdisplay = crtc_state->uapi.adjusted_mode.crtc_vdisplay;
>  	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
> +	struct i915_power_domains *power_domains = &dev_priv->display.power.domains;
>  	u32 exit_scanlines;
>  
>  	/*
> @@ -718,7 +719,7 @@ tgl_dc3co_exitline_compute_config(struct intel_dp *intel_dp,
>  	if (crtc_state->enable_psr2_sel_fetch)
>  		return;
>  
> -	if (!(dev_priv->display.dmc.allowed_dc_mask & DC_STATE_EN_DC3CO))
> +	if (!(power_domains->allowed_dc_mask & DC_STATE_EN_DC3CO))
>  		return;
>  
>  	if (!dc3co_is_pipe_port_compatible(intel_dp, crtc_state))
> -- 
> 2.34.1
> 
