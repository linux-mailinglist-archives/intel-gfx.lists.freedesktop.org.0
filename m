Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1692036D6F1
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Apr 2021 14:03:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C8576E0D7;
	Wed, 28 Apr 2021 12:03:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FB9E6E0D7
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Apr 2021 12:03:22 +0000 (UTC)
IronPort-SDR: WWy8NlQcoaMIf0cMADRqjzFdXbRgScFlX8uWbnD+nCfallTS5NewZR4+kR6wXdgSBDcbf/05/j
 nrS60hyLg8yg==
X-IronPort-AV: E=McAfee;i="6200,9189,9967"; a="196832230"
X-IronPort-AV: E=Sophos;i="5.82,258,1613462400"; d="scan'208";a="196832230"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2021 05:03:19 -0700
IronPort-SDR: vWQ39jQ4EwW5JrMx1g2C/k2FEsJiFOuZLPry3EC8yPEzSQSlAgyQg3ki18wHGgwaRaPi/rYM76
 KEVUVlGEhaGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,258,1613462400"; d="scan'208";a="387682386"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga006.jf.intel.com with SMTP; 28 Apr 2021 05:03:16 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 28 Apr 2021 15:03:16 +0300
Date: Wed, 28 Apr 2021 15:03:16 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Gupta, Anshuman" <anshuman.gupta@intel.com>
Message-ID: <YIlPBEUSoz9pobQ7@intel.com>
References: <20210328225709.18541-15-daniele.ceraolospurio@intel.com>
 <20210427104311.2664-1-anshuman.gupta@intel.com>
 <YIheD5VzUuNvC4XC@intel.com>
 <cf2e94e0feea4db4a6015d5da966ab39@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cf2e94e0feea4db4a6015d5da966ab39@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v3 14/16] drm/i915/pxp: Add plane decryption
 support
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
Cc: "Bommu, Krishnaiah" <krishnaiah.bommu@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Gaurav,
 Kumar" <kumar.gaurav@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Apr 28, 2021 at 11:25:23AM +0000, Gupta, Anshuman wrote:
> =

> =

> > -----Original Message-----
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Sent: Wednesday, April 28, 2021 12:25 AM
> > To: Gupta, Anshuman <anshuman.gupta@intel.com>
> > Cc: intel-gfx@lists.freedesktop.org; Vivi, Rodrigo <rodrigo.vivi@intel.=
com>;
> > Bommu, Krishnaiah <krishnaiah.bommu@intel.com>; Huang Sean Z
> > <sean.z.huang@intel.com>; Gaurav, Kumar <kumar.gaurav@intel.com>;
> > Ceraolo Spurio, Daniele <daniele.ceraolospurio@intel.com>
> > Subject: Re: [PATCH v3 14/16] drm/i915/pxp: Add plane decryption support
> Thanks Ville for review, Below are some doubts with respect to pxp state.
> > =

