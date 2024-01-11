Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D08182AFE0
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jan 2024 14:42:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B60B10E3A0;
	Thu, 11 Jan 2024 13:42:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2133C10E3A0
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jan 2024 13:42:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704980560; x=1736516560;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=1YOxedVx0QpHIF6kjB/S40hEx4PCMO6ifCNU4LoPHR4=;
 b=DhpCiz2Pyv1DLn/N7rzGUqMICNi/SF/BS58RnCTcEh/njbopJRoZU+6k
 Pv4W2SeKBFzU3r/Z8rK+JBRI20lJxzi7N0iQ6YgkecBst6SXA0w7I5kCV
 +qEb5M7RG/SHgo+0S81nB7gS6KPQlYZcsRXNi/EdVHHd9vTN/TUjoODyQ
 WBazv7T4l1m/1oTy3Q+ujJ89SIIFfBkevkTP2L7WaVg5BoP9N9y6IsYcm
 437fzy0n1lICp9+gF3AVoZv95vBUFKLwV/iZDCAnhocScYCKm6wRUVZPI
 xuVYyp/vSR9LOL0GHnKFQv7T7QG9D0q4WoGYbSPYttvWRCGqGIn3PpTa2 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10949"; a="402621433"
X-IronPort-AV: E=Sophos;i="6.04,186,1695711600"; d="scan'208";a="402621433"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2024 05:42:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10949"; a="775611788"
X-IronPort-AV: E=Sophos;i="6.04,186,1695711600"; d="scan'208";a="775611788"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 11 Jan 2024 05:42:37 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 11 Jan 2024 15:42:36 +0200
Date: Thu, 11 Jan 2024 15:42:36 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Subject: Re: [PATCH v2 15/15] drm/i915: Try to relocate the BIOS fb to the
 start of ggtt
