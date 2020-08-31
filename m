Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 929AE258184
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Aug 2020 21:05:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A2166E357;
	Mon, 31 Aug 2020 19:05:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4E826E357
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Aug 2020 19:05:40 +0000 (UTC)
IronPort-SDR: j5eo0IByKwxAwnNKq8bZS/0alPLAGUB1MBxfvwuwxbs/3FxDhgOHGYZeYAnLFfRNv9IfzBXvkM
 VGRbPfD9SP7g==
X-IronPort-AV: E=McAfee;i="6000,8403,9730"; a="221273805"
X-IronPort-AV: E=Sophos;i="5.76,376,1592895600"; d="scan'208";a="221273805"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2020 12:05:39 -0700
IronPort-SDR: NaMkcnQqX8Ece2TYzqrk+DYX0M+DGeThnfXCm6e8GuR3P3dPGgc/9FNhzN3or3RClipjCmNCox
 tuObOs6eas9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,376,1592895600"; d="scan'208";a="325032311"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga004.fm.intel.com with ESMTP; 31 Aug 2020 12:05:39 -0700
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 31 Aug 2020 12:03:48 -0700
Received: from orsmsx153.amr.corp.intel.com (10.22.226.247) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 31 Aug 2020 12:03:48 -0700
Received: from orsmsx151.amr.corp.intel.com ([169.254.7.106]) by
 ORSMSX153.amr.corp.intel.com ([169.254.12.127]) with mapi id 14.03.0439.000;
 Mon, 31 Aug 2020 12:03:47 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/pll: Centralize PLL_ENABLE
 register lookup
Thread-Index: AQHWfYhpKda/OFvUMUeXglfi58x5pqlSs1QA///iyxA=
Date: Mon, 31 Aug 2020 19:03:47 +0000
Message-ID: <83F5C7385F545743AD4FB2A62F75B0734E30EE06@ORSMSX151.amr.corp.intel.com>
References: <20200828215832.11687-1-anusha.srivatsa@intel.com>
 <20200831134210.GX6112@intel.com>
In-Reply-To: <20200831134210.GX6112@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.5.1.3
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/pll: Centralize PLL_ENABLE
 register lookup
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Monday, August 31, 2020 6:42 AM
> To: Srivatsa, Anusha <anusha.srivatsa@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH] drm/i915/pll: Centralize PLL_ENABLE regi=
ster
> lookup
> =

> On Fri, Aug 28, 2020 at 02:58:32PM -0700, Anusha Srivatsa wrote:
> > We currenty check for platform at multiple parts in the driver to grab
> > the correct PLL. Let us begin to centralize it through a helper
> > function.
> >
> > Suggested-by: Matt Roper <matthew.d.roper@intel.com>
> > Cc: Matt Roper <matthew.d.roper@intel.com>
> > Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 27
> > ++++++++++++-------
> >  1 file changed, 17 insertions(+), 10 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > index 81ab975fe4f0..388136618bb7 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > @@ -147,6 +147,20 @@ void assert_shared_dpll(struct drm_i915_private
> *dev_priv,
> >  			pll->info->name, onoff(state), onoff(cur_state));  }
> >
> > +static
> > +i915_reg_t intel_get_pll_enable_reg(struct drm_i915_private *dev_priv,
> > +				    struct intel_shared_dpll *pll)
> =

> combo_pll_enable_reg() ?
Actually want to avoid mentioning combo in the name. We might have platform=
s that do not have combo phys. We still want this function to be one place =
where platforms gets the PLL_ENABLE register.
 =

> =

> > +{
> > +
> > +	if (IS_ELKHARTLAKE(dev_priv)) {
> > +		if (pll->info->id =3D=3D DPLL_ID_EHL_DPLL4)
> > +			return MG_PLL_ENABLE(0);
> > +	}
> =

> Ugly nested if.
 Will change it.

Anusha =

> > +
> > +	return CNL_DPLL_ENABLE(pll->info->id);
> > +
> > +
> > +}
> >  /**
> >   * intel_prepare_shared_dpll - call a dpll's prepare hook
> >   * @crtc_state: CRTC, and its state, which has a shared dpll @@
> > -3842,12 +3856,7 @@ static bool combo_pll_get_hw_state(struct
> drm_i915_private *dev_priv,
> >  				   struct intel_shared_dpll *pll,
> >  				   struct intel_dpll_hw_state *hw_state)  {
> > -	i915_reg_t enable_reg =3D CNL_DPLL_ENABLE(pll->info->id);
> > -
> > -	if (IS_ELKHARTLAKE(dev_priv) &&
> > -	    pll->info->id =3D=3D DPLL_ID_EHL_DPLL4) {
> > -		enable_reg =3D MG_PLL_ENABLE(0);
> > -	}
> > +	i915_reg_t enable_reg =3D intel_get_pll_enable_reg(dev_priv, pll);
> >
> >  	return icl_pll_get_hw_state(dev_priv, pll, hw_state, enable_reg);  }
> > @@ -4045,11 +4054,10 @@ static void icl_pll_enable(struct
> > drm_i915_private *dev_priv,  static void combo_pll_enable(struct
> drm_i915_private *dev_priv,
> >  			     struct intel_shared_dpll *pll)  {
> > -	i915_reg_t enable_reg =3D CNL_DPLL_ENABLE(pll->info->id);
> > +	i915_reg_t enable_reg =3D intel_get_pll_enable_reg(dev_priv, pll);
> >
> >  	if (IS_ELKHARTLAKE(dev_priv) &&
> >  	    pll->info->id =3D=3D DPLL_ID_EHL_DPLL4) {
> > -		enable_reg =3D MG_PLL_ENABLE(0);
> >
> >  		/*
> >  		 * We need to disable DC states when this DPLL is enabled.
> > @@ -4157,11 +4165,10 @@ static void icl_pll_disable(struct
> > drm_i915_private *dev_priv,  static void combo_pll_disable(struct
> drm_i915_private *dev_priv,
> >  			      struct intel_shared_dpll *pll)  {
> > -	i915_reg_t enable_reg =3D CNL_DPLL_ENABLE(pll->info->id);
> > +	i915_reg_t enable_reg =3D intel_get_pll_enable_reg(dev_priv, pll);
> >
> >  	if (IS_ELKHARTLAKE(dev_priv) &&
> >  	    pll->info->id =3D=3D DPLL_ID_EHL_DPLL4) {
> > -		enable_reg =3D MG_PLL_ENABLE(0);
> >  		icl_pll_disable(dev_priv, pll, enable_reg);
> >
> >  		intel_display_power_put(dev_priv,
> POWER_DOMAIN_DPLL_DC_OFF,
> > --
> > 2.25.0
> >
> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> =

> --
> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
