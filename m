Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 096734A5B1E
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Feb 2022 12:26:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B686B10E89D;
	Tue,  1 Feb 2022 11:26:46 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76F0110E89A
 for <Intel-gfx@lists.freedesktop.org>; Tue,  1 Feb 2022 11:26:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643714804; x=1675250804;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=oNzzinN8OMtFBTyYL2JFJuaxWLMQjctZneNmrNmT4Aw=;
 b=IgdIM3sl4x28g5vbdQtdjBoJSPk0D3TfLvzwZYdN2jnoeWo8Yy4CEn2s
 CJLvYhRofdRPvJUyvyj/ZmiIJgGLUN7uRl3XrzsvSv+ljTqhQ3OiMKYSX
 8ZKY57FTaXwAKfJeFDD2xU6hXbA+n5xtewmwQjgR9v9+xmyuizMuMk3Yr
 jONXYj9xshZd1ZfyMMYew125QmhLtCgNKMHvdNsLBcYk3cgpY1vbop9SQ
 feP+tw9vG8Y1cWPvm2ce0RW9KoD7hV1uiGTax5zGzNoWIRuqjygOp0kM+
 +sCDEVS99HG/sC6QonIwkDXoG+qtsE3ROT9Epw6JuX6NjmMscf2u8MTIf Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10244"; a="247440709"
X-IronPort-AV: E=Sophos;i="5.88,333,1635231600"; d="scan'208";a="247440709"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2022 03:26:44 -0800
X-IronPort-AV: E=Sophos;i="5.88,333,1635231600"; d="scan'208";a="523023132"
Received: from ehanosko-mobl.ger.corp.intel.com (HELO localhost) ([10.252.6.3])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2022 03:26:41 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Intel-gfx@lists.freedesktop.org
In-Reply-To: <20220201111533.250242-3-tvrtko.ursulin@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220201111533.250242-1-tvrtko.ursulin@linux.intel.com>
 <20220201111533.250242-3-tvrtko.ursulin@linux.intel.com>
Date: Tue, 01 Feb 2022 13:26:38 +0200
Message-ID: <877daevndd.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [RFC 2/2] jsl/ehl
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
Cc: Michael Cheng <michael.cheng@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 01 Feb 2022, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com> wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Should be split out and posted independently.

Maybe we should consider s/IS_PLATFORM/__IS_PLATFORM/g too.

BR,
Jani.

>
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c | 4 ++--
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c      | 2 +-
>  drivers/gpu/drm/i915/i915_drv.h                    | 2 ++
>  3 files changed, 5 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> index 0c32210bf503..37b48f7ab4fd 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> @@ -1621,9 +1621,9 @@ void intel_ddi_buf_trans_init(struct intel_encoder *encoder)
>  		else
>  			encoder->get_buf_trans = tgl_get_dkl_buf_trans;
>  	} else if (DISPLAY_VER(i915) == 11) {
> -		if (IS_PLATFORM(i915, INTEL_JASPERLAKE))
> +		if (IS_JASPERLAKE(i915))
>  			encoder->get_buf_trans = jsl_get_combo_buf_trans;
> -		else if (IS_PLATFORM(i915, INTEL_ELKHARTLAKE))
> +		else if (IS_ELKHARTLAKE(i915))
>  			encoder->get_buf_trans = ehl_get_combo_buf_trans;
>  		else if (intel_phy_is_combo(i915, phy))
>  			encoder->get_buf_trans = icl_get_combo_buf_trans;
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index 6723c3de5a80..0d9b970c453f 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -2443,7 +2443,7 @@ static void icl_wrpll_params_populate(struct skl_wrpll_params *params,
>  static bool
>  ehl_combo_pll_div_frac_wa_needed(struct drm_i915_private *i915)
>  {
> -	return ((IS_PLATFORM(i915, INTEL_ELKHARTLAKE) &&
> +	return ((IS_ELKHARTLAKE(i915) &&
>  		 IS_JSL_EHL_DISPLAY_STEP(i915, STEP_B0, STEP_FOREVER)) ||
>  		 IS_TIGERLAKE(i915) || IS_ALDERLAKE_P(i915)) &&
>  		 i915->dpll.ref_clks.nssc == 38400;
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 1d22d72163c1..241acd884135 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1271,6 +1271,8 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  #define IS_COFFEELAKE(dev_priv)	IS_IGP_PLATFORM(dev_priv, INTEL_COFFEELAKE)
>  #define IS_COMETLAKE(dev_priv)	IS_IGP_PLATFORM(dev_priv, INTEL_COMETLAKE)
>  #define IS_ICELAKE(dev_priv)	IS_IGP_PLATFORM(dev_priv, INTEL_ICELAKE)
> +#define IS_JASPERLAKE(dev_priv)	IS_IGP_PLATFORM(dev_priv, INTEL_JASPERLAKE)
> +#define IS_ELKHARTLAKE(dev_priv)	IS_IGP_PLATFORM(dev_priv, INTEL_ELKHARTLAKE)
>  #define IS_JSL_EHL(dev_priv)	(IS_IGP_PLATFORM(dev_priv, INTEL_JASPERLAKE) || \
>  				IS_IGP_PLATFORM(dev_priv, INTEL_ELKHARTLAKE))
>  #define IS_TIGERLAKE(dev_priv)	IS_IGP_PLATFORM(dev_priv, INTEL_TIGERLAKE)

-- 
Jani Nikula, Intel Open Source Graphics Center
