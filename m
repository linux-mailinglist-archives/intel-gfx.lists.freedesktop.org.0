Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E423F7EEC08
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Nov 2023 06:42:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F35A10E2ED;
	Fri, 17 Nov 2023 05:42:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4D7010E2EC
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Nov 2023 05:42:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700199733; x=1731735733;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=I+D+FlkdNJ4PMjsZyb9cKAXtKXfpIIpj2oB6rElgiI8=;
 b=RTMIpTgOuN5pCy1vFRgu7aifvtMJaicJmjdwSjvfVR/RYMDp7ngmjvOM
 zVWYj58bpYN7kTp4OUqFoHDFFduYzaacBOabn5Sw/u7lPYWznvqn+Q6pS
 bB/D5ULLpAHflnODXaYSCWcntTgjx7fMKfVuJXlLUfwuim0I8UpYtB2S4
 enOb7thy2ajX1hXfR4oRtd6mJhDQbfRf6/eOJ4HQaTgOCMDz9r0WeHHWv
 c5RC8YP60e8lKSBfbXnMHnhvR6ynC0KYTaVV9L+238NpbW4oBDVKwBTYu
 RWl7QCN3NkHBlZwfeihpxT7Y4Ll5JbD1IJrIIa5zo0EZiTZq0DzKMWGCZ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10896"; a="395165353"
X-IronPort-AV: E=Sophos;i="6.04,206,1695711600"; d="scan'208";a="395165353"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2023 21:42:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10896"; a="909342666"
X-IronPort-AV: E=Sophos;i="6.04,206,1695711600"; d="scan'208";a="909342666"
Received: from ckrassni-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.219.72])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2023 21:42:11 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Nov 2023 07:41:52 +0200
Message-Id: <20231117054152.542586-4-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231117054152.542586-1-jouni.hogander@intel.com>
References: <20231117054152.542586-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 3/3] drm/i915/display: Split i915 specific
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

v3: Fix failure handling in intel_framebuffer_init
v2: Couple of fixes to error value handling

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/Makefile              |  1 +
 drivers/gpu/drm/i915/display/intel_fb.c    | 68 ++--------------
 drivers/gpu/drm/i915/display/intel_fb_bo.c | 93 ++++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_fb_bo.h | 24 ++++++
 4 files changed, 126 insertions(+), 60 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_fb_bo.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_fb_bo.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 239da40a401f..bad4f61029d4 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -278,6 +278,7 @@ i915-y += \
 	display/intel_drrs.o \
 	display/intel_dsb.o \
 	display/intel_fb.o \
+	display/intel_fb_bo.o \
 	display/intel_fb_pin.o \
 	display/intel_fbc.o \
 	display/intel_fdi.o \
diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index a235ec0f192d..6f6a09f5be56 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -15,6 +15,7 @@
 #include "intel_display_types.h"
 #include "intel_dpt.h"
 #include "intel_fb.h"
+#include "intel_fb_bo.h"
 #include "intel_frontbuffer.h"
 
 #define check_array_bounds(i915, a, i) drm_WARN_ON(&(i915)->drm, (i) >= ARRAY_SIZE(a))
@@ -1978,7 +1979,6 @@ int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
 	struct drm_i915_private *dev_priv = to_i915(intel_bo_to_drm_bo(obj)->dev);
 	struct drm_framebuffer *fb = &intel_fb->base;
 	u32 max_stride;
-	unsigned int tiling, stride;
 	int ret = -EINVAL;
 	int i;
 
@@ -1986,32 +1986,11 @@ int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
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
@@ -2021,17 +2000,6 @@ int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
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
@@ -2043,17 +2011,6 @@ int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
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
@@ -2137,21 +2094,12 @@ intel_user_framebuffer_create(struct drm_device *dev,
 	struct drm_framebuffer *fb;
 	struct drm_i915_gem_object *obj;
 	struct drm_mode_fb_cmd2 mode_cmd = *user_mode_cmd;
-	struct drm_i915_private *i915;
+	struct drm_i915_private *i915 = to_i915(dev);
 
-	obj = i915_gem_object_lookup(filp, mode_cmd.handles[0]);
-	if (!obj)
+	obj = intel_fb_bo_lookup_valid_bo(i915, filp, user_mode_cmd);
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
 
diff --git a/drivers/gpu/drm/i915/display/intel_fb_bo.c b/drivers/gpu/drm/i915/display/intel_fb_bo.c
new file mode 100644
index 000000000000..581d9864e918
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_fb_bo.c
@@ -0,0 +1,93 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2021 Intel Corporation
+ */
+
+#include <drm/drm_framebuffer.h>
+#include <drm/drm_modeset_helper.h>
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
+			    const struct drm_mode_fb_cmd2 *user_mode_cmd)
+{
+	struct drm_i915_gem_object *obj = i915_gem_object_lookup(filp, user_mode_cmd->handles[0]);
+
+	if (!obj)
+		return ERR_PTR(-ENOENT);
+
+	/* object is backed with LMEM for discrete */
+	i915 = to_i915(obj->base.dev);
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

