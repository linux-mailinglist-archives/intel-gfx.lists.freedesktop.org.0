Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B58A6679234
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Jan 2023 08:42:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5F5B10E613;
	Tue, 24 Jan 2023 07:42:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68B1210E613
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Jan 2023 07:42:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674546154; x=1706082154;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Om+nDLhEWutr32Ia7avn2TsXvfKRZecKHb+NxAogELQ=;
 b=d2WVeGV5nGnMIf4A5WPKmqk4lC9pRwR9+GG4Qah9XOrJFRcdK+1Yi0WW
 zuKQYM7v22S2orlHUiG3jhgcVnfrw2WUmge0h42GYgU2BmAudiM/oNtgh
 /zj3Nr7t5CGhgrj5P3qgzPs+7QhX2DX7QefmUVqyJkFSM3Ccyo6bVO8tP
 FnKN4if1HHSr1ms6vdfiRWiItJ37X68IS7kuAZr0cnKsyJCvEq7tj0meJ
 lFvjryvb1cC+rflNL3OkEJVxr22rvQPMOKyp7cs7nbJjIsTdtKsPxkfxz
 Zfshf6fuEfCvlQ9vXefswIW5I9N+wQ2uX6WroI0vD19RfvVubZsfr/dXK w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="327501041"
X-IronPort-AV: E=Sophos;i="5.97,241,1669104000"; d="scan'208";a="327501041"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2023 23:42:33 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="692507382"
X-IronPort-AV: E=Sophos;i="5.97,241,1669104000"; d="scan'208";a="692507382"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2023 23:42:32 -0800
Date: Tue, 24 Jan 2023 09:42:24 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <Y8+L4Kp7QKR7j5wG@intel.com>
References: <20230123131611.2149-1-stanislav.lisovskiy@intel.com>
 <Y87lhZqx33Lva//7@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y87lhZqx33Lva//7@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Implement workaround for CDCLK
 PLL disable/enable
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jan 23, 2023 at 02:52:37PM -0500, Rodrigo Vivi wrote:
> On Mon, Jan 23, 2023 at 03:16:11PM +0200, Stanislav Lisovskiy wrote:
> > It was reported that we might get a hung and loss of register access in
> > some cases when CDCLK PLL is disabled and then enabled, while squashing
> > is enabled.
> > As a workaround it was proposed by HW team that SW should disable squashing
> > when CDCLK PLL is being reenabled.
> 
> What's the WA lineage for this WA?

Not sure, what you mean but HSD is: 14017300873

Stan

> 
> > 
> > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_cdclk.c | 14 ++++++++++++--
> >  1 file changed, 12 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > index 0c107a38f9d0..e338f288c9ac 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > @@ -1801,6 +1801,13 @@ static bool cdclk_compute_crawl_and_squash_midpoint(struct drm_i915_private *i91
> >  	return true;
> >  }
> >  
> > +static bool pll_enable_wa_needed(struct drm_i915_private *dev_priv)
> > +{
> > +	return ((IS_DG2(dev_priv) || IS_METEORLAKE(dev_priv))
> > +		&& dev_priv->display.cdclk.hw.vco > 0
> > +		&& HAS_CDCLK_SQUASH(dev_priv));
> > +}
> > +
> >  static void _bxt_set_cdclk(struct drm_i915_private *dev_priv,
> >  			   const struct intel_cdclk_config *cdclk_config,
> >  			   enum pipe pipe)
> > @@ -1815,9 +1822,12 @@ static void _bxt_set_cdclk(struct drm_i915_private *dev_priv,
> >  	    !cdclk_pll_is_unknown(dev_priv->display.cdclk.hw.vco)) {
> >  		if (dev_priv->display.cdclk.hw.vco != vco)
> >  			adlp_cdclk_pll_crawl(dev_priv, vco);
> > -	} else if (DISPLAY_VER(dev_priv) >= 11)
> > +	} else if (DISPLAY_VER(dev_priv) >= 11) {
> > +		if (pll_enable_wa_needed(dev_priv))
> > +			dg2_cdclk_squash_program(dev_priv, 0);
> > +
> >  		icl_cdclk_pll_update(dev_priv, vco);
> > -	else
> > +	} else
> >  		bxt_cdclk_pll_update(dev_priv, vco);
> >  
> >  	waveform = cdclk_squash_waveform(dev_priv, cdclk);
> > -- 
> > 2.37.3
> > 
