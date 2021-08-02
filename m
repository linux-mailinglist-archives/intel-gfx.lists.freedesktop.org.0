Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 863E93DE176
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Aug 2021 23:20:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B3476E12C;
	Mon,  2 Aug 2021 21:20:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD9746E12C
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Aug 2021 21:20:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10064"; a="213567489"
X-IronPort-AV: E=Sophos;i="5.84,289,1620716400"; d="scan'208";a="213567489"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2021 14:20:49 -0700
X-IronPort-AV: E=Sophos;i="5.84,289,1620716400"; d="scan'208";a="458064148"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2021 14:20:47 -0700
Date: Tue, 3 Aug 2021 00:20:43 +0300
From: Imre Deak <imre.deak@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Message-ID: <20210802212043.GB2115791@ideak-desk.fi.intel.com>
References: <20210802190148.2099625-1-imre.deak@intel.com>
 <70c089841d159b322f6c6749fad8e416766676dc.camel@intel.com>
 <20210802210754.GA2115791@ideak-desk.fi.intel.com>
 <9d04bc4221b0729f3007be8d9d61d1d98addae77.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <9d04bc4221b0729f3007be8d9d61d1d98addae77.camel@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Apply CMTG clock disabling WA
 while DPLL0 is enabled
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

On Tue, Aug 03, 2021 at 12:16:30AM +0300, Souza, Jose wrote:
> On Tue, 2021-08-03 at 00:07 +0300, Imre Deak wrote:
> > On Mon, Aug 02, 2021 at 11:52:41PM +0300, Souza, Jose wrote:
> > > On Mon, 2021-08-02 at 22:01 +0300, Imre Deak wrote:
> > > > CI test results/further experiments show that the workaround added in
> > > > 
> > > > commit 573d7ce4f69a ("drm/i915/adlp: Add workaround to disable CMTG clock gating")
> > > > 
> > > > can be applied only while DPLL0 is enabled. If it's disabled the
> > > > TRANS_CMTG_CHICKEN register is not accessible. Accordingly move the WA
> > > > to DPLL0 HW state sanitization and enabling.
> > > > 
> > > > This fixes an issue where the WA won't get applied (and a WARN is thrown
> > > > due to an unexpected value in TRANS_CMTG_CHICKEN) if the driver is
> > > > loaded without DPLL0 being enabled: booting without BIOS enabling an
> > > > output with this PLL, or reloading the driver.
> > > > 
> > > > While at it also add a debug print for the unexpected register value.
> > > 
> > > Workaround do not mention nothing about this DPLL0 dependency, maybe
> > > would be nice to comment in HSD about this.
> > 
> > Ok, can add comment.
> > 
> > > Have you tried to check if the workaround applies if DPLL1 is enabled?
> > > We could comment DPLL0 out from the adlp_plls table.
> > 
> > No, only DPLL0 makes it work, DPLL1 being enabled is not enough. You can
> > experiment with this by unloading the driver and simply enable/disable
> > DPLL0/1 (both power and enable flag) and try to read/modify/re-read the
> > CMTG_CHICKEN reg.
> 
> Okay if you tested this it looks good to me.
> 
> Reviewed-by: José Roberto de Souza <jose.souza@intel.com>

Thanks, added a question on the HSD ticket, let's wait for the response.

