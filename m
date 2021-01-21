Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B86E22FF69E
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Jan 2021 22:00:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62EBE6E95B;
	Thu, 21 Jan 2021 21:00:23 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 830D26E95B
 for <Intel-gfx@lists.freedesktop.org>; Thu, 21 Jan 2021 21:00:22 +0000 (UTC)
IronPort-SDR: agcZxzwvkJxPURSHwCRHVxNoEIODpUQeq/ttEfzSdSs7aRrVc3qSDowwgCl4/GBUE3Jm/PH0z9
 ZydrYbGppHSQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9871"; a="159125412"
X-IronPort-AV: E=Sophos;i="5.79,365,1602572400"; d="scan'208";a="159125412"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2021 13:00:07 -0800
IronPort-SDR: /eEMNXnAg/LWrv6f35NNWO+xXjf+JU9+Bbt0LIA+kHTHCRLbFjXKJGGzo+BKImDB2yeJ7+TsCx
 C2aGAZpSHH5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,365,1602572400"; d="scan'208";a="367054585"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 21 Jan 2021 13:00:02 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 21 Jan 2021 23:00:01 +0200
Date: Thu, 21 Jan 2021 23:00:01 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Gaurav, Kumar" <kumar.gaurav@intel.com>
Message-ID: <YAnrUeLAXCPATJ2F@intel.com>
References: <20210119074320.28768-1-sean.z.huang@intel.com>
 <20210119074320.28768-14-sean.z.huang@intel.com>
 <9babc226536544f7aa7ec98e80de4b21@intel.com>
 <YAnketZoGh4+ppkg@intel.com>
 <DM6PR11MB268360BF1C1787E2EFECF5AD97A10@DM6PR11MB2683.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DM6PR11MB268360BF1C1787E2EFECF5AD97A10@DM6PR11MB2683.namprd11.prod.outlook.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [RFC-v23 13/13] drm/i915/pxp: Add plane decryption
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>,
 "Intel-gfx@lists.freedesktop.org" <Intel-gfx@lists.freedesktop.org>, "Huang,
 Sean Z" <sean.z.huang@intel.com>, "Bommu,
 Krishnaiah" <krishnaiah.bommu@intel.com>, "Vetter,
 Daniel" <daniel.vetter@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 21, 2021 at 08:50:18PM +0000, Gaurav, Kumar wrote:
> Thanks Anshuman for adding me for review.
> =

> Actually, using plane Gamma is good idea to show black frame. Another opt=
ion could be alpha value since we know for ChromeOS protected buffer will a=
lways be flipped on overlays.
> =

> Below explanation captures need for black frame in i915 Display for HWDRM=
 protected surfaces -
> Problem Statement -
> There is race condition between Ring3 and Ring0 where encrypted frame cou=
ld be flipped by i915 Display despite Ring3 checking if HWDRM session keys =
are valid for encrypted frame.  =

> =

> Google Bug -
> BUG1 -[Intel] i915 framebuffer tracking (protected surfaces that can't be=
 decrypted are being rendered as encrypted) -b/155511255
> =

> Background -
> There are 4 high level pipelines working together in HWDRM playback.
> 1. CDM Pipeline -
> App CDM SW Stack -> LibVA/iHD -> i915 -> MEI -> CSME-FW =

> =

> 2. Media(Audio/Video) Pipeline
> App Media SW Stack -> LibVA/iHD -> i915 -> GPU =

> =

> 3. 3D Pipeline in Compositor
> App Composition SW Stack -> OpenGL/MESA/MiniGBM -> i915 -> GPU/Display
> =

> 4. Display Pipeline in Compositor
> App Composition SW Stack -> Ozone/MiniGBM -> i915 -> Display
> =

> Discussion Point -
> Even after Pipeline #4 is context robustness compliant there is a corner =
case/race condition for corruption as following  - BUG1
> App's Composition SW Stack -> Creates Protected Context and Protected Buf=
fer(MiniGBM)
> App's Composition SW Stack -> Supplies Protected Buffer to LibVA/iHD -> i=
915 -> GPU -> Encrypted decoded output
> App's Composition SW Stack -> Gets back decode output -> Checks for conte=
xt robustness -> Submits frame for flip -> i915 Display(by the time i915 Di=
splay gets flip PAVP session is invalid despite being atomic since invalida=
tion of PAVP is HW async event) -> Display HW -> Shows corruption

It'll always be racy unless the invalidation becomes a two stage process
that first tells display to stop scanning out the thing and then waits
for the display to finish scanning out the current frame.

> =

> =

> -----Original Message-----
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com> =

> Sent: Thursday, January 21, 2021 12:31 PM
> To: Gupta, Anshuman <anshuman.gupta@intel.com>
> Cc: Huang, Sean Z <sean.z.huang@intel.com>; Intel-gfx@lists.freedesktop.o=
rg; Nikula, Jani <jani.nikula@intel.com>; Gaurav, Kumar <kumar.gaurav@intel=
.com>; Bommu, Krishnaiah <krishnaiah.bommu@intel.com>; Vetter, Daniel <dani=
el.vetter@intel.com>
> Subject: Re: [RFC-v23 13/13] drm/i915/pxp: Add plane decryption support
> =

> On Tue, Jan 19, 2021 at 09:35:18AM +0000, Gupta, Anshuman wrote:
> > Jani/Ville
> > I had received an offline comment form Gaurav on this patch, See =

