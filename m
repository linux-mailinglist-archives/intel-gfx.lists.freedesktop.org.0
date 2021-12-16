Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0361476F99
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Dec 2021 12:13:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF07410F372;
	Thu, 16 Dec 2021 11:13:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39B5110F363
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Dec 2021 11:13:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639653236; x=1671189236;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=lV1T1SysgI9JGV9SLkZiyCdWqsKGQMZjZGedf7iYXgA=;
 b=U5UhkwxpUXiyGLtZgp8oAnBkN/u0SG7mMh8FjYk5/ZlW6n4PWy6wl73o
 VLTYBYwzTsoirZM/CjU+GCSeNWb+zylc94KTQsNywq7pV7A/0LcD+h+Vi
 YGnhk/o1Dcf5fy1hAQaYWv5viFRKS1aeYFwp3PCTiRb8TGJiEp2mQkrp9
 KRV8lTWwirC6Fe2ypPfWQDInFassx5beeZSdGwrHLcTfH3G4pLT+EeVnA
 Gg9NF0Rny2EKuYlG7HZvi+CCHYMtAjiyKj2MplbpWoVMBTtBTzEreLM7N
 LVK66IlBK7RQyVE3LKnGne85brTnQm+xrmgGnuPM56933qM3vgDemyKT7 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10199"; a="263625246"
X-IronPort-AV: E=Sophos;i="5.88,211,1635231600"; d="scan'208";a="263625246"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2021 03:13:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,211,1635231600"; d="scan'208";a="605473588"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by FMSMGA003.fm.intel.com with ESMTP; 16 Dec 2021 03:13:55 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 16 Dec 2021 03:13:55 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 16 Dec 2021 03:13:54 -0800
Received: from fmsmsx611.amr.corp.intel.com ([10.18.126.91]) by
 fmsmsx611.amr.corp.intel.com ([10.18.126.91]) with mapi id 15.01.2308.020;
 Thu, 16 Dec 2021 03:13:54 -0800
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [RFC] drm/i915/display: Move cdclk checks to atomic
 check
Thread-Index: AQHX7Zirw1XLC69+IkirYbkC0zpgg6wsEU2AgAju+2A=
Date: Thu, 16 Dec 2021 11:13:54 +0000
Message-ID: <ffde0e3ddd704ac79aa1f20c0fb7e1b2@intel.com>
References: <20211210073451.2526909-1-anusha.srivatsa@intel.com>
 <8735n03fg8.fsf@intel.com>
In-Reply-To: <8735n03fg8.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.223.10.1]
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC] drm/i915/display: Move cdclk checks to atomic
 check
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



> -----Original Message-----
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Friday, December 10, 2021 4:17 PM
> To: Srivatsa, Anusha <anusha.srivatsa@intel.com>; intel-
> gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [RFC] drm/i915/display: Move cdclk checks to ato=
mic
> check
>=20
> On Thu, 09 Dec 2021, Anusha Srivatsa <anusha.srivatsa@intel.com> wrote:
> > i915 has squashing for DG2 and crawling for ADLP.
> > Moving the checks to atomic check phase so at a later phase we know
> > how the cdclk changes.
>=20
> Just some high level comments:
>=20
> - Functions named intel_cdclk_can_foo() must *not* change the state,
>   that's unexpected and surprising.
>=20
> - There's a bunch of state handling already for cdclk, please don't just
>   dump new state in drm_i915_private, outside of the existing states. In
>   particular, storing yet another copy of cdclk is suspicious.
>=20
> - Please don't add short stuff like CRAWL and SQUASH to our module
>   namespace.
>=20
Will keep in mind for hopefully a better non-RFC version. Thanks for the fe=
edback.