> > > > Cc: José Roberto de Souza <jose.souza@intel.com>
> > > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_display.c  | 18 ----------
> > > >  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 34 ++++++++++++++++++-
> > > >  2 files changed, 33 insertions(+), 19 deletions(-)
> > > > 
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > > > index 4ca354f154215..98f7fbede6226 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > > @@ -13284,24 +13284,6 @@ static void intel_early_display_was(struct drm_i915_private *dev_priv)
> > > >  			     KBL_ARB_FILL_SPARE_13 | KBL_ARB_FILL_SPARE_14,
> > > >  			     KBL_ARB_FILL_SPARE_14);
> > > >  	}
> > > > -
> > > > -	if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0)) {
> > > > -		u32 val;
> > > > -
> > > > -		/*
> > > > -		 * Wa_16011069516:adl-p[a0]
> > > > -		 *
> > > > -		 * All CMTG regs are unreliable until CMTG clock gating is
> > > > -		 * disabled, so we can only assume the default CMTG_CHICKEN
> > > > -		 * reg value and sanity check this assumption with a double
> > > > -		 * read, which presumably returns the correct value even with
> > > > -		 * clock gating on.
> > > > -		 */
> > > > -		val = intel_de_read(dev_priv, TRANS_CMTG_CHICKEN);
> > > > -		val = intel_de_read(dev_priv, TRANS_CMTG_CHICKEN);
> > > > -		intel_de_write(dev_priv, TRANS_CMTG_CHICKEN, DISABLE_DPT_CLK_GATING);
> > > > -		drm_WARN_ON(&dev_priv->drm, val & ~DISABLE_DPT_CLK_GATING);
> > > > -	}
> > > >  }
> > > >  
> > > >  static void ibx_sanitize_pch_hdmi_port(struct drm_i915_private *dev_priv,
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > > > index 0d72917e5670f..5c91d125a3371 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > > > @@ -3735,6 +3735,31 @@ static void icl_pll_enable(struct drm_i915_private *dev_priv,
> > > >  		drm_err(&dev_priv->drm, "PLL %d not locked\n", pll->info->id);
> > > >  }
> > > >  
> > > > +static void adlp_cmtg_clock_gating_wa(struct drm_i915_private *i915, struct intel_shared_dpll *pll)
> > > > +{
> > > > +	u32 val;
> > > > +
> > > > +	if (!IS_ADLP_DISPLAY_STEP(i915, STEP_A0, STEP_B0) ||
> > > > +	    pll->info->id != DPLL_ID_ICL_DPLL0)
> > > > +		return;
> > > > +	/*
> > > > +	 * Wa_16011069516:adl-p[a0]
> > > > +	 *
> > > > +	 * All CMTG regs are unreliable until CMTG clock gating is disabled,
> > > > +	 * so we can only assume the default TRANS_CMTG_CHICKEN reg value and
> > > > +	 * sanity check this assumption with a double read, which presumably
> > > > +	 * returns the correct value even with clock gating on.
> > > > +	 *
> > > > +	 * Instead of the usual place for workarounds we apply this one here,
> > > > +	 * since TRANS_CMTG_CHICKEN is only accessible while DPLL0 is enabled.
> > > > +	 */
> > > > +	val = intel_de_read(i915, TRANS_CMTG_CHICKEN);
> > > > +	val = intel_de_read(i915, TRANS_CMTG_CHICKEN);
> > > > +	intel_de_write(i915, TRANS_CMTG_CHICKEN, DISABLE_DPT_CLK_GATING);
> > > > +	if (drm_WARN_ON(&i915->drm, val & ~DISABLE_DPT_CLK_GATING))
> > > > +		drm_dbg_kms(&i915->drm, "Unexpected flags in TRANS_CMTG_CHICKEN: %08x\n", val);
> > > > +}
> > > > +
> > > >  static void combo_pll_enable(struct drm_i915_private *dev_priv,
> > > >  			     struct intel_shared_dpll *pll)
> > > >  {
> > > > @@ -3764,6 +3789,8 @@ static void combo_pll_enable(struct drm_i915_private *dev_priv,
> > > >  
> > > >  	icl_pll_enable(dev_priv, pll, enable_reg);
> > > >  
> > > > +	adlp_cmtg_clock_gating_wa(dev_priv, pll);
> > > > +
> > > >  	/* DVFS post sequence would be here. See the comment above. */
> > > >  }
> > > >  
> > > > @@ -4273,7 +4300,12 @@ void intel_dpll_readout_hw_state(struct drm_i915_private *i915)
> > > >  static void sanitize_dpll_state(struct drm_i915_private *i915,
> > > >  				struct intel_shared_dpll *pll)
> > > >  {
> > > > -	if (!pll->on || pll->active_mask)
> > > > +	if (!pll->on)
> > > > +		return;
> > > > +
> > > > +	adlp_cmtg_clock_gating_wa(i915, pll);
> > > > +
> > > > +	if (pll->active_mask)
> > > >  		return;
> > > >  
> > > >  	drm_dbg_kms(&i915->drm,
> > > 
> 
