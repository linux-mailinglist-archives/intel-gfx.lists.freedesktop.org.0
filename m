Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21745213988
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jul 2020 13:45:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21AEA6E0E1;
	Fri,  3 Jul 2020 11:45:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF45B6E0E1
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jul 2020 11:45:42 +0000 (UTC)
IronPort-SDR: Zkv542Z311FZgyreYBdIAHpK66GYy7xJBJLIlEra9nzU0EOkgAI20NugMWqWX/toFeBa/4SIAu
 6yfFSRZn7Pjw==
X-IronPort-AV: E=McAfee;i="6000,8403,9670"; a="144655941"
X-IronPort-AV: E=Sophos;i="5.75,308,1589266800"; d="scan'208";a="144655941"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2020 04:45:41 -0700
IronPort-SDR: ZpsCOO9ZBnhHl4HHyhbSTWhGdExqJYxgmIqkAHCEATJTZ+svn6vfbD6NsiEIT5ZXcjap94Ajer
 yCvWwBxXOqiw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,308,1589266800"; d="scan'208";a="296190806"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 03 Jul 2020 04:45:39 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 03 Jul 2020 14:45:38 +0300
Date: Fri, 3 Jul 2020 14:45:38 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20200703114538.GM6112@intel.com>
References: <20200702153723.24327-1-ville.syrjala@linux.intel.com>
 <20200702153723.24327-3-ville.syrjala@linux.intel.com>
 <4640b96482ac43decad11d006ca7112433b742ed.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4640b96482ac43decad11d006ca7112433b742ed.camel@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915/fbc: Fix nuke for pre-snb
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jul 02, 2020 at 11:02:05PM +0000, Souza, Jose wrote:
> On Thu, 2020-07-02 at 18:37 +0300, Ville Syrjala wrote:
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > =

> > The MSG_FBC_REND_STATE register only exists on snb+. For older
> > platforms (would also work for snb+) we can simply rewite DSPSURF
> > to trigger a flip nuke.
> > =

> > While generally RMW is considered harmful we'll use it here for
> > simplicity. And since FBC doesn't exist in i830 we don't have to
> > worry about the DSPSURF double buffering hardware fails present
> > on that platform.
> =

> Did not found a explicit statement about writing DSPSURF will nuke compre=
ssed buffer but that makes sense,

Flip nuke is certainly a thing, but flipping to the same address I think
might be somewhat undefined. IIRC I did test this however and it worked
just fine.

> also checked that MSG_FBC_REND_STATE do not
> exist this older platforms.
> =

> Reviewed-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> =

> > =

> > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_fbc.c | 34 +++++++++++++++++++++++-
> >  1 file changed, 33 insertions(+), 1 deletion(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm=
/i915/display/intel_fbc.c
> > index d30c2a389294..036546ce8db8 100644
> > --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> > @@ -187,8 +187,30 @@ static bool g4x_fbc_is_active(struct drm_i915_priv=
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

> > @@ -198,6 +220,16 @@ static void intel_fbc_recompress(struct drm_i915_p=
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

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
