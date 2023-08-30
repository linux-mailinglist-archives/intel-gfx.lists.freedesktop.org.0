Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B1EE378D448
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Aug 2023 10:51:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 322E210E4D4;
	Wed, 30 Aug 2023 08:51:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A88A010E4D4
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Aug 2023 08:51:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693385492; x=1724921492;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=tygKEQc8fr8w1SdAMUIV82373FaWBbyJxq+T570Wb8k=;
 b=WTWndnoXjsDKlSGf9nbEonpTG/1C41ZSyNnOKW0A6sYiBbhGEBryTO+U
 A0zu2MgC36XX5ZUtTwh7xta6w/4DA6134Mn70HhbyvN7XhfoOg9rMXNOx
 6bdUMhO4Aq7wduADlGGPp3tzEkY7wiElU9o0rqAbm0+i77WjAsBJAARyB
 /kidSyvmeIkqijmRtabWvq0cOARuduvLwXhuQYq1RA3pJBcYOSp1Be8ru
 U4zqp3hYazPAQkWajPDQXM35FbVhSpROq/l6CS6JSRFrHX51NCzKheOV7
 yy9WM1rCANHBXW0JfdKFSMZtU/xfO0kWPf7h9TnXPLPKJtZGalr7M0vMz w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10817"; a="439535023"
X-IronPort-AV: E=Sophos;i="6.02,213,1688454000"; d="scan'208";a="439535023"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2023 01:51:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="882660081"
Received: from ziemtocx-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.57.251])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2023 01:51:35 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 30 Aug 2023 11:51:27 +0300
Message-Id: <20230830085127.2416842-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: add minimal
 i915_gem_object_frontbuffer.h
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Split out frontbuffer related declarations and static inlines from
gem/i915_gem_object.h into new gem/i915_gem_object_frontbuffer.h.

The main goal is to reduce header interdependencies. With
gem/i915_gem_object.h including display/intel_frontbuffer.h,
modification of the latter causes a whopping 300+ objects to be rebuilt,
while many of the source files actually needing it aren't explicitly
including it at all.

After the change, only 21 objects depend on display/intel_frontbuffer.h,
directly or indirectly.

Cc: Jouni Högander <jouni.hogander@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>

---

Side note: Many of the files including intel_frontbuffer.h implicitly
failed to build on xe without adding the explicit include. This should
address that as well.
---
 drivers/gpu/drm/i915/display/i9xx_plane.c     |   1 +
 drivers/gpu/drm/i915/display/intel_drrs.c     |   1 +
 drivers/gpu/drm/i915/display/intel_fb.c       |   1 +
 .../gpu/drm/i915/display/intel_frontbuffer.c  |   1 +
 drivers/gpu/drm/i915/display/intel_overlay.c  |   1 +
 .../drm/i915/display/intel_plane_initial.c    |   1 +
 drivers/gpu/drm/i915/display/intel_psr.c      |   1 +
 drivers/gpu/drm/i915/display/intel_sprite.c   |   1 +
 .../drm/i915/display/skl_universal_plane.c    |   1 +
 drivers/gpu/drm/i915/gem/i915_gem_clflush.c   |   3 +-
 drivers/gpu/drm/i915/gem/i915_gem_domain.c    |   2 +-
 drivers/gpu/drm/i915/gem/i915_gem_object.c    |   1 +
 drivers/gpu/drm/i915/gem/i915_gem_object.h    |  89 ---------------
 .../i915/gem/i915_gem_object_frontbuffer.h    | 103 ++++++++++++++++++
 drivers/gpu/drm/i915/gem/i915_gem_phys.c      |   1 +
 drivers/gpu/drm/i915/i915_gem.c               |   2 +-
 drivers/gpu/drm/i915/i915_vma.c               |   1 +
 17 files changed, 118 insertions(+), 93 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.h

diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
index b10488324457..91f2bc405cba 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.c
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
@@ -17,6 +17,7 @@
 #include "intel_display_types.h"
 #include "intel_fb.h"
 #include "intel_fbc.h"
+#include "intel_frontbuffer.h"
 #include "intel_sprite.h"
 
 /* Primary plane formats for gen <= 3 */
diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
index 0d35b6be5b6a..6282ec0fc9b4 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.c
+++ b/drivers/gpu/drm/i915/display/intel_drrs.c
@@ -9,6 +9,7 @@
 #include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_drrs.h"
