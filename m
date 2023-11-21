Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 10D2E7F2BBA
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Nov 2023 12:28:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7286610E487;
	Tue, 21 Nov 2023 11:28:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6523010E482
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Nov 2023 11:27:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700566077; x=1732102077;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NRmJLnQLi1h2HXuX0ohVZ+5iFOuXDQO3hQ9a38rCiA8=;
 b=h3dDlQwbgED17EjWbbidzm4uKHY5SqLW3JxBC1vLRLzRUJbtB3qrLC82
 RRKeE46wqSRCN2gzUYYVP/3VVSwZvebSwmusGjp7mFKL9vberJAh9sYwa
 85jPdizbadkUNM4RZaYIAJTDAAeGrqaVofvfJA5K2JoYI54z7Y4P/ES5h
 JmssadMFh7dEVxBGJ1R+mpyt+lHyhOzF1JJwV5kjow7lg0/kavunjqnTe
 4HV/RfBU5d2FRvIpNFLO5ol7fAvJ2Bm3Rc4oTjDEWCenkkEIG9oa60uM8
 k96OUg8e3Bg2fQM7qSgJ92T0AwJWptkmMW2QS9770++tlbzyJb1Dp4cVZ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10900"; a="390674996"
X-IronPort-AV: E=Sophos;i="6.04,215,1695711600"; d="scan'208";a="390674996"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2023 03:27:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10900"; a="890223235"
X-IronPort-AV: E=Sophos;i="6.04,215,1695711600"; d="scan'208";a="890223235"
Received: from ttmerile-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.252.39.236])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2023 03:27:55 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 21 Nov 2023 13:27:29 +0200
Message-Id: <20231121112729.4191245-5-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231121112729.4191245-1-jouni.hogander@intel.com>
References: <20231121112729.4191245-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 4/4] drm/i915/display: Split i915 specific
 code away from intel_fb.c
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

We are preparing for Xe driver. Backing object implementation is differing
between i915 and Xe. Split i915 specific code into separate source file
built only for i915.

v5:
  - Keep drm_any_plane_has_format check in intel_fb.c
  - Use mode_cmd instead of user_mode_cmd for intel_fb_bo_lookup_valid_bo
v4: Move drm_any_plane_has_format check into intel_fb_bo.c
v3: Fix failure handling in intel_framebuffer_init
v2: Couple of fixes to error value handling

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/Makefile           |  1 +
 drivers/gpu/drm/i915/display/intel_fb.c | 69 +++----------------------
 2 files changed, 9 insertions(+), 61 deletions(-)

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 7e5d6a39d450..c14ba1212b84 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -279,6 +279,7 @@ i915-y += \
 	display/intel_dsb.o \
 	display/intel_dsb_buffer.o \
 	display/intel_fb.o \
+	display/intel_fb_bo.o \
 	display/intel_fb_pin.o \
 	display/intel_fbc.o \
 	display/intel_fdi.o \
diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index f63f56b24b11..d5de213be2c0 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -4,7 +4,6 @@
  */
 
 #include <drm/drm_blend.h>
-#include <drm/drm_framebuffer.h>
 #include <drm/drm_modeset_helper.h>
 
 #include <linux/dma-fence.h>
@@ -15,6 +14,7 @@
 #include "intel_display_types.h"
 #include "intel_dpt.h"
 #include "intel_fb.h"
+#include "intel_fb_bo.h"
 #include "intel_frontbuffer.h"
 
 #define check_array_bounds(i915, a, i) drm_WARN_ON(&(i915)->drm, (i) >= ARRAY_SIZE(a))
@@ -1985,7 +1985,6 @@ int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
 	struct drm_i915_private *dev_priv = to_i915(intel_bo_to_drm_bo(obj)->dev);
 	struct drm_framebuffer *fb = &intel_fb->base;
 	u32 max_stride;
-	unsigned int tiling, stride;
 	int ret = -EINVAL;
 	int i;
 
@@ -1993,32 +1992,11 @@ int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
 	if (!intel_fb->frontbuffer)
 		return -ENOMEM;
 
