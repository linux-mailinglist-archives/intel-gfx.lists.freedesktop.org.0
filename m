Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B24281C82DF
	for <lists+intel-gfx@lfdr.de>; Thu,  7 May 2020 08:53:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 399776E91C;
	Thu,  7 May 2020 06:53:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 175D16E91C
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 May 2020 06:53:17 +0000 (UTC)
IronPort-SDR: pCd2ZgRFY/Afqs1yBFYqwOBBlIaLy4/Q+mW1K0wLIad1Hw5AFm1RfgufLSrWcl3Rx0jZiNSdjE
 ooYSksHvxh3A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2020 23:53:16 -0700
IronPort-SDR: Gaq71CMInhdBkKA7j0qXnrwo522dlPzKiOx1N++JIPQk22xwii1OoJKSyWPiMgsqVrguAzm5wH
 VAZJT3FPGzQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,362,1583222400"; d="scan'208";a="296439114"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 06 May 2020 23:53:14 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 07 May 2020 09:53:13 +0300
Date: Thu, 7 May 2020 09:53:13 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <20200507065313.GX6112@intel.com>
References: <20200311155422.3043-1-ville.syrjala@linux.intel.com>
 <20200311155422.3043-3-ville.syrjala@linux.intel.com>
 <20200506160341.GB8813@ideak-desk.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200506160341.GB8813@ideak-desk.fi.intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v3 2/3] drm/i915: Stash hpd status bits
 under dev_priv
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

On Wed, May 06, 2020 at 07:03:41PM +0300, Imre Deak wrote:
> On Wed, Mar 11, 2020 at 05:54:21PM +0200, Ville Syrjala wrote:
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > =

> > Instead of constnantly having to figure out which hpd status bit
> > array to use let's store them under dev_priv.
> > =

> > Should perhaps take this further and stash even more stuff to
> > make the hpd handling more abstract yet.
> > =

> > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/i915_drv.h |   2 +
> >  drivers/gpu/drm/i915/i915_irq.c | 198 ++++++++++++++++++--------------
> >  2 files changed, 111 insertions(+), 89 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i91=
5_drv.h
> > index 19195bde4921..b5afbabf4c3b 100644
> > --- a/drivers/gpu/drm/i915/i915_drv.h
> > +++ b/drivers/gpu/drm/i915/i915_drv.h
> > @@ -149,6 +149,8 @@ enum hpd_pin {
> >  struct i915_hotplug {
> >  	struct delayed_work hotplug_work;
> >  =

> > +	const u32 *hpd, *pch_hpd;
> > +
> >  	struct {
> >  		unsigned long last_jiffies;
> >  		int count;
> > diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i91=
5_irq.c
> > index 9f0653cf0510..b95d952bd47d 100644
> > --- a/drivers/gpu/drm/i915/i915_irq.c
> > +++ b/drivers/gpu/drm/i915/i915_irq.c
> > @@ -124,7 +124,6 @@ static const u32 hpd_status_i915[HPD_NUM_PINS] =3D {
> >  	[HPD_PORT_D] =3D PORTD_HOTPLUG_INT_STATUS,
> >  };
> >  =

> > -/* BXT hpd list */
> >  static const u32 hpd_bxt[HPD_NUM_PINS] =3D {
> >  	[HPD_PORT_A] =3D BXT_DE_PORT_HP_DDIA,
> >  	[HPD_PORT_B] =3D BXT_DE_PORT_HP_DDIB,
> > @@ -168,6 +167,44 @@ static const u32 hpd_tgp[HPD_NUM_PINS] =3D {
> >  	[HPD_PORT_I] =3D SDE_TC_HOTPLUG_ICP(PORT_TC6),
> >  };
> >  =

> > +static void intel_hpd_init_pins(struct drm_i915_private *dev_priv)
> > +{
> > +	struct i915_hotplug *hpd =3D &dev_priv->hotplug;
> > +
> > +	if (HAS_GMCH(dev_priv)) {
> > +		if (IS_G4X(dev_priv) || IS_VALLEYVIEW(dev_priv) ||
> > +		    IS_CHERRYVIEW(dev_priv))
> > +			hpd->hpd =3D hpd_status_g4x;
> > +		else
> > +			hpd->hpd =3D hpd_status_i915;
> > +		return;
> > +	}
> > +
> > +	if (INTEL_GEN(dev_priv) >=3D 12)
> > +		hpd->hpd =3D hpd_gen12;
> > +	else if (INTEL_GEN(dev_priv) >=3D 11)
> > +		hpd->hpd =3D hpd_gen11;
> > +	else if (IS_GEN9_LP(dev_priv))
> > +		hpd->hpd =3D hpd_bxt;
> > +	else if (INTEL_GEN(dev_priv) >=3D 8)
> > +		hpd->hpd =3D hpd_bdw;
> > +	else if (INTEL_GEN(dev_priv) >=3D 7)
> > +		hpd->hpd =3D hpd_ivb;
> > +	else
> > +		hpd->hpd =3D hpd_ilk;
> > +
> > +	if (HAS_PCH_TGP(dev_priv) || HAS_PCH_JSP(dev_priv))
> > +		hpd->pch_hpd =3D hpd_tgp;
> > +	else if (HAS_PCH_ICP(dev_priv) || HAS_PCH_MCC(dev_priv))
> > +		hpd->pch_hpd =3D hpd_icp;
> > +	else if (HAS_PCH_SPT(dev_priv))
> =

> What about CNP?

Argh. We have too many of these. Do we even need all of them?

> =

> > +		hpd->pch_hpd =3D hpd_spt;
> > +	else if (HAS_PCH_LPT(dev_priv) || HAS_PCH_CPT(dev_priv))
> > +		hpd->pch_hpd =3D hpd_cpt;
> > +	else if (HAS_PCH_IBX(dev_priv))
> > +		hpd->pch_hpd =3D hpd_ibx;
> =

> Can we add MISSING_CASE for PCH platforms?

else if (HAS_PCH_SPLIT())
	MISSING_CASE(INTEL_PCH_TYPE())
?

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
