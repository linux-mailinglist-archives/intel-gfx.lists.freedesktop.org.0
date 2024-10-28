Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B35E9B343F
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2024 16:02:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6954210E4E3;
	Mon, 28 Oct 2024 15:02:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jPPDGG5a";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A17C10E4E3
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Oct 2024 15:02:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730127768; x=1761663768;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=jqYhEcg17pj41GlwIlChYvjUqlv08uOQPO3LwFF0P78=;
 b=jPPDGG5ah1vFVUAGfeajL71VRy6Ur3bCi6uEIu0FBsU0HsDkK4TTUfEl
 akfgSZOvEolb8icutwHp6OfwLBoZkR4EIxHwBZ665qYva33FNXUEizWQv
 sAdhNXxXs5ZA0EHySLXkK8JhL+O3D+QEWn/wawsfLzreBpXEj3HFCk0BI
 K/AzRb0eqGMaIniaTqN1m8+EBKEU/mA7T2Q2/vAwxwh8RAnHugtATxd90
 EWHUOIF4BLcEEjc0Dr9L4lQ4WlnJA0FllDCPV1iBPBzdkjTc2KTQakKSo
 QUR16DicCd8D6rDVMZKUX+Y+wU0bGTbSA5WVvJdwt1te75nmq5IPr8sIf A==;
X-CSE-ConnectionGUID: j723LSVPQ4mlGjKS64O+Qw==
X-CSE-MsgGUID: lcBxWM8kQ9KzzJtKdUhh2Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11239"; a="29185940"
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="29185940"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 08:02:48 -0700
X-CSE-ConnectionGUID: S0lD+hDOTAuSufACUoPmYQ==
X-CSE-MsgGUID: 4zsespowQT27tMH2eZ4b6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="81747707"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 28 Oct 2024 08:02:46 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 28 Oct 2024 17:02:45 +0200
Date: Mon, 28 Oct 2024 17:02:45 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 4/9] drm/i915: Use plane->can_async_flip() for alignment
 exceptions
Message-ID: <Zx-nlbW-aPYSpG5E@intel.com>
References: <20241009182207.22900-1-ville.syrjala@linux.intel.com>
 <20241009182207.22900-5-ville.syrjala@linux.intel.com>
 <fed17f79fbb12d57f9b86e64b59f05b7b8decd58.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <fed17f79fbb12d57f9b86e64b59f05b7b8decd58.camel@intel.com>
X-Patchwork-Hint: comment
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

