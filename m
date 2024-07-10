Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86E5A92D0FE
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2024 13:48:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F005010E758;
	Wed, 10 Jul 2024 11:48:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XU1H4Dgc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 319B310E758;
 Wed, 10 Jul 2024 11:48:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720612081; x=1752148081;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=itudsV1RE6o6YnnHMyKVobckfW6DPu8sz6yn+f31uVs=;
 b=XU1H4Dgce3wY9JZjZrdVPM1N9td8vzo525KoR2EHWA4+kMSwzN/sk9bt
 seiKzYkCdbGd0uhU1095bGxKBzd/c8Hf+c9Voax14YP/mvY/KuKDJ68ef
 cPgWSmCx5jgtu7d9lKL6pMoUOwItkXUKQos/oaXxFzXph9gsdJCfFeJTN
 FuzIUfiEqJR57vWBYerXAfvqS5UAUCy/Dg5a7mRCn+DsnRBeW3IrzugUZ
 Crqrp7RJZRJrXoRQ4U8ZYgGv3eKHP6Y/2FtNp8nAyaM12wnkeq40r0c8B
 uCk34g3jnN4vYErmkV8yg2Bae+UM75lu+bVKtKBtLo3DohaTiIhNuKym9 Q==;
X-CSE-ConnectionGUID: wi18nWSUSfiGWikemXZItQ==
X-CSE-MsgGUID: md9MGLr3SoCUYe3HeuRr5g==
X-IronPort-AV: E=McAfee;i="6700,10204,11128"; a="21690484"
X-IronPort-AV: E=Sophos;i="6.09,197,1716274800"; d="scan'208";a="21690484"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2024 04:48:00 -0700
X-CSE-ConnectionGUID: EhWpghR7RGm26Dbp9KhQow==
X-CSE-MsgGUID: w0wWSCXXTUWK60VBi4kdIg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,197,1716274800"; d="scan'208";a="48173378"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 10 Jul 2024 04:47:57 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 10 Jul 2024 14:47:56 +0300
Date: Wed, 10 Jul 2024 14:47:56 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 16/20] drm/i915/fbdev: Extract
 intel_fbdev_fb_prefer_stolen()
Message-ID: <Zo507NB2VMELZAxH@intel.com>
References: <20240705145254.3355-1-ville.syrjala@linux.intel.com>
 <20240705145254.3355-17-ville.syrjala@linux.intel.com>
 <4mw2rthck4nmipknligxj6hu2siwzg236ge2vwor3w4ae7pydu@i2hwfhwouxon>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <4mw2rthck4nmipknligxj6hu2siwzg236ge2vwor3w4ae7pydu@i2hwfhwouxon>
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