> > On Tue, Apr 27, 2021 at 04:13:11PM +0530, Anshuman Gupta wrote:
> > > Add support to enable/disable PLANE_SURF Decryption Request bit.
> > > It requires only to enable plane decryption support when following
> > > condition met.
> > > 1. PXP session is enabled.
> > > 2. Buffer object is protected.
> > >
> > > v2:
> > > - Used gen fb obj user_flags instead gem_object_metadata. [Krishna]
> > >
> > > v3:
> > > - intel_pxp_gem_object_status() API changes.
> > >
> > > v4: use intel_pxp_is_active (Daniele)
> > >
> > > v5: rebase and use the new protected object status checker (Daniele)
> > >
> > > v6: used plane state for plane_decryption to handle async flip
> > >     as suggested by Ville.
> > >
> > > Cc: Bommu Krishnaiah <krishnaiah.bommu@intel.com>
> > > Cc: Huang Sean Z <sean.z.huang@intel.com>
> > > Cc: Gaurav Kumar <kumar.gaurav@intel.com>
> > > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> > > Signed-off-by: Daniele Ceraolo Spurio
> > > <daniele.ceraolospurio@intel.com>
> > > ---
> > >  .../gpu/drm/i915/display/intel_atomic_plane.c |  3 ++
> > > drivers/gpu/drm/i915/display/intel_display.c  |  5 +++
> > >  .../drm/i915/display/intel_display_types.h    |  3 ++
> > >  .../drm/i915/display/skl_universal_plane.c    | 32 +++++++++++++++++=
--
> > >  .../drm/i915/display/skl_universal_plane.h    |  1 +
> > >  drivers/gpu/drm/i915/i915_reg.h               |  1 +
> > >  6 files changed, 42 insertions(+), 3 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > > b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > > index 7bfb26ca0bd0..7057077a2b71 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > > @@ -394,6 +394,7 @@ int intel_plane_atomic_check(struct
> > intel_atomic_state *state,
> > >  		intel_atomic_get_old_crtc_state(state, crtc);
> > >  	struct intel_crtc_state *new_crtc_state =3D
> > >  		intel_atomic_get_new_crtc_state(state, crtc);
> > > +	const struct drm_framebuffer *fb =3D new_plane_state->hw.fb;
> > >
> > >  	if (new_crtc_state && new_crtc_state->bigjoiner_slave) {
> > >  		struct intel_plane *master_plane =3D
> > > @@ -409,6 +410,8 @@ int intel_plane_atomic_check(struct
> > intel_atomic_state *state,
> > >  	intel_plane_copy_uapi_to_hw_state(new_plane_state,
> > >  					  new_master_plane_state,
> > >  					  crtc);
> > > +	new_plane_state->plane_decryption =3D
> > > +		i915_gem_object_has_valid_protection(intel_fb_obj(fb));
> > >
> > >  	new_plane_state->uapi.visible =3D false;
> > >  	if (!new_crtc_state)
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > > b/drivers/gpu/drm/i915/display/intel_display.c
> > > index a10e26380ef3..55ab2d0b92d8 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > @@ -9367,6 +9367,10 @@ static int intel_atomic_check_async(struct
> > intel_atomic_state *state)
> > >  			drm_dbg_kms(&i915->drm, "Color range cannot be
> > changed in async flip\n");
> > >  			return -EINVAL;
> > >  		}
> > > +
> > > +		/* plane decryption is allow to change only in synchronous flips
> > */
> > > +		if (old_plane_state->plane_decryption !=3D new_plane_state-
> > >plane_decryption)
> > > +			return -EINVAL;
> > >  	}
> > >
> > >  	return 0;
> > > @@ -12350,6 +12354,7 @@ static void readout_plane_state(struct
> > > drm_i915_private *dev_priv)
> > >
> > >  		crtc =3D intel_get_crtc_for_pipe(dev_priv, pipe);
> > >  		crtc_state =3D to_intel_crtc_state(crtc->base.state);
> > > +		intel_plane_read_hw_decryption(plane_state);
> > =

> > We don't have real plane state readout anyway, so seems pointless.
> > =

> > >
> > >  		intel_set_plane_visible(crtc_state, plane_state, visible);
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > index e2e707c4dff5..76b3bb64a36a 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > @@ -617,6 +617,9 @@ struct intel_plane_state {
> > >
> > >  	struct intel_fb_view view;
> > >
> > > +	/* Plane pxp decryption state */
> > > +	bool plane_decryption;
> > > +
> > =

> > It's all about the plane, so the plane_ prefix is entirely redundant.
> > Could just call it "decrypt" I guess.
> > =

> > >  	/* plane control register */
> > >  	u32 ctl;
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > > b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > > index 75d3ca3dbb37..74489217e580 100644
> > > --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > > +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > > @@ -17,6 +17,7 @@
> > >  #include "intel_sprite.h"
> > >  #include "skl_scaler.h"
> > >  #include "skl_universal_plane.h"
> > > +#include "pxp/intel_pxp.h"
> > >
> > >  static const u32 skl_plane_formats[] =3D {
> > >  	DRM_FORMAT_C8,
> > > @@ -956,7 +957,7 @@ skl_program_plane(struct intel_plane *plane,
> > >  	u8 alpha =3D plane_state->hw.alpha >> 8;
> > >  	u32 plane_color_ctl =3D 0, aux_dist =3D 0;
> > >  	unsigned long irqflags;
> > > -	u32 keymsk, keymax;
> > > +	u32 keymsk, keymax, plane_surf;
> > >  	u32 plane_ctl =3D plane_state->ctl;
> > >
> > >  	plane_ctl |=3D skl_plane_ctl_crtc(crtc_state); @@ -1037,8 +1038,15 =
@@
> > > skl_program_plane(struct intel_plane *plane,
> > >  	 * the control register just before the surface register.
> > >  	 */
> > >  	intel_de_write_fw(dev_priv, PLANE_CTL(pipe, plane_id), plane_ctl);
> > > -	intel_de_write_fw(dev_priv, PLANE_SURF(pipe, plane_id),
> > > -			  intel_plane_ggtt_offset(plane_state) + surf_addr);
> > > +	plane_surf =3D intel_plane_ggtt_offset(plane_state) + surf_addr;
> > > +
> > > +	if (intel_pxp_is_active(&dev_priv->gt.pxp) &&
> > =

> > That should all be part of the state computation. And you're missing th=
is in the
> > .async_flip path totally.
> Hi Ville / Rodrigo / Daniele,
> Is it possible to check  intel_pxp_is_active() in plane atomic check func=
tion to compute plane decryption state?
> with my best knowledge session can be invalid at any time, Let's say in p=
lane atomic check function pxp session was enabled
> but while in atomic commit pxp session can be still disabled. =


I can be invalidated any time after the commit anyway. What happens in
that case?

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
