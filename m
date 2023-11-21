Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21D557F2859
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Nov 2023 10:07:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93BF510E2E7;
	Tue, 21 Nov 2023 09:07:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96E9110E322
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Nov 2023 09:07:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700557645; x=1732093645;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=uPrf3qluHWJL+jbrbcP/GcWYnbygl+Efr5tCQn9AB/k=;
 b=gHkwE1was24151iLcxaP80xxrx5XspQlTKSS5m0wvuXh3v0jWOs/yo6p
 Qg/5rqtsPF5AAZomn7cECeBwkgekuggqTQLCTDfqPpZkH+bJEzrXZaa/c
 Nt3Km4oAe5JUSv9AULCpNw+7IK/dpwszbk5faQCFKwhsMPuTPXzTU+iMu
 tZYtxzrm5ZFllEVe2FVDl8oMEEK1rk9aaP7bjSuP4D/Y8YENgJhZpgDAI
 C6KVF5BCa6qUN2aQw94bxUkbzBYMnhJKFAMv+1DKR/F++weCpAMHA+BgD
 RRW7ATmVwTyvgy26AK2exZLbPtHJyTnqNyxOSSgKP77q6TaVKrqCMU2z6 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10900"; a="4991285"
X-IronPort-AV: E=Sophos;i="6.04,215,1695711600"; 
   d="scan'208";a="4991285"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2023 01:07:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10900"; a="760042616"