Anusha
> BR,
> Jani.
>=20
>=20
> >
> > Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_cdclk.c | 49 +++++++++++++---------
> >  drivers/gpu/drm/i915/i915_drv.h            | 11 +++++
> >  2 files changed, 41 insertions(+), 19 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > index 639a64733f61..9382dd24d889 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > @@ -1707,9 +1707,27 @@ static void bxt_set_cdclk(struct
> drm_i915_private *dev_priv,
> >  		return;
> >  	}
> >
> > -	if (HAS_CDCLK_CRAWL(dev_priv) && dev_priv->cdclk.hw.vco > 0 &&
> vco > 0) {
> > -		if (dev_priv->cdclk.hw.vco !=3D vco)
> > -			adlp_cdclk_pll_crawl(dev_priv, vco);
> > +	if (DISPLAY_VER(dev_priv) >=3D 12) {
> > +		int i =3D 0;
> > +		u32 squash_ctl =3D 0;
> > +		struct cdclk_steps *cdclk_steps =3D dev_priv->cdclk.steps;
> > +
> > +		for (i =3D 0; i < CDCLK_ACTIONS; i++) {
> > +			switch (cdclk_steps[i].action) {
> > +			case CRAWL:
> > +				adlp_cdclk_pll_crawl(dev_priv, vco);
> > +				break;
> > +			case SQUASH:
> > +				waveform =3D
> cdclk_squash_waveform(dev_priv, cdclk_steps[i].cdclk);
> > +				clock =3D vco / 2;
> > +				squash_ctl =3D CDCLK_SQUASH_ENABLE |
> > +				CDCLK_SQUASH_WINDOW_SIZE(0xf) |
> waveform;
> > +				intel_de_write(dev_priv,
> CDCLK_SQUASH_CTL, squash_ctl);
> > +				break;
> > +			default:
> > +				break;
> > +			}
> > +		}
> >  	} else if (DISPLAY_VER(dev_priv) >=3D 11) {
> >  		if (dev_priv->cdclk.hw.vco !=3D 0 &&
> >  		    dev_priv->cdclk.hw.vco !=3D vco)
> > @@ -1726,22 +1744,7 @@ static void bxt_set_cdclk(struct
> drm_i915_private *dev_priv,
> >  			bxt_de_pll_enable(dev_priv, vco);
> >  	}
> >
> > -	waveform =3D cdclk_squash_waveform(dev_priv, cdclk);
> > -
> > -	if (waveform)
> > -		clock =3D vco / 2;
> > -	else
> > -		clock =3D cdclk;
> > -
> > -	if (has_cdclk_squasher(dev_priv)) {
> > -		u32 squash_ctl =3D 0;
> > -
> > -		if (waveform)
> > -			squash_ctl =3D CDCLK_SQUASH_ENABLE |
> > -				CDCLK_SQUASH_WINDOW_SIZE(0xf) |
> waveform;
> > -
> > -		intel_de_write(dev_priv, CDCLK_SQUASH_CTL, squash_ctl);
> > -	}
> > +	clock =3D cdclk;
> >
> >  	val =3D bxt_cdclk_cd2x_div_sel(dev_priv, clock, vco) |
> >  		bxt_cdclk_cd2x_pipe(dev_priv, pipe) | @@ -1934,6 +1937,7
> @@ static
> > bool intel_cdclk_can_crawl(struct drm_i915_private *dev_priv,
> >  				  const struct intel_cdclk_config *a,
> >  				  const struct intel_cdclk_config *b)  {
> > +	struct cdclk_steps *cdclk_transition =3D dev_priv->cdclk.steps;
> >  	int a_div, b_div;
> >
> >  	if (!HAS_CDCLK_CRAWL(dev_priv))
> > @@ -1946,6 +1950,9 @@ static bool intel_cdclk_can_crawl(struct
> drm_i915_private *dev_priv,
> >  	a_div =3D DIV_ROUND_CLOSEST(a->vco, a->cdclk);
> >  	b_div =3D DIV_ROUND_CLOSEST(b->vco, b->cdclk);
> >
> > +	cdclk_transition[0].action =3D CRAWL;
> > +	cdclk_transition[0].cdclk =3D b->cdclk;
> > +
> >  	return a->vco !=3D 0 && b->vco !=3D 0 &&
> >  		a->vco !=3D b->vco &&
> >  		a_div =3D=3D b_div &&
> > @@ -1956,6 +1963,7 @@ static bool intel_cdclk_can_squash(struct
> drm_i915_private *dev_priv,
> >  				   const struct intel_cdclk_config *a,
> >  				   const struct intel_cdclk_config *b)  {
> > +	struct cdclk_steps *cdclk_transition =3D dev_priv->cdclk.steps;
> >  	/*
> >  	 * FIXME should store a bit more state in intel_cdclk_config
> >  	 * to differentiate squasher vs. cd2x divider properly. For @@
> > -1965,6 +1973,9 @@ static bool intel_cdclk_can_squash(struct
> drm_i915_private *dev_priv,
> >  	if (!has_cdclk_squasher(dev_priv))
> >  		return false;
> >
> > +	cdclk_transition[0].action =3D SQUASH;
> > +	cdclk_transition[0].cdclk =3D b->cdclk;
> > +
> >  	return a->cdclk !=3D b->cdclk &&
> >  		a->vco !=3D 0 &&
> >  		a->vco =3D=3D b->vco &&
> > diff --git a/drivers/gpu/drm/i915/i915_drv.h
> > b/drivers/gpu/drm/i915/i915_drv.h index ae7dc7862b5d..c03299253b81
> > 100644
> > --- a/drivers/gpu/drm/i915/i915_drv.h
> > +++ b/drivers/gpu/drm/i915/i915_drv.h
> > @@ -117,6 +117,12 @@
> >
> >  struct drm_i915_gem_object;
> >
> > +enum cdclk_actions {
> > +	SQUASH =3D 0,
> > +	CRAWL,
> > +	CDCLK_ACTIONS
> > +};
> > +
> >  /* Threshold =3D=3D 5 for long IRQs, 50 for short */  #define
> > HPD_STORM_DEFAULT_THRESHOLD 50
> >
> > @@ -782,6 +788,11 @@ struct drm_i915_private {
> >  		const struct intel_cdclk_vals *table;
> >
> >  		struct intel_global_obj obj;
> > +
> > +		struct cdclk_steps {
> > +			enum cdclk_actions action;
> > +			u32 cdclk;
> > +		} steps[CDCLK_ACTIONS];
> >  	} cdclk;
> >
> >  	struct {
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
