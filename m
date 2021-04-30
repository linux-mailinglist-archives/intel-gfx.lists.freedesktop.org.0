Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5759336FAEF
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Apr 2021 14:52:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 974BD6F485;
	Fri, 30 Apr 2021 12:52:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FDD56F452
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Apr 2021 12:52:11 +0000 (UTC)
IronPort-SDR: Z0eyERyS9ezyMRy2Uysw7eN+fYrh9kyvICIZrqKZoVAkuuuklyL7cQNumY0aSsW7Fapbg2d2gx
 OTP0IQqwwp5Q==
X-IronPort-AV: E=McAfee;i="6200,9189,9969"; a="194081457"
X-IronPort-AV: E=Sophos;i="5.82,262,1613462400"; d="scan'208";a="194081457"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2021 05:52:10 -0700
IronPort-SDR: KhCjK5VDKnXBrWUDqiBuwRRRcJ5hBfQ/priI1s/80YJRwl/jt4G+GYXtKeQbKM3rE1QrSoFlfK
 DUvNiEctgwDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,262,1613462400"; d="scan'208";a="424987740"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga008.fm.intel.com with SMTP; 30 Apr 2021 05:52:08 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 30 Apr 2021 15:52:07 +0300
Date: Fri, 30 Apr 2021 15:52:07 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Gupta, Anshuman" <anshuman.gupta@intel.com>
Message-ID: <YIv9d7NmFW6rP/CJ@intel.com>
References: <20210328225709.18541-15-daniele.ceraolospurio@intel.com>
 <20210427104311.2664-1-anshuman.gupta@intel.com>
 <YIheD5VzUuNvC4XC@intel.com>
 <cf2e94e0feea4db4a6015d5da966ab39@intel.com>
 <YIlPBEUSoz9pobQ7@intel.com>
 <a47d84e4-b661-d437-b9e3-c68383acdfa7@intel.com>
 <YIm/4JYWoaGAffew@intel.com>
 <814d711c-9de5-7527-1014-1f3bef200776@intel.com>
 <1776513a5f0f4901900ec129655ae3e5@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1776513a5f0f4901900ec129655ae3e5@intel.com>
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

On Fri, Apr 30, 2021 at 06:56:10AM +0000, Gupta, Anshuman wrote:
> =

> =

> > -----Original Message-----
> > From: Ceraolo Spurio, Daniele <daniele.ceraolospurio@intel.com>
> > Sent: Thursday, April 29, 2021 2:10 AM
> > To: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Cc: Gupta, Anshuman <anshuman.gupta@intel.com>; Vivi, Rodrigo
> > <rodrigo.vivi@intel.com>; intel-gfx@lists.freedesktop.org; Bommu, Krish=
naiah
> > <krishnaiah.bommu@intel.com>; Gaurav, Kumar <kumar.gaurav@intel.com>
> > Subject: Re: [PATCH v3 14/16] drm/i915/pxp: Add plane decryption support
> > =

> > =

> > =

> > On 4/28/2021 1:04 PM, Ville Syrj=E4l=E4 wrote:
> > > On Wed, Apr 28, 2021 at 10:32:46AM -0700, Daniele Ceraolo Spurio wrot=
e:
> > >>
> > >> On 4/28/2021 5:03 AM, Ville Syrj=E4l=E4 wrote:
> > >>> On Wed, Apr 28, 2021 at 11:25:23AM +0000, Gupta, Anshuman wrote:
> > >>>>> -----Original Message-----
> > >>>>> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > >>>>> Sent: Wednesday, April 28, 2021 12:25 AM
> > >>>>> To: Gupta, Anshuman <anshuman.gupta@intel.com>
> > >>>>> Cc: intel-gfx@lists.freedesktop.org; Vivi, Rodrigo
> > >>>>> <rodrigo.vivi@intel.com>; Bommu, Krishnaiah
> > >>>>> <krishnaiah.bommu@intel.com>; Huang Sean Z
> > >>>>> <sean.z.huang@intel.com>; Gaurav, Kumar <kumar.gaurav@intel.com>;
> > >>>>> Ceraolo Spurio, Daniele <daniele.ceraolospurio@intel.com>
> > >>>>> Subject: Re: [PATCH v3 14/16] drm/i915/pxp: Add plane decryption
> > >>>>> support
> > >>>> Thanks Ville for review, Below are some doubts with respect to pxp=
 state.
