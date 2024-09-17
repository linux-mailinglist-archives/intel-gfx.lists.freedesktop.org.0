Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 37BE397B2AF
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2024 18:14:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6E1F10E4A4;
	Tue, 17 Sep 2024 16:14:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WL0fDO6H";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4820310E4A2;
 Tue, 17 Sep 2024 16:14:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726589657; x=1758125657;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=h7qv1Q9xIUB/VRldlqM7LaK991arEOCjC4yYR6CBpw8=;
 b=WL0fDO6H+yoHxnuFOVTF2aswP82SrU/FNoCn84IcRYiYUmLuHc1PNvTa
 qQJghaIVlhUrnioOIFlqOdQNTZt/atlxdNkfypmscM78cRfF0AyjvBG3X
 aX7kD7+iaaNnx20WKSn7w5+Q9gx53mQK6IU3vykwT5C9N4DNSqztIz2mQ
 Xt/2h/zkPzvIEWUqxWg0Wl309G/sMbQC9mmcUTRh1+s4uqyDD5rSLg6cu
 M1ImIXxK/YX4QEi7G5S+iaKFJoUKBSNHII2gMQjB3D4UJznr/q/GSONND
 sHknHvCKdXsF57cE10L5dIY36Ju4WU6WqU7cza2egQ3DGEAMtLGmJ30wH g==;
X-CSE-ConnectionGUID: ibRUcXDuQ+ivZrl5E0yXcQ==
X-CSE-MsgGUID: ztCZYN/hRWiV90x0OtPqSQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11198"; a="24990164"
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="24990164"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 09:14:17 -0700
X-CSE-ConnectionGUID: BCJEejlCR+G22sMkJ+0OOg==
X-CSE-MsgGUID: ysDti3sWRaq1O4pUmnG6IQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="69348812"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.102])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 09:14:14 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 ville.syrjala@linux.intel.com, maarten.lankhorst@linux.intel.com,
 jani.nikula@intel.com
Subject: [PATCH 01/22] drm/i915/display: start a buffer object abstraction
 layer
Date: Tue, 17 Sep 2024 19:13:40 +0300
Message-Id: <df6867523a0b5fdd4eb63f657f545603ae6f6e0b.1726589119.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1726589119.git.jani.nikula@intel.com>
References: <cover.1726589119.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

The display code needs to deal with gem objects, and mostly uses struct
drm_i915_gem_object. That's not great, because for xe we need to
redefine it struct xe_bo during build.

Start a common interface using struct drm_gem_object, with separate
implementations for i915 and xe. For starters, convert i9xx_wm.c to use
it.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/Makefile           |  1 +
 drivers/gpu/drm/i915/display/i9xx_wm.c  |  7 ++++---
 drivers/gpu/drm/i915/display/intel_bo.c | 10 ++++++++++
 drivers/gpu/drm/i915/display/intel_bo.h | 13 +++++++++++++
 drivers/gpu/drm/i915/display/intel_fb.c |  5 +++++
 drivers/gpu/drm/i915/display/intel_fb.h |  3 +++
 drivers/gpu/drm/xe/Makefile             |  1 +
 drivers/gpu/drm/xe/display/intel_bo.c   | 12 ++++++++++++
 8 files changed, 49 insertions(+), 3 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_bo.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_bo.h
 create mode 100644 drivers/gpu/drm/xe/display/intel_bo.c

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 9fcd9e09bc0b..bb67bad839ea 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -225,6 +225,7 @@ i915-y += \
 	display/intel_atomic_plane.o \
 	display/intel_audio.o \
 	display/intel_bios.o \
+	display/intel_bo.o \
 	display/intel_bw.o \
 	display/intel_cdclk.o \
 	display/intel_color.o \
diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
index 5b21604312fd..5a75d7638aed 100644
--- a/drivers/gpu/drm/i915/display/i9xx_wm.c
+++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
@@ -7,6 +7,7 @@
 #include "i915_reg.h"
 #include "i9xx_wm.h"
 #include "intel_atomic.h"
+#include "intel_bo.h"
 #include "intel_display.h"
 #include "intel_display_trace.h"
 #include "intel_fb.h"
