Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BA7723F9857
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Aug 2021 13:07:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F06676E925;
	Fri, 27 Aug 2021 11:07:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70CC56E91F
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Aug 2021 11:07:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10088"; a="278954062"
X-IronPort-AV: E=Sophos;i="5.84,356,1620716400"; d="scan'208";a="278954062"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2021 04:07:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,356,1620716400"; d="scan'208";a="508706160"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga001.jf.intel.com with SMTP; 27 Aug 2021 04:07:11 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 27 Aug 2021 14:07:10 +0300
Date: Fri, 27 Aug 2021 14:07:10 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org,
 Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <YSjHXg7gViK8n2Ib@intel.com>
References: <20210826141830.889-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210826141830.889-1-jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915: remove unused i915->active_pipes
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

On Thu, Aug 26, 2021 at 05:18:30PM +0300, Jani Nikula wrote:
> Apparently the last reader of i915->active_pipes was removed with commit
> ef79d62b5ce5 ("drm/i915: Encapsulate dbuf state handling harder"), and
> now it's only ever written to. Remove it completely.
> 
> Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 4 +---
>  drivers/gpu/drm/i915/i915_drv.h              | 6 ------
>  2 files changed, 1 insertion(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index fe5ad599c218..a692971b0209 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -3781,7 +3781,6 @@ static void intel_crtc_disable_noatomic(struct intel_crtc *crtc,
>  
>  	intel_display_power_put_all_in_set(dev_priv, &crtc->enabled_power_domains);
>  
> -	dev_priv->active_pipes &= ~BIT(pipe);
>  	cdclk_state->min_cdclk[pipe] = 0;
>  	cdclk_state->min_voltage_level[pipe] = 0;
>  	cdclk_state->active_pipes &= ~BIT(pipe);
> @@ -12351,8 +12350,7 @@ static void intel_modeset_readout_hw_state(struct drm_device *dev)
>  			    enableddisabled(crtc_state->hw.active));
>  	}
>  
> -	dev_priv->active_pipes = cdclk_state->active_pipes =
> -		dbuf_state->active_pipes = active_pipes;
> +	cdclk_state->active_pipes = dbuf_state->active_pipes = active_pipes;
>  
>  	readout_plane_state(dev_priv);
>  
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index f64ba566fe8c..033031169d74 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1015,12 +1015,6 @@ struct drm_i915_private {
>  
>  	struct list_head global_obj_list;
>  
> -	/*
> -	 * For reading active_pipes holding any crtc lock is
> -	 * sufficient, for writing must hold all of them.
> -	 */
> -	u8 active_pipes;
> -
>  	struct i915_wa_list gt_wa_list;
>  
>  	struct i915_frontbuffer_tracking fb_tracking;
> -- 
> 2.20.1

-- 
Ville Syrjälä
Intel
