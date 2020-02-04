Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C152151E75
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2020 17:44:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 101C86E886;
	Tue,  4 Feb 2020 16:44:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F30136E886
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Feb 2020 16:44:35 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Feb 2020 08:44:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,402,1574150400"; d="scan'208";a="263895768"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 04 Feb 2020 08:44:33 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 04 Feb 2020 18:44:32 +0200
Date: Tue, 4 Feb 2020 18:44:32 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>
Message-ID: <20200204164432.GB13686@intel.com>
References: <20200204112927.17391-1-anshuman.gupta@intel.com>
 <20200204112927.17391-5-anshuman.gupta@intel.com>
 <20200204143016.GN13686@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200204143016.GN13686@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 4/7] drm/i915: Fix wrongly populated plane
 possible_crtcs bit mask
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

On Tue, Feb 04, 2020 at 04:30:16PM +0200, Ville Syrj=E4l=E4 wrote:
> On Tue, Feb 04, 2020 at 04:59:24PM +0530, Anshuman Gupta wrote:
> > As a disabled pipe in pipe_mask is not having a valid intel crtc,
> > driver wrongly populates the possible_crtcs mask while initializing
> > the plane for a CRTC. Fixing up the plane possible_crtc mask.
> > =

> > changes since RFC:
> > - Simplify the possible_crtcs initialization. [Ville]
> > =

> > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 12 ++++++++++++
> >  drivers/gpu/drm/i915/display/intel_sprite.c  |  2 --
> >  2 files changed, 12 insertions(+), 2 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu=
/drm/i915/display/intel_display.c
> > index cf36c3d0f8fc..7c51eb3faeb3 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -16407,6 +16407,17 @@ static void intel_crtc_free(struct intel_crtc =
*crtc)
> >  	kfree(crtc);
> >  }
> >  =

> > +static void intel_plane_possible_crtc_init(struct drm_i915_private *de=
v_priv)
> > +{
> > +	struct intel_crtc *crtc;
> =

> Move this declaration into the loop body.
> =

> With that
> Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> > +	struct intel_plane *plane;
> > +
> > +	for_each_intel_plane(&dev_priv->drm, plane) {
> > +		crtc =3D intel_get_crtc_for_pipe(dev_priv, plane->pipe);
> > +		plane->base.possible_crtcs =3D drm_crtc_mask(&crtc->base);
> > +	}
> > +}
> > +
> >  static int intel_crtc_init(struct drm_i915_private *dev_priv, enum pip=
e pipe)
> >  {
> >  	struct intel_plane *primary, *cursor;
> > @@ -17546,6 +17557,7 @@ int intel_modeset_init(struct drm_i915_private =
*i915)
> >  		}
> >  	}
> >  =

> > +	intel_plane_possible_crtc_init(i915);
> >  	intel_shared_dpll_init(dev);
> >  	intel_update_fdi_pll_freq(i915);
> >  =

> > diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/=
drm/i915/display/intel_sprite.c
> > index fca77ec1e0dd..4a5b192678bf 100644
> > --- a/drivers/gpu/drm/i915/display/intel_sprite.c
> > +++ b/drivers/gpu/drm/i915/display/intel_sprite.c
> > @@ -3023,8 +3023,6 @@ skl_universal_plane_create(struct drm_i915_privat=
e *dev_priv,
> >  	else
> >  		plane_type =3D DRM_PLANE_TYPE_OVERLAY;
> >  =

> > -	possible_crtcs =3D BIT(pipe);
> > -

Actually that now contains stack garbage. Pls remove the variable
entire and just pass zero to the thing.

> >  	ret =3D drm_universal_plane_init(&dev_priv->drm, &plane->base,
> >  				       possible_crtcs, plane_funcs,
> >  				       formats, num_formats, modifiers,
> > -- =

> > 2.24.0
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