@@ -2185,12 +2186,12 @@ static void i9xx_update_wm(struct drm_i915_private *dev_priv)
 
 	crtc = single_enabled_crtc(dev_priv);
 	if (IS_I915GM(dev_priv) && crtc) {
-		struct drm_i915_gem_object *obj;
+		struct drm_gem_object *obj;
 
-		obj = intel_fb_obj(crtc->base.primary->state->fb);
+		obj = intel_fb_bo(crtc->base.primary->state->fb);
 
 		/* self-refresh seems busted with untiled */
-		if (!i915_gem_object_is_tiled(obj))
+		if (!intel_bo_is_tiled(obj))
 			crtc = NULL;
 	}
 
diff --git a/drivers/gpu/drm/i915/display/intel_bo.c b/drivers/gpu/drm/i915/display/intel_bo.c
new file mode 100644
index 000000000000..fede0a545951
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_bo.c
@@ -0,0 +1,10 @@
+// SPDX-License-Identifier: MIT
+/* Copyright © 2024 Intel Corporation */
+
+#include "gem/i915_gem_object.h"
+#include "intel_bo.h"
+
+bool intel_bo_is_tiled(struct drm_gem_object *obj)
+{
+	return i915_gem_object_is_tiled(to_intel_bo(obj));
+}
diff --git a/drivers/gpu/drm/i915/display/intel_bo.h b/drivers/gpu/drm/i915/display/intel_bo.h
new file mode 100644
index 000000000000..f5dfcc16d33e
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_bo.h
@@ -0,0 +1,13 @@
+/* SPDX-License-Identifier: MIT */
+/* Copyright © 2024 Intel Corporation */
+
+#ifndef __INTEL_BO__
+#define __INTEL_BO__
+
+#include <linux/types.h>
+
+struct drm_gem_object;
+
+bool intel_bo_is_tiled(struct drm_gem_object *obj);
+
+#endif /* __INTEL_BO__ */
diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index d2ff21e98545..834a49395638 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -2125,3 +2125,8 @@ struct drm_i915_gem_object *intel_fb_obj(const struct drm_framebuffer *fb)
 {
 	return fb ? to_intel_bo(fb->obj[0]) : NULL;
 }
+
+struct drm_gem_object *intel_fb_bo(const struct drm_framebuffer *fb)
+{
+	return fb ? fb->obj[0] : NULL;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_fb.h b/drivers/gpu/drm/i915/display/intel_fb.h
index 068f3aee99aa..2ca919bdbd7d 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.h
+++ b/drivers/gpu/drm/i915/display/intel_fb.h
@@ -12,6 +12,7 @@
 struct drm_device;
 struct drm_file;
 struct drm_framebuffer;
+struct drm_gem_object;
 struct drm_i915_gem_object;
 struct drm_i915_private;
 struct drm_mode_fb_cmd2;
@@ -98,4 +99,6 @@ unsigned int intel_fb_modifier_to_tiling(u64 fb_modifier);
 
 struct drm_i915_gem_object *intel_fb_obj(const struct drm_framebuffer *fb);
 
+struct drm_gem_object *intel_fb_bo(const struct drm_framebuffer *fb);
+
 #endif /* __INTEL_FB_H__ */
diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
index 8f1c5c329f79..e1ab68d3e066 100644
--- a/drivers/gpu/drm/xe/Makefile
+++ b/drivers/gpu/drm/xe/Makefile
@@ -166,6 +166,7 @@ $(obj)/i915-display/%.o: $(srctree)/drivers/gpu/drm/i915/display/%.c FORCE
 xe-$(CONFIG_DRM_XE_DISPLAY) += \
 	display/ext/i915_irq.o \
 	display/ext/i915_utils.o \
+	display/intel_bo.o \
 	display/intel_fb_bo.o \
 	display/intel_fbdev_fb.o \
 	display/xe_display.o \
diff --git a/drivers/gpu/drm/xe/display/intel_bo.c b/drivers/gpu/drm/xe/display/intel_bo.c
new file mode 100644
index 000000000000..d564fb7d85e5
--- /dev/null
+++ b/drivers/gpu/drm/xe/display/intel_bo.c
@@ -0,0 +1,12 @@
+// SPDX-License-Identifier: MIT
+/* Copyright © 2024 Intel Corporation */
+
+#include <drm/drm_gem.h>
+
+#include "intel_bo.h"
+
+bool intel_bo_is_tiled(struct drm_gem_object *obj)
+{
+	/* legacy tiling is unused */
+	return false;
+}
-- 
2.39.2

