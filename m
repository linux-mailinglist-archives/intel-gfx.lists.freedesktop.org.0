Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F7A136F611
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Apr 2021 09:02:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8C356E4B5;
	Fri, 30 Apr 2021 07:02:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FF8B6E4AF
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Apr 2021 07:02:01 +0000 (UTC)
IronPort-SDR: BxxD63tneg9Wkw3STOB6flQSI5pgIocfRYlS3Svad/x5NAhkkiiB63ibK4sNDx9vrco1WloYEI
 logO/Tv0BVYA==
X-IronPort-AV: E=McAfee;i="6200,9189,9969"; a="282556296"
X-IronPort-AV: E=Sophos;i="5.82,260,1613462400"; d="scan'208";a="282556296"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2021 00:02:01 -0700
IronPort-SDR: ol2u9/yiFvSoeQ4INZtmIoGDvMQxKTfVqtetKSjM7LcQXVLHfDtu10xGO6ZzQwewoJl8Fbv7Dy
 aJ+GoVFb9+dA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,260,1613462400"; d="scan'208";a="527536077"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga001.fm.intel.com with ESMTP; 30 Apr 2021 00:02:00 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 30 Apr 2021 00:02:00 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 30 Apr 2021 00:01:58 -0700
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2106.013;
 Fri, 30 Apr 2021 12:31:56 +0530
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH v3 14/16] drm/i915/pxp: Add plane decryption support
Thread-Index: AQHXJCXNFqECV7rM0EyIv5QKnBEZmarH/72AgACJdoCABEqmAA==
Date: Fri, 30 Apr 2021 07:01:56 +0000
Message-ID: <9d1c3db435c14d4da85d228392c317cc@intel.com>
References: <20210328225709.18541-15-daniele.ceraolospurio@intel.com>
 <20210427104311.2664-1-anshuman.gupta@intel.com> <YIheD5VzUuNvC4XC@intel.com>
In-Reply-To: <YIheD5VzUuNvC4XC@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.5.1.3
dlp-reaction: no-action
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
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



> -----Original Message-----
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Wednesday, April 28, 2021 12:25 AM
> To: Gupta, Anshuman <anshuman.gupta@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Vivi, Rodrigo <rodrigo.vivi@intel.co=
m>;
> Bommu, Krishnaiah <krishnaiah.bommu@intel.com>; Huang Sean Z
> <sean.z.huang@intel.com>; Gaurav, Kumar <kumar.gaurav@intel.com>;
> Ceraolo Spurio, Daniele <daniele.ceraolospurio@intel.com>
> Subject: Re: [PATCH v3 14/16] drm/i915/pxp: Add plane decryption support
> =