> > below,
> > > -----Original Message-----
> > > From: Huang, Sean Z <sean.z.huang@intel.com>
> > > Sent: Tuesday, January 19, 2021 1:13 PM
> > > To: Intel-gfx@lists.freedesktop.org
> > > Cc: Gaurav, Kumar <kumar.gaurav@intel.com>; Gupta, Anshuman =

> > > <anshuman.gupta@intel.com>; Bommu, Krishnaiah =

> > > <krishnaiah.bommu@intel.com>; Huang, Sean Z <sean.z.huang@intel.com>
> > > Subject: [RFC-v23 13/13] drm/i915/pxp: Add plane decryption support
> > > =

> > > From: Anshuman Gupta <anshuman.gupta@intel.com>
> > > =

> > > Add support to enable/disable PLANE_SURF Decryption Request bit.
> > > It requires only to enable plane decryption support when following =

> > > condition met.
> > > 1. PXP session is enabled.
> > > 2. Buffer object is protected.
> > > =

> > > v2:
> > > - Rebased to libva_cp-drm-tip_tgl_cp tree.
> > > - Used gen fb obj user_flags instead gem_object_metadata. [Krishna]
> > > =

> > > v3:
> > > - intel_pxp_gem_object_status() API changes.
> > > =

> > > Cc: Bommu Krishnaiah <krishnaiah.bommu@intel.com>
> > > Cc: Huang Sean Z <sean.z.huang@intel.com>
> > > Cc: Gaurav Kumar <kumar.gaurav@intel.com>
> > > Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_sprite.c | 21 ++++++++++++++++++-=
--
> > >  drivers/gpu/drm/i915/i915_reg.h             |  1 +
> > >  2 files changed, 19 insertions(+), 3 deletions(-)
> > > =

> > > diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c
> > > b/drivers/gpu/drm/i915/display/intel_sprite.c
> > > index cf3589fd0ddb..39f8c922ce66 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_sprite.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_sprite.c
> > > @@ -39,6 +39,8 @@
> > >  #include <drm/drm_plane_helper.h>
> > >  #include <drm/drm_rect.h>
> > > =

> > > +#include "pxp/intel_pxp.h"
> > > +
> > >  #include "i915_drv.h"
> > >  #include "i915_trace.h"
> > >  #include "i915_vgpu.h"
> > > @@ -768,6 +770,11 @@ icl_program_input_csc(struct intel_plane *plane,
> > >  			  PLANE_INPUT_CSC_POSTOFF(pipe, plane_id, 2), 0x0);  }
> > > =

> > > +static bool intel_fb_obj_protected(const struct drm_i915_gem_object
> > > +*obj) {
> > > +	return obj->user_flags & I915_BO_PROTECTED ? true : false; }
> > > +
> > >  static void
> > >  skl_plane_async_flip(struct intel_plane *plane,
> > >  		     const struct intel_crtc_state *crtc_state, @@ -804,6
> > > +811,7 @@ skl_program_plane(struct intel_plane *plane,
> > >  	u32 surf_addr =3D plane_state->color_plane[color_plane].offset;
> > >  	u32 stride =3D skl_plane_stride(plane_state, color_plane);
> > >  	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> > > +	const struct drm_i915_gem_object *obj =3D intel_fb_obj(fb);
> > >  	int aux_plane =3D intel_main_to_aux_plane(fb, color_plane);
> > >  	int crtc_x =3D plane_state->uapi.dst.x1;
> > >  	int crtc_y =3D plane_state->uapi.dst.y1; @@ -814,7 +822,7 @@ =

> > > skl_program_plane(struct intel_plane *plane,
> > >  	u8 alpha =3D plane_state->hw.alpha >> 8;
> > >  	u32 plane_color_ctl =3D 0, aux_dist =3D 0;
> > >  	unsigned long irqflags;
> > > -	u32 keymsk, keymax;
> > > +	u32 keymsk, keymax, plane_surf;
> > >  	u32 plane_ctl =3D plane_state->ctl;
> > > =

> > >  	plane_ctl |=3D skl_plane_ctl_crtc(crtc_state); @@ -890,8 +898,15 @@ =

> > > skl_program_plane(struct intel_plane *plane,
> > >  	 * the control register just before the surface register.
> > >  	 */
> > >  	intel_de_write_fw(dev_priv, PLANE_CTL(pipe, plane_id), plane_ctl);
> > > -	intel_de_write_fw(dev_priv, PLANE_SURF(pipe, plane_id),
> > > -			  intel_plane_ggtt_offset(plane_state) + surf_addr);
> > > +	plane_surf =3D intel_plane_ggtt_offset(plane_state) + surf_addr;
> > > +
> > > +	if (intel_pxp_gem_object_status(dev_priv) &&
> > > +	    intel_fb_obj_protected(obj))
> > > +		plane_surf |=3D PLANE_SURF_DECRYPTION_ENABLED;
> > Here in case of if fb obj is protected but pxp session is not enabled i=
.e intel_pxp_gem_object_status() returns false, request to show the black f=
rame buffer on display instead of corrupted data.
> >                             plane_surf =3D 0xXXX; //Pointer to black =

> > framebuffer But above approach would be a hack.
> > @Jani and @Ville could you please guide with the general way of handlin=
g this as pxp session keys can be invalidated at any time.
> =

> Would need such a black buffer to be always pinned into the gtt, which is=
 seems a bit wasteful. We could perhaps just force the plane to output blac=
k eg. by using the plane gamma. I think we should always have the per-plane=
 gamma available on skl+ universal planes. Cursor may be a different story.
> =

> --
> Ville Syrj=E4l=E4
> Intel

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
