Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B57AC95F69F
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2024 18:32:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E73310E241;
	Mon, 26 Aug 2024 16:32:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ifjq/3PZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78D2210E241;
 Mon, 26 Aug 2024 16:32:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724689930; x=1756225930;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Pp/lLIIZrfTdIa5kyGLkp/UCGXsJWFLvYnGjiPF70H4=;
 b=Ifjq/3PZnw7veeiJKK1NnFyspEv+A5a143FhwJccAWgbNANEXf3XkK0v
 IcxyaNDWC614dM/AQCCbuKZ6SbK3OGwVw3YPZylUzGjW+fT52Yj9rY2DM
 YECOSdEUcvvMRXjYcyMDHgiXj+Kc2zvF4NxTDbzSPnFWyw+fFr3RHj57h
 nBsS35Jvjd1xpfweJK53Ccr5bbyjbUsUJpFnfjDxVGfR1/+G8EB/lf9zk
 IuQC43TBCMpCpHse62KR+VIP404CHlZGqAFKoivR1ZAlK8Mk66asvmvu+
 LL7qYAC8rUu+/1cvtgyd92F6RNTAAROqjcPiTR8AsNNLmUzBDJHBxl9gP Q==;
X-CSE-ConnectionGUID: DObLsf70QLSxaE4nJtomTQ==
X-CSE-MsgGUID: 4o/igSXKR86uzpyXtMRfUQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11176"; a="33694378"
X-IronPort-AV: E=Sophos;i="6.10,178,1719903600"; d="scan'208";a="33694378"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2024 09:32:10 -0700
X-CSE-ConnectionGUID: 4PU5iumATL2K4SiJQ+hv1Q==
X-CSE-MsgGUID: gyPEBExYTxWG3gHJqSPGMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,178,1719903600"; d="scan'208";a="67387566"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.169])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2024 09:32:08 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 6/7] drm/i915/fb: hide the guts of intel_fb_obj()
Date: Mon, 26 Aug 2024 19:31:19 +0300
Message-Id: <c5ff0d355911903809ba366403192243c05d3427.1724689818.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1724689818.git.jani.nikula@intel.com>
References: <cover.1724689818.git.jani.nikula@intel.com>
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

Use a proper function in intel_fb.[ch] for intel_fb_obj() to be able to
drop the gem/i915_gem_object_types.h from intel_display_types.h.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_wm.c               | 1 +
 drivers/gpu/drm/i915/display/intel_atomic_plane.c    | 1 +
 drivers/gpu/drm/i915/display/intel_display_debugfs.c | 3 ++-
 drivers/gpu/drm/i915/display/intel_display_types.h   | 3 ---
 drivers/gpu/drm/i915/display/intel_fb.c              | 6 ++++++
 drivers/gpu/drm/i915/display/intel_fb.h              | 2 ++
 drivers/gpu/drm/i915/display/intel_fbdev.c           | 1 +
 drivers/gpu/drm/i915/display/intel_frontbuffer.c     | 1 +
 8 files changed, 14 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
index 4e7ca5277bf1..cdaf6dfb824e 100644
--- a/drivers/gpu/drm/i915/display/i9xx_wm.c
+++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
@@ -9,6 +9,7 @@
 #include "intel_atomic.h"
 #include "intel_display.h"
 #include "intel_display_trace.h"
+#include "intel_fb.h"
 #include "intel_mchbar_regs.h"
 #include "intel_wm.h"
 #include "skl_watermark.h"
diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index e979786aa5cf..c9978bbd42a9 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -39,6 +39,7 @@
 #include <drm/drm_blend.h>
 #include <drm/drm_fourcc.h>
 
+#include "gem/i915_gem_object_types.h"
 #include "i915_config.h"
 #include "i9xx_plane_regs.h"
 #include "intel_atomic_plane.h"
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index a9182af43f40..12ed4f6aa243 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -16,8 +16,8 @@
 #include "i915_reg.h"
 #include "intel_alpm.h"
 #include "intel_crtc.h"
-#include "intel_de.h"
 #include "intel_crtc_state_dump.h"
+#include "intel_de.h"
 #include "intel_display_debugfs.h"
 #include "intel_display_debugfs_params.h"
 #include "intel_display_power.h"
@@ -28,6 +28,7 @@
 #include "intel_dp_link_training.h"
 #include "intel_dp_mst.h"
 #include "intel_drrs.h"
+#include "intel_fb.h"
 #include "intel_fbc.h"
 #include "intel_fbdev.h"
 #include "intel_hdcp.h"
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 15fb29ef7c63..824dcae19c75 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -44,7 +44,6 @@
 #include <drm/drm_vblank_work.h>
 #include <drm/intel/i915_hdcp_interface.h>
 
-#include "gem/i915_gem_object_types.h" /* for to_intel_bo() */
 #include "i915_vma.h"
 #include "i915_vma_types.h"
 #include "intel_bios.h"
@@ -1491,8 +1490,6 @@ struct intel_plane {
 #define to_intel_framebuffer(fb) \
 	container_of_const((fb), struct intel_framebuffer, base)
 
-#define intel_fb_obj(x) ((x) ? to_intel_bo((x)->obj[0]) : NULL)
-
 struct intel_hdmi {
 	i915_reg_t hdmi_reg;
 	struct {
diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index d2716915d046..cf94ee252f93 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -10,6 +10,7 @@
 #include <linux/dma-resv.h>
 
 #include "gem/i915_gem_object.h"
+#include "gem/i915_gem_object_types.h"
 #include "i915_drv.h"
 #include "intel_atomic_plane.h"
 #include "intel_display.h"
@@ -2101,3 +2102,8 @@ intel_framebuffer_create(struct drm_i915_gem_object *obj,
 	kfree(intel_fb);
 	return ERR_PTR(ret);
 }
+
+struct drm_i915_gem_object *intel_fb_obj(const struct drm_framebuffer *fb)
+{
+	return fb ? to_intel_bo(fb->obj[0]) : NULL;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_fb.h b/drivers/gpu/drm/i915/display/intel_fb.h
index 6dee0c8b7f22..74f490ab6803 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.h
+++ b/drivers/gpu/drm/i915/display/intel_fb.h
@@ -94,4 +94,6 @@ bool intel_fb_uses_dpt(const struct drm_framebuffer *fb);
 
 unsigned int intel_fb_modifier_to_tiling(u64 fb_modifier);
 
+struct drm_i915_gem_object *intel_fb_obj(const struct drm_framebuffer *fb);
+
 #endif /* __INTEL_FB_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
index 49a1ac4f5491..56bf8641459b 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -45,6 +45,7 @@
 
 #include "gem/i915_gem_mman.h"
 #include "gem/i915_gem_object.h"
+#include "gem/i915_gem_object_types.h"
 
 #include "i915_drv.h"
 #include "intel_display_types.h"
diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
index 4923c340a0b6..4498a1bec29b 100644
--- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
+++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
@@ -56,6 +56,7 @@
  */
 
 #include "gem/i915_gem_object_frontbuffer.h"
+#include "gem/i915_gem_object_types.h"
 #include "i915_active.h"
 #include "i915_drv.h"
 #include "intel_display_trace.h"
-- 
2.39.2