On Tue, Jul 09, 2024 at 03:28:15PM -0500, Lucas De Marchi wrote:
> On Fri, Jul 05, 2024 at 05:52:50PM GMT, Ville Syrjälä wrote:
> >From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> >Consolidate the "should we allocate fbdev fb in stolen?"
> >check into a helper function. Makes it easier to change the
> >heuristics without having to change so many places.
> >
> >Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >---
> > drivers/gpu/drm/i915/display/intel_fbdev_fb.c | 24 ++++++++++++-------
> > drivers/gpu/drm/i915/display/intel_fbdev_fb.h |  5 +++-
> > .../drm/i915/display/intel_plane_initial.c    | 10 +++-----
> > 3 files changed, 23 insertions(+), 16 deletions(-)
> >
> >diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
> >index 497525ef9668..0a6445acb100 100644
> >--- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
> >+++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
> >@@ -11,6 +11,19 @@
> > #include "intel_display_types.h"
> > #include "intel_fbdev_fb.h"
> >
> >+bool intel_fbdev_fb_prefer_stolen(struct intel_display *display,
> >+				  unsigned int size)
> >+{
> >+	struct drm_i915_private *i915 = to_i915(display->drm);
> >+
> >+	/*
> >+	 * If the FB is too big, just don't use it since fbdev is not very
> >+	 * important and we should probably use that space with FBC or other
> >+	 * features.
> >+	 */
> >+	return i915->dsm.usable_size >= size * 2;
> >+}
> >+
> > struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
> > 					       struct drm_fb_helper_surface_size *sizes)
> > {
> >@@ -42,14 +55,9 @@ struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
> > 						  I915_BO_ALLOC_CONTIGUOUS |
> > 						  I915_BO_ALLOC_USER);
> > 	} else {
> >-		/*
> >-		 * If the FB is too big, just don't use it since fbdev is not very
> >-		 * important and we should probably use that space with FBC or other
> >-		 * features.
> >-		 *
> >-		 * Also skip stolen on MTL as Wa_22018444074 mitigation.
> >-		 */
> >-		if (!(IS_METEORLAKE(dev_priv)) && size * 2 < dev_priv->dsm.usable_size)
> >+		/* skip stolen on MTL as Wa_22018444074 mitigation */
> >+		if (!IS_METEORLAKE(dev_priv) &&
> 
> shouldn't this be inside intel_fbdev_fb_prefer_stolen()?

That would also apply it to the BIOS fb takeover, so change the
behaviour. The correct answer is likely just removing the MTL check
entirely, but I left that out for now to avoid too many functional
changes.

> 
> And also pull the same logic on the xe side a few patches after this.
> 
> Lucas De Marchi
> 
> >+		    intel_fbdev_fb_prefer_stolen(&dev_priv->display, size))
> > 			obj = i915_gem_object_create_stolen(dev_priv, size);
> > 		if (IS_ERR(obj))
> > 			obj = i915_gem_object_create_shmem(dev_priv, size);
> >diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.h b/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
> >index 4832fe688fbf..3b9033bd2160 100644
> >--- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
> >+++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
> >@@ -6,16 +6,19 @@
> > #ifndef __INTEL_FBDEV_FB_H__
> > #define __INTEL_FBDEV_FB_H__
> >
> >+#include <linux/types.h>
> >+
> > struct drm_fb_helper;
> > struct drm_fb_helper_surface_size;
> > struct drm_i915_gem_object;
> > struct drm_i915_private;
> > struct fb_info;
> > struct i915_vma;
> >+struct intel_display;
> >
> > struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
> > 					       struct drm_fb_helper_surface_size *sizes);
> > int intel_fbdev_fb_fill_info(struct drm_i915_private *i915, struct fb_info *info,
> > 			     struct drm_i915_gem_object *obj, struct i915_vma *vma);
> >-
> >+bool intel_fbdev_fb_prefer_stolen(struct intel_display *display, unsigned int size);
> > #endif
> >diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.c b/drivers/gpu/drm/i915/display/intel_plane_initial.c
> >index ada1792df5b3..4622bb5f3426 100644
> >--- a/drivers/gpu/drm/i915/display/intel_plane_initial.c
> >+++ b/drivers/gpu/drm/i915/display/intel_plane_initial.c
> >@@ -11,6 +11,7 @@
> > #include "intel_display.h"
> > #include "intel_display_types.h"
> > #include "intel_fb.h"
> >+#include "intel_fbdev_fb.h"
> > #include "intel_frontbuffer.h"
> > #include "intel_plane_initial.h"
> >
> >@@ -160,15 +161,10 @@ initial_plane_vma(struct drm_i915_private *i915,
> > 			mem->min_page_size);
> > 	size -= base;
> >
> >-	/*
> >-	 * If the FB is too big, just don't use it since fbdev is not very
> >-	 * important and we should probably use that space with FBC or other
> >-	 * features.
> >-	 */
> > 	if (IS_ENABLED(CONFIG_FRAMEBUFFER_CONSOLE) &&
> > 	    mem == i915->mm.stolen_region &&
> >-	    size * 2 > i915->dsm.usable_size) {
> >-		drm_dbg_kms(&i915->drm, "Initial FB size exceeds half of stolen, discarding\n");
> >+	    !intel_fbdev_fb_prefer_stolen(&i915->display, size)) {
> >+		drm_dbg_kms(&i915->drm, "Initial FB size uses too much stolen, discarding\n");
> > 		return NULL;
> > 	}
> >
> >-- 
> >2.44.2
> >

-- 
Ville Syrjälä
Intel