+#include "intel_frontbuffer.h"
 #include "intel_panel.h"
 
 /**
diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 446bbf7986b6..b1bfbbef89b5 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -12,6 +12,7 @@
 #include "intel_display_types.h"
 #include "intel_dpt.h"
 #include "intel_fb.h"
+#include "intel_frontbuffer.h"
 
 #define check_array_bounds(i915, a, i) drm_WARN_ON(&(i915)->drm, (i) >= ARRAY_SIZE(a))
 
diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
index 22392f94b626..54ddb69eca66 100644
--- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
+++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
@@ -55,6 +55,7 @@
  * cancelled as soon as busyness is detected.
  */
 
+#include "gem/i915_gem_object_frontbuffer.h"
 #include "i915_drv.h"
 #include "intel_display_trace.h"
 #include "intel_display_types.h"
diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
index dea3050d2c9c..2b1392d5a902 100644
--- a/drivers/gpu/drm/i915/display/intel_overlay.c
+++ b/drivers/gpu/drm/i915/display/intel_overlay.c
@@ -29,6 +29,7 @@
 #include <drm/drm_fourcc.h>
 
 #include "gem/i915_gem_internal.h"
+#include "gem/i915_gem_object_frontbuffer.h"
 #include "gem/i915_gem_pm.h"
 #include "gt/intel_gpu_commands.h"
 #include "gt/intel_ring.h"
diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.c b/drivers/gpu/drm/i915/display/intel_plane_initial.c
index 736072a8b2b0..451a642e106e 100644
--- a/drivers/gpu/drm/i915/display/intel_plane_initial.c
+++ b/drivers/gpu/drm/i915/display/intel_plane_initial.c
@@ -9,6 +9,7 @@
 #include "intel_display.h"
 #include "intel_display_types.h"
 #include "intel_fb.h"
+#include "intel_frontbuffer.h"
 #include "intel_plane_initial.h"
 
 static bool
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 72887c29fb51..60b486299834 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -32,6 +32,7 @@
 #include "intel_display_types.h"
 #include "intel_dp.h"
 #include "intel_dp_aux.h"
+#include "intel_frontbuffer.h"
 #include "intel_hdmi.h"
 #include "intel_psr.h"
 #include "intel_psr_regs.h"
diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
index 25034bbf1445..1fb16510f750 100644
--- a/drivers/gpu/drm/i915/display/intel_sprite.c
+++ b/drivers/gpu/drm/i915/display/intel_sprite.c
@@ -45,6 +45,7 @@
 #include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_fb.h"
+#include "intel_frontbuffer.h"
 #include "intel_sprite.h"
 
 static void i9xx_plane_linear_gamma(u16 gamma[8])
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 4566c95da1ca..517df2aa7a91 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -16,6 +16,7 @@
 #include "intel_display_types.h"
 #include "intel_fb.h"
 #include "intel_fbc.h"
+#include "intel_frontbuffer.h"
 #include "intel_psr.h"
 #include "skl_scaler.h"
 #include "skl_universal_plane.h"
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_clflush.c b/drivers/gpu/drm/i915/gem/i915_gem_clflush.c
index 385ffc575b48..7d97ea2a653e 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_clflush.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_clflush.c
@@ -6,11 +6,10 @@
 
 #include <drm/drm_cache.h>
 
-#include "display/intel_frontbuffer.h"
-
 #include "i915_config.h"
 #include "i915_drv.h"
 #include "i915_gem_clflush.h"
+#include "i915_gem_object_frontbuffer.h"
 #include "i915_sw_fence_work.h"
 #include "i915_trace.h"
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_domain.c b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
index ffddec1d2a76..3770828f2eaf 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_domain.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
@@ -5,7 +5,6 @@
  */
 
 #include "display/intel_display.h"
-#include "display/intel_frontbuffer.h"
 #include "gt/intel_gt.h"
 
 #include "i915_drv.h"
@@ -16,6 +15,7 @@
 #include "i915_gem_lmem.h"
 #include "i915_gem_mman.h"
 #include "i915_gem_object.h"
+#include "i915_gem_object_frontbuffer.h"
 #include "i915_vma.h"
 
 #define VTD_GUARD (168u * I915_GTT_PAGE_SIZE) /* 168 or tile-row PTE padding */
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm/i915/gem/i915_gem_object.c
index ef9346ed6d0f..c26d87555825 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
@@ -37,6 +37,7 @@
 #include "i915_gem_dmabuf.h"
 #include "i915_gem_mman.h"
 #include "i915_gem_object.h"
+#include "i915_gem_object_frontbuffer.h"
 #include "i915_gem_ttm.h"
 #include "i915_memcpy.h"
 #include "i915_trace.h"
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
index f607b87890dd..3560a062d287 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
@@ -11,7 +11,6 @@
 #include <drm/drm_file.h>
 #include <drm/drm_device.h>
 
-#include "display/intel_frontbuffer.h"
 #include "intel_memory_region.h"
 #include "i915_gem_object_types.h"
 #include "i915_gem_gtt.h"
