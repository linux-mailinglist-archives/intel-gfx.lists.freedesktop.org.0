Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E46EE808B20
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Dec 2023 15:55:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E06910E8A4;
	Thu,  7 Dec 2023 14:55:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 607FE10E8A4
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Dec 2023 14:55:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701960909; x=1733496909;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=EBp3Db8+5kuw+XYjD53wxcMLcigCHSsMEZLc/NmsxTU=;
 b=ltmYaZtr/G8+E9KxzJ2bJGWJbTYgZFPjHN5UlJXAJCFmLBUSpxvwiQtv
 ASSCkBPFiItQ7yFIXWsOZQnEVPFZfKf7MgFGpnlxHaYDJz7Wm8VOqKB1x
 a4a8NpbHqJuv6PvkikpHJWS90MPSHifYAFSy/jZBpdYF10BwRhpgPWP8j
 MWLMX/3f1KJxWizWLPUuzro4VrG0pt7xmJEolwAwqudfLzl4gQ5/PoUv8
 RGM0yE8UejgZOWzpIK0QXhU549pLtwhTvm0v4i+WkHwn93d85i+Vzy2Wp
 5sAZwUH4DB9anpkUcNaCwPDK5v3Qr5BJ8p22VaTvV08NCIPZOfjlA8WaF Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="1347213"
X-IronPort-AV: E=Sophos;i="6.04,256,1695711600"; 
   d="scan'208";a="1347213"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2023 06:55:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="765133955"
X-IronPort-AV: E=Sophos;i="6.04,256,1695711600"; d="scan'208";a="765133955"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2023 06:54:58 -0800
Date: Thu, 7 Dec 2023 16:55:02 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 4/5] drm/i915: Suppress old PLL pipe_mask
 checks for MG/TC/TBT PLLs
Message-ID: <ZXHcxvx/TZc4pE9p@ideak-desk.fi.intel.com>
References: <20231124082735.25470-1-ville.syrjala@linux.intel.com>
 <20231124082735.25470-4-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231124082735.25470-4-ville.syrjala@linux.intel.com>
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

On Fri, Nov 24, 2023 at 10:27:34AM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> TC ports have both the MG/TC and TBT PLLs selected simultanously (so
> that we can switch from MG/TC to TBT as a fallback). This doesn't play
> well with the state checker that assumes that the old PLL shouldn't
> have the pipe in its pipe_mask anymore. Suppress that check for these
> PLLs to avoid spurious WARNs when you disconnect a TC port and a
> non-disabling modeset happens before actually disabling the port.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Looks ok to me:
Reviewed-by: Imre Deak <imre.deak@intel.com>

I suppose the check would be still valid for MG PLLs, but the port
PLL stuff makes doing that cumbersome.

