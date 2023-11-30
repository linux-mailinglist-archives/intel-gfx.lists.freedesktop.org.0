Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 08A6A7FF2C0
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Nov 2023 15:44:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E7C210E311;
	Thu, 30 Nov 2023 14:44:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7B1010E106
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Nov 2023 14:44:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701355442; x=1732891442;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=y691lmchzrpEwkxvXls9bCB7jV7+4VyMXM0vgYjoJSc=;
 b=QruiMUnultPdriyA9TgFf8scynKfI0Kw4cat48lSMxPAl1O9bqM4nxPy
 s/Les0f2UoKiLnNI4f5KaaV1W9avP9S8RJKh8haOYP8d7x86hxzHBbx2X
 /ZM/5f3uP9WsVuv2OdSMCyltzAXCvtC2PTJy3oQ95RSeqVGgUM73GI50B
 AYvRqNLSNag2o3L73OboV2+E6YrSeQARf/IOh9ZtsBbxx2v25t/XH0J3Q
 ARClCMPGAuE4zNn7QxYJe3N2eE9ncOE3ry2eA4AIeEgzBCF7W/itX5iel
 p0GIrKN+JnjoU0R2f4pmgFqqmI9mV2uSsoMLxe7ccW7GEEAVxbVdb7+PD w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10910"; a="212644"
X-IronPort-AV: E=Sophos;i="6.04,239,1695711600"; 
   d="scan'208";a="212644"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2023 06:44:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10910"; a="803721187"
X-IronPort-AV: E=Sophos;i="6.04,239,1695711600"; d="scan'208";a="803721187"
Received: from unknown (HELO jhogande-mobl1.fi.intel.com) ([10.237.66.43])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2023 06:43:59 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 30 Nov 2023 16:43:38 +0200
Message-Id: <20231130144338.3083821-5-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231130144338.3083821-1-jouni.hogander@intel.com>
References: <20231130144338.3083821-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v8 4/4] drm/i915/display: Split i915 specific
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

v8:
  - return original error code from intel_fb_bo_lookup_valid_bo on failure
v7:
  - drop #include <drm/drm_plane.h>
  - s/user_mode_cmd/mode_cmd/
  - Use passed i915 pointer instead of to_i915(obj->base.dev)
v6: Add missing intel_fb_bo.[ch]
v5:
  - Keep drm_any_plane_has_format check in intel_fb.c
  - Use mode_cmd instead of user_mode_cmd for intel_fb_bo_lookup_valid_bo
v4: Move drm_any_plane_has_format check into intel_fb_bo.c
v3: Fix failure handling in intel_framebuffer_init
v2: Couple of fixes to error value handling

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/Makefile              |  1 +
 drivers/gpu/drm/i915/display/intel_fb.c    | 74 +++--------------
 drivers/gpu/drm/i915/display/intel_fb_bo.c | 92 ++++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_fb_bo.h | 24 ++++++
 4 files changed, 129 insertions(+), 62 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_fb_bo.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_fb_bo.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 65e984242089..5060c7b98a56 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -280,6 +280,7 @@ i915-y += \
 	display/intel_dsb.o \
 	display/intel_dsb_buffer.o \
 	display/intel_fb.o \
+	display/intel_fb_bo.o \
 	display/intel_fb_pin.o \
 	display/intel_fbc.o \
 	display/intel_fdi.o \
diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 868e39291e9f..853b3bd57461 100644
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
@@ -2144,19 +2100,13 @@ intel_user_framebuffer_create(struct drm_device *dev,
 	struct drm_framebuffer *fb;
 	struct drm_i915_gem_object *obj;
 	struct drm_mode_fb_cmd2 mode_cmd = *user_mode_cmd;
-	struct drm_i915_private *i915;
-
-	obj = i915_gem_object_lookup(filp, mode_cmd.handles[0]);
-	if (!obj)
-		return ERR_PTR(-ENOENT);
-
-	/* object is backed with LMEM for discrete */
-	i915 = to_i915(obj->base.dev);
-	if (HAS_LMEM(i915) && !i915_gem_object_can_migrate(obj, INTEL_REGION_LMEM_0)) {
-		/* object is "remote", not in local memory */
-		i915_gem_object_put(obj);
-		drm_dbg_kms(&i915->drm, "framebuffer must reside in local memory\n");
-		return ERR_PTR(-EREMOTE);
+	struct drm_i915_private *i915 = to_i915(dev);
+
+	obj = intel_fb_bo_lookup_valid_bo(i915, filp, &mode_cmd);
+	if (IS_ERR(obj)) {
+		int ret = PTR_ERR(obj);
+
+		return ERR_PTR(ret);
 	}
 
 	fb = intel_framebuffer_create(obj, &mode_cmd);
diff --git a/drivers/gpu/drm/i915/display/intel_fb_bo.c b/drivers/gpu/drm/i915/display/intel_fb_bo.c
new file mode 100644
index 000000000000..ce86eff7b226
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_fb_bo.c
@@ -0,0 +1,92 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2021 Intel Corporation
+ */
+
+#include <drm/drm_framebuffer.h>
+
+#include "gem/i915_gem_object.h"
+
+#include "i915_drv.h"
+#include "intel_fb.h"
+#include "intel_fb_bo.h"
+
+int intel_fb_bo_framebuffer_init(struct intel_framebuffer *intel_fb,
+				 struct drm_i915_gem_object *obj,
+				 struct drm_mode_fb_cmd2 *mode_cmd)
+{
+	struct drm_i915_private *i915 = to_i915(obj->base.dev);
+	unsigned int tiling, stride;
+
+	i915_gem_object_lock(obj, NULL);
+	tiling = i915_gem_object_get_tiling(obj);
+	stride = i915_gem_object_get_stride(obj);
+	i915_gem_object_unlock(obj);
+
+	if (mode_cmd->flags & DRM_MODE_FB_MODIFIERS) {
+		/*
+		 * If there's a fence, enforce that
+		 * the fb modifier and tiling mode match.
+		 */
+		if (tiling != I915_TILING_NONE &&
+		    tiling != intel_fb_modifier_to_tiling(mode_cmd->modifier[0])) {
+			drm_dbg_kms(&i915->drm,
+				    "tiling_mode doesn't match fb modifier\n");
+			return -EINVAL;
+		}
+	} else {
+		if (tiling == I915_TILING_X) {
+			mode_cmd->modifier[0] = I915_FORMAT_MOD_X_TILED;
+		} else if (tiling == I915_TILING_Y) {
+			drm_dbg_kms(&i915->drm,
+				    "No Y tiling for legacy addfb\n");
+			return -EINVAL;
+		}
+	}
+
+	/*
+	 * gen2/3 display engine uses the fence if present,
+	 * so the tiling mode must match the fb modifier exactly.
+	 */
+	if (DISPLAY_VER(i915) < 4 &&
+	    tiling != intel_fb_modifier_to_tiling(mode_cmd->modifier[0])) {
+		drm_dbg_kms(&i915->drm,
+			    "tiling_mode must match fb modifier exactly on gen2/3\n");
+		return -EINVAL;
+	}
+
+	/*
+	 * If there's a fence, enforce that
+	 * the fb pitch and fence stride match.
+	 */
+	if (tiling != I915_TILING_NONE && mode_cmd->pitches[0] != stride) {
+		drm_dbg_kms(&i915->drm,
+			    "pitch (%d) must match tiling stride (%d)\n",
+			    mode_cmd->pitches[0], stride);
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+struct drm_i915_gem_object *
+intel_fb_bo_lookup_valid_bo(struct drm_i915_private *i915,
+			    struct drm_file *filp,
+			    const struct drm_mode_fb_cmd2 *mode_cmd)
+{
+	struct drm_i915_gem_object *obj;
+
+	obj = i915_gem_object_lookup(filp, mode_cmd->handles[0]);
+	if (!obj)
+		return ERR_PTR(-ENOENT);
+
+	/* object is backed with LMEM for discrete */
+	if (HAS_LMEM(i915) && !i915_gem_object_can_migrate(obj, INTEL_REGION_LMEM_0)) {
+		/* object is "remote", not in local memory */
+		i915_gem_object_put(obj);
+		drm_dbg_kms(&i915->drm, "framebuffer must reside in local memory\n");
+		return ERR_PTR(-EREMOTE);
+	}
+
+	return obj;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_fb_bo.h b/drivers/gpu/drm/i915/display/intel_fb_bo.h
new file mode 100644
index 000000000000..dd06ceec8601
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_fb_bo.h
@@ -0,0 +1,24 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2021 Intel Corporation
+ */
+
+#ifndef __INTEL_FB_BO_H__
+#define __INTEL_FB_BO_H__
+
+struct drm_file;
+struct drm_mode_fb_cmd2;
+struct drm_i915_gem_object;
+struct drm_i915_private;
+struct intel_framebuffer;
+
+int intel_fb_bo_framebuffer_init(struct intel_framebuffer *intel_fb,
+				 struct drm_i915_gem_object *obj,
+				 struct drm_mode_fb_cmd2 *mode_cmd);
+
+struct drm_i915_gem_object *
+intel_fb_bo_lookup_valid_bo(struct drm_i915_private *i915,
+			    struct drm_file *filp,
+			    const struct drm_mode_fb_cmd2 *user_mode_cmd);
+
+#endif
-- 
2.34.1