On Thu, Oct 24, 2024 at 10:46:42AM +0000, Hogander, Jouni wrote:
> On Wed, 2024-10-09 at 21:22 +0300, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Async flips often require bigger alignment that sync flips.
> > Currently we have HAS_ASYNC_FLIPS() checks strewn about to
> > inidcate that async flips are generally supported and thus
> > we want more alignment. Switch that over to using
> > intel_plane_can_async_flip() so that we can handle these
> > in a slightly less messy way. Currently we don't have cases
> > where async flips would require different alignment for
> > different modifiers on the same plane.
> > 
> > We'll also move the HAS_ASYNC_FLIPS() check to the plane init
> > code so that we can still use that as a quick way to disable
> > the async flips workarounds for testing purposes.
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/i9xx_plane.c     | 55 +++++++++--------
> > --
> >  .../drm/i915/display/skl_universal_plane.c    | 21 ++++---
> >  2 files changed, 37 insertions(+), 39 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c
> > b/drivers/gpu/drm/i915/display/i9xx_plane.c
> > index 7455da863a26..8d3346199645 100644
> > --- a/drivers/gpu/drm/i915/display/i9xx_plane.c
> > +++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
> > @@ -779,12 +779,11 @@ static unsigned int
> > vlv_primary_min_alignment(struct intel_plane *plane,
> >                                               const struct
> > drm_framebuffer *fb,
> >                                               int color_plane)
> >  {
> > -       struct drm_i915_private *i915 = to_i915(plane->base.dev);
> > +       if (intel_plane_can_async_flip(plane, fb->modifier))
> > +               return 256 * 1024;
> >  
> >         switch (fb->modifier) {
> >         case I915_FORMAT_MOD_X_TILED:
> > -               if (HAS_ASYNC_FLIPS(i915))
> > -                       return 256 * 1024;
> >                 return 4 * 1024;
> >         case DRM_FORMAT_MOD_LINEAR:
> >                 return 128 * 1024;
> > @@ -798,13 +797,11 @@ static unsigned int
> > g4x_primary_min_alignment(struct intel_plane *plane,
> >                                               const struct
> > drm_framebuffer *fb,
> >                                               int color_plane)
> >  {
> > -       struct drm_i915_private *i915 = to_i915(plane->base.dev);
> > +       if (intel_plane_can_async_flip(plane, fb->modifier))
> > +               return 256 * 1024;
> >  
> >         switch (fb->modifier) {
> >         case I915_FORMAT_MOD_X_TILED:
> > -               if (HAS_ASYNC_FLIPS(i915))
> > -                       return 256 * 1024;
> > -               return 4 * 1024;
> >         case DRM_FORMAT_MOD_LINEAR:
> >                 return 4 * 1024;
> >         default:
> > @@ -959,27 +956,29 @@ intel_primary_plane_create(struct
> > drm_i915_private *dev_priv, enum pipe pipe)
> >         plane->get_hw_state = i9xx_plane_get_hw_state;
> >         plane->check_plane = i9xx_plane_check;
> >  
> > -       if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
> > -               plane->async_flip = vlv_primary_async_flip;
> > -               plane->enable_flip_done =
> > vlv_primary_enable_flip_done;
> > -               plane->disable_flip_done =
> > vlv_primary_disable_flip_done;
> > -               plane->can_async_flip = i9xx_plane_can_async_flip;
> > -       } else if (IS_BROADWELL(dev_priv)) {
> > -               plane->need_async_flip_toggle_wa = true;
> > -               plane->async_flip = g4x_primary_async_flip;
> > -               plane->enable_flip_done =
> > bdw_primary_enable_flip_done;
> > -               plane->disable_flip_done =
> > bdw_primary_disable_flip_done;
> > -               plane->can_async_flip = i9xx_plane_can_async_flip;
> > -       } else if (DISPLAY_VER(dev_priv) >= 7) {
> > -               plane->async_flip = g4x_primary_async_flip;
> > -               plane->enable_flip_done =
> > ivb_primary_enable_flip_done;
> > -               plane->disable_flip_done =
> > ivb_primary_disable_flip_done;
> > -               plane->can_async_flip = i9xx_plane_can_async_flip;
> > -       } else if (DISPLAY_VER(dev_priv) >= 5) {
> > -               plane->async_flip = g4x_primary_async_flip;
> > -               plane->enable_flip_done =
> > ilk_primary_enable_flip_done;
> > -               plane->disable_flip_done =
> > ilk_primary_disable_flip_done;
> > -               plane->can_async_flip = i9xx_plane_can_async_flip;
> > +       if (HAS_ASYNC_FLIPS(dev_priv)) {
> 
> Check for HAS_ASYNC_FLIPS could be dropped. I assume you were
> considering having it would be more clear? Anyways:

I mentioned this in the commit msg:
"We'll also move the HAS_ASYNC_FLIPS() check to the plane init
 code so that we can still use that as a quick way to disable
 the async flips workarounds for testing purposes."

> 
> Reviewed-by: Jouni Högander <jouni.hogander@intel.com>
> 
> > +               if (IS_VALLEYVIEW(dev_priv) ||
> > IS_CHERRYVIEW(dev_priv)) {
> > +                       plane->async_flip = vlv_primary_async_flip;
> > +                       plane->enable_flip_done =
> > vlv_primary_enable_flip_done;
> > +                       plane->disable_flip_done =
> > vlv_primary_disable_flip_done;
> > +                       plane->can_async_flip =
> > i9xx_plane_can_async_flip;
> > +               } else if (IS_BROADWELL(dev_priv)) {
> > +                       plane->need_async_flip_toggle_wa = true;
> > +                       plane->async_flip = g4x_primary_async_flip;
> > +                       plane->enable_flip_done =
> > bdw_primary_enable_flip_done;
> > +                       plane->disable_flip_done =
> > bdw_primary_disable_flip_done;
> > +                       plane->can_async_flip =
> > i9xx_plane_can_async_flip;
> > +               } else if (DISPLAY_VER(dev_priv) >= 7) {
> > +                       plane->async_flip = g4x_primary_async_flip;
> > +                       plane->enable_flip_done =
> > ivb_primary_enable_flip_done;
> > +                       plane->disable_flip_done =
> > ivb_primary_disable_flip_done;
> > +                       plane->can_async_flip =
> > i9xx_plane_can_async_flip;
> > +               } else if (DISPLAY_VER(dev_priv) >= 5) {
> > +                       plane->async_flip = g4x_primary_async_flip;
> > +                       plane->enable_flip_done =
> > ilk_primary_enable_flip_done;
> > +                       plane->disable_flip_done =
> > ilk_primary_disable_flip_done;
> > +                       plane->can_async_flip =
> > i9xx_plane_can_async_flip;
> > +               }
> >         }
> >  
> >         modifiers = intel_fb_plane_get_modifiers(dev_priv,
> > INTEL_PLANE_CAP_TILING_X);
> > diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > index ca82cc55802e..ea72c54e8329 100644
> > --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > @@ -589,25 +589,24 @@ static u32 tgl_plane_min_alignment(struct
> > intel_plane *plane,
> >         if (intel_fb_is_ccs_aux_plane(fb, color_plane))
> >                 return mult * 4 * 1024;
> >  
> > +       /*
> > +        * FIXME ADL sees GGTT/DMAR faults with async
> > +        * flips unless we align to 16k at least.
> > +        * Figure out what's going on here...
> > +        */
> > +       if (IS_ALDERLAKE_P(i915) &&
> > +           intel_plane_can_async_flip(plane, fb->modifier))
> > +               return mult * 16 * 1024;
> > +
> >         switch (fb->modifier) {
> >         case DRM_FORMAT_MOD_LINEAR:
> >         case I915_FORMAT_MOD_X_TILED:
> >         case I915_FORMAT_MOD_Y_TILED:
> >         case I915_FORMAT_MOD_4_TILED:
> > -               /*
> > -                * FIXME ADL sees GGTT/DMAR faults with async
> > -                * flips unless we align to 16k at least.
> > -                * Figure out what's going on here...
> > -                */
> > -               if (IS_ALDERLAKE_P(i915) && HAS_ASYNC_FLIPS(i915))
> > -                       return mult * 16 * 1024;
> >                 return mult * 4 * 1024;
> >         case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS:
> >         case I915_FORMAT_MOD_4_TILED_MTL_RC_CCS:
> >         case I915_FORMAT_MOD_4_TILED_DG2_RC_CCS:
> > -               if (IS_ALDERLAKE_P(i915) && HAS_ASYNC_FLIPS(i915))
> > -                       return mult * 16 * 1024;
> > -               fallthrough;
> >         case I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS:
> >         case I915_FORMAT_MOD_4_TILED_MTL_MC_CCS:
> >         case I915_FORMAT_MOD_4_TILED_DG2_MC_CCS:
> > @@ -2689,7 +2688,7 @@ skl_universal_plane_create(struct
> > drm_i915_private *dev_priv,
> >         plane->get_hw_state = skl_plane_get_hw_state;
> >         plane->check_plane = skl_plane_check;
> >  
> > -       if (plane_id == PLANE_1) {
> > +       if (HAS_ASYNC_FLIPS(dev_priv) && plane_id == PLANE_1) {
> >                 plane->need_async_flip_toggle_wa =
> > IS_DISPLAY_VER(dev_priv, 9, 10);
> >                 plane->async_flip = skl_plane_async_flip;
> >                 plane->enable_flip_done = skl_plane_enable_flip_done;
> 

-- 
Ville Syrjälä
Intel
