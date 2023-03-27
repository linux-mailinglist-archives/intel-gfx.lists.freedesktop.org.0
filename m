Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C8386C9EED
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Mar 2023 11:07:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7969510E338;
	Mon, 27 Mar 2023 09:07:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DD6410E338
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Mar 2023 09:07:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679908041; x=1711444041;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=9lBfrjgtsA0E4jtqAsU7xxlW1N1k0Uxq18zuvRaFdOw=;
 b=FXdV1Vs8jFp9OT6+RcmZOnahQoAOifdSzUqX4b00QttvfIf8/eRrpdFF
 r/AO8ei0PlOYzu6/xc7PWlpZUv3TgosJ9w8v/KXjUV0jyU0nloOWE087j
 BRvHOnmxbTTkLSf6mfs5LoDP3ZpA7x3P65ZdhO2xqJBRvCoUyZ/Z/1VS0
 IQ29MIrUzKvrXFvNWRjT+pgYItch19YIQJGBjjNsVpKovOhPWEEwz+yN4
 iPn561N5e2JB1cetA4I/UT5A2FX0znASevol5/T5nTo59zl3lSkmH3b2X
 zB2C7Rssi+kk0+Ei2XwC+fHKh0R2M8r7RnBZ9SnexQhvzlLRjVzQXpD04 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10661"; a="324101794"
X-IronPort-AV: E=Sophos;i="5.98,294,1673942400"; d="scan'208";a="324101794"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2023 02:07:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10661"; a="807410059"
X-IronPort-AV: E=Sophos;i="5.98,294,1673942400"; d="scan'208";a="807410059"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2023 02:07:19 -0700
Date: Mon, 27 Mar 2023 12:07:15 +0300
From: Imre Deak <imre.deak@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>,
 Mika Kahola <mika.kahola@intel.com>
Message-ID: <ZCFcw32Mpw7l0gq/@ideak-desk.fi.intel.com>
References: <20230105125446.960504-1-mika.kahola@intel.com>
 <20230105125446.960504-10-mika.kahola@intel.com>
 <20230207165419.iwlh3dktguorr3lj@gjsousa-mobl2>
 <MW4PR11MB705480CA1AA600890E57F1D4EFAB9@MW4PR11MB7054.namprd11.prod.outlook.com>
 <20230324205111.z5mwl7nq4b2bpdtm@gjsousa-mobl2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230324205111.z5mwl7nq4b2bpdtm@gjsousa-mobl2>
Subject: Re: [Intel-gfx] [PATCH v2 09/21] drm/i915/mtl: C20 HW readout
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Mar 24, 2023 at 05:51:11PM -0300, Gustavo Sousa wrote:
> On Thu, Feb 23, 2023 at 06:47:27AM -0300, Kahola, Mika wrote:
> > > > [...]
> > > > +void intel_c20pll_readout_hw_state(struct intel_encoder *encoder,
> > > > +				   struct intel_c20pll_state *pll_state) {
> > > > +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> > > > +	bool cntx, use_mplla;
> > > > +	u32 val;
> > > > +	int i;
> > > > +
> > > > +        /* 1. Read current context selection */
> > > > +        cntx = intel_cx0_read(i915, encoder->port, 0, PHY_C20_VDR_CUSTOM_SERDES_RATE) & PHY_C20_CONTEXT_TOGGLE;
> > > > +
> > > > +	/* Read Tx configuration */
> > > > +	for (i = 0; i < ARRAY_SIZE(pll_state->tx); i++) {
> > > > +		if (cntx)
> > > > +			pll_state->tx[i] = intel_c20_read(i915, encoder->port, 0, PHY_C20_B_TX_CNTX_CFG(i));
> > > > +		else
> > > > +			pll_state->tx[i] = intel_c20_read(i915, encoder->port, 0, PHY_C20_A_TX_CNTX_CFG(i));
> > > > +	}
> > > > +
> > > > +	/* Read common configuration */
> > > > +	for (i = 0; i < ARRAY_SIZE(pll_state->cmn); i++) {
> > > > +		if (cntx)
> > > > +			pll_state->cmn[i] = intel_c20_read(i915, encoder->port, 0, PHY_C20_B_CMN_CNTX_CFG(i));
> > > > +		else
> > > > +			pll_state->cmn[i] = intel_c20_read(i915, encoder->port, 0, PHY_C20_A_CMN_CNTX_CFG(i));
> > > > +	}
> > > > +
> > > > +	val = intel_c20_read(i915, encoder->port, 0, PHY_C20_A_MPLLA_CNTX_CFG(6));
> > > > +	use_mplla = val & C20_MPLLB_FRACEN;
> > > 
> > >
> > > Some questions about this:
> > > 
> > >   1. This is hardcoded to read from context A. Shouldn't we read from the
> > >      current context?
> > > 
> > >   2. s/C20_MPLLB_FRACEN/C20_MPLLA_FRACEN/ ?
> >
> > The both uses the same bit 13 for frac_en. Maybe just renaming
> > differently C10_MPLLx_FRACEN?
> > > 
> > >   3. When we are programming PLL for MPLLB, we are not clearing
> > >      PHY_C20_A_MPLLA_CNTX_CFG(6). Wouldn't this be problematic if MPLLB is the
> > >      current one in use MPLLB but MPLLA was already used in a previous
> > >      configuration?
> >
> > Do you mean this when we are switching the context? In this case, as
> > far as I have understood the spec, we wouldn't need to clear
> > previous configuration.
> 
> Hi, Mika. Sorry to taking so long to reply!
> 
> What I mean is as follows. Consider the sequence of events below for an example:
> 
>   1. For a certain PLL programming, context A was used and MPLLA was selected.
>   2. For a new PLL programming, context B is used and we are not clearing
>      PHY_C20_A_MPLLA_CNTX_CFG(6).
>   3. Context A is used again for the next PLL programming, but this time MPLLB
>      is selected.
> 
> My concern is the following: *If* PHY_C20_A_MPLLA_CNTX_CFG(6) is not
> automatically cleared by the hardware in event (2), then after (3) this function
> would still think the current configuration is using MPLLA while it is in fact
> using MPLLB.
> 
> Now, if we have guarantee that PHY_C20_A_MPLLA_CNTX_CFG(6) is reset
> automatically when we switch to context B, then we wouldn't have to
> worry here.

Why the PLL's FRACEN flag used here? It's a detail in how the PLL is
programmed and may be either 0 or 1 (even if it's now happens to be 1).
I think PHY_C20_<cnxt>_TX_CNTX_CFG_0[7] should be used which is txX_mpllb_sel
(see Bspec 68862, C20 TX Context programming).

--Imre