Message-ID: <ZZ_wTKBVTO3VTvbE@intel.com>
References: <20231215105929.29568-1-ville.syrjala@linux.intel.com>
 <20231215105929.29568-16-ville.syrjala@linux.intel.com>
 <287a84e9-29c1-40a5-ad8c-f29bc9a0aab2@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <287a84e9-29c1-40a5-ad8c-f29bc9a0aab2@intel.com>
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jan 10, 2024 at 11:11:10AM +0100, Andrzej Hajda wrote:
> On 15.12.2023 11:59, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > On MTL the GOP (for whatever reason) likes to bind its framebuffer
> > high up in the ggtt address space. This can conflict with whatever
> > ggtt_reserve_guc_top() is trying to do, and the result is that
> > ggtt_reserve_guc_top() fails and then we proceed to explode when
> > trying to tear down the driver. Thus far I haven't analyzed what
> > causes the actual fireworks, but it's not super important as even
> > if it didn't explode we'd still fail the driver load and the user
> > would be left with an unusable GPU.
> > 
> > To remedy this (without having to figure out exactly what
> > ggtt_reserve_guc_top() is trying to achieve) we can attempt to
> > relocate the BIOS framebuffer to a lower ggtt address. We can do
> > this at this early point in driver init because nothing else is
> > supposed to be clobbering the ggtt yet. So we simply change where
> > in the ggtt we pin the vma, the original PTEs will be left as is,
> > and the new PTEs will get written with the same dma addresses.
> > The plane will keep on scanning out from the original PTEs until
> > we are done with the whole process, and at that point we rewrite
> > the plane's surface address register to point at the new ggtt
> > address.
> > 
> > Since we don't need a specific ggtt address for the plane
> > (apart from needing it to land in the mappable region for
> > normal stolen objects) we'll just try to pin it without a fixed
> > offset first. It should end up at the lowest available address
> > (which really should be 0 at this point in the driver init).
> > If that fails we'll fall back to just pinning it exactly to the
> > origianal address.
> > 
> > To make sure we don't accidentlally pin it partially over the
> > original ggtt range (as that would corrupt the original PTEs)
> > we reserve the original range temporarily during this process.
> > 
> > Cc: Paz Zcharya <pazz@chromium.org>
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >   drivers/gpu/drm/i915/display/i9xx_plane.c     | 30 ++++++++++
> >   drivers/gpu/drm/i915/display/i9xx_plane.h     |  7 +++
> >   drivers/gpu/drm/i915/display/intel_display.c  |  5 ++
> >   .../gpu/drm/i915/display/intel_display_core.h |  2 +
> >   .../drm/i915/display/intel_plane_initial.c    | 57 ++++++++++++++++++-
> >   .../drm/i915/display/skl_universal_plane.c    | 28 +++++++++
> >   .../drm/i915/display/skl_universal_plane.h    |  2 +
> >   7 files changed, 128 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
> > index 91f2bc405cba..0279c8aabdd1 100644
> > --- a/drivers/gpu/drm/i915/display/i9xx_plane.c
> > +++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
> > @@ -1060,3 +1060,33 @@ i9xx_get_initial_plane_config(struct intel_crtc *crtc,
> >   
> >   	plane_config->fb = intel_fb;
> >   }
> > +
> > +bool i9xx_fixup_initial_plane_config(struct intel_crtc *crtc,
> > +				     const struct intel_initial_plane_config *plane_config)
> > +{
> > +	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> > +	struct intel_plane *plane = to_intel_plane(crtc->base.primary);
> > +	const struct intel_plane_state *plane_state =
> > +		to_intel_plane_state(plane->base.state);
> > +	enum i9xx_plane_id i9xx_plane = plane->i9xx_plane;
> > +	u32 base;
> > +
> > +	if (!plane_state->uapi.visible)
> > +		return false;
> > +
> > +	base = intel_plane_ggtt_offset(plane_state);
> > +
> > +	/*
> > +	 * We may have moved the surface to a different
> > +	 * part of ggtt, make the plane aware of that.
> > +	 */
> > +	if (plane_config->base == base)
> > +		return false;
> > +
> > +	if (DISPLAY_VER(dev_priv) >= 4)
> > +		intel_de_write(dev_priv, DSPSURF(i9xx_plane), base);
> > +	else
> > +		intel_de_write(dev_priv, DSPADDR(i9xx_plane), base);
> 
> It seems skl_fixup_initial_plane_config is the same, except 
> intel_de_write part. Couldn't we merge both functions into one and just 
> add another elseif branch here? Maybe abstracting out somehow surface 
> registers writes? Just loose ideas.
> However I wouldn't be surprised if there is good reason to keep it as is.

It's just that we generally want to keep the skl+ vs. pre-skl
low level plane code separate. There are enough differences between
them, so separate code is probably less messy than trying to share
it. And I don't think the common parts between this and its counterpart
are significant enough to really go against that.

> 
> Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>
> 
> Regards
> Andrzej
> 
> > +
> > +	return true;
> > +}
> > diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.h b/drivers/gpu/drm/i915/display/i9xx_plane.h
> > index b3d724a144cb..0ca12d1e6839 100644
> > --- a/drivers/gpu/drm/i915/display/i9xx_plane.h
> > +++ b/drivers/gpu/drm/i915/display/i9xx_plane.h
> > @@ -26,6 +26,8 @@ intel_primary_plane_create(struct drm_i915_private *dev_priv, enum pipe pipe);
> >   
> >   void i9xx_get_initial_plane_config(struct intel_crtc *crtc,
> >   				   struct intel_initial_plane_config *plane_config);
> > +bool i9xx_fixup_initial_plane_config(struct intel_crtc *crtc,
> > +				     const struct intel_initial_plane_config *plane_config);
> >   #else
> >   static inline unsigned int i965_plane_max_stride(struct intel_plane *plane,
> >   						 u32 pixel_format, u64 modifier,
> > @@ -46,6 +48,11 @@ static inline void i9xx_get_initial_plane_config(struct intel_crtc *crtc,
> >   						 struct intel_initial_plane_config *plane_config)
> >   {
> >   }
> > +static inline bool i9xx_fixup_initial_plane_config(struct intel_crtc *crtc,
> > +						   const struct intel_initial_plane_config *plane_config)
> > +{
> > +	return false;
> > +}
> >   #endif
> >   
> >   #endif
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > index d955957b7d18..92b4a894c9b9 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -7820,6 +7820,7 @@ static const struct intel_display_funcs skl_display_funcs = {
> >   	.crtc_disable = hsw_crtc_disable,
> >   	.commit_modeset_enables = skl_commit_modeset_enables,
> >   	.get_initial_plane_config = skl_get_initial_plane_config,
> > +	.fixup_initial_plane_config = skl_fixup_initial_plane_config,
> >   };
> >   
> >   static const struct intel_display_funcs ddi_display_funcs = {
> > @@ -7828,6 +7829,7 @@ static const struct intel_display_funcs ddi_display_funcs = {
> >   	.crtc_disable = hsw_crtc_disable,
> >   	.commit_modeset_enables = intel_commit_modeset_enables,
> >   	.get_initial_plane_config = i9xx_get_initial_plane_config,
> > +	.fixup_initial_plane_config = i9xx_fixup_initial_plane_config,
> >   };
> >   
> >   static const struct intel_display_funcs pch_split_display_funcs = {
> > @@ -7836,6 +7838,7 @@ static const struct intel_display_funcs pch_split_display_funcs = {
> >   	.crtc_disable = ilk_crtc_disable,
> >   	.commit_modeset_enables = intel_commit_modeset_enables,
> >   	.get_initial_plane_config = i9xx_get_initial_plane_config,
> > +	.fixup_initial_plane_config = i9xx_fixup_initial_plane_config,
> >   };
> >   
> >   static const struct intel_display_funcs vlv_display_funcs = {
> > @@ -7844,6 +7847,7 @@ static const struct intel_display_funcs vlv_display_funcs = {
> >   	.crtc_disable = i9xx_crtc_disable,
> >   	.commit_modeset_enables = intel_commit_modeset_enables,
> >   	.get_initial_plane_config = i9xx_get_initial_plane_config,
> > +	.fixup_initial_plane_config = i9xx_fixup_initial_plane_config,
> >   };
> >   
> >   static const struct intel_display_funcs i9xx_display_funcs = {
> > @@ -7852,6 +7856,7 @@ static const struct intel_display_funcs i9xx_display_funcs = {
> >   	.crtc_disable = i9xx_crtc_disable,
> >   	.commit_modeset_enables = intel_commit_modeset_enables,
> >   	.get_initial_plane_config = i9xx_get_initial_plane_config,
> > +	.fixup_initial_plane_config = i9xx_fixup_initial_plane_config,
> >   };
> >   
> >   /**
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
> > index 7e82b87e9cde..3f17328ff690 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> > @@ -64,6 +64,8 @@ struct intel_display_funcs {
> >   				struct intel_crtc_state *);
> >   	void (*get_initial_plane_config)(struct intel_crtc *,
> >   					 struct intel_initial_plane_config *);
> > +	bool (*fixup_initial_plane_config)(struct intel_crtc *crtc,
> > +					   const struct intel_initial_plane_config *plane_config);
> >   	void (*crtc_enable)(struct intel_atomic_state *state,
> >   			    struct intel_crtc *crtc);
> >   	void (*crtc_disable)(struct intel_atomic_state *state,
> > diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.c b/drivers/gpu/drm/i915/display/intel_plane_initial.c
> > index 82ab98985a09..72f509f8bc63 100644
> > --- a/drivers/gpu/drm/i915/display/intel_plane_initial.c
> > +++ b/drivers/gpu/drm/i915/display/intel_plane_initial.c
> > @@ -3,9 +3,11 @@
> >    * Copyright © 2021 Intel Corporation
> >    */
> >   
> > +#include "gem/i915_gem_lmem.h"
> >   #include "gem/i915_gem_region.h"
> >   #include "i915_drv.h"
> >   #include "intel_atomic_plane.h"
> > +#include "intel_crtc.h"
> >   #include "intel_display.h"
> >   #include "intel_display_types.h"
> >   #include "intel_fb.h"
> > @@ -138,6 +140,7 @@ initial_plane_vma(struct drm_i915_private *i915,
> >   {
> >   	struct intel_memory_region *mem;
> >   	struct drm_i915_gem_object *obj;
> > +	struct drm_mm_node orig_mm = {};
> >   	struct i915_vma *vma;
> >   	resource_size_t phys_base;
> >   	u32 base, size;
> > @@ -195,23 +198,68 @@ initial_plane_vma(struct drm_i915_private *i915,
> >   		goto err_obj;
> >   	}
> >   
> > +	/*
> > +	 * MTL GOP likes to place the framebuffer high up in ggtt,
> > +	 * which can cause problems for ggtt_reserve_guc_top().
> > +	 * Try to pin it to a low ggtt address instead to avoid that.
> > +	 */
> > +	base = 0;
> > +
> > +	if (base != plane_config->base) {
> > +		struct i915_ggtt *ggtt = to_gt(i915)->ggtt;
> > +		int ret;
> > +
> > +		/*
> > +		 * Make sure the original and new locations
> > +		 * can't overlap. That would corrupt the original
> > +		 * PTEs which are still being used for scanout.
> > +		 */
> > +		ret = i915_gem_gtt_reserve(&ggtt->vm, NULL, &orig_mm,
> > +					   size, plane_config->base,
> > +					   I915_COLOR_UNEVICTABLE, PIN_NOEVICT);
> > +		if (ret)
> > +			goto err_obj;
> > +	}
> > +
> >   	vma = i915_vma_instance(obj, &to_gt(i915)->ggtt->vm, NULL);
> >   	if (IS_ERR(vma))
> >   		goto err_obj;
> >   
> > -	pinctl = PIN_GLOBAL | PIN_OFFSET_FIXED | base;
> > -	if (HAS_GMCH(i915))
> > +retry:
> > +	pinctl = PIN_GLOBAL;
> > +	if (base == plane_config->base)
> > +		pinctl |= PIN_OFFSET_FIXED | base;
> > +	if (!i915_gem_object_is_lmem(obj))
> >   		pinctl |= PIN_MAPPABLE;
> > -	if (i915_vma_pin(vma, 0, 0, pinctl))
> > +	if (i915_vma_pin(vma, 0, 0, pinctl)) {
> > +		if (drm_mm_node_allocated(&orig_mm)) {
> > +			drm_mm_remove_node(&orig_mm);
> > +			/*
> > +			 * Try again, but this time pin
> > +			 * it to its original location.
> > +			 */
> > +			base = plane_config->base;
> > +			goto retry;
> > +		}
> >   		goto err_obj;
> > +	}
> >   
> >   	if (i915_gem_object_is_tiled(obj) &&
> >   	    !i915_vma_is_map_and_fenceable(vma))
> >   		goto err_obj;
> >   
> > +	if (drm_mm_node_allocated(&orig_mm))
> > +		drm_mm_remove_node(&orig_mm);
> > +
> > +	drm_dbg_kms(&i915->drm,
> > +		    "Initial plane fb bound to 0x%x in the ggtt (original 0x%x)\n",
> > +		    i915_ggtt_offset(vma), plane_config->base);
> > +
> >   	return vma;
> >   
> >   err_obj:
> > +	if (drm_mm_node_allocated(&orig_mm))
> > +		drm_mm_remove_node(&orig_mm);
> >   	i915_gem_object_put(obj);
> >   	return NULL;
> >   }
> > @@ -386,6 +434,9 @@ void intel_initial_plane_config(struct drm_i915_private *i915)
> >   		 */
> >   		intel_find_initial_plane_obj(crtc, plane_configs);
> >   
> > +		if (i915->display.funcs.display->fixup_initial_plane_config(crtc, plane_config))
> > +			intel_crtc_wait_for_next_vblank(crtc);
> > +
> >   		plane_config_fini(plane_config);
> >   	}
> >   }
> > diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > index 511dc1544854..392d93e97bf8 100644
> > --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > @@ -2624,3 +2624,31 @@ skl_get_initial_plane_config(struct intel_crtc *crtc,
> >   error:
> >   	kfree(intel_fb);
> >   }
> > +
> > +bool skl_fixup_initial_plane_config(struct intel_crtc *crtc,
> > +				    const struct intel_initial_plane_config *plane_config)
> > +{
> > +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> > +	struct intel_plane *plane = to_intel_plane(crtc->base.primary);
> > +	const struct intel_plane_state *plane_state =
> > +		to_intel_plane_state(plane->base.state);
> > +	enum plane_id plane_id = plane->id;
> > +	enum pipe pipe = crtc->pipe;
> > +	u32 base;
> > +
> > +	if (!plane_state->uapi.visible)
> > +		return false;
> > +
> > +	base = intel_plane_ggtt_offset(plane_state);
> > +
> > +	/*
> > +	 * We may have moved the surface to a different
> > +	 * part of ggtt, make the plane aware of that.
> > +	 */
> > +	if (plane_config->base == base)
> > +		return false;
> > +
> > +	intel_de_write(i915, PLANE_SURF(pipe, plane_id), base);
> > +
> > +	return true;
> > +}
> > diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.h b/drivers/gpu/drm/i915/display/skl_universal_plane.h
> > index be64c201f9b3..e92e00c01b29 100644
> > --- a/drivers/gpu/drm/i915/display/skl_universal_plane.h
> > +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.h
> > @@ -22,6 +22,8 @@ skl_universal_plane_create(struct drm_i915_private *dev_priv,
> >   
> >   void skl_get_initial_plane_config(struct intel_crtc *crtc,
> >   				  struct intel_initial_plane_config *plane_config);
> > +bool skl_fixup_initial_plane_config(struct intel_crtc *crtc,
> > +				    const struct intel_initial_plane_config *plane_config);
> >   
> >   int skl_format_to_fourcc(int format, bool rgb_order, bool alpha);
> >   

-- 
Ville Syrjälä
Intel