-	i915_gem_object_lock(obj, NULL);
-	tiling = i915_gem_object_get_tiling(obj);
-	stride = i915_gem_object_get_stride(obj);
-	i915_gem_object_unlock(obj);
-
-	if (mode_cmd->flags & DRM_MODE_FB_MODIFIERS) {
-		/*
-		 * If there's a fence, enforce that
-		 * the fb modifier and tiling mode match.
-		 */
-		if (tiling != I915_TILING_NONE &&
-		    tiling != intel_fb_modifier_to_tiling(mode_cmd->modifier[0])) {
-			drm_dbg_kms(&dev_priv->drm,
-				    "tiling_mode doesn't match fb modifier\n");
-			goto err;
-		}
-	} else {
-		if (tiling == I915_TILING_X) {
-			mode_cmd->modifier[0] = I915_FORMAT_MOD_X_TILED;
-		} else if (tiling == I915_TILING_Y) {
-			drm_dbg_kms(&dev_priv->drm,
-				    "No Y tiling for legacy addfb\n");
-			goto err;
-		}
-	}
+	ret = intel_fb_bo_framebuffer_init(intel_fb, obj, mode_cmd);
+	if (ret)
+		goto err;
 
+	ret = -EINVAL;
 	if (!drm_any_plane_has_format(&dev_priv->drm,
 				      mode_cmd->pixel_format,
 				      mode_cmd->modifier[0])) {
@@ -2028,17 +2006,6 @@ int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
 		goto err;
 	}
 
-	/*
-	 * gen2/3 display engine uses the fence if present,
-	 * so the tiling mode must match the fb modifier exactly.
-	 */
-	if (DISPLAY_VER(dev_priv) < 4 &&
-	    tiling != intel_fb_modifier_to_tiling(mode_cmd->modifier[0])) {
-		drm_dbg_kms(&dev_priv->drm,
-			    "tiling_mode must match fb modifier exactly on gen2/3\n");
-		goto err;
-	}
-
 	max_stride = intel_fb_max_stride(dev_priv, mode_cmd->pixel_format,
 					 mode_cmd->modifier[0]);
 	if (mode_cmd->pitches[0] > max_stride) {
@@ -2050,17 +2017,6 @@ int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
 		goto err;
 	}
 
-	/*
-	 * If there's a fence, enforce that
-	 * the fb pitch and fence stride match.
-	 */
-	if (tiling != I915_TILING_NONE && mode_cmd->pitches[0] != stride) {
-		drm_dbg_kms(&dev_priv->drm,
-			    "pitch (%d) must match tiling stride (%d)\n",
-			    mode_cmd->pitches[0], stride);
-		goto err;
-	}
-
 	/* FIXME need to adjust LINOFF/TILEOFF accordingly. */
 	if (mode_cmd->offsets[0] != 0) {
 		drm_dbg_kms(&dev_priv->drm,
@@ -2144,21 +2100,12 @@ intel_user_framebuffer_create(struct drm_device *dev,
 	struct drm_framebuffer *fb;
 	struct drm_i915_gem_object *obj;
 	struct drm_mode_fb_cmd2 mode_cmd = *user_mode_cmd;
-	struct drm_i915_private *i915;
+	struct drm_i915_private *i915 = to_i915(dev);
 
-	obj = i915_gem_object_lookup(filp, mode_cmd.handles[0]);
-	if (!obj)
+	obj = intel_fb_bo_lookup_valid_bo(i915, filp, &mode_cmd);
+	if (IS_ERR(obj))
 		return ERR_PTR(-ENOENT);
 
-	/* object is backed with LMEM for discrete */
-	i915 = to_i915(obj->base.dev);
-	if (HAS_LMEM(i915) && !i915_gem_object_can_migrate(obj, INTEL_REGION_LMEM_0)) {
-		/* object is "remote", not in local memory */
-		i915_gem_object_put(obj);
-		drm_dbg_kms(&i915->drm, "framebuffer must reside in local memory\n");
-		return ERR_PTR(-EREMOTE);
-	}
-
 	fb = intel_framebuffer_create(obj, &mode_cmd);
 	drm_gem_object_put(intel_bo_to_drm_bo(obj));
 
-- 
2.34.1

