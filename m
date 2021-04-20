Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B4F13661D4
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Apr 2021 00:01:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2C136E8F8;
	Tue, 20 Apr 2021 22:01:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6320E6E8F8
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Apr 2021 22:01:14 +0000 (UTC)
IronPort-SDR: Gpcd4fEirQY/nF9JhVWa/29/ZyN1egYvi7WuaaAic3BJwyUWEMG062Us8qdjYgi25f8qLT4rv+
 ZJFLJN5hrzmA==
X-IronPort-AV: E=McAfee;i="6200,9189,9960"; a="182730436"
X-IronPort-AV: E=Sophos;i="5.82,238,1613462400"; d="scan'208";a="182730436"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2021 15:01:00 -0700
IronPort-SDR: dcGxskv/Hal9Q0HZFJVEBXZzN0X+ByMIUrnQcM6Do1I0tUBYUNR0OG+mKmxQDvpWbC1NCuWcRX
 mUvEcgZmoxaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,238,1613462400"; d="scan'208";a="385520226"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga006.jf.intel.com with SMTP; 20 Apr 2021 15:00:56 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 21 Apr 2021 01:00:56 +0300
Date: Wed, 21 Apr 2021 01:00:56 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <YH9PGOFJ64Xkdi6u@intel.com>
References: <20210328225709.18541-1-daniele.ceraolospurio@intel.com>
 <20210328225709.18541-15-daniele.ceraolospurio@intel.com>
 <YH7pqNrpkhPRkCS8@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YH7pqNrpkhPRkCS8@intel.com>
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
Cc: Jani Nikula <jani.nikula@intel.com>, Gaurav Kumar <kumar.gaurav@intel.com>,
 intel-gfx@lists.freedesktop.org, Huang Sean Z <sean.z.huang@intel.com>,
 Bommu Krishnaiah <krishnaiah.bommu@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Apr 20, 2021 at 10:48:08AM -0400, Rodrigo Vivi wrote:
> On Sun, Mar 28, 2021 at 03:57:06PM -0700, Daniele Ceraolo Spurio wrote:
> > From: Anshuman Gupta <anshuman.gupta@intel.com>
> > =

> > Add support to enable/disable PLANE_SURF Decryption Request bit.
> > It requires only to enable plane decryption support when following
> > condition met.
> > 1. PXP session is enabled.
> > 2. Buffer object is protected.
> > =

> > v2:
> > - Used gen fb obj user_flags instead gem_object_metadata. [Krishna]
> > =

> > v3:
> > - intel_pxp_gem_object_status() API changes.
> > =

> > v4: use intel_pxp_is_active (Daniele)
> > v5: rebase and use the new protected object status checker (Daniele)
> > =

> > Cc: Bommu Krishnaiah <krishnaiah.bommu@intel.com>
> > Cc: Huang Sean Z <sean.z.huang@intel.com>
> > Cc: Gaurav Kumar <kumar.gaurav@intel.com>
> > Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> > Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/skl_universal_plane.c | 14 +++++++++++---
> >  drivers/gpu/drm/i915/i915_reg.h                    |  1 +
> >  2 files changed, 12 insertions(+), 3 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drive=
rs/gpu/drm/i915/display/skl_universal_plane.c
> > index c6d7b6c054b5..b21bfb5be876 100644
> > --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > @@ -16,6 +16,7 @@
> >  #include "intel_sprite.h"
> >  #include "skl_scaler.h"
> >  #include "skl_universal_plane.h"
> > +#include "pxp/intel_pxp.h"
> >  =

> >  static const u32 skl_plane_formats[] =3D {
> >  	DRM_FORMAT_C8,
> > @@ -971,7 +972,7 @@ skl_program_plane(struct intel_plane *plane,
> >  	u8 alpha =3D plane_state->hw.alpha >> 8;
> >  	u32 plane_color_ctl =3D 0, aux_dist =3D 0;
> >  	unsigned long irqflags;
> > -	u32 keymsk, keymax;
> > +	u32 keymsk, keymax, plane_surf;
> >  	u32 plane_ctl =3D plane_state->ctl;
> >  =

> >  	plane_ctl |=3D skl_plane_ctl_crtc(crtc_state);
> > @@ -1051,8 +1052,15 @@ skl_program_plane(struct intel_plane *plane,
> >  	 * the control register just before the surface register.
> >  	 */
> >  	intel_de_write_fw(dev_priv, PLANE_CTL(pipe, plane_id), plane_ctl);
> > -	intel_de_write_fw(dev_priv, PLANE_SURF(pipe, plane_id),
> > -			  intel_plane_ggtt_offset(plane_state) + surf_addr);
> > +	plane_surf =3D intel_plane_ggtt_offset(plane_state) + surf_addr;
> > +
> > +	if (intel_pxp_is_active(&dev_priv->gt.pxp) &&
> > +	    i915_gem_object_has_valid_protection(intel_fb_obj(fb)))
> > +		plane_surf |=3D PLANE_SURF_DECRYPTION_ENABLED;
> > +	else
> > +		plane_surf &=3D ~PLANE_SURF_DECRYPTION_ENABLED;
> =

> This part looks right. =


The &=3D~ thing is pointless.

> But what should we do about the async_flip path?
> Jani? Ville? Uma? thoughts?

Presumably it can't be actually changed by an async flip? So
probbly we want to track it in the plane_state and reject async
flips if it has changed.

> =

> > +
> > +	intel_de_write_fw(dev_priv, PLANE_SURF(pipe, plane_id), plane_surf);
> >  =

> >  	if (plane_state->scaler_id >=3D 0)
> >  		skl_program_plane_scaler(plane, crtc_state, plane_state);
> > diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i91=
5_reg.h
> > index 1fe42f4a4e4b..a0313d718905 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -7234,6 +7234,7 @@ enum {
> >  #define _PLANE_SURF_3(pipe)	_PIPE(pipe, _PLANE_SURF_3_A, _PLANE_SURF_3=
_B)
> >  #define PLANE_SURF(pipe, plane)	\
> >  	_MMIO_PLANE(plane, _PLANE_SURF_1(pipe), _PLANE_SURF_2(pipe))
> > +#define   PLANE_SURF_DECRYPTION_ENABLED		REG_BIT(2)
> >  =

> >  #define _PLANE_OFFSET_1_B			0x711a4
> >  #define _PLANE_OFFSET_2_B			0x712a4
> > -- =

> > 2.29.2
> > =

> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Ville Syrj=E4l=E4
Intel
---------------------------------------------------------------------
Intel Finland Oy
Registered Address: PL 281, 00181 Helsinki =

Business Identity Code: 0357606 - 4 =

Domiciled in Helsinki =


This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