@@ -806,27 +805,6 @@ int i915_gem_object_wait_priority(struct drm_i915_gem_object *obj,
 				  unsigned int flags,
 				  const struct i915_sched_attr *attr);
 
-void __i915_gem_object_flush_frontbuffer(struct drm_i915_gem_object *obj,
-					 enum fb_op_origin origin);
-void __i915_gem_object_invalidate_frontbuffer(struct drm_i915_gem_object *obj,
-					      enum fb_op_origin origin);
-
-static inline void
-i915_gem_object_flush_frontbuffer(struct drm_i915_gem_object *obj,
-				  enum fb_op_origin origin)
-{
-	if (unlikely(rcu_access_pointer(obj->frontbuffer)))
-		__i915_gem_object_flush_frontbuffer(obj, origin);
-}
-
-static inline void
-i915_gem_object_invalidate_frontbuffer(struct drm_i915_gem_object *obj,
-				       enum fb_op_origin origin)
-{
-	if (unlikely(rcu_access_pointer(obj->frontbuffer)))
-		__i915_gem_object_invalidate_frontbuffer(obj, origin);
-}
-
 int i915_gem_object_read_from_page(struct drm_i915_gem_object *obj, u64 offset, void *dst, int size);
 
 bool i915_gem_object_is_shmem(const struct drm_i915_gem_object *obj);
