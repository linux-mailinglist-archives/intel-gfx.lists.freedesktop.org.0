Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 233B2210AA7
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Jul 2020 13:59:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F2FF6E43F;
	Wed,  1 Jul 2020 11:59:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 764736E43F
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Jul 2020 11:59:42 +0000 (UTC)
IronPort-SDR: vSR68m0+ok7b6F7hpHm0U9u+ih0tPTSNU5aoMgG9NvRLFvGY4kQN5Y4Ujq4HZg6hAVTgajFVm0
 Hf0iBKaB4crA==
X-IronPort-AV: E=McAfee;i="6000,8403,9668"; a="134821602"
X-IronPort-AV: E=Sophos;i="5.75,300,1589266800"; d="scan'208";a="134821602"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2020 04:59:42 -0700
IronPort-SDR: V5+uhmFFGvKjEgQtdxtUWdRjlgaoEzH2ZliqOUMZd6RNRSCDrHp2OPchbRpqP1FU1Wg4/cFbo0
 JvEtr1OW5rWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,300,1589266800"; d="scan'208";a="356092849"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 01 Jul 2020 04:59:40 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 01 Jul 2020 14:59:39 +0300
Date: Wed, 1 Jul 2020 14:59:39 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20200701115939.GZ6112@intel.com>
References: <20200701010655.226379-1-jose.souza@intel.com>
 <20200701115722.GY6112@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200701115722.GY6112@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915/tgl: Implement WA
 18011464164
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jul 01, 2020 at 02:57:22PM +0300, Ville Syrj=E4l=E4 wrote:
> On Tue, Jun 30, 2020 at 06:06:54PM -0700, Jos=E9 Roberto de Souza wrote:
> > This fix some possible corruptions.
> > =

> > v2:
> > Renamed SLICE_UNIT_LEVEL_CLOCK_GATING_CTL to
> > SLICE_UNIT_LEVEL_CLKGATE_CTL_94D8
> =

> Spec people are getting creative with the naming :/
> =

> > =

> > BSpec: 52755
> > BSpec: 52890
> > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> > ---
> >  drivers/gpu/drm/i915/i915_reg.h | 3 +++
> >  drivers/gpu/drm/i915/intel_pm.c | 8 +++++++-
> >  2 files changed, 10 insertions(+), 1 deletion(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i91=
5_reg.h
> > index 9d6536afc94b..76bc70d214b6 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -4174,6 +4174,9 @@ enum {
> >  #define INF_UNIT_LEVEL_CLKGATE		_MMIO(0x9560)
> >  #define   CGPSF_CLKGATE_DIS		(1 << 3)
> >  =

> > +#define SLICE_UNIT_LEVEL_CLKGATE_CTL_94D8	_MMIO(0x94D8)
> > +#define   GS_UNIT_CLOCK_GATING_DIS		REG_BIT(24)
> > +

Oh, and that should probably live next to its cousin.

> >  /*
> >   * Display engine regs
> >   */
> > diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/int=
el_pm.c
> > index 2a32d6230795..80293e3e48ad 100644
> > --- a/drivers/gpu/drm/i915/intel_pm.c
> > +++ b/drivers/gpu/drm/i915/intel_pm.c
> > @@ -7113,7 +7113,7 @@ static void tgl_init_clock_gating(struct drm_i915=
_private *dev_priv)
> >  	I915_WRITE(POWERGATE_ENABLE,
> >  		   I915_READ(POWERGATE_ENABLE) | vd_pg_enable);
> >  =

> > -	/* Wa_1409825376:tgl (pre-prod)*/
> > +	/* Wa_1409825376:tgl (pre-prod) */
> >  	if (IS_TGL_REVID(dev_priv, TGL_REVID_A0, TGL_REVID_A0))
> >  		I915_WRITE(GEN9_CLKGATE_DIS_3, I915_READ(GEN9_CLKGATE_DIS_3) |
> >  			   TGL_VRH_GATING_DIS);
> > @@ -7121,6 +7121,12 @@ static void tgl_init_clock_gating(struct drm_i91=
5_private *dev_priv)
> >  	/* Wa_14011059788:tgl */
> >  	intel_uncore_rmw(&dev_priv->uncore, GEN10_DFR_RATIO_EN_AND_CHICKEN,
> >  			 0, DFR_DISABLE);
> > +
> > +	/* Wa_18011464164:tgl */
> > +	if (IS_TGL_REVID(dev_priv, TGL_REVID_B0, TGL_REVID_B0))
> > +		intel_uncore_rmw(&dev_priv->uncore,
> > +				 SLICE_UNIT_LEVEL_CLKGATE_CTL_94D8, 0,
> > +				 GS_UNIT_CLOCK_GATING_DIS);
> =

> Still looks like the wrong place for gt w/as though.
> =

> >  }
> >  =

> >  static void cnp_init_clock_gating(struct drm_i915_private *dev_priv)
> > -- =

> > 2.27.0
> =

> -- =

> Ville Syrj=E4l=E4
> Intel

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
