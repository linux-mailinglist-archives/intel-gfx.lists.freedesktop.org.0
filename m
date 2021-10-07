Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67B87424D60
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Oct 2021 08:41:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18CBB6F38A;
	Thu,  7 Oct 2021 06:41:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2737E6F38A
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Oct 2021 06:41:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10129"; a="206297156"
X-IronPort-AV: E=Sophos;i="5.85,352,1624345200"; d="scan'208";a="206297156"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2021 23:41:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,352,1624345200"; d="scan'208";a="624141134"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga001.fm.intel.com with SMTP; 06 Oct 2021 23:41:49 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 07 Oct 2021 09:41:48 +0300
Date: Thu, 7 Oct 2021 09:41:48 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Li, Juston" <juston.li@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Shankar, Uma" <uma.shankar@intel.com>,
 "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "Gupta, Anshuman" <anshuman.gupta@intel.com>,
 "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>
Message-ID: <YV6WrFe/M96V/fkR@intel.com>
References: <20211006235704.28894-1-ville.syrjala@linux.intel.com>
 <20211006235704.28894-2-ville.syrjala@linux.intel.com>
 <8c6ec163d2a7a82da19887026fb75c3e1bfe30df.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <8c6ec163d2a7a82da19887026fb75c3e1bfe30df.camel@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915: Move the pxp plane state
 computation
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Oct 07, 2021 at 05:52:47AM +0000, Li, Juston wrote:
> On Thu, 2021-10-07 at 02:57 +0300, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > No real reason to have this pxp state computation in
> > intel_atomic_check_planes(). Just stuff it into skl_plane_check().
> > 
> > There was also some funny state copying being done from the
> > old plane state to the new plane state when the plane is anyway
> > disabled.
> > 
> > The one thing we presumably must remember to do is copy
> > over the decrypt state when assigning a Y plane for planar
> > YCbCr scanout, so that the Y plane's PLANE_SURF will get the
> > appropriate bit set. The force_black thing should not matter
> > as I'm pretty sure all that stuff is ignored for the Y plane.

Hmm. Might even want to just clear force_black explicitly since
then we won't waste time writing the plane CSC registers if the flag
was previously set when the Y plane was used as an independent plane.

> > I suppose this was the reason for the odd placement for the
> > state computation, but I see no reason to deviate from the
> > standard way of doing these things. This also guarantees
> > that we don't calculate things differently between the
> > linked UV and Y plane.
> > 
> > Cc: Anshuman Gupta <anshuman.gupta@intel.com>
> > Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> > Cc: Juston Li <juston.li@intel.com>
> > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > Cc: Uma Shankar <uma.shankar@intel.com>
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c  | 31 +----------------
> > --
> >  .../drm/i915/display/skl_universal_plane.c    | 15 +++++++++
> >  2 files changed, 16 insertions(+), 30 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index 4f0badb11bbb..bb45872cb619 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -71,8 +71,6 @@
> >  #include "gt/intel_rps.h"
> >  #include "gt/gen8_ppgtt.h"
> >  
> > -#include "pxp/intel_pxp.h"
> > -
> >  #include "g4x_dp.h"
> >  #include "g4x_hdmi.h"
> >  #include "i915_drv.h"
> > @@ -6662,6 +6660,7 @@ static int icl_check_nv12_planes(struct
> > intel_crtc_state *crtc_state)
> >                 linked_state->ctl = plane_state->ctl |
> > PLANE_CTL_YUV420_Y_PLANE;
> >                 linked_state->color_ctl = plane_state->color_ctl;
> >                 linked_state->view = plane_state->view;
> > +               linked_state->decrypt = plane_state->decrypt;
> 
> Ahh this was what we were missing before.
> 
> The computation was originally in skl_plane_check() but to get it
> working I moved it to intel_atomic_check_planes() after
> icl_check_nv12_planes() so that it would set that plane's decrypt flag
> as well, not knowing I could just do this.

Right. Figured that was probably the reason.

> 
> Reviewed-by: Juston Li <juston.li@intel.com>

Ta.

