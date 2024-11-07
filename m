Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC9919C0FF7
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2024 21:46:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83C5810E242;
	Thu,  7 Nov 2024 20:46:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CfZ/audA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31BF410E242;
 Thu,  7 Nov 2024 20:46:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731012384; x=1762548384;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=hHi+Ajvni7yVkRDGbn150F92dTRiME0CmL6lWwvgKws=;
 b=CfZ/audAoJaa55a1MforAZBKQMWu/0PNXycc5XLRYPpSPvbZ1lMaJpUr
 NQUU9RRlaFwwlL26N9D+ypaVF/XHv/73BzW8M60jyCapL1UzRb5DCtEEo
 STn9l2SgU1K4Fo7Lgo038HCZ+9OE+7kmabwB2jOka0ecrRrLp7v+m6+dJ
 ypkzlcA/4rg6oTM0X4rEHKBQUV/KrA1sVo8TUQIIUwGVCeD6yBNM7ZPhn
 04XQHji2SUcEzdXh/xg8IFt2FH8BeW9PTQjrWTV84sGn1ZMKi6br52GzY
 7ZSVno2CNaGvDg8HjPZ0b+H08JnQmfAbsyYnEyLalBe4Qd2M1Z8XnJNDN g==;
X-CSE-ConnectionGUID: gcO0AdI8QDSTS85UIfmEbA==
X-CSE-MsgGUID: we7lFCyMQB6nCpoM/jICkw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="41440037"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="41440037"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 12:46:24 -0800
X-CSE-ConnectionGUID: VUWITYSlTlyUILlIDXsw+g==
X-CSE-MsgGUID: UycpKB7cTmmh+y04dLJTPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,136,1728975600"; d="scan'208";a="122743124"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.233])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 12:46:22 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com, ville.syrjala@linux.intel.com
Subject: Re: [PATCH 8/8] drm/i915/dp: add comments about hooks called from
 MST stream encoders
In-Reply-To: <80f8682fbc304ccf673af20abe562ce5aedb9219.1731011435.git.jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1731011435.git.jani.nikula@intel.com>
 <80f8682fbc304ccf673af20abe562ce5aedb9219.1731011435.git.jani.nikula@intel.com>
Date: Thu, 07 Nov 2024 22:46:18 +0200
Message-ID: <87ldxuepr9.fsf@intel.com>
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

On Thu, 07 Nov 2024, Jani Nikula <jani.nikula@intel.com> wrote:
> It would be best to have self-explanatory code, but lacking that, add
> some comments about the way the DDI encoder hooks get called from DP MST
> stream encoders.

The subject prefix should be "drm/i915/ddi:".

>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
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

-- 
Jani Nikula, Intel
