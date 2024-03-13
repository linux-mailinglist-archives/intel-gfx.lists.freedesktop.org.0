Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D64C87ADDA
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Mar 2024 18:44:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0421B10F690;
	Wed, 13 Mar 2024 17:44:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eTzFQs0Z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95E1110F690
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Mar 2024 17:44:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710351893; x=1741887893;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=snurulzlDN4Ny/Eh/TcrzMw8nBsgd68TmZEwbHjyupM=;
 b=eTzFQs0Z47E2L6/lG4OkuPJwjxYlpjEOP9wKQFG9nnuXROSoloYrJMI4
 Sr23WV7lARBQ9Y7S7G7UC/7ajbtJv/LrCtj+8sbH/QtOYF3I/F6/vetZe
 D60zOYigbKjnEJVCendAAIvONUX06dHYHVi047B1/CADfsbE8X+SCA8K6
 WNB6azF1fpWJnTtD7y+4SbV8T+W6bthCdwEM+97Z1bPhUEsnUZowjRq4S
 FQsrnN382g2eCCOP+YKKfIOh2/9CR/whHywPZfOPi/swE4k/JCVXi+qti
 2CGFyROSgEiYHPPQgOMWyfHtkP5gGLZJe8upjcYKLyKtXRActDAYGdKjA g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11012"; a="27614270"
X-IronPort-AV: E=Sophos;i="6.07,123,1708416000"; d="scan'208";a="27614270"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2024 10:44:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,123,1708416000"; d="scan'208";a="49432678"
Received: from jbakowsk-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.53.28])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2024 10:44:50 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Jonathon Hall <jonathon.hall@puri.sm>, linux-kernel@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, joonas.lahtinen@linux.intel.com,
 rodrigo.viv@intel.com, tursulin@ursulin.net
Cc: Jonathon Hall <jonathon.hall@puri.sm>, stable@vger.kernel.org
Subject: Re: [PATCH] drm/i915: Do not match JSL in
 ehl_combo_pll_div_frac_wa_needed()
In-Reply-To: <20240313135424.3731410-1-jonathon.hall@puri.sm>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240313135424.3731410-1-jonathon.hall@puri.sm>
Date: Wed, 13 Mar 2024 19:44:46 +0200
Message-ID: <8734surppt.fsf@intel.com>
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

On Wed, 13 Mar 2024, Jonathon Hall <jonathon.hall@puri.sm> wrote:
> Since commit 0c65dc062611 ("drm/i915/jsl: s/JSL/JASPERLAKE for
> platform/subplatform defines"), boot freezes on a Jasper Lake tablet
> (Librem 11), usually with graphical corruption on the eDP display,
> but sometimes just a black screen.  This commit was included in 6.6 and
> later.
>
> That commit was intended to refactor EHL and JSL macros, but the change
> to ehl_combo_pll_div_frac_wa_needed() started matching JSL incorrectly
> when it was only intended to match EHL.
>
> It replaced:
> 	return ((IS_PLATFORM(i915, INTEL_ELKHARTLAKE) &&
> 		 IS_JSL_EHL_DISPLAY_STEP(i915, STEP_B0, STEP_FOREVER)) ||
> with:
> 	return (((IS_ELKHARTLAKE(i915) || IS_JASPERLAKE(i915)) &&
> 		 IS_DISPLAY_STEP(i915, STEP_B0, STEP_FOREVER)) ||
>
> Remove IS_JASPERLAKE() to fix the regression.
>
> Signed-off-by: Jonathon Hall <jonathon.hall@puri.sm>
> Cc: stable@vger.kernel.org

Thanks for the patch!

Fixes: 0c65dc062611 ("drm/i915/jsl: s/JSL/JASPERLAKE for platform/subplatform defines")
Cc: <stable@vger.kernel.org> # v6.6+
Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index ef57dad1a9cb..57a97880dcb3 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -2509,7 +2509,7 @@ static void icl_wrpll_params_populate(struct skl_wrpll_params *params,
>  static bool
>  ehl_combo_pll_div_frac_wa_needed(struct drm_i915_private *i915)
>  {
> -	return (((IS_ELKHARTLAKE(i915) || IS_JASPERLAKE(i915)) &&
> +	return ((IS_ELKHARTLAKE(i915) &&
>  		 IS_DISPLAY_STEP(i915, STEP_B0, STEP_FOREVER)) ||
>  		 IS_TIGERLAKE(i915) || IS_ALDERLAKE_S(i915) || IS_ALDERLAKE_P(i915)) &&
>  		 i915->display.dpll.ref_clks.nssc == 38400;

-- 
Jani Nikula, Intel
