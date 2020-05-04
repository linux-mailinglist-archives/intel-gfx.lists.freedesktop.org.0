Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 109A21C3DF6
	for <lists+intel-gfx@lfdr.de>; Mon,  4 May 2020 17:03:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A13776E04E;
	Mon,  4 May 2020 15:03:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A0416E04E
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 May 2020 15:03:46 +0000 (UTC)
IronPort-SDR: SqCEFbkI61gH3a0R3v+pcFqXdd98/W3oe5WyaP1i3uTvGc0IDME1okCcLzORAy1PkzqqO7Z2+Q
 ZIORfgjvqhPg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2020 08:03:46 -0700
IronPort-SDR: YzyFtOUOwgSJg+dASg1I8WDGErR8ZT5FGg41+sUq7EOoeJiKa5QRziMoyV5E9lzyS478qi1ajW
 +49U5eIk20lw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,352,1583222400"; d="scan'208";a="304203880"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 04 May 2020 08:03:43 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 04 May 2020 18:02:23 +0300
Date: Mon, 4 May 2020 18:02:23 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20200504150223.GC6112@intel.com>
References: <20200429101034.8208-1-ville.syrjala@linux.intel.com>
 <20200429101034.8208-5-ville.syrjala@linux.intel.com>
 <20200502011818.GM188376@mdroper-desk1.amr.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200502011818.GM188376@mdroper-desk1.amr.corp.intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 04/12] drm/i915/fbc: Fix nuke for pre-snb
 platforms
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

On Fri, May 01, 2020 at 06:18:18PM -0700, Matt Roper wrote:
> On Wed, Apr 29, 2020 at 01:10:26PM +0300, Ville Syrjala wrote:
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > =

> > The MSG_FBC_REND_STATE register only exists on snb+. For older
> =

> I only find this register in the bspec for HSW+.  Is the spec incomplete
> or am I looking in the wrong place?

The docs are a bit of a mess around this area. IIRC this rcs nuke
workaround was documented for ivb+ (presumably due to ppgtt).
I thinka the bltter counterpart (part of the BCS_ECOSKPD dance)
was documented for SNB as well which implies the register is there
and working. Also the fact that the code works does confirm that.

We're not really following much of the documented stuff for =

FBC since we basically don't use the hardware tracking all.
So the value of the docs is mostly in finding the right bits
to cause nukes and turn off hw tracking as much as possible.

> =

> It's a bit hard to review these changes for older platforms since there
> doesn't really seem to be much FBC/DPFC documentation at all in the
> bspec until we get to BDW and beyond.  The only explicit mention I can
> find of nuke-on-flip for older platforms is a SNB-specific bit in
> FBC_CTL that disables that behavior.  Do you have other documents that
> clarify that this will indeed work farther back?

gen2-gen4 bspec has slightly better docs on FBC compared to more recent
platforms. Sadly I've never been able to find a way to trigger a nuke
explicitly, hence we resort to (ab)using a flip nuke.

> =

> =

> Matt
> =

> > platforms (would also work for snb+) we can simply rewite DSPSURF
> > to trigger a flip nuke.
> > =

> > While generally RMW is considered harmful we'll use it here for
> > simplicity. And since FBC doesn't exist in i830 we don't have to
> > worry about the DSPSURF double buffering hardware fails present
> > on that platform.
> > =

> > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_fbc.c | 34 +++++++++++++++++++++++-
> >  1 file changed, 33 insertions(+), 1 deletion(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm=
/i915/display/intel_fbc.c
> > index 613ab499d42e..983224e07eaf 100644
> > --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> > @@ -188,8 +188,30 @@ static bool g4x_fbc_is_active(struct drm_i915_priv=
ate *dev_priv)
> >  	return intel_de_read(dev_priv, DPFC_CONTROL) & DPFC_CTL_EN;
> >  }
> >  =

> > +static void i8xx_fbc_recompress(struct drm_i915_private *dev_priv)
> > +{
> > +	struct intel_fbc_reg_params *params =3D &dev_priv->fbc.params;
> > +	enum i9xx_plane_id i9xx_plane =3D params->crtc.i9xx_plane;
> > +
> > +	spin_lock_irq(&dev_priv->uncore.lock);
> > +	intel_de_write_fw(dev_priv, DSPADDR(i9xx_plane),
> > +			  intel_de_read_fw(dev_priv, DSPADDR(i9xx_plane)));
> > +	spin_unlock_irq(&dev_priv->uncore.lock);
> > +}
> > +
> > +static void i965_fbc_recompress(struct drm_i915_private *dev_priv)
> > +{
> > +	struct intel_fbc_reg_params *params =3D &dev_priv->fbc.params;
> > +	enum i9xx_plane_id i9xx_plane =3D params->crtc.i9xx_plane;
> > +
> > +	spin_lock_irq(&dev_priv->uncore.lock);
> > +	intel_de_write_fw(dev_priv, DSPSURF(i9xx_plane),
> > +			  intel_de_read_fw(dev_priv, DSPSURF(i9xx_plane)));
> > +	spin_unlock_irq(&dev_priv->uncore.lock);
> > +}
> > +
> >  /* This function forces a CFB recompression through the nuke operation=
. */
> > -static void intel_fbc_recompress(struct drm_i915_private *dev_priv)
> > +static void snb_fbc_recompress(struct drm_i915_private *dev_priv)
> >  {
> >  	struct intel_fbc *fbc =3D &dev_priv->fbc;
> >  =

> > @@ -199,6 +221,16 @@ static void intel_fbc_recompress(struct drm_i915_p=
rivate *dev_priv)
> >  	intel_de_posting_read(dev_priv, MSG_FBC_REND_STATE);
> >  }
> >  =

> > +static void intel_fbc_recompress(struct drm_i915_private *dev_priv)
> > +{
> > +	if (INTEL_GEN(dev_priv) >=3D 6)
> > +		snb_fbc_recompress(dev_priv);
> > +	else if (INTEL_GEN(dev_priv) >=3D 4)
> > +		i965_fbc_recompress(dev_priv);
> > +	else
> > +		i8xx_fbc_recompress(dev_priv);
> > +}
> > +
> >  static void ilk_fbc_activate(struct drm_i915_private *dev_priv)
> >  {
> >  	struct intel_fbc_reg_params *params =3D &dev_priv->fbc.params;
> > -- =

> > 2.24.1
> > =

> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> =

> -- =

> Matt Roper
> Graphics Software Engineer
> VTT-OSGC Platform Enablement
> Intel Corporation
> (916) 356-2795

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
