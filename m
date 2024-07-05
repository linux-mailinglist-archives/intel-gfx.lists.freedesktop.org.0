Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 20D8E928AFE
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jul 2024 16:53:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDF9110EBED;
	Fri,  5 Jul 2024 14:53:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="L0W1ow5c";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E54610EBF2;
 Fri,  5 Jul 2024 14:53:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720191224; x=1751727224;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Z3Mhu4v+cXgPgrK27pm6yBPbgjCuwYhv16IVe0sKls0=;
 b=L0W1ow5cRqDjbMjT3v3S6qD8qrxX0VGhVeE2wxD3u1lx3VujpQnCUbnO
 NYw2FOs3DxKf8iAemsu7utVG5MGWkxyV/Z4lcEiC55rhNusFb02Fp4lS4
 x0Xj0cjkaFXL25QZAHUsIfka697MGRVyconoNlMBDbqI+4HWtjSctjLqD
 UVSaNUihCEhq2w4OlhYfscxAMide5PJ+T5Ii/8XjXyZx+1UzqJpaZ+QYK
 /2WdUBhtt93HKtd9ljZfG3GyydXMx7mS7tZSFyO0kZvqmfyjqZD3AzNpn
 OnlqxGWVmRKay1GRjKbzloRqzgCxAfpR25K/5vvocHRIW289+uNrYiINc A==;
X-CSE-ConnectionGUID: CQBPEqLcTJycwwKGFITY5Q==
X-CSE-MsgGUID: UVAbkfb1QLu7hViB9DjNGQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11123"; a="17204862"
X-IronPort-AV: E=Sophos;i="6.09,185,1716274800"; d="scan'208";a="17204862"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2024 07:53:44 -0700
X-CSE-ConnectionGUID: 7ADXjwo8RZCLdEvGbem9ug==
X-CSE-MsgGUID: o52Twcy/TxOP+Rj1lt4wUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,185,1716274800"; d="scan'208";a="46864584"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 05 Jul 2024 07:53:42 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 05 Jul 2024 17:53:41 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 16/20] drm/i915/fbdev: Extract intel_fbdev_fb_prefer_stolen()
Date: Fri,  5 Jul 2024 17:52:50 +0300
Message-ID: <20240705145254.3355-17-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240705145254.3355-1-ville.syrjala@linux.intel.com>
References: <20240705145254.3355-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Consolidate the "should we allocate fbdev fb in stolen?"
check into a helper function. Makes it easier to change the
heuristics without having to change so many places.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbdev_fb.c | 24 ++++++++++++-------
 drivers/gpu/drm/i915/display/intel_fbdev_fb.h |  5 +++-
 .../drm/i915/display/intel_plane_initial.c    | 10 +++-----
 3 files changed, 23 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
index 497525ef9668..0a6445acb100 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
@@ -11,6 +11,19 @@
 #include "intel_display_types.h"
 #include "intel_fbdev_fb.h"
 
+bool intel_fbdev_fb_prefer_stolen(struct intel_display *display,
+				  unsigned int size)
+{
+	struct drm_i915_private *i915 = to_i915(display->drm);
+
+	/*
+	 * If the FB is too big, just don't use it since fbdev is not very
+	 * important and we should probably use that space with FBC or other
+	 * features.
+	 */
+	return i915->dsm.usable_size >= size * 2;
+}
+
 struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
 					       struct drm_fb_helper_surface_size *sizes)
 {
@@ -42,14 +55,9 @@ struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
 						  I915_BO_ALLOC_CONTIGUOUS |
 						  I915_BO_ALLOC_USER);
 	} else {
-		/*
-		 * If the FB is too big, just don't use it since fbdev is not very
-		 * important and we should probably use that space with FBC or other
-		 * features.
-		 *
-		 * Also skip stolen on MTL as Wa_22018444074 mitigation.
-		 */
-		if (!(IS_METEORLAKE(dev_priv)) && size * 2 < dev_priv->dsm.usable_size)
+		/* skip stolen on MTL as Wa_22018444074 mitigation */
+		if (!IS_METEORLAKE(dev_priv) &&
+		    intel_fbdev_fb_prefer_stolen(&dev_priv->display, size))
 			obj = i915_gem_object_create_stolen(dev_priv, size);
 		if (IS_ERR(obj))
 			obj = i915_gem_object_create_shmem(dev_priv, size);
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.h b/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
index 4832fe688fbf..3b9033bd2160 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
+++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
@@ -6,16 +6,19 @@
 #ifndef __INTEL_FBDEV_FB_H__
 #define __INTEL_FBDEV_FB_H__
 
+#include <linux/types.h>
+
 struct drm_fb_helper;
 struct drm_fb_helper_surface_size;
 struct drm_i915_gem_object;
 struct drm_i915_private;
 struct fb_info;
 struct i915_vma;
+struct intel_display;
 
 struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
 					       struct drm_fb_helper_surface_size *sizes);
 int intel_fbdev_fb_fill_info(struct drm_i915_private *i915, struct fb_info *info,
 			     struct drm_i915_gem_object *obj, struct i915_vma *vma);
-
+bool intel_fbdev_fb_prefer_stolen(struct intel_display *display, unsigned int size);
 #endif
diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.c b/drivers/gpu/drm/i915/display/intel_plane_initial.c
index ada1792df5b3..4622bb5f3426 100644
--- a/drivers/gpu/drm/i915/display/intel_plane_initial.c
+++ b/drivers/gpu/drm/i915/display/intel_plane_initial.c
@@ -11,6 +11,7 @@
 #include "intel_display.h"
 #include "intel_display_types.h"
 #include "intel_fb.h"
+#include "intel_fbdev_fb.h"
 #include "intel_frontbuffer.h"
 #include "intel_plane_initial.h"
 
@@ -160,15 +161,10 @@ initial_plane_vma(struct drm_i915_private *i915,
 			mem->min_page_size);
 	size -= base;
 
-	/*
-	 * If the FB is too big, just don't use it since fbdev is not very
-	 * important and we should probably use that space with FBC or other
-	 * features.
-	 */
 	if (IS_ENABLED(CONFIG_FRAMEBUFFER_CONSOLE) &&
 	    mem == i915->mm.stolen_region &&
-	    size * 2 > i915->dsm.usable_size) {
-		drm_dbg_kms(&i915->drm, "Initial FB size exceeds half of stolen, discarding\n");
+	    !intel_fbdev_fb_prefer_stolen(&i915->display, size)) {
+		drm_dbg_kms(&i915->drm, "Initial FB size uses too much stolen, discarding\n");
 		return NULL;
 	}
 
-- 
2.44.2

