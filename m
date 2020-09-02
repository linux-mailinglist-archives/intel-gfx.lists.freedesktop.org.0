Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8105125B46E
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Sep 2020 21:31:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BBBE6E0DF;
	Wed,  2 Sep 2020 19:30:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6AC316E0DF
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Sep 2020 19:30:56 +0000 (UTC)
IronPort-SDR: TeW+pkCpkhKAzY/Xx8ZWWmAL9fFy6gXT2f7T5KPhDuRcOZrShJ8u3SxUqyw447BPJG7L0FQEHy
 vR5hgzlZE7OQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9732"; a="137519932"
X-IronPort-AV: E=Sophos;i="5.76,384,1592895600"; d="scan'208";a="137519932"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2020 12:30:55 -0700
IronPort-SDR: EDl/lkhrTwd3KqUpzAnGJPSmzP19RVau7TFeufSvJE61fqeuPR6Xpe1a3jgdG2hkAdJv1T+G0c
 S624TqFmqpbg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,384,1592895600"; d="scan'208";a="477764249"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga005.jf.intel.com with ESMTP; 02 Sep 2020 12:30:55 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 2 Sep 2020 12:30:54 -0700
Received: from orsmsx104.amr.corp.intel.com (10.22.225.131) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 2 Sep 2020 12:30:54 -0700
Received: from orsmsx151.amr.corp.intel.com ([169.254.7.106]) by
 ORSMSX104.amr.corp.intel.com ([169.254.4.21]) with mapi id 14.03.0439.000;
 Wed, 2 Sep 2020 12:30:52 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/pll: Centralize PLL_ENABLE
 register lookup
Thread-Index: AQHWgI+xsOzCdTV+PEGC7x3KvHweaalUoMAAgAEciqA=
Date: Wed, 2 Sep 2020 19:30:51 +0000
Message-ID: <83F5C7385F545743AD4FB2A62F75B0734E32847A@ORSMSX151.amr.corp.intel.com>
References: <20200901182758.29203-1-anusha.srivatsa@intel.com>
 <20200901192952.GA386451@intel.com>
In-Reply-To: <20200901192952.GA386451@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.5.1.3
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
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
> From: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Sent: Tuesday, September 1, 2020 12:30 PM
> To: Srivatsa, Anusha <anusha.srivatsa@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH] drm/i915/pll: Centralize PLL_ENABLE regi=
ster
> lookup
> =

> On Tue, Sep 01, 2020 at 11:27:58AM -0700, Anusha Srivatsa wrote:
> > We currenty check for platform at multiple parts in the driver to grab
> > the correct PLL. Let us begin to centralize it through a helper
> > function.
> >
> > v2: s/intel_get_pll_enable_reg()/intel_combo_pll_enable_reg() (Ville)
> >
> > Suggested-by: Matt Roper <matthew.d.roper@intel.com>
> > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Cc: Matt Roper <matthew.d.roper@intel.com>
> > Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 25
> > +++++++++++--------
> >  1 file changed, 15 insertions(+), 10 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > index c9013f8f766f..7440836c5e44 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > @@ -147,6 +147,18 @@ void assert_shared_dpll(struct drm_i915_private
> *dev_priv,
> >  			pll->info->name, onoff(state), onoff(cur_state));  }
> >
> > +static
> > +i915_reg_t intel_combo_pll_enable_reg(struct drm_i915_private
> *dev_priv,
> > +				    struct intel_shared_dpll *pll) {
> > +
> > +	if (IS_ELKHARTLAKE(dev_priv) && (pll->info->id =3D=3D
> DPLL_ID_EHL_DPLL4))
> > +			return MG_PLL_ENABLE(0);
> > +
> > +	return CNL_DPLL_ENABLE(pll->info->id);
> > +
> > +
> > +}
> >  /**
> >   * intel_prepare_shared_dpll - call a dpll's prepare hook
> >   * @crtc_state: CRTC, and its state, which has a shared dpll @@
> > -3842,12 +3854,7 @@ static bool combo_pll_get_hw_state(struct
> drm_i915_private *dev_priv,
> >  				   struct intel_shared_dpll *pll,
> >  				   struct intel_dpll_hw_state *hw_state)  {
> > -	i915_reg_t enable_reg =3D CNL_DPLL_ENABLE(pll->info->id);
> > -
> > -	if (IS_ELKHARTLAKE(dev_priv) &&
> > -	    pll->info->id =3D=3D DPLL_ID_EHL_DPLL4) {
> > -		enable_reg =3D MG_PLL_ENABLE(0);
> > -	}
> > +	i915_reg_t enable_reg =3D intel_combo_pll_enable_reg(dev_priv, pll);
> >
> >  	return icl_pll_get_hw_state(dev_priv, pll, hw_state, enable_reg);  }
> > @@ -4045,11 +4052,10 @@ static void icl_pll_enable(struct
> > drm_i915_private *dev_priv,  static void combo_pll_enable(struct
> drm_i915_private *dev_priv,
> >  			     struct intel_shared_dpll *pll)  {
> > -	i915_reg_t enable_reg =3D CNL_DPLL_ENABLE(pll->info->id);
> > +	i915_reg_t enable_reg =3D intel_combo_pll_enable_reg(dev_priv, pll);
> >
> >  	if (IS_ELKHARTLAKE(dev_priv) &&
> >  	    pll->info->id =3D=3D DPLL_ID_EHL_DPLL4) {
> =

> there's probably something else that we can do now with the
> power_{put,get} to get rid of the, now, doubled if checks...

Don't follow you here Rodrigo. Are you suggesting using power_{put/get} to =
somehow get rid of doubled if?

> > -		enable_reg =3D MG_PLL_ENABLE(0);
> >
> >  		/*
> >  		 * We need to disable DC states when this DPLL is enabled.
> > @@ -4157,11 +4163,10 @@ static void icl_pll_disable(struct
> > drm_i915_private *dev_priv,  static void combo_pll_disable(struct
> drm_i915_private *dev_priv,
> >  			      struct intel_shared_dpll *pll)  {
> > -	i915_reg_t enable_reg =3D CNL_DPLL_ENABLE(pll->info->id);
> > +	i915_reg_t enable_reg =3D intel_combo_pll_enable_reg(dev_priv, pll);
> >
> >  	if (IS_ELKHARTLAKE(dev_priv) &&
> >  	    pll->info->id =3D=3D DPLL_ID_EHL_DPLL4) {
> > -		enable_reg =3D MG_PLL_ENABLE(0);
> >  		icl_pll_disable(dev_priv, pll, enable_reg);
> =

> but here, at least, let's clean this function now...
> move this call above and out of the if and delete the one below and keep
> just the power_put inside the if...

Good change. Thanks!
Will change that.

Anusha
 =

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
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