> On Tue, Apr 27, 2021 at 04:13:11PM +0530, Anshuman Gupta wrote:
> > Add support to enable/disable PLANE_SURF Decryption Request bit.
> > It requires only to enable plane decryption support when following
> > condition met.
> > 1. PXP session is enabled.
> > 2. Buffer object is protected.
> >
> > v2:
> > - Used gen fb obj user_flags instead gem_object_metadata. [Krishna]
> >
> > v3:
> > - intel_pxp_gem_object_status() API changes.
> >
> > v4: use intel_pxp_is_active (Daniele)
> >
> > v5: rebase and use the new protected object status checker (Daniele)
> >
> > v6: used plane state for plane_decryption to handle async flip
> >     as suggested by Ville.
> >
> > Cc: Bommu Krishnaiah <krishnaiah.bommu@intel.com>
> > Cc: Huang Sean Z <sean.z.huang@intel.com>
> > Cc: Gaurav Kumar <kumar.gaurav@intel.com>
> > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> > Signed-off-by: Daniele Ceraolo Spurio
> > <daniele.ceraolospurio@intel.com>
> > ---
> >  .../gpu/drm/i915/display/intel_atomic_plane.c |  3 ++
> > drivers/gpu/drm/i915/display/intel_display.c  |  5 +++
> >  .../drm/i915/display/intel_display_types.h    |  3 ++
> >  .../drm/i915/display/skl_universal_plane.c    | 32 +++++++++++++++++--
> >  .../drm/i915/display/skl_universal_plane.h    |  1 +
> >  drivers/gpu/drm/i915/i915_reg.h               |  1 +
> >  6 files changed, 42 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > index 7bfb26ca0bd0..7057077a2b71 100644
> > --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > @@ -394,6 +394,7 @@ int intel_plane_atomic_check(struct
> intel_atomic_state *state,
> >  		intel_atomic_get_old_crtc_state(state, crtc);
> >  	struct intel_crtc_state *new_crtc_state =3D
> >  		intel_atomic_get_new_crtc_state(state, crtc);
> > +	const struct drm_framebuffer *fb =3D new_plane_state->hw.fb;
> >
> >  	if (new_crtc_state && new_crtc_state->bigjoiner_slave) {
> >  		struct intel_plane *master_plane =3D
> > @@ -409,6 +410,8 @@ int intel_plane_atomic_check(struct
> intel_atomic_state *state,
> >  	intel_plane_copy_uapi_to_hw_state(new_plane_state,
> >  					  new_master_plane_state,
> >  					  crtc);
> > +	new_plane_state->plane_decryption =3D
> > +		i915_gem_object_has_valid_protection(intel_fb_obj(fb));
> >
> >  	new_plane_state->uapi.visible =3D false;
> >  	if (!new_crtc_state)
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index a10e26380ef3..55ab2d0b92d8 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -9367,6 +9367,10 @@ static int intel_atomic_check_async(struct
> intel_atomic_state *state)
> >  			drm_dbg_kms(&i915->drm, "Color range cannot be
> changed in async flip\n");
> >  			return -EINVAL;
> >  		}
> > +
> > +		/* plane decryption is allow to change only in synchronous flips
> */
> > +		if (old_plane_state->plane_decryption !=3D new_plane_state-
> >plane_decryption)
> > +			return -EINVAL;
> >  	}
> >
> >  	return 0;
> > @@ -12350,6 +12354,7 @@ static void readout_plane_state(struct
> > drm_i915_private *dev_priv)
> >
> >  		crtc =3D intel_get_crtc_for_pipe(dev_priv, pipe);
> >  		crtc_state =3D to_intel_crtc_state(crtc->base.state);
> > +		intel_plane_read_hw_decryption(plane_state);
> =

> We don't have real plane state readout anyway, so seems pointless.
could u please guide me the correct place to read the old plane decrypt
State, some where we do need to populate the plane decrypt state with plane
surface register decrypt bit.
How about plane->get_hw_state ?
Thanks,
Anshuman Gupta. =

> =

> >
> >  		intel_set_plane_visible(crtc_state, plane_state, visible);
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > index e2e707c4dff5..76b3bb64a36a 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -617,6 +617,9 @@ struct intel_plane_state {
> >
> >  	struct intel_fb_view view;
> >
> > +	/* Plane pxp decryption state */
> > +	bool plane_decryption;
> > +
> =

> It's all about the plane, so the plane_ prefix is entirely redundant.
> Could just call it "decrypt" I guess.
> =

> >  	/* plane control register */
> >  	u32 ctl;
> >
> > diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > index 75d3ca3dbb37..74489217e580 100644
> > --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > @@ -17,6 +17,7 @@
> >  #include "intel_sprite.h"
> >  #include "skl_scaler.h"
> >  #include "skl_universal_plane.h"
> > +#include "pxp/intel_pxp.h"
> >
> >  static const u32 skl_plane_formats[] =3D {
> >  	DRM_FORMAT_C8,
> > @@ -956,7 +957,7 @@ skl_program_plane(struct intel_plane *plane,
> >  	u8 alpha =3D plane_state->hw.alpha >> 8;
> >  	u32 plane_color_ctl =3D 0, aux_dist =3D 0;
> >  	unsigned long irqflags;
> > -	u32 keymsk, keymax;
> > +	u32 keymsk, keymax, plane_surf;
> >  	u32 plane_ctl =3D plane_state->ctl;
> >
> >  	plane_ctl |=3D skl_plane_ctl_crtc(crtc_state); @@ -1037,8 +1038,15 @@
> > skl_program_plane(struct intel_plane *plane,
> >  	 * the control register just before the surface register.
> >  	 */
> >  	intel_de_write_fw(dev_priv, PLANE_CTL(pipe, plane_id), plane_ctl);
> > -	intel_de_write_fw(dev_priv, PLANE_SURF(pipe, plane_id),
> > -			  intel_plane_ggtt_offset(plane_state) + surf_addr);
> > +	plane_surf =3D intel_plane_ggtt_offset(plane_state) + surf_addr;
> > +
> > +	if (intel_pxp_is_active(&dev_priv->gt.pxp) &&
> =

> That should all be part of the state computation. And you're missing this=
 in the
> .async_flip path totally.
> =

> > +	    plane_state->plane_decryption)
> > +		plane_surf |=3D PLANE_SURF_DECRYPTION_ENABLED;
> > +	else
> > +		plane_surf &=3D ~PLANE_SURF_DECRYPTION_ENABLED;
> =

> This &=3D~ stuff is still 100% pointless.
> =

> So just
> if (plane_state->decrypt)
> 	surf_addr |=3D ...;
> =

> should do it. And I'd do it around the top of the function where we calcu=
late a
> bunch of the other register values. That keeps most of the function clean=
 of
> random ifs. Just after the aux_dist calculation would seem like the corre=
ct spot
> to me.
> =

> > +
> > +	intel_de_write_fw(dev_priv, PLANE_SURF(pipe, plane_id), plane_surf);
> >
> >  	if (plane_state->scaler_id >=3D 0)
> >  		skl_program_plane_scaler(plane, crtc_state, plane_state); @@
> > -2242,3 +2250,21 @@ skl_get_initial_plane_config(struct intel_crtc *crt=
c,
> >  	kfree(intel_fb);
> >  }
> >
> > +void intel_plane_read_hw_decryption(struct intel_plane_state
> > +*plane_state) {
> > +	struct intel_plane *plane =3D to_intel_plane(plane_state->uapi.plane);
> > +	struct drm_i915_private *i915 =3D to_i915(plane->base.dev);
> > +	enum intel_display_power_domain power_domain;
> > +	enum plane_id plane_id =3D plane->id;
> > +	intel_wakeref_t wakeref;
> > +
> > +	power_domain =3D POWER_DOMAIN_PIPE(plane->pipe);
> > +	wakeref =3D intel_display_power_get_if_enabled(i915, power_domain);
> > +	if (drm_WARN_ON(&i915->drm, !wakeref))
> > +		return;
> > +
> > +	plane_state->plane_decryption  =3D
> > +		intel_de_read(i915, PLANE_SURF(plane->pipe, plane_id)) &
> > +PLANE_SURF_DECRYPTION_ENABLED;
> > +
> > +	intel_display_power_put(i915, power_domain, wakeref); }
> > diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.h
> > b/drivers/gpu/drm/i915/display/skl_universal_plane.h
> > index 351040b64dc7..2b1d673f8bf5 100644
> > --- a/drivers/gpu/drm/i915/display/skl_universal_plane.h
> > +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.h
> > @@ -31,5 +31,6 @@ int skl_calc_main_surface_offset(const struct
> > intel_plane_state *plane_state,  bool icl_is_nv12_y_plane(struct
> drm_i915_private *dev_priv,
> >  			 enum plane_id plane_id);
> >  bool icl_is_hdr_plane(struct drm_i915_private *dev_priv, enum
> > plane_id plane_id);
> > +void intel_plane_read_hw_decryption(struct intel_plane_state
> > +*plane_state);
> >
> >  #endif
> > diff --git a/drivers/gpu/drm/i915/i915_reg.h
> > b/drivers/gpu/drm/i915/i915_reg.h index 740e97663fec..fbaf9199001d
> > 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -7240,6 +7240,7 @@ enum {
> >  #define _PLANE_SURF_3(pipe)	_PIPE(pipe, _PLANE_SURF_3_A,
> _PLANE_SURF_3_B)
> >  #define PLANE_SURF(pipe, plane)	\
> >  	_MMIO_PLANE(plane, _PLANE_SURF_1(pipe), _PLANE_SURF_2(pipe))
> > +#define   PLANE_SURF_DECRYPTION_ENABLED		REG_BIT(2)
> =

> Could be just PLANE_SURF_DECRYPT or something along those lines.
> =

> >
> >  #define _PLANE_OFFSET_1_B			0x711a4
> >  #define _PLANE_OFFSET_2_B			0x712a4
> > --
> > 2.26.2
> =

> --
> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