@@ -887,71 +865,4 @@ static inline int i915_gem_object_userptr_validate(struct drm_i915_gem_object *o
 
 #endif
 
-/**
- * i915_gem_object_get_frontbuffer - Get the object's frontbuffer
- * @obj: The object whose frontbuffer to get.
- *
- * Get pointer to object's frontbuffer if such exists. Please note that RCU
- * mechanism is used to handle e.g. ongoing removal of frontbuffer pointer.
- *
- * Return: pointer to object's frontbuffer is such exists or NULL
- */
-static inline struct intel_frontbuffer *
-i915_gem_object_get_frontbuffer(const struct drm_i915_gem_object *obj)
-{
-	struct intel_frontbuffer *front;
-
-	if (likely(!rcu_access_pointer(obj->frontbuffer)))
-		return NULL;
-
-	rcu_read_lock();
-	do {
-		front = rcu_dereference(obj->frontbuffer);
-		if (!front)
-			break;
-
-		if (unlikely(!kref_get_unless_zero(&front->ref)))
-			continue;
-
-		if (likely(front == rcu_access_pointer(obj->frontbuffer)))
-			break;
-
-		intel_frontbuffer_put(front);
-	} while (1);
-	rcu_read_unlock();
-
-	return front;
-}
-
-/**
- * i915_gem_object_set_frontbuffer - Set the object's frontbuffer
- * @obj: The object whose frontbuffer to set.
- * @front: The frontbuffer to set
- *
- * Set object's frontbuffer pointer. If frontbuffer is already set for the
- * object keep it and return it's pointer to the caller. Please note that RCU
- * mechanism is used to handle e.g. ongoing removal of frontbuffer pointer. This
- * function is protected by i915->display.fb_tracking.lock
- *
- * Return: pointer to frontbuffer which was set.
- */
-static inline struct intel_frontbuffer *
-i915_gem_object_set_frontbuffer(struct drm_i915_gem_object *obj,
-				struct intel_frontbuffer *front)
-{
-	struct intel_frontbuffer *cur = front;
-
-	if (!front) {
-		RCU_INIT_POINTER(obj->frontbuffer, NULL);
-	} else if (rcu_access_pointer(obj->frontbuffer)) {
-		cur = rcu_dereference_protected(obj->frontbuffer, true);
-		kref_get(&cur->ref);
-	} else {
-		drm_gem_object_get(intel_bo_to_drm_bo(obj));
-		rcu_assign_pointer(obj->frontbuffer, front);
-	}
-
-	return cur;
-}
-
 #endif
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.h b/drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.h
new file mode 100644
index 000000000000..e5e870b6f186
--- /dev/null
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.h
@@ -0,0 +1,103 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2023 Intel Corporation
+ */
+
+#ifndef __I915_GEM_OBJECT_FRONTBUFFER_H__
+#define __I915_GEM_OBJECT_FRONTBUFFER_H__
+
+#include <linux/kref.h>
+#include <linux/rcupdate.h>
+
+#include "display/intel_frontbuffer.h"
+#include "i915_gem_object_types.h"
+
+void __i915_gem_object_flush_frontbuffer(struct drm_i915_gem_object *obj,
+					 enum fb_op_origin origin);
+void __i915_gem_object_invalidate_frontbuffer(struct drm_i915_gem_object *obj,
+					      enum fb_op_origin origin);
+
+static inline void
+i915_gem_object_flush_frontbuffer(struct drm_i915_gem_object *obj,
+				  enum fb_op_origin origin)
+{
+	if (unlikely(rcu_access_pointer(obj->frontbuffer)))
+		__i915_gem_object_flush_frontbuffer(obj, origin);
+}
+
+static inline void
+i915_gem_object_invalidate_frontbuffer(struct drm_i915_gem_object *obj,
+				       enum fb_op_origin origin)
+{
+	if (unlikely(rcu_access_pointer(obj->frontbuffer)))
+		__i915_gem_object_invalidate_frontbuffer(obj, origin);
+}
+
+/**
+ * i915_gem_object_get_frontbuffer - Get the object's frontbuffer
+ * @obj: The object whose frontbuffer to get.
+ *
+ * Get pointer to object's frontbuffer if such exists. Please note that RCU
+ * mechanism is used to handle e.g. ongoing removal of frontbuffer pointer.
+ *
+ * Return: pointer to object's frontbuffer is such exists or NULL
+ */
+static inline struct intel_frontbuffer *
+i915_gem_object_get_frontbuffer(const struct drm_i915_gem_object *obj)
+{
+	struct intel_frontbuffer *front;
+
+	if (likely(!rcu_access_pointer(obj->frontbuffer)))
+		return NULL;
+
+	rcu_read_lock();
+	do {
+		front = rcu_dereference(obj->frontbuffer);
+		if (!front)
+			break;
+
+		if (unlikely(!kref_get_unless_zero(&front->ref)))
+			continue;
+
+		if (likely(front == rcu_access_pointer(obj->frontbuffer)))
+			break;
+
+		intel_frontbuffer_put(front);
+	} while (1);
+	rcu_read_unlock();
+
+	return front;
+}
+
+/**
+ * i915_gem_object_set_frontbuffer - Set the object's frontbuffer
+ * @obj: The object whose frontbuffer to set.
+ * @front: The frontbuffer to set
+ *
+ * Set object's frontbuffer pointer. If frontbuffer is already set for the
+ * object keep it and return it's pointer to the caller. Please note that RCU
+ * mechanism is used to handle e.g. ongoing removal of frontbuffer pointer. This
+ * function is protected by i915->display.fb_tracking.lock
+ *
+ * Return: pointer to frontbuffer which was set.
+ */
+static inline struct intel_frontbuffer *
+i915_gem_object_set_frontbuffer(struct drm_i915_gem_object *obj,
+				struct intel_frontbuffer *front)
+{
+	struct intel_frontbuffer *cur = front;
+
+	if (!front) {
+		RCU_INIT_POINTER(obj->frontbuffer, NULL);
+	} else if (rcu_access_pointer(obj->frontbuffer)) {
+		cur = rcu_dereference_protected(obj->frontbuffer, true);
+		kref_get(&cur->ref);
+	} else {
+		drm_gem_object_get(intel_bo_to_drm_bo(obj));
+		rcu_assign_pointer(obj->frontbuffer, front);
+	}
+
+	return cur;
+}
+
+#endif
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_phys.c b/drivers/gpu/drm/i915/gem/i915_gem_phys.c
index 76efe98eaa14..5df128e2f4dc 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_phys.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_phys.c
@@ -13,6 +13,7 @@
 #include "gt/intel_gt.h"
 #include "i915_drv.h"
 #include "i915_gem_object.h"
+#include "i915_gem_object_frontbuffer.h"
 #include "i915_gem_region.h"
 #include "i915_gem_tiling.h"
 #include "i915_scatterlist.h"
diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index 1f65bb33dd21..147d5b95b9ac 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -40,12 +40,12 @@
 #include <drm/drm_vma_manager.h>
 
 #include "display/intel_display.h"
-#include "display/intel_frontbuffer.h"
 
 #include "gem/i915_gem_clflush.h"
 #include "gem/i915_gem_context.h"
 #include "gem/i915_gem_ioctls.h"
 #include "gem/i915_gem_mman.h"
+#include "gem/i915_gem_object_frontbuffer.h"
 #include "gem/i915_gem_pm.h"
 #include "gem/i915_gem_region.h"
 #include "gem/i915_gem_userptr.h"
diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index 6f180ee13853..d09aad34ba37 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -29,6 +29,7 @@
 #include "display/intel_display.h"
 #include "display/intel_frontbuffer.h"
 #include "gem/i915_gem_lmem.h"
+#include "gem/i915_gem_object_frontbuffer.h"
 #include "gem/i915_gem_tiling.h"
 #include "gt/intel_engine.h"
 #include "gt/intel_engine_heartbeat.h"
-- 
2.39.2