X-IronPort-AV: E=Sophos;i="6.04,215,1695711600"; d="scan'208";a="760042616"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 21 Nov 2023 01:07:21 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 21 Nov 2023 11:07:21 +0200
Date: Tue, 21 Nov 2023 11:07:21 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
Message-ID: <ZVxzSReX973Ru9cj@intel.com>
References: <20231120100833.3221946-1-jouni.hogander@intel.com>
 <20231120100833.3221946-4-jouni.hogander@intel.com>
 <ZVtrz3KrhBZu-32p@intel.com>
 <7e8d862b0d481ba025e92b80e1637bc6899ea434.camel@intel.com>
 <ZVxvdLmDk2fxbMms@intel.com>
 <f6358f0498585df1058a5fed2553187fc842b717.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <f6358f0498585df1058a5fed2553187fc842b717.camel@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v4 3/3] drm/i915/display: Split i915
 specific code away from intel_fb.c
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Nov 21, 2023 at 08:57:05AM +0000, Hogander, Jouni wrote:
> On Tue, 2023-11-21 at 10:51 +0200, Ville Syrjälä wrote:
> > On Tue, Nov 21, 2023 at 07:40:00AM +0000, Hogander, Jouni wrote:
> > > On Mon, 2023-11-20 at 16:23 +0200, Ville Syrjälä wrote:
> > > > On Mon, Nov 20, 2023 at 12:08:33PM +0200, Jouni Högander wrote:
> > > > > We are preparing for Xe driver. Backing object implementation
> > > > > is
> > > > > differing
> > > > > between i915 and Xe. Split i915 specific code into separate
> > > > > source
> > > > > file
> > > > > built only for i915.
> > > > > 
> > > > > v4: Move drm_any_plane_has_format check into intel_fb_bo.c
> > > > > v3: Fix failure handling in intel_framebuffer_init
> > > > > v2: Couple of fixes to error value handling
> > > > > 
> > > > > Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> > > > > ---
> > > > >  drivers/gpu/drm/i915/Makefile              |   1 +
> > > > >  drivers/gpu/drm/i915/display/intel_fb.c    |  76 ++-----------
> > > > > --
> > > > >  drivers/gpu/drm/i915/display/intel_fb_bo.c | 102
> > > > > +++++++++++++++++++++
> > > > >  drivers/gpu/drm/i915/display/intel_fb_bo.h |  24 +++++
> > > > >  4 files changed, 134 insertions(+), 69 deletions(-)
> > > > >  create mode 100644 drivers/gpu/drm/i915/display/intel_fb_bo.c
> > > > >  create mode 100644 drivers/gpu/drm/i915/display/intel_fb_bo.h
> > > > > 
> > > > > diff --git a/drivers/gpu/drm/i915/Makefile
> > > > > b/drivers/gpu/drm/i915/Makefile
> > > > > index 7e5d6a39d450..c14ba1212b84 100644
> > > > > --- a/drivers/gpu/drm/i915/Makefile
> > > > > +++ b/drivers/gpu/drm/i915/Makefile
> > > > > @@ -279,6 +279,7 @@ i915-y += \
> > > > >         display/intel_dsb.o \
> > > > >         display/intel_dsb_buffer.o \
> > > > >         display/intel_fb.o \
> > > > > +       display/intel_fb_bo.o \
> > > > >         display/intel_fb_pin.o \
> > > > >         display/intel_fbc.o \
> > > > >         display/intel_fdi.o \
> > > > > diff --git a/drivers/gpu/drm/i915/display/intel_fb.c
> > > > > b/drivers/gpu/drm/i915/display/intel_fb.c
> > > > > index a235ec0f192d..78bdb5dc1262 100644
> > > > > --- a/drivers/gpu/drm/i915/display/intel_fb.c
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> > > > > @@ -4,7 +4,6 @@
> > > > >   */
> > > > >  
> > > > >  #include <drm/drm_blend.h>
> > > > > -#include <drm/drm_framebuffer.h>
> > > > >  #include <drm/drm_modeset_helper.h>
> > > > >  
> > > > >  #include <linux/dma-fence.h>
> > > > > @@ -15,6 +14,7 @@
> > > > >  #include "intel_display_types.h"
> > > > >  #include "intel_dpt.h"
> > > > >  #include "intel_fb.h"
> > > > > +#include "intel_fb_bo.h"
> > > > >  #include "intel_frontbuffer.h"
> > > > >  
> > > > >  #define check_array_bounds(i915, a, i) drm_WARN_ON(&(i915)-
> > > > > >drm,
> > > > > (i) >= ARRAY_SIZE(a))
> > > > > @@ -1978,7 +1978,6 @@ int intel_framebuffer_init(struct
> > > > > intel_framebuffer *intel_fb,
> > > > >         struct drm_i915_private *dev_priv =
> > > > > to_i915(intel_bo_to_drm_bo(obj)->dev);
> > > > >         struct drm_framebuffer *fb = &intel_fb->base;
> > > > >         u32 max_stride;
> > > > > -       unsigned int tiling, stride;
> > > > >         int ret = -EINVAL;
> > > > >         int i;
> > > > >  
> > > > > @@ -1986,52 +1985,11 @@ int intel_framebuffer_init(struct
> > > > > intel_framebuffer *intel_fb,
> > > > >         if (!intel_fb->frontbuffer)
> > > > >                 return -ENOMEM;
> > > > >  
> > > > > -       i915_gem_object_lock(obj, NULL);
> > > > > -       tiling = i915_gem_object_get_tiling(obj);
> > > > > -       stride = i915_gem_object_get_stride(obj);
> > > > > -       i915_gem_object_unlock(obj);
> > > > > -
> > > > > -       if (mode_cmd->flags & DRM_MODE_FB_MODIFIERS) {
> > > > > -               /*
> > > > > -                * If there's a fence, enforce that
> > > > > -                * the fb modifier and tiling mode match.
> > > > > -                */
> > > > > -               if (tiling != I915_TILING_NONE &&
> > > > > -                   tiling !=
> > > > > intel_fb_modifier_to_tiling(mode_cmd-
> > > > > > modifier[0])) {
> > > > > -                       drm_dbg_kms(&dev_priv->drm,
> > > > > -                                   "tiling_mode doesn't match
> > > > > fb
> > > > > modifier\n");
> > > > > -                       goto err;
> > > > > -               }
> > > > > -       } else {
> > > > > -               if (tiling == I915_TILING_X) {
> > > > > -                       mode_cmd->modifier[0] =
> > > > > I915_FORMAT_MOD_X_TILED;
> > > > > -               } else if (tiling == I915_TILING_Y) {
> > > > > -                       drm_dbg_kms(&dev_priv->drm,
> > > > > -                                   "No Y tiling for legacy
> > > > > addfb\n");
> > > > > -                       goto err;
> > > > > -               }
> > > > > -       }
> > > > > -
> > > > > -       if (!drm_any_plane_has_format(&dev_priv->drm,
> > > > > -                                     mode_cmd->pixel_format,
> > > > > -                                     mode_cmd->modifier[0])) {
> > > > > -               drm_dbg_kms(&dev_priv->drm,
> > > > > -                           "unsupported pixel format %p4cc /
> > > > > modifier 0x%llx\n",
> > > > > -                           &mode_cmd->pixel_format, mode_cmd-
> > > > > > modifier[0]);
> > > > > -               goto err;
> > > > > -       }
> > > > 
> > > > The drm_any_plane_has_format() check should stay in the common
> > > > code.
> > > 
> > > I had it that way originally. That was triggering warning here:
> > > 
> > > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126507v3/fi-pnv-d510/igt@kms_addfb_basic@addfb25-bad-modifier.html
> > 
> > There's already another call to intel_fb_modifier_to_tiling() before
> > drm_any_plane_has_format() so the warn can already be triggered
> > with the current code. But apparently we have no test that tries to
> > cause a modifier vs. tiling mismatch with an invalid modifier?
> 
> Yes, I think that is the case. I was also thinking dropping WARN_ON
> from there? Error handling is anyways handling misuse from user-space
> side...

The fallback to intel_modifiers[0] is clearly very wrong
for an invalid modifier. So I think this need to either stop using
lookup_modifier(), or we need to change to lookup_modifier_or_null()
and deal with the NULL. Or we need to reoder the code so that 
we don't call lookup_modifier() before we know the modifier is valid.

> 
> BR,
> 
> Jouni Högander
> 
> > 
> > > 
> > > So I choose to move it before the check below in
> > > drivers/gpu/drm/i915/display/intel_fb_bo.c. Then add same into 
> > > drivers/gpu/drm/xe/display/intel_fb_bo.c. Do you have better idea?
> > > 
> > > > 
> > > > > -
> > > > > -       /*
> > > > > -        * gen2/3 display engine uses the fence if present,
> > > > > -        * so the tiling mode must match the fb modifier
> > > > > exactly.
> > > > > -        */
> > > > > -       if (DISPLAY_VER(dev_priv) < 4 &&
> > > > > -           tiling != intel_fb_modifier_to_tiling(mode_cmd-
> > > > > > modifier[0])) {
> > > > > -               drm_dbg_kms(&dev_priv->drm,
> > > > > -                           "tiling_mode must match fb modifier
> > > > > exactly on gen2/3\n");
> > > > > +       ret = intel_fb_bo_framebuffer_init(intel_fb, obj,
> > > > > mode_cmd);
> > > > > +       if (ret)
> > > > >                 goto err;
> > > > > -       }
> > > > >  
> > > > > +       ret = -EINVAL;
> > > > >         max_stride = intel_fb_max_stride(dev_priv, mode_cmd-
> > > > > > pixel_format,
> > > > >                                          mode_cmd-
> > > > > >modifier[0]);
> > > > >         if (mode_cmd->pitches[0] > max_stride) {
> > > > > @@ -2043,17 +2001,6 @@ int intel_framebuffer_init(struct
> > > > > intel_framebuffer *intel_fb,
> > > > >                 goto err;
> > > > >         }
> > > > >  
> > > > > -       /*
> > > > > -        * If there's a fence, enforce that
> > > > > -        * the fb pitch and fence stride match.
> > > > > -        */
> > > > > -       if (tiling != I915_TILING_NONE && mode_cmd->pitches[0]
> > > > > !=
> > > > > stride) {
> > > > > -               drm_dbg_kms(&dev_priv->drm,
> > > > > -                           "pitch (%d) must match tiling
> > > > > stride
> > > > > (%d)\n",
> > > > > -                           mode_cmd->pitches[0], stride);
> > > > > -               goto err;
> > > > > -       }
> > > > > -
> > > > >         /* FIXME need to adjust LINOFF/TILEOFF accordingly. */
> > > > >         if (mode_cmd->offsets[0] != 0) {
> > > > >                 drm_dbg_kms(&dev_priv->drm,
> > > > > @@ -2137,21 +2084,12 @@ intel_user_framebuffer_create(struct
> > > > > drm_device *dev,
> > > > >         struct drm_framebuffer *fb;
> > > > >         struct drm_i915_gem_object *obj;
> > > > >         struct drm_mode_fb_cmd2 mode_cmd = *user_mode_cmd;
> > > > > -       struct drm_i915_private *i915;
> > > > > +       struct drm_i915_private *i915 = to_i915(dev);
> > > > >  
> > > > > -       obj = i915_gem_object_lookup(filp,
> > > > > mode_cmd.handles[0]);
> > > > > -       if (!obj)
> > > > > +       obj = intel_fb_bo_lookup_valid_bo(i915, filp,
> > > > > user_mode_cmd);
> > > > 
> > > > Is there a specific reason you're passing the original mode_cmd
> > > > here?
> > > 
> > > No. I will change that.
> > > 
> > > BR,
> > > 
> > > Jouni Högander
> > > 
> > > > 
> > > > > +       if (IS_ERR(obj))
> > > > >                 return ERR_PTR(-ENOENT);
> > > > >  
> > > > > -       /* object is backed with LMEM for discrete */
> > > > > -       i915 = to_i915(obj->base.dev);
> > > > > -       if (HAS_LMEM(i915) && !i915_gem_object_can_migrate(obj,
> > > > > INTEL_REGION_LMEM_0)) {
> > > > > -               /* object is "remote", not in local memory */
> > > > > -               i915_gem_object_put(obj);
> > > > > -               drm_dbg_kms(&i915->drm, "framebuffer must
> > > > > reside in
> > > > > local memory\n");
> > > > > -               return ERR_PTR(-EREMOTE);
> > > > > -       }
> > > > > -
> > > > >         fb = intel_framebuffer_create(obj, &mode_cmd);
> > > > >         drm_gem_object_put(intel_bo_to_drm_bo(obj));
> > > > >  
> > > > > diff --git a/drivers/gpu/drm/i915/display/intel_fb_bo.c
> > > > > b/drivers/gpu/drm/i915/display/intel_fb_bo.c
> > > > > new file mode 100644
> > > > > index 000000000000..9b2bf3d8345e
> > > > > --- /dev/null
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_fb_bo.c
> > > > > @@ -0,0 +1,102 @@
> > > > > +/* SPDX-License-Identifier: MIT */
> > > > > +/*
> > > > > + * Copyright © 2021 Intel Corporation
> > > > > + */
> > > > > +
> > > > > +#include <drm/drm_framebuffer.h>
> > > > > +#include <drm/drm_plane.h>
> > > > > +
> > > > > +#include "gem/i915_gem_object.h"
> > > > > +
> > > > > +#include "i915_drv.h"
> > > > > +#include "intel_fb.h"
> > > > > +#include "intel_fb_bo.h"
> > > > > +
> > > > > +int intel_fb_bo_framebuffer_init(struct intel_framebuffer
> > > > > *intel_fb,
> > > > > +                                struct drm_i915_gem_object
> > > > > *obj,
> > > > > +                                struct drm_mode_fb_cmd2
> > > > > *mode_cmd)
> > > > > +{
> > > > > +       struct drm_i915_private *i915 = to_i915(obj->base.dev);
> > > > > +       unsigned int tiling, stride;
> > > > > +
> > > > > +       i915_gem_object_lock(obj, NULL);
> > > > > +       tiling = i915_gem_object_get_tiling(obj);
> > > > > +       stride = i915_gem_object_get_stride(obj);
> > > > > +       i915_gem_object_unlock(obj);
> > > > > +
> > > > > +       if (mode_cmd->flags & DRM_MODE_FB_MODIFIERS) {
> > > > > +               /*
> > > > > +                * If there's a fence, enforce that
> > > > > +                * the fb modifier and tiling mode match.
> > > > > +                */
> > > > > +               if (tiling != I915_TILING_NONE &&
> > > > > +                   tiling !=
> > > > > intel_fb_modifier_to_tiling(mode_cmd-
> > > > > > modifier[0])) {
> > > > > +                       drm_dbg_kms(&i915->drm,
> > > > > +                                   "tiling_mode doesn't match
> > > > > fb
> > > > > modifier\n");
> > > > > +                       return -EINVAL;
> > > > > +               }
> > > > > +       } else {
> > > > > +               if (tiling == I915_TILING_X) {
> > > > > +                       mode_cmd->modifier[0] =
> > > > > I915_FORMAT_MOD_X_TILED;
> > > > > +               } else if (tiling == I915_TILING_Y) {
> > > > > +                       drm_dbg_kms(&i915->drm,
> > > > > +                                   "No Y tiling for legacy
> > > > > addfb\n");
> > > > > +                       return -EINVAL;
> > > > > +               }
> > > > > +       }
> > > > > +
> > > > > +       if (!drm_any_plane_has_format(&i915->drm,
> > > > > +                                     mode_cmd->pixel_format,
> > > > > +                                     mode_cmd->modifier[0])) {
> > > > > +               drm_dbg_kms(&i915->drm,
> > > > > +                           "unsupported pixel format %p4cc /
> > > > > modifier 0x%llx\n",
> > > > > +                           &mode_cmd->pixel_format, mode_cmd-
> > > > > > modifier[0]);
> > > > > +               return -EINVAL;
> > > > > +       }
> > > > > +
> > > > > +       /*
> > > > > +        * gen2/3 display engine uses the fence if present,
> > > > > +        * so the tiling mode must match the fb modifier
> > > > > exactly.
> > > > > +        */
> > > > > +       if (DISPLAY_VER(i915) < 4 &&
> > > > > +           tiling != intel_fb_modifier_to_tiling(mode_cmd-
> > > > > > modifier[0])) {
> > > > > +               drm_dbg_kms(&i915->drm,
> > > > > +                           "tiling_mode must match fb modifier
> > > > > exactly on gen2/3\n");
> > > > > +               return -EINVAL;
> > > > > +       }
> > > > > +
> > > > > +       /*
> > > > > +        * If there's a fence, enforce that
> > > > > +        * the fb pitch and fence stride match.
> > > > > +        */
> > > > > +       if (tiling != I915_TILING_NONE && mode_cmd->pitches[0]
> > > > > !=
> > > > > stride) {
> > > > > +               drm_dbg_kms(&i915->drm,
> > > > > +                           "pitch (%d) must match tiling
> > > > > stride
> > > > > (%d)\n",
> > > > > +                           mode_cmd->pitches[0], stride);
> > > > > +               return -EINVAL;
> > > > > +       }
> > > > > +
> > > > > +       return 0;
> > > > > +}
> > > > > +
> > > > > +struct drm_i915_gem_object *
> > > > > +intel_fb_bo_lookup_valid_bo(struct drm_i915_private *i915,
> > > > > +                           struct drm_file *filp,
> > > > > +                           const struct drm_mode_fb_cmd2
> > > > > *user_mode_cmd)
> > > > > +{
> > > > > +       struct drm_i915_gem_object *obj =
> > > > > i915_gem_object_lookup(filp, user_mode_cmd->handles[0]);
> > > > > +
> > > > > +       if (!obj)
> > > > > +               return ERR_PTR(-ENOENT);
> > > > > +
> > > > > +       /* object is backed with LMEM for discrete */
> > > > > +       i915 = to_i915(obj->base.dev);
> > > > > +       if (HAS_LMEM(i915) && !i915_gem_object_can_migrate(obj,
> > > > > INTEL_REGION_LMEM_0)) {
> > > > > +               /* object is "remote", not in local memory */
> > > > > +               i915_gem_object_put(obj);
> > > > > +               drm_dbg_kms(&i915->drm, "framebuffer must
> > > > > reside in
> > > > > local memory\n");
> > > > > +               return ERR_PTR(-EREMOTE);
> > > > > +       }
> > > > > +
> > > > > +       return obj;
> > > > > +}
> > > > > diff --git a/drivers/gpu/drm/i915/display/intel_fb_bo.h
> > > > > b/drivers/gpu/drm/i915/display/intel_fb_bo.h
> > > > > new file mode 100644
> > > > > index 000000000000..dd06ceec8601
> > > > > --- /dev/null
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_fb_bo.h
> > > > > @@ -0,0 +1,24 @@
> > > > > +/* SPDX-License-Identifier: MIT */
> > > > > +/*
> > > > > + * Copyright © 2021 Intel Corporation
> > > > > + */
> > > > > +
> > > > > +#ifndef __INTEL_FB_BO_H__
> > > > > +#define __INTEL_FB_BO_H__
> > > > > +
> > > > > +struct drm_file;
> > > > > +struct drm_mode_fb_cmd2;
> > > > > +struct drm_i915_gem_object;
> > > > > +struct drm_i915_private;
> > > > > +struct intel_framebuffer;
> > > > > +
> > > > > +int intel_fb_bo_framebuffer_init(struct intel_framebuffer
> > > > > *intel_fb,
> > > > > +                                struct drm_i915_gem_object
> > > > > *obj,
> > > > > +                                struct drm_mode_fb_cmd2
> > > > > *mode_cmd);
> > > > > +
> > > > > +struct drm_i915_gem_object *
> > > > > +intel_fb_bo_lookup_valid_bo(struct drm_i915_private *i915,
> > > > > +                           struct drm_file *filp,
> > > > > +                           const struct drm_mode_fb_cmd2
> > > > > *user_mode_cmd);
> > > > > +
> > > > > +#endif
> > > > > -- 
> > > > > 2.34.1
> > > > 
> > > 
> > 
> 

-- 
Ville Syrjälä
Intel