> > >>>>> On Tue, Apr 27, 2021 at 04:13:11PM +0530, Anshuman Gupta wrote:
> > >>>>>> Add support to enable/disable PLANE_SURF Decryption Request bit.
> > >>>>>> It requires only to enable plane decryption support when
> > >>>>>> following condition met.
> > >>>>>> 1. PXP session is enabled.
> > >>>>>> 2. Buffer object is protected.
> > >>>>>>
> > >>>>>> v2:
> > >>>>>> - Used gen fb obj user_flags instead gem_object_metadata.
> > >>>>>> [Krishna]
> > >>>>>>
> > >>>>>> v3:
> > >>>>>> - intel_pxp_gem_object_status() API changes.
> > >>>>>>
> > >>>>>> v4: use intel_pxp_is_active (Daniele)
> > >>>>>>
> > >>>>>> v5: rebase and use the new protected object status checker
> > >>>>>> (Daniele)
> > >>>>>>
> > >>>>>> v6: used plane state for plane_decryption to handle async flip
> > >>>>>>       as suggested by Ville.
> > >>>>>>
> > >>>>>> Cc: Bommu Krishnaiah <krishnaiah.bommu@intel.com>
> > >>>>>> Cc: Huang Sean Z <sean.z.huang@intel.com>
> > >>>>>> Cc: Gaurav Kumar <kumar.gaurav@intel.com>
> > >>>>>> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > >>>>>> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> > >>>>>> Signed-off-by: Daniele Ceraolo Spurio
> > >>>>>> <daniele.ceraolospurio@intel.com>
> > >>>>>> ---
> > >>>>>>    .../gpu/drm/i915/display/intel_atomic_plane.c |  3 ++
> > >>>>>> drivers/gpu/drm/i915/display/intel_display.c  |  5 +++
> > >>>>>>    .../drm/i915/display/intel_display_types.h    |  3 ++
> > >>>>>>    .../drm/i915/display/skl_universal_plane.c    | 32 ++++++++++=
+++++++-
> > -
> > >>>>>>    .../drm/i915/display/skl_universal_plane.h    |  1 +
> > >>>>>>    drivers/gpu/drm/i915/i915_reg.h               |  1 +
> > >>>>>>    6 files changed, 42 insertions(+), 3 deletions(-)
> > >>>>>>
> > >>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > >>>>>> b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > >>>>>> index 7bfb26ca0bd0..7057077a2b71 100644
> > >>>>>> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > >>>>>> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > >>>>>> @@ -394,6 +394,7 @@ int intel_plane_atomic_check(struct
> > >>>>> intel_atomic_state *state,
> > >>>>>>    		intel_atomic_get_old_crtc_state(state, crtc);
> > >>>>>>    	struct intel_crtc_state *new_crtc_state =3D
> > >>>>>>    		intel_atomic_get_new_crtc_state(state, crtc);
> > >>>>>> +	const struct drm_framebuffer *fb =3D new_plane_state->hw.fb;
> > >>>>>>
> > >>>>>>    	if (new_crtc_state && new_crtc_state->bigjoiner_slave) {
> > >>>>>>    		struct intel_plane *master_plane =3D @@ -409,6 +410,8
> > @@ int
> > >>>>>> intel_plane_atomic_check(struct
> > >>>>> intel_atomic_state *state,
> > >>>>>>    	intel_plane_copy_uapi_to_hw_state(new_plane_state,
> > >>>>>>    					  new_master_plane_state,
> > >>>>>>    					  crtc);
> > >>>>>> +	new_plane_state->plane_decryption =3D
> > >>>>>> +
> > 	i915_gem_object_has_valid_protection(intel_fb_obj(fb));
> > >>>>>>
> > >>>>>>    	new_plane_state->uapi.visible =3D false;
> > >>>>>>    	if (!new_crtc_state)
> > >>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > >>>>>> b/drivers/gpu/drm/i915/display/intel_display.c
> > >>>>>> index a10e26380ef3..55ab2d0b92d8 100644
> > >>>>>> --- a/drivers/gpu/drm/i915/display/intel_display.c
> > >>>>>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > >>>>>> @@ -9367,6 +9367,10 @@ static int intel_atomic_check_async(struct
> > >>>>> intel_atomic_state *state)
> > >>>>>>    			drm_dbg_kms(&i915->drm, "Color range
> > cannot be
> > >>>>> changed in async flip\n");
> > >>>>>>    			return -EINVAL;
> > >>>>>>    		}
> > >>>>>> +
> > >>>>>> +		/* plane decryption is allow to change only in
> > synchronous
> > >>>>>> +flips
> > >>>>> */
> > >>>>>> +		if (old_plane_state->plane_decryption !=3D
> > new_plane_state-
> > >>>>>> plane_decryption)
> > >>>>>> +			return -EINVAL;
> > >>>>>>    	}
> > >>>>>>
> > >>>>>>    	return 0;
> > >>>>>> @@ -12350,6 +12354,7 @@ static void readout_plane_state(struct
> > >>>>>> drm_i915_private *dev_priv)
> > >>>>>>
> > >>>>>>    		crtc =3D intel_get_crtc_for_pipe(dev_priv, pipe);
> > >>>>>>    		crtc_state =3D to_intel_crtc_state(crtc->base.state);
> > >>>>>> +		intel_plane_read_hw_decryption(plane_state);
> > >>>>> We don't have real plane state readout anyway, so seems pointless.
> > >>>>>
> > >>>>>>    		intel_set_plane_visible(crtc_state, plane_state, visible);
> > >>>>>>
> > >>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> > >>>>>> b/drivers/gpu/drm/i915/display/intel_display_types.h
> > >>>>>> index e2e707c4dff5..76b3bb64a36a 100644
> > >>>>>> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > >>>>>> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > >>>>>> @@ -617,6 +617,9 @@ struct intel_plane_state {
> > >>>>>>
> > >>>>>>    	struct intel_fb_view view;
> > >>>>>>
> > >>>>>> +	/* Plane pxp decryption state */
> > >>>>>> +	bool plane_decryption;
> > >>>>>> +
> > >>>>> It's all about the plane, so the plane_ prefix is entirely redund=
ant.
> > >>>>> Could just call it "decrypt" I guess.
> > >>>>>
> > >>>>>>    	/* plane control register */
> > >>>>>>    	u32 ctl;
> > >>>>>>
> > >>>>>> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > >>>>>> b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > >>>>>> index 75d3ca3dbb37..74489217e580 100644
> > >>>>>> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > >>>>>> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > >>>>>> @@ -17,6 +17,7 @@
> > >>>>>>    #include "intel_sprite.h"
> > >>>>>>    #include "skl_scaler.h"
> > >>>>>>    #include "skl_universal_plane.h"
> > >>>>>> +#include "pxp/intel_pxp.h"
> > >>>>>>
> > >>>>>>    static const u32 skl_plane_formats[] =3D {
> > >>>>>>    	DRM_FORMAT_C8,
> > >>>>>> @@ -956,7 +957,7 @@ skl_program_plane(struct intel_plane *plane,
> > >>>>>>    	u8 alpha =3D plane_state->hw.alpha >> 8;
> > >>>>>>    	u32 plane_color_ctl =3D 0, aux_dist =3D 0;
> > >>>>>>    	unsigned long irqflags;
> > >>>>>> -	u32 keymsk, keymax;
> > >>>>>> +	u32 keymsk, keymax, plane_surf;
> > >>>>>>    	u32 plane_ctl =3D plane_state->ctl;
> > >>>>>>
> > >>>>>>    	plane_ctl |=3D skl_plane_ctl_crtc(crtc_state); @@ -1037,8
> > >>>>>> +1038,15 @@ skl_program_plane(struct intel_plane *plane,
> > >>>>>>    	 * the control register just before the surface register.
> > >>>>>>    	 */
> > >>>>>>    	intel_de_write_fw(dev_priv, PLANE_CTL(pipe, plane_id),
> > plane_ctl);
> > >>>>>> -	intel_de_write_fw(dev_priv, PLANE_SURF(pipe, plane_id),
> > >>>>>> -			  intel_plane_ggtt_offset(plane_state) +
> > surf_addr);
> > >>>>>> +	plane_surf =3D intel_plane_ggtt_offset(plane_state) + surf_add=
r;
> > >>>>>> +
> > >>>>>> +	if (intel_pxp_is_active(&dev_priv->gt.pxp) &&
> > >>>>> That should all be part of the state computation. And you're
> > >>>>> missing this in the .async_flip path totally.
> > >>>> Hi Ville / Rodrigo / Daniele,
> > >>>> Is it possible to check  intel_pxp_is_active() in plane atomic che=
ck function
> > to compute plane decryption state?
> > >> Yes, it should be possible to call that function from anywhere.
> > >>
> > >>>> with my best knowledge session can be invalid at any time, Let's
> > >>>> say in plane atomic check function pxp session was enabled but whi=
le in
> > atomic commit pxp session can be still disabled.
> > >>> I can be invalidated any time after the commit anyway. What happens
> > >>> in that case?
> > >> If we flip a PXP object after the relevant key has been invalidated
> > >> we just get garbage on the screen.
> > >> Note that it is understood that this is a race we can't completely
> > >> close given that the session invalidation can hit us at any time,
> > > It should be possible if the invalidation thingy gave us a warning
> > > ahead of time and then waited for us to actually stop scanout.
> > =

> > Apart from suspend/resume scenarios, invalidations mainly occur when th=
ere is
> > an event that the HW perceives as something that could compromise the
> > security, so the keys are revoked immediately. There is a GuC-controlle=
d timer
> > that can be enabled to have a grace period for the user to remove the p=
roblem
> > before revoking the keys (I was planning to send that as a follow-up), =
but AFAIU
> > there is no way to control that from the CPU.
> > =

> > Daniele
> AFAIU with respect to inputs from Ville and Daniele, I can think of somet=
hing like below ,
> Compute plane state by checking both PXP session is enabled and Buffer ob=
ject is protected
> =

> plane_state->plane_decryption =3D intel_pxp_is_active() && i915_gem_objec=
t_has_valid_protection()
> =

> and let's check the whether pxp session is still valid before setting the=
 plane decryption bit.
> =

> If (plane_state->plane_decryption =3D =3D intel_pxp_is_active )
> 	plane_surf |=3D PLANE_SURF_DECRYPTION_ENABLED
> else =

> 	display black pixels
> =

> Please provide yours opinion if above approach is correct ?

I think we need something like
 plane_state->decrypt =3D bo_is_encrypted();
 plane_state->force_black =3D plane_state->decrypt && pxp_is_bork;

The other problem with this approach is that it still totally depends on
userspace submitting a new flip/update on this specific plane. To make
it a bit more robust we should perhaps track which planes are scanning
out encrypted stuff and force all of them to update if things got
revoked. But we can think about that more later.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
