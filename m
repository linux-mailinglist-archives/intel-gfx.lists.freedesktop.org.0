Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BCDB97C7256
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Oct 2023 18:20:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 189F710E4F3;
	Thu, 12 Oct 2023 16:20:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38DDF10E189
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Oct 2023 16:20:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697127625; x=1728663625;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=svarqKb891kmoilt1Y4XHW+QB00Y/YNpqinqSPzpvAo=;
 b=K8t6ilyldFsM1N4s6UdLQ652YXidptYu+t1tG8uJOStJ1MeSZ+I0sbyC
 +bG69dJrxc5TGmJdGm10l5EW0TNFkHlp5ppdnYAkUt7UKLyLnSl9gV1GD
 3g6S7luF2pVc9wf94tAbrw5xCNDHZILRItnvOAA2uJ35SUqETe5FpWAIm
 h3zgTE4fGDUYYcfMzdE880NbYIXdFbWMCCUtwM0ilrsG4rMwBz6/cw110
 bd1zCFpbEheKO9huh9ymdcoqBzAvJdN+9CcgsBOLxUpmi2xzkLpTMOJq/
 rjf0Hlq9kRsTebJ37YOOEVHlsotS+i0a3pL7J4OOH8Axs7Oi4YmxigKQ/ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="471220284"
X-IronPort-AV: E=Sophos;i="6.03,219,1694761200"; d="scan'208";a="471220284"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 09:20:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="704238394"
X-IronPort-AV: E=Sophos;i="6.03,219,1694761200"; d="scan'208";a="704238394"
Received: from unknown (HELO ideak-desk) ([10.237.72.78])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 09:20:18 -0700
Date: Thu, 12 Oct 2023 19:20:44 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <ZSgc3JyAKXvVP9/K@ideak-desk>
References: <20231012123522.26045-1-ville.syrjala@linux.intel.com>
 <20231012123522.26045-3-ville.syrjala@linux.intel.com>
 <87fs2f28kd.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87fs2f28kd.fsf@intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915: Abstract the extra JSL/EHL
 DPLL4 power domain better
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

On Thu, Oct 12, 2023 at 05:56:34PM +0300, Jani Nikula wrote:
> On Thu, 12 Oct 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Just include the JSL/EHL DPLL4 extra power domain in the dpll_info
> > struct. This way the same approach could be used by other platforms
> > as well (should the need arise), and we don't have to sprinkle
> > platform checks all over the place.
> >
> > Note that I'm perhaps slightly abusing things here as
> > power_domain==0 (which is actually POWER_DOMAIN_DISPLAY_CORE) now
> > indicates that no extra power domain is needed. I suppose using
> > POWER_DOMAIN_INVALID would be more correct, but then we'd have to
> > sprinkle that to all the other DPLLs.
> 
> Cc: Imre, how bad do you think that is?

It looks ok to me.

With the original 64 bit domain mask it made sense to keep
POWER_DOMAIN_INVALID at the end of the enum list, but nothing depends on
the actual value, so for clarity it could be moved to be the first
item.

> 
> Anyway,
> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> 
> 
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 30 +++++--------------
> >  drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  6 ++++
> >  2 files changed, 14 insertions(+), 22 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > index b7997b096796..4e524cb8ed83 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > @@ -3838,17 +3838,8 @@ static void combo_pll_enable(struct drm_i915_private *i915,
> >  {
> >  	i915_reg_t enable_reg = intel_combo_pll_enable_reg(i915, pll);
> >  
> > -	if ((IS_JASPERLAKE(i915) || IS_ELKHARTLAKE(i915)) &&
> > -	    pll->info->id == DPLL_ID_EHL_DPLL4) {
> > -
> > -		/*
> > -		 * We need to disable DC states when this DPLL is enabled.
> > -		 * This can be done by taking a reference on DPLL4 power
> > -		 * domain.
> > -		 */
> > -		pll->wakeref = intel_display_power_get(i915,
> > -						       POWER_DOMAIN_DC_OFF);
> > -	}
> > +	if (pll->info->power_domain)
> > +		pll->wakeref = intel_display_power_get(i915, pll->info->power_domain);
> >  
> >  	icl_pll_power_enable(i915, pll, enable_reg);
> >  
> > @@ -3946,10 +3937,8 @@ static void combo_pll_disable(struct drm_i915_private *i915,
> >  
> >  	icl_pll_disable(i915, pll, enable_reg);
> >  
> > -	if ((IS_JASPERLAKE(i915) || IS_ELKHARTLAKE(i915)) &&
> > -	    pll->info->id == DPLL_ID_EHL_DPLL4)
> > -		intel_display_power_put(i915, POWER_DOMAIN_DC_OFF,
> > -					pll->wakeref);
> > +	if (pll->info->power_domain)
> > +		intel_display_power_put(i915, pll->info->power_domain, pll->wakeref);
> >  }
> >  
> >  static void tbt_pll_disable(struct drm_i915_private *i915,
> > @@ -4041,7 +4030,8 @@ static const struct intel_dpll_mgr icl_pll_mgr = {
> >  static const struct dpll_info ehl_plls[] = {
> >  	{ .name = "DPLL 0", .funcs = &combo_pll_funcs, .id = DPLL_ID_ICL_DPLL0, },
> >  	{ .name = "DPLL 1", .funcs = &combo_pll_funcs, .id = DPLL_ID_ICL_DPLL1, },
> > -	{ .name = "DPLL 4", .funcs = &combo_pll_funcs, .id = DPLL_ID_EHL_DPLL4, },
> > +	{ .name = "DPLL 4", .funcs = &combo_pll_funcs, .id = DPLL_ID_EHL_DPLL4,
> > +	  .power_domain = POWER_DOMAIN_DC_OFF, },
> >  	{}
> >  };
> >  
> > @@ -4369,12 +4359,8 @@ static void readout_dpll_hw_state(struct drm_i915_private *i915,
> >  
> >  	pll->on = intel_dpll_get_hw_state(i915, pll, &pll->state.hw_state);
> >  
> > -	if ((IS_JASPERLAKE(i915) || IS_ELKHARTLAKE(i915)) &&
> > -	    pll->on &&
> > -	    pll->info->id == DPLL_ID_EHL_DPLL4) {
> > -		pll->wakeref = intel_display_power_get(i915,
> > -						       POWER_DOMAIN_DC_OFF);
> > -	}
> > +	if (pll->on && pll->info->power_domain)
> > +		pll->wakeref = intel_display_power_get(i915, pll->info->power_domain);
> >  
> >  	pll->state.pipe_mask = 0;
> >  	for_each_intel_crtc(&i915->drm, crtc) {
> > diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> > index dd4796a61751..2e7ea0d8d3ff 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> > +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> > @@ -27,6 +27,7 @@
> >  
> >  #include <linux/types.h>
> >  
> > +#include "intel_display_power.h"
> >  #include "intel_wakeref.h"
> >  
> >  #define for_each_shared_dpll(__i915, __pll, __i) \
> > @@ -270,6 +271,11 @@ struct dpll_info {
> >  	 */
> >  	enum intel_dpll_id id;
> >  
> > +	/**
> > +	 * @power_domain: extra power domain required by the DPLL
> > +	 */
> > +	enum intel_display_power_domain power_domain;
> > +
> >  #define INTEL_DPLL_ALWAYS_ON	(1 << 0)
> >  	/**
> >  	 * @flags:
> 
> -- 
> Jani Nikula, Intel