> ---
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 56 +++++++++++++------
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  4 ++
>  2 files changed, 42 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index d86b02de2923..5c6c4fc50b1d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -4023,11 +4023,16 @@ static const struct intel_shared_dpll_funcs mg_pll_funcs = {
>  static const struct dpll_info icl_plls[] = {
>  	{ .name = "DPLL 0", .funcs = &combo_pll_funcs, .id = DPLL_ID_ICL_DPLL0, },
>  	{ .name = "DPLL 1", .funcs = &combo_pll_funcs, .id = DPLL_ID_ICL_DPLL1, },
> -	{ .name = "TBT PLL", .funcs = &tbt_pll_funcs, .id = DPLL_ID_ICL_TBTPLL, },
> -	{ .name = "MG PLL 1", .funcs = &mg_pll_funcs, .id = DPLL_ID_ICL_MGPLL1, },
> -	{ .name = "MG PLL 2", .funcs = &mg_pll_funcs, .id = DPLL_ID_ICL_MGPLL2, },
> -	{ .name = "MG PLL 3", .funcs = &mg_pll_funcs, .id = DPLL_ID_ICL_MGPLL3, },
> -	{ .name = "MG PLL 4", .funcs = &mg_pll_funcs, .id = DPLL_ID_ICL_MGPLL4, },
> +	{ .name = "TBT PLL", .funcs = &tbt_pll_funcs, .id = DPLL_ID_ICL_TBTPLL,
> +	  .flags = INTEL_DPLL_HAS_ALT_PORT_DPLL, },
> +	{ .name = "MG PLL 1", .funcs = &mg_pll_funcs, .id = DPLL_ID_ICL_MGPLL1,
> +	  .flags = INTEL_DPLL_HAS_ALT_PORT_DPLL, },
> +	{ .name = "MG PLL 2", .funcs = &mg_pll_funcs, .id = DPLL_ID_ICL_MGPLL2,
> +	  .flags = INTEL_DPLL_HAS_ALT_PORT_DPLL, },
> +	{ .name = "MG PLL 3", .funcs = &mg_pll_funcs, .id = DPLL_ID_ICL_MGPLL3,
> +	  .flags = INTEL_DPLL_HAS_ALT_PORT_DPLL, },
> +	{ .name = "MG PLL 4", .funcs = &mg_pll_funcs, .id = DPLL_ID_ICL_MGPLL4,
> +	  .flags = INTEL_DPLL_HAS_ALT_PORT_DPLL, },
>  	{}
>  };
>  
> @@ -4068,13 +4073,20 @@ static const struct intel_shared_dpll_funcs dkl_pll_funcs = {
>  static const struct dpll_info tgl_plls[] = {
>  	{ .name = "DPLL 0", .funcs = &combo_pll_funcs, .id = DPLL_ID_ICL_DPLL0, },
>  	{ .name = "DPLL 1", .funcs = &combo_pll_funcs, .id = DPLL_ID_ICL_DPLL1, },
> -	{ .name = "TBT PLL", .funcs = &tbt_pll_funcs, .id = DPLL_ID_ICL_TBTPLL, },
> -	{ .name = "TC PLL 1", .funcs = &dkl_pll_funcs, .id = DPLL_ID_ICL_MGPLL1, },
> -	{ .name = "TC PLL 2", .funcs = &dkl_pll_funcs, .id = DPLL_ID_ICL_MGPLL2, },
> -	{ .name = "TC PLL 3", .funcs = &dkl_pll_funcs, .id = DPLL_ID_ICL_MGPLL3, },
> -	{ .name = "TC PLL 4", .funcs = &dkl_pll_funcs, .id = DPLL_ID_ICL_MGPLL4, },
> -	{ .name = "TC PLL 5", .funcs = &dkl_pll_funcs, .id = DPLL_ID_TGL_MGPLL5, },
> -	{ .name = "TC PLL 6", .funcs = &dkl_pll_funcs, .id = DPLL_ID_TGL_MGPLL6, },
> +	{ .name = "TBT PLL", .funcs = &tbt_pll_funcs, .id = DPLL_ID_ICL_TBTPLL,
> +	  .flags = INTEL_DPLL_HAS_ALT_PORT_DPLL, },
> +	{ .name = "TC PLL 1", .funcs = &dkl_pll_funcs, .id = DPLL_ID_ICL_MGPLL1,
> +	  .flags = INTEL_DPLL_HAS_ALT_PORT_DPLL, },
> +	{ .name = "TC PLL 2", .funcs = &dkl_pll_funcs, .id = DPLL_ID_ICL_MGPLL2,
> +	  .flags = INTEL_DPLL_HAS_ALT_PORT_DPLL, },
> +	{ .name = "TC PLL 3", .funcs = &dkl_pll_funcs, .id = DPLL_ID_ICL_MGPLL3,
> +	  .flags = INTEL_DPLL_HAS_ALT_PORT_DPLL, },
> +	{ .name = "TC PLL 4", .funcs = &dkl_pll_funcs, .id = DPLL_ID_ICL_MGPLL4,
> +	  .flags = INTEL_DPLL_HAS_ALT_PORT_DPLL, },
> +	{ .name = "TC PLL 5", .funcs = &dkl_pll_funcs, .id = DPLL_ID_TGL_MGPLL5,
> +	  .flags = INTEL_DPLL_HAS_ALT_PORT_DPLL, },
> +	{ .name = "TC PLL 6", .funcs = &dkl_pll_funcs, .id = DPLL_ID_TGL_MGPLL6,
> +	  .flags = INTEL_DPLL_HAS_ALT_PORT_DPLL, },
>  	{}
>  };
>  
> @@ -4141,11 +4153,16 @@ static const struct intel_dpll_mgr adls_pll_mgr = {
>  static const struct dpll_info adlp_plls[] = {
>  	{ .name = "DPLL 0", .funcs = &combo_pll_funcs, .id = DPLL_ID_ICL_DPLL0, },
>  	{ .name = "DPLL 1", .funcs = &combo_pll_funcs, .id = DPLL_ID_ICL_DPLL1, },
> -	{ .name = "TBT PLL", .funcs = &tbt_pll_funcs, .id = DPLL_ID_ICL_TBTPLL, },
> -	{ .name = "TC PLL 1", .funcs = &dkl_pll_funcs, .id = DPLL_ID_ICL_MGPLL1, },
> -	{ .name = "TC PLL 2", .funcs = &dkl_pll_funcs, .id = DPLL_ID_ICL_MGPLL2, },
> -	{ .name = "TC PLL 3", .funcs = &dkl_pll_funcs, .id = DPLL_ID_ICL_MGPLL3, },
> -	{ .name = "TC PLL 4", .funcs = &dkl_pll_funcs, .id = DPLL_ID_ICL_MGPLL4, },
> +	{ .name = "TBT PLL", .funcs = &tbt_pll_funcs, .id = DPLL_ID_ICL_TBTPLL,
> +	  .flags = INTEL_DPLL_HAS_ALT_PORT_DPLL, },
> +	{ .name = "TC PLL 1", .funcs = &dkl_pll_funcs, .id = DPLL_ID_ICL_MGPLL1,
> +	  .flags = INTEL_DPLL_HAS_ALT_PORT_DPLL, },
> +	{ .name = "TC PLL 2", .funcs = &dkl_pll_funcs, .id = DPLL_ID_ICL_MGPLL2,
> +	  .flags = INTEL_DPLL_HAS_ALT_PORT_DPLL, },
> +	{ .name = "TC PLL 3", .funcs = &dkl_pll_funcs, .id = DPLL_ID_ICL_MGPLL3,
> +	  .flags = INTEL_DPLL_HAS_ALT_PORT_DPLL, },
> +	{ .name = "TC PLL 4", .funcs = &dkl_pll_funcs, .id = DPLL_ID_ICL_MGPLL4,
> +	  .flags = INTEL_DPLL_HAS_ALT_PORT_DPLL, },
>  	{}
>  };
>  
> @@ -4535,7 +4552,10 @@ void intel_shared_dpll_state_verify(struct intel_atomic_state *state,
>  		I915_STATE_WARN(i915, pll->active_mask & pipe_mask,
>  				"%s: pll active mismatch (didn't expect pipe %c in active mask (0x%x))\n",
>  				pll->info->name, pipe_name(crtc->pipe), pll->active_mask);
> -		I915_STATE_WARN(i915, pll->state.pipe_mask & pipe_mask,
> +
> +		/* TC ports have both MG/TC and TBT PLL referenced simultaneously */
> +		I915_STATE_WARN(i915, !(pll->info->flags & INTEL_DPLL_HAS_ALT_PORT_DPLL) &&
> +				pll->state.pipe_mask & pipe_mask,
>  				"%s: pll enabled crtcs mismatch (found pipe %c in enabled mask (0x%x))\n",
>  				pll->info->name, pipe_name(crtc->pipe), pll->state.pipe_mask);
>  	}
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> index 2e7ea0d8d3ff..594658087b4a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> @@ -277,12 +277,16 @@ struct dpll_info {
>  	enum intel_display_power_domain power_domain;
>  
>  #define INTEL_DPLL_ALWAYS_ON	(1 << 0)
> +#define INTEL_DPLL_HAS_ALT_PORT_DPLL	(1 << 1)
>  	/**
>  	 * @flags:
>  	 *
>  	 * INTEL_DPLL_ALWAYS_ON
>  	 *     Inform the state checker that the DPLL is kept enabled even if
>  	 *     not in use by any CRTC.
> +	 * INTEL_DPLL_HAS_ALT_PORT_DPLL
> +	 *     Inform the state checker that the CRTC will have two port DPLLs
> +	 *     referenced simultanously (for TC->TBT fallback).
>  	 */
>  	u32 flags;
>  };
> -- 
> 2.41.0
> 