> 
> >                 intel_plane_copy_hw_state(linked_state, plane_state);
> >                 linked_state->uapi.src = plane_state->uapi.src;
> > @@ -9024,28 +9023,13 @@ static int
> > intel_bigjoiner_add_affected_planes(struct intel_atomic_state *state)
> >         return 0;
> >  }
> >  
> > -static bool bo_has_valid_encryption(struct drm_i915_gem_object *obj)
> > -{
> > -       struct drm_i915_private *i915 = to_i915(obj->base.dev);
> > -
> > -       return intel_pxp_key_check(&i915->gt.pxp, obj, false) == 0;
> > -}
> > -
> > -static bool pxp_is_borked(struct drm_i915_gem_object *obj)
> > -{
> > -       return i915_gem_object_is_protected(obj) &&
> > !bo_has_valid_encryption(obj);
> > -}
> > -
> >  static int intel_atomic_check_planes(struct intel_atomic_state *state)
> >  {
> >         struct drm_i915_private *dev_priv = to_i915(state->base.dev);
> >         struct intel_crtc_state *old_crtc_state, *new_crtc_state;
> >         struct intel_plane_state *plane_state;
> >         struct intel_plane *plane;
> > -       struct intel_plane_state *new_plane_state;
> > -       struct intel_plane_state *old_plane_state;
> >         struct intel_crtc *crtc;
> > -       const struct drm_framebuffer *fb;
> >         int i, ret;
> >  
> >         ret = icl_add_linked_planes(state);
> > @@ -9093,19 +9077,6 @@ static int intel_atomic_check_planes(struct
> > intel_atomic_state *state)
> >                         return ret;
> >         }
> >  
> > -       for_each_new_intel_plane_in_state(state, plane, plane_state, i)
> > {
> > -               new_plane_state =
> > intel_atomic_get_new_plane_state(state, plane);
> > -               old_plane_state =
> > intel_atomic_get_old_plane_state(state, plane);
> > -               fb = new_plane_state->hw.fb;
> > -               if (fb) {
> > -                       new_plane_state->decrypt =
> > bo_has_valid_encryption(intel_fb_obj(fb));
> > -                       new_plane_state->force_black =
> > pxp_is_borked(intel_fb_obj(fb));
> > -               } else {
> > -                       new_plane_state->decrypt = old_plane_state-
> > >decrypt;
> > -                       new_plane_state->force_black = old_plane_state-
> > >force_black;
> > -               }
> > -       }
> > -
> >         return 0;
> >  }
> >  
> > diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > index a0e53a3b267a..1fcb41942c7e 100644
> > --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > @@ -1737,6 +1737,18 @@ static bool skl_fb_scalable(const struct
> > drm_framebuffer *fb)
> >         }
> >  }
> >  
> > +static bool bo_has_valid_encryption(struct drm_i915_gem_object *obj)
> > +{
> > +       struct drm_i915_private *i915 = to_i915(obj->base.dev);
> > +
> > +       return intel_pxp_key_check(&i915->gt.pxp, obj, false) == 0;
> > +}
> > +
> > +static bool pxp_is_borked(struct drm_i915_gem_object *obj)
> > +{
> > +       return i915_gem_object_is_protected(obj) &&
> > !bo_has_valid_encryption(obj);
> > +}
> > +
> >  static int skl_plane_check(struct intel_crtc_state *crtc_state,
> >                            struct intel_plane_state *plane_state)
> >  {
> > @@ -1781,6 +1793,9 @@ static int skl_plane_check(struct
> > intel_crtc_state *crtc_state,
> >         if (ret)
> >                 return ret;
> >  
> > +       plane_state->decrypt =
> > bo_has_valid_encryption(intel_fb_obj(fb));
> > +       plane_state->force_black = pxp_is_borked(intel_fb_obj(fb));
> > +
> >         /* HW only has 8 bits pixel precision, disable plane if
> > invisible */
> >         if (!(plane_state->hw.alpha >> 8))
> >                 plane_state->uapi.visible = false;
> 

-- 
Ville Syrjälä
Intel
