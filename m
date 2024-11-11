Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E1259C42D7
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2024 17:43:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC1F010E2F6;
	Mon, 11 Nov 2024 16:43:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="R8qch0cd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4D6310E2EC;
 Mon, 11 Nov 2024 16:43:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731343398; x=1762879398;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=vb4zenMd5zMqtBpstaUJqmi8tEkdLKiVgRneJww9kBk=;
 b=R8qch0cd3+paRb4QYWQSc4qwtMkCwYZ2lP/2myyvTnUxALc/k/vShpI9
 dRT43CeYObrgWWkzn9qOxSU30eMeZ2kJRLNVjy9KW6bzLh5iHCg/j/uyR
 nWfMPfLKa4TbjWQOwufUs1Gh3ZlZKItNo0vYqJ/aXriz3m/8T8kBU4n0p
 zJub9oQAQ9Cg4K4yDTV1ZCDbfLD506wqW9qIBLT63PJFYKzigBUeGm6+S
 PopYbn0Wt7C9HahPb/FJA8jBfvFbFyFwSlAWQjkOXx7elpScZ0nbILpF2
 fN/GK94EcaJl/HYqWUti/xhcM9gJsL2bMUmocb3/tumWbZ/f2k9eU7LTo g==;
X-CSE-ConnectionGUID: uY7YFlxgTlSu2g/V5Ssgkg==
X-CSE-MsgGUID: 8gwJX8CKTgmDMSzTkVGbkg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="31311447"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="31311447"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 08:43:17 -0800
X-CSE-ConnectionGUID: TRCTD0VBS9OfSnLzKm9rbg==
X-CSE-MsgGUID: cr8z0IO+QAWhbyDMHztXDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,145,1728975600"; d="scan'208";a="124559119"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 08:43:16 -0800
Date: Mon, 11 Nov 2024 18:43:50 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 ville.syrjala@linux.intel.com
Subject: Re: [PATCH 8/8] drm/i915/dp: add comments about hooks called from
 MST stream encoders
Message-ID: <ZzI0RsSER8nIcI4N@ideak-desk.fi.intel.com>
References: <cover.1731011435.git.jani.nikula@intel.com>
 <80f8682fbc304ccf673af20abe562ce5aedb9219.1731011435.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <80f8682fbc304ccf673af20abe562ce5aedb9219.1731011435.git.jani.nikula@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Nov 07, 2024 at 10:32:21PM +0200, Jani Nikula wrote:
> It would be best to have self-explanatory code, but lacking that, add
> some comments about the way the DDI encoder hooks get called from DP MST
> stream encoders.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 51 ++++++++++++++++++------
>  1 file changed, 38 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index c973b70185cf..9965d7603d6c 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -2920,6 +2920,24 @@ static void intel_ddi_pre_enable_hdmi(struct intel_atomic_state *state,
>  				 crtc_state, conn_state);
>  }
>  
> +/*
> + * Note: Also called from the ->pre_enable of the first active MST stream
> + * encoder on its primary encoder.
> + *
> + * When called from DP MST code:
> + *
> + * - conn_state will be NULL
> + *
> + * - encoder will be the primary encoder (i.e. mst->primary)
> + *
> + * - the main connector associated with this port won't be active or linked to a
> + *   crtc
> + *
> + * - crtc_state will be the state of the first stream to be activated on this
> + *   port, and it may not be the same stream that will be deactivated last, but
> + *   each stream should have a state that is identical when it comes to the DP
> + *   link parameteres
> + */
>  static void intel_ddi_pre_enable(struct intel_atomic_state *state,
>  				 struct intel_encoder *encoder,
>  				 const struct intel_crtc_state *crtc_state,
> @@ -2929,19 +2947,6 @@ static void intel_ddi_pre_enable(struct intel_atomic_state *state,
>  	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>  	enum pipe pipe = crtc->pipe;
>  
> -	/*
> -	 * When called from DP MST code:
> -	 * - conn_state will be NULL
> -	 * - encoder will be the main encoder (ie. mst->primary)
> -	 * - the main connector associated with this port
> -	 *   won't be active or linked to a crtc
> -	 * - crtc_state will be the state of the first stream to
> -	 *   be activated on this port, and it may not be the same
> -	 *   stream that will be deactivated last, but each stream
> -	 *   should have a state that is identical when it comes to
> -	 *   the DP link parameteres
> -	 */
> -
>  	drm_WARN_ON(&dev_priv->drm, crtc_state->has_pch_encoder);
>  
>  	intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe, true);
> @@ -3191,6 +3196,11 @@ static void intel_ddi_post_disable_hdmi_or_sst(struct intel_atomic_state *state,
>  	}
>  }
>  
> +/*
> + * Note: Also called from the ->post_disable of the last active MST stream
> + * encoder on its primary encoder. See also the comment for
> + * intel_ddi_pre_enable().
> + */
>  static void intel_ddi_post_disable(struct intel_atomic_state *state,
>  				   struct intel_encoder *encoder,
>  				   const struct intel_crtc_state *old_crtc_state,
> @@ -3221,6 +3231,11 @@ static void intel_ddi_post_disable(struct intel_atomic_state *state,
>  					  old_conn_state);
>  }
>  
> +/*
> + * Note: Also called from the ->post_pll_disable of the last active MST stream
> + * encoder on its primary encoder. See also the comment for
> + * intel_ddi_pre_enable().
> + */
>  static void intel_ddi_post_pll_disable(struct intel_atomic_state *state,
>  				       struct intel_encoder *encoder,
>  				       const struct intel_crtc_state *old_crtc_state,
> @@ -3558,6 +3573,11 @@ void intel_ddi_update_active_dpll(struct intel_atomic_state *state,
>  		intel_update_active_dpll(state, pipe_crtc, encoder);
>  }
>  
> +/*
> + * Note: Also called from the ->pre_pll_enable of the first active MST stream
> + * encoder on its primary encoder. See also the comment for
> + * intel_ddi_pre_enable().
> + */
>  static void
>  intel_ddi_pre_pll_enable(struct intel_atomic_state *state,
>  			 struct intel_encoder *encoder,
> @@ -3996,6 +4016,11 @@ static void intel_ddi_read_func_ctl(struct intel_encoder *encoder,
>  	}
>  }
>  
> +/*
> + * Note: Also called from the ->get_config of the MST stream encoders on their
> + * primary encoder, via the platform specific hooks here. See also the comment
> + * for intel_ddi_pre_enable().
> + */
>  static void intel_ddi_get_config(struct intel_encoder *encoder,
>  				 struct intel_crtc_state *pipe_config)
>  {
> -- 
> 2.39.5
> 
