Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A77197B2C1
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2024 18:15:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D030B10E4AF;
	Tue, 17 Sep 2024 16:15:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A2AgdsTZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 116B210E4AB;
 Tue, 17 Sep 2024 16:15:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726589719; x=1758125719;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MnuROdgrEVb90c3ijHERI9SKu36LacIyCLRLHLUoawI=;
 b=A2AgdsTZqjq5DempEUt2aQWb8ipqfckOyyxZeZjC68JnH2DuWH+xLFov
 dOYhfvBL+u0Y9YH6Mxc4V6Oh8VfTRPbCbZUnrThiFltPvFdIvB+U+XdH5
 hQFDoOUr4EmCXpUb52AL6hh9Ii8cl7QD2YlWglZmzMSUVEcLODKl0uqdq
 FAwrQAMubvkMgzedMu1O/qBC/n8s7IqyTWNmwkGRH8wcaAJzN68s9Hf1Y
 Wfh++/AHZOvUGoq5IZP2tba9tIRKfvZkBUpaVw6uaeFm+Pq267rCbJW5q
 WYKdUpDZbWHvFWYjJasDFgzZNE+1Vgfdj+YJ/ufJVnL/rMPSinWkKYhmt g==;
X-CSE-ConnectionGUID: r0t6vUH5QeqIvEN2/DBpXg==
X-CSE-MsgGUID: Ivj5RFWsQLKOLJxi6ZiyFQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11198"; a="13559533"
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="13559533"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 09:15:18 -0700
X-CSE-ConnectionGUID: m+HkvOqYSU2CV3Gv8FyRjw==
X-CSE-MsgGUID: w506A3iYTrepCCf2xKXl4Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="73336988"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.102])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 09:15:16 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 ville.syrjala@linux.intel.com, maarten.lankhorst@linux.intel.com,
 jani.nikula@intel.com
Subject: [PATCH 11/22] drm/i915/fb: convert intel_framebuffer_create() to
 struct drm_gem_object
Date: Tue, 17 Sep 2024 19:13:50 +0300
Message-Id: <5120aa0f5e49e95526b3ac20c1325bac1d95aa21.1726589119.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1726589119.git.jani.nikula@intel.com>
References: <cover.1726589119.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Prefer the driver agnostic struct drm_gem_object over i915 specific
struct drm_i915_gem_object.

Move the declaration to the right place while at it.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.h  | 4 ----
 drivers/gpu/drm/i915/display/intel_fb.c       | 6 +++---
 drivers/gpu/drm/i915/display/intel_fb.h       | 3 +++
 drivers/gpu/drm/i915/display/intel_fbdev_fb.c | 3 ++-
 drivers/gpu/drm/xe/display/intel_fbdev_fb.c   | 3 ++-
 5 files changed, 10 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 4bdb48084cab..ef043ddbb1bd 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -40,7 +40,6 @@ struct drm_encoder;
 struct drm_file;
 struct drm_format_info;
 struct drm_framebuffer;
-struct drm_i915_gem_object;
 struct drm_i915_private;
 struct drm_mode_fb_cmd2;
 struct drm_modeset_acquire_ctx;
@@ -465,9 +464,6 @@ int ilk_get_lanes_required(int target_clock, int link_bw, int bpp);
 void vlv_wait_port_ready(struct drm_i915_private *dev_priv,
 			 struct intel_digital_port *dig_port,
 			 unsigned int expected_mask);
-struct drm_framebuffer *
-intel_framebuffer_create(struct drm_i915_gem_object *obj,
-			 struct drm_mode_fb_cmd2 *mode_cmd);
 
 bool intel_fuzzy_clock_check(int clock1, int clock2);
 
diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 7bd4a519cd10..06bf25464ec9 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -2094,14 +2094,14 @@ intel_user_framebuffer_create(struct drm_device *dev,
 	if (IS_ERR(obj))
 		return ERR_CAST(obj);
 
-	fb = intel_framebuffer_create(to_intel_bo(obj), &mode_cmd);
+	fb = intel_framebuffer_create(obj, &mode_cmd);
 	drm_gem_object_put(obj);
 
 	return fb;
 }
 
 struct drm_framebuffer *
-intel_framebuffer_create(struct drm_i915_gem_object *obj,
+intel_framebuffer_create(struct drm_gem_object *obj,
 			 struct drm_mode_fb_cmd2 *mode_cmd)
 {
 	struct intel_framebuffer *intel_fb;
@@ -2111,7 +2111,7 @@ intel_framebuffer_create(struct drm_i915_gem_object *obj,
 	if (!intel_fb)
 		return ERR_PTR(-ENOMEM);
 
-	ret = intel_framebuffer_init(intel_fb, intel_bo_to_drm_bo(obj), mode_cmd);
+	ret = intel_framebuffer_init(intel_fb, obj, mode_cmd);
 	if (ret)
 		goto err;
 
diff --git a/drivers/gpu/drm/i915/display/intel_fb.h b/drivers/gpu/drm/i915/display/intel_fb.h
index fef1f713dab0..c11cca472747 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.h
+++ b/drivers/gpu/drm/i915/display/intel_fb.h
@@ -88,6 +88,9 @@ int intel_framebuffer_init(struct intel_framebuffer *ifb,
 			   struct drm_gem_object *obj,
 			   struct drm_mode_fb_cmd2 *mode_cmd);
 struct drm_framebuffer *
+intel_framebuffer_create(struct drm_gem_object *obj,
+			 struct drm_mode_fb_cmd2 *mode_cmd);
+struct drm_framebuffer *
 intel_user_framebuffer_create(struct drm_device *dev,
 			      struct drm_file *filp,
 			      const struct drm_mode_fb_cmd2 *user_mode_cmd);
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
index 77df36876ed5..4991c35a2632 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
@@ -9,6 +9,7 @@
 
 #include "i915_drv.h"
 #include "intel_display_types.h"
+#include "intel_fb.h"
 #include "intel_fbdev_fb.h"
 
 struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
@@ -60,7 +61,7 @@ struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
 		return ERR_PTR(-ENOMEM);
 	}
 
-	fb = intel_framebuffer_create(obj, &mode_cmd);
+	fb = intel_framebuffer_create(intel_bo_to_drm_bo(obj), &mode_cmd);
 	i915_gem_object_put(obj);
 
 	return to_intel_framebuffer(fb);
diff --git a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
index c290387964c0..c425349eac34 100644
--- a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
+++ b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
@@ -6,6 +6,7 @@
 #include <drm/drm_fb_helper.h>
 
 #include "intel_display_types.h"
+#include "intel_fb.h"
 #include "intel_fbdev_fb.h"
 #include "xe_bo.h"
 #include "xe_ttm_stolen_mgr.h"
@@ -64,7 +65,7 @@ struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
 		goto err;
 	}
 
-	fb = intel_framebuffer_create(obj, &mode_cmd);
+	fb = intel_framebuffer_create(&obj->ttm.base, &mode_cmd);
 	if (IS_ERR(fb)) {
 		xe_bo_unpin_map_no_vm(obj);
 		goto err;
-- 
2.39.2

