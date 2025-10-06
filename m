Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EEA7BBEBB9
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Oct 2025 18:47:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0417510E440;
	Mon,  6 Oct 2025 16:47:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PXg8UcVb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7177410E442;
 Mon,  6 Oct 2025 16:47:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759769246; x=1791305246;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2LO9f7Zubh/fFEzPxg4tjWMNHAGYFWESXAdbyfxZ7yQ=;
 b=PXg8UcVbPNAl+9G7VeD+TfzHNNY+17/CzQvh2C5jVQoq3hAPjMGRcAPO
 v/bw0chTWq49zFwLf/bBgNnzQaejaF/TGhwc87+5agT/IlhK+//gvbJ05
 lFbnSSvEYIDFLW99I0tNslmbRGMQ/VqMYBHf8dkFM3v8KgsgXvhUc8dlU
 6E/HA5s5jIcuU84T+Ej6GeG9DM78OvO4E+INl7RBC8ozdgSmi3d5c4wwn
 UkuqVzU2qFEXct8VLT/I/nHoeQAxyY9MdAJmMrU+499ufWb8wskkQsF8v
 9/TuREQcPMlL+f1QfRtRs/6KMtV0/0npHS6/bExuiSE9YZA+sx+V5VDDg w==;
X-CSE-ConnectionGUID: 0mhDUsniQy66RVaKFNy2ag==
X-CSE-MsgGUID: Usf6A33ZRbO2eqNNbifx9g==
X-IronPort-AV: E=McAfee;i="6800,10657,11574"; a="73049631"
X-IronPort-AV: E=Sophos;i="6.18,320,1751266800"; d="scan'208";a="73049631"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2025 09:47:26 -0700
X-CSE-ConnectionGUID: +smyVKQORa2jJqk/sNvXvw==
X-CSE-MsgGUID: A4t/b26ETaSrNPml5Klu5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,320,1751266800"; d="scan'208";a="210604437"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.80])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2025 09:47:24 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 09/10] drm/i915/frontbuffer: Fix intel_frontbuffer lifetime
 handling
Date: Mon,  6 Oct 2025 19:46:47 +0300
Message-ID: <20251006164648.6761-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251006164648.6761-1-ville.syrjala@linux.intel.com>
References: <20251006164648.6761-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The current attempted split between xe/i915 vs. display
for intel_frontbuffer is a mess:
- the i915 rcu leaks through the interface to the display side
- the obj->frontbuffer write-side is now protected by a display
  specific spinlock even though the actual obj->framebuffer
  pointer lives in a i915 specific structure
- the kref is getting poked directly from both sides
- i915_active is still on the display side

Clean up the mess by moving everything about the frontbuffer
lifetime management to the i915/xe side:
- the rcu usage is now completely contained in i915
- frontbuffer_lock is moved into i915
- kref is on the i915/xe side (xe needs the refcount as well
  due to intel_frontbuffer_queue_flush()->intel_frontbuffer_ref())
- the bo (and its refcounting) is no longer on the display side
- i915_active is contained in i915

I was pondering whether we could do this in some kind of smaller
steps, and perhaps we could, but it would probably have to start
with a bunch of reverts (which for sure won't go cleanly anymore).
So not convinced it's worth the hassle.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/display/intel_bo.c       |  34 ++++--
 drivers/gpu/drm/i915/display/intel_bo.h       |   6 +-
 .../gpu/drm/i915/display/intel_display_core.h |   3 -
 .../drm/i915/display/intel_display_driver.c   |   1 -
 .../gpu/drm/i915/display/intel_frontbuffer.c  |  83 +++-----------
 .../gpu/drm/i915/display/intel_frontbuffer.h  |  13 +--
 drivers/gpu/drm/i915/gem/i915_gem_object.c    |  12 +-
 .../i915/gem/i915_gem_object_frontbuffer.c    | 103 ++++++++++++++++++
 .../i915/gem/i915_gem_object_frontbuffer.h    |  50 +++------
 .../gpu/drm/i915/gem/i915_gem_object_types.h  |   2 +-
 drivers/gpu/drm/i915/i915_drv.h               |   2 +
 drivers/gpu/drm/i915/i915_gem.c               |   2 +
 drivers/gpu/drm/i915/i915_vma.c               |   6 +-
 .../gpu/drm/xe/compat-i915-headers/i915_vma.h |   2 -
 drivers/gpu/drm/xe/display/intel_bo.c         |  52 ++++++++-
 16 files changed, 228 insertions(+), 144 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.c

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 78a45a6681df..14062cb82158 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -150,6 +150,7 @@ gem-y += \
 	gem/i915_gem_lmem.o \
 	gem/i915_gem_mman.o \
 	gem/i915_gem_object.o \
+	gem/i915_gem_object_frontbuffer.o \
 	gem/i915_gem_pages.o \
 	gem/i915_gem_phys.o \
 	gem/i915_gem_pm.o \
diff --git a/drivers/gpu/drm/i915/display/intel_bo.c b/drivers/gpu/drm/i915/display/intel_bo.c
index 2792aca7bc22..f3687eb63467 100644
--- a/drivers/gpu/drm/i915/display/intel_bo.c
+++ b/drivers/gpu/drm/i915/display/intel_bo.c
@@ -39,20 +39,40 @@ int intel_bo_read_from_page(struct drm_gem_object *obj, u64 offset, void *dst, i
 	return i915_gem_object_read_from_page(to_intel_bo(obj), offset, dst, size);
 }
 
-struct intel_frontbuffer *intel_bo_get_frontbuffer(struct drm_gem_object *obj)
+struct intel_frontbuffer *intel_bo_frontbuffer_get(struct drm_gem_object *_obj)
 {
-	return i915_gem_object_get_frontbuffer(to_intel_bo(obj));
+	struct drm_i915_gem_object *obj = to_intel_bo(_obj);
+	struct i915_frontbuffer *front;
+
+	front = i915_gem_object_frontbuffer_get(obj);
+	if (!front)
+		return NULL;
+
+	return &front->base;
+}
+
+void intel_bo_frontbuffer_ref(struct intel_frontbuffer *_front)
+{
+	struct i915_frontbuffer *front =
+		container_of(_front, typeof(*front), base);
+
+	i915_gem_object_frontbuffer_ref(front);
 }
 
-struct intel_frontbuffer *intel_bo_set_frontbuffer(struct drm_gem_object *obj,
-						   struct intel_frontbuffer *front)
+void intel_bo_frontbuffer_put(struct intel_frontbuffer *_front)
 {
-	return i915_gem_object_set_frontbuffer(to_intel_bo(obj), front);
+	struct i915_frontbuffer *front =
+		container_of(_front, typeof(*front), base);
+
+	return i915_gem_object_frontbuffer_put(front);
 }
 
-void intel_bo_frontbuffer_flush_for_display(struct intel_frontbuffer *front)
+void intel_bo_frontbuffer_flush_for_display(struct intel_frontbuffer *_front)
 {
-	i915_gem_object_flush_if_display(to_intel_bo(front->obj));
+	struct i915_frontbuffer *front =
+		container_of(_front, typeof(*front), base);
+
+	i915_gem_object_flush_if_display(front->obj);
 }
 
 void intel_bo_describe(struct seq_file *m, struct drm_gem_object *obj)
diff --git a/drivers/gpu/drm/i915/display/intel_bo.h b/drivers/gpu/drm/i915/display/intel_bo.h
index 08247bf36d40..fc05f680dc76 100644
--- a/drivers/gpu/drm/i915/display/intel_bo.h
+++ b/drivers/gpu/drm/i915/display/intel_bo.h
@@ -19,9 +19,9 @@ bool intel_bo_is_protected(struct drm_gem_object *obj);
 int intel_bo_fb_mmap(struct drm_gem_object *obj, struct vm_area_struct *vma);
 int intel_bo_read_from_page(struct drm_gem_object *obj, u64 offset, void *dst, int size);
 
-struct intel_frontbuffer *intel_bo_get_frontbuffer(struct drm_gem_object *obj);
-struct intel_frontbuffer *intel_bo_set_frontbuffer(struct drm_gem_object *obj,
-						   struct intel_frontbuffer *front);
+struct intel_frontbuffer *intel_bo_frontbuffer_get(struct drm_gem_object *obj);
+void intel_bo_frontbuffer_ref(struct intel_frontbuffer *front);
+void intel_bo_frontbuffer_put(struct intel_frontbuffer *front);
 void intel_bo_frontbuffer_flush_for_display(struct intel_frontbuffer *front);
 
 void intel_bo_describe(struct seq_file *m, struct drm_gem_object *obj);
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 13576d07c999..34d578e2cc25 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -141,9 +141,6 @@ struct intel_dpll_global {
 };
 
 struct intel_frontbuffer_tracking {
-	/* protects obj->frontbuffer (write-side) */
-	spinlock_t frontbuffer_lock;
-
 	/* protects busy_bits */
 	spinlock_t lock;
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index ac684f8c5d40..f84a0b26b7a6 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -184,7 +184,6 @@ void intel_display_driver_early_probe(struct intel_display *display)
 	if (!HAS_DISPLAY(display))
 		return;
 
-	spin_lock_init(&display->fb_tracking.frontbuffer_lock);
 	spin_lock_init(&display->fb_tracking.lock);
 	mutex_init(&display->backlight.lock);
 	mutex_init(&display->audio.mutex);
diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
index abe7d29781e1..4761e116e442 100644
--- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
+++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
@@ -57,8 +57,6 @@
 
 #include <drm/drm_gem.h>
 
-#include "i915_active.h"
-#include "i915_vma.h"
 #include "intel_bo.h"
 #include "intel_display_trace.h"
 #include "intel_display_types.h"
@@ -167,7 +165,7 @@ void __intel_fb_flush(struct intel_frontbuffer *front,
 
 static void intel_frontbuffer_ref(struct intel_frontbuffer *front)
 {
-	kref_get(&front->ref);
+	intel_bo_frontbuffer_ref(front);
 }
 
 static void intel_frontbuffer_flush_work(struct work_struct *work)
@@ -196,81 +194,26 @@ void intel_frontbuffer_queue_flush(struct intel_frontbuffer *front)
 		intel_frontbuffer_put(front);
 }
 
-static int frontbuffer_active(struct i915_active *ref)
+void intel_frontbuffer_init(struct intel_frontbuffer *front, struct drm_device *drm)
 {
-	struct intel_frontbuffer *front =
-		container_of(ref, typeof(*front), write);
-
-	kref_get(&front->ref);
-	return 0;
-}
-
-static void frontbuffer_retire(struct i915_active *ref)
-{
-	struct intel_frontbuffer *front =
-		container_of(ref, typeof(*front), write);
-
-	intel_frontbuffer_flush(front, ORIGIN_CS);
-	intel_frontbuffer_put(front);
-}
-
-static void frontbuffer_release(struct kref *ref)
-	__releases(&front->display->fb_tracking.frontbuffer_lock)
-{
-	struct intel_frontbuffer *ret, *front =
-		container_of(ref, typeof(*front), ref);
-	struct intel_display *display = front->display;
-	struct drm_gem_object *obj = front->obj;
-
-	drm_WARN_ON(display->drm, atomic_read(&front->bits));
-
-	i915_ggtt_clear_scanout(to_intel_bo(obj));
-
-	ret = intel_bo_set_frontbuffer(obj, NULL);
-	drm_WARN_ON(display->drm, ret);
-	spin_unlock(&display->fb_tracking.frontbuffer_lock);
-
-	i915_active_fini(&front->write);
-	kfree_rcu(front, rcu);
-}
-
-struct intel_frontbuffer *
-intel_frontbuffer_get(struct drm_gem_object *obj)
-{
-	struct intel_display *display = to_intel_display(obj->dev);
-	struct intel_frontbuffer *front, *cur;
-
-	front = intel_bo_get_frontbuffer(obj);
-	if (front)
-		return front;
-
-	front = kmalloc(sizeof(*front), GFP_KERNEL);
-	if (!front)
-		return NULL;
-
-	front->display = display;
-	front->obj = obj;
-	kref_init(&front->ref);
+	front->display = to_intel_display(drm);
 	atomic_set(&front->bits, 0);
-	i915_active_init(&front->write,
-			 frontbuffer_active,
-			 frontbuffer_retire,
-			 I915_ACTIVE_RETIRE_SLEEPS);
 	INIT_WORK(&front->flush_work, intel_frontbuffer_flush_work);
+}
 
-	spin_lock(&display->fb_tracking.frontbuffer_lock);
-	cur = intel_bo_set_frontbuffer(obj, front);
-	spin_unlock(&display->fb_tracking.frontbuffer_lock);
-	if (cur != front)
-		kfree(front);
-	return cur;
+void intel_frontbuffer_fini(struct intel_frontbuffer *front)
+{
+	drm_WARN_ON(front->display->drm, atomic_read(&front->bits));
+}
+
+struct intel_frontbuffer *intel_frontbuffer_get(struct drm_gem_object *obj)
+{
+	return intel_bo_frontbuffer_get(obj);
 }
 
 void intel_frontbuffer_put(struct intel_frontbuffer *front)
 {
-	kref_put_lock(&front->ref,
-		      frontbuffer_release,
-		      &front->display->fb_tracking.frontbuffer_lock);
+	intel_bo_frontbuffer_put(front);
 }
 
 /**
diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.h b/drivers/gpu/drm/i915/display/intel_frontbuffer.h
index ff2a6ac75a34..22677acb4c06 100644
--- a/drivers/gpu/drm/i915/display/intel_frontbuffer.h
+++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.h
@@ -26,10 +26,9 @@
 
 #include <linux/atomic.h>
 #include <linux/bits.h>
-#include <linux/kref.h>
-
-#include "i915_active_types.h"
+#include <linux/workqueue_types.h>
 
+struct drm_device;
 struct drm_gem_object;
 struct intel_display;
 
@@ -42,13 +41,8 @@ enum fb_op_origin {
 };
 
 struct intel_frontbuffer {
-	struct kref ref;
 	struct intel_display *display;
 	atomic_t bits;
-	struct i915_active write;
-	struct drm_gem_object *obj;
-	struct rcu_head rcu;
-
 	struct work_struct flush_work;
 };
 
@@ -141,4 +135,7 @@ void intel_frontbuffer_track(struct intel_frontbuffer *old,
 			     struct intel_frontbuffer *new,
 			     unsigned int frontbuffer_bits);
 
+void intel_frontbuffer_init(struct intel_frontbuffer *front, struct drm_device *drm);
+void intel_frontbuffer_fini(struct intel_frontbuffer *front);
+
 #endif /* __INTEL_FRONTBUFFER_H__ */
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm/i915/gem/i915_gem_object.c
index 478011e5ecb3..36680eddf88e 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
@@ -476,24 +476,24 @@ static void i915_gem_free_object(struct drm_gem_object *gem_obj)
 void __i915_gem_object_flush_frontbuffer(struct drm_i915_gem_object *obj,
 					 enum fb_op_origin origin)
 {
-	struct intel_frontbuffer *front;
+	struct i915_frontbuffer *front;
 
 	front = i915_gem_object_get_frontbuffer(obj);
 	if (front) {
-		intel_frontbuffer_flush(front, origin);
-		intel_frontbuffer_put(front);
+		intel_frontbuffer_flush(&front->base, origin);
+		i915_gem_object_frontbuffer_put(front);
 	}
 }
 
 void __i915_gem_object_invalidate_frontbuffer(struct drm_i915_gem_object *obj,
 					      enum fb_op_origin origin)
 {
-	struct intel_frontbuffer *front;
+	struct i915_frontbuffer *front;
 
 	front = i915_gem_object_get_frontbuffer(obj);
 	if (front) {
-		intel_frontbuffer_invalidate(front, origin);
-		intel_frontbuffer_put(front);
+		intel_frontbuffer_invalidate(&front->base, origin);
+		i915_gem_object_frontbuffer_put(front);
 	}
 }
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.c
new file mode 100644
index 000000000000..7ef89613c025
--- /dev/null
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.c
@@ -0,0 +1,103 @@
+// SPDX-License-Identifier: MIT
+/* Copyright © 2025 Intel Corporation */
+
+#include "i915_drv.h"
+#include "i915_gem_object_frontbuffer.h"
+
+static int frontbuffer_active(struct i915_active *ref)
+{
+	struct i915_frontbuffer *front =
+		container_of(ref, typeof(*front), write);
+
+	kref_get(&front->ref);
+	return 0;
+}
+
+static void frontbuffer_retire(struct i915_active *ref)
+{
+	struct i915_frontbuffer *front =
+		container_of(ref, typeof(*front), write);
+
+	intel_frontbuffer_flush(&front->base, ORIGIN_CS);
+	i915_gem_object_frontbuffer_put(front);
+}
+
+struct i915_frontbuffer *
+i915_gem_object_frontbuffer_get(struct drm_i915_gem_object *obj)
+{
+	struct drm_i915_private *i915 = to_i915(obj->base.dev);
+	struct i915_frontbuffer *front, *cur;
+
+	front = i915_gem_object_get_frontbuffer(obj);
+	if (front)
+		return front;
+
+	front = kmalloc(sizeof(*front), GFP_KERNEL);
+	if (!front)
+		return NULL;
+
+	intel_frontbuffer_init(&front->base, &i915->drm);
+
+	kref_init(&front->ref);
+	i915_gem_object_get(obj);
+	front->obj = obj;
+
+	i915_active_init(&front->write,
+			 frontbuffer_active,
+			 frontbuffer_retire,
+			 I915_ACTIVE_RETIRE_SLEEPS);
+
+	spin_lock(&i915->frontbuffer_lock);
+	if (rcu_access_pointer(obj->frontbuffer)) {
+		cur = rcu_dereference_protected(obj->frontbuffer, true);
+		kref_get(&cur->ref);
+	} else {
+		cur = front;
+		rcu_assign_pointer(obj->frontbuffer, front);
+	}
+	spin_unlock(&i915->frontbuffer_lock);
+
+	if (cur != front) {
+		i915_gem_object_put(obj);
+		intel_frontbuffer_fini(&front->base);
+		kfree(front);
+	}
+
+	return cur;
+}
+
+void i915_gem_object_frontbuffer_ref(struct i915_frontbuffer *front)
+{
+	kref_get(&front->ref);
+}
+
+static void frontbuffer_release(struct kref *ref)
+	__releases(&i915->frontbuffer_lock)
+{
+	struct i915_frontbuffer *front =
+		container_of(ref, typeof(*front), ref);
+	struct drm_i915_gem_object *obj = front->obj;
+	struct drm_i915_private *i915 = to_i915(obj->base.dev);
+
+	i915_ggtt_clear_scanout(obj);
+
+	RCU_INIT_POINTER(obj->frontbuffer, NULL);
+
+	spin_unlock(&i915->frontbuffer_lock);
+
+	i915_active_fini(&front->write);
+
+	i915_gem_object_put(obj);
+
+	intel_frontbuffer_fini(&front->base);
+
+	kfree_rcu(front, rcu);
+}
+
+void i915_gem_object_frontbuffer_put(struct i915_frontbuffer *front)
+{
+	struct drm_i915_private *i915 = to_i915(front->obj->base.dev);
+
+	kref_put_lock(&front->ref, frontbuffer_release,
+		      &i915->frontbuffer_lock);
+}
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.h b/drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.h
index 84f82c2289a8..385f7e8049b8 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.h
@@ -12,6 +12,14 @@
 #include "display/intel_frontbuffer.h"
 #include "i915_gem_object_types.h"
 
+struct i915_frontbuffer {
+	struct intel_frontbuffer base;
+	struct drm_i915_gem_object *obj;
+	struct i915_active write;
+	struct rcu_head rcu;
+	struct kref ref;
+};
+
 void __i915_gem_object_flush_frontbuffer(struct drm_i915_gem_object *obj,
 					 enum fb_op_origin origin);
 void __i915_gem_object_invalidate_frontbuffer(struct drm_i915_gem_object *obj,
@@ -33,6 +41,10 @@ i915_gem_object_invalidate_frontbuffer(struct drm_i915_gem_object *obj,
 		__i915_gem_object_invalidate_frontbuffer(obj, origin);
 }
 
+struct i915_frontbuffer *i915_gem_object_frontbuffer_get(struct drm_i915_gem_object *obj);
+void i915_gem_object_frontbuffer_ref(struct i915_frontbuffer *front);
+void i915_gem_object_frontbuffer_put(struct i915_frontbuffer *front);
+
 /**
  * i915_gem_object_get_frontbuffer - Get the object's frontbuffer
  * @obj: The object whose frontbuffer to get.
@@ -42,10 +54,10 @@ i915_gem_object_invalidate_frontbuffer(struct drm_i915_gem_object *obj,
  *
  * Return: pointer to object's frontbuffer is such exists or NULL
  */
-static inline struct intel_frontbuffer *
+static inline struct i915_frontbuffer *
 i915_gem_object_get_frontbuffer(const struct drm_i915_gem_object *obj)
 {
-	struct intel_frontbuffer *front;
+	struct i915_frontbuffer *front;
 
 	if (likely(!rcu_access_pointer(obj->frontbuffer)))
 		return NULL;
@@ -62,43 +74,11 @@ i915_gem_object_get_frontbuffer(const struct drm_i915_gem_object *obj)
 		if (likely(front == rcu_access_pointer(obj->frontbuffer)))
 			break;
 
-		intel_frontbuffer_put(front);
+		i915_gem_object_frontbuffer_put(front);
 	} while (1);
 	rcu_read_unlock();
 
 	return front;
 }
 
-/**
- * i915_gem_object_set_frontbuffer - Set the object's frontbuffer
- * @obj: The object whose frontbuffer to set.
- * @front: The frontbuffer to set
- *
- * Set object's frontbuffer pointer. If frontbuffer is already set for the
- * object keep it and return it's pointer to the caller. Please note that RCU
- * mechanism is used to handle e.g. ongoing removal of frontbuffer pointer. This
- * function is protected by i915->display->fb_tracking.frontbuffer_lock
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
-		drm_gem_object_put(intel_bo_to_drm_bo(obj));
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
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
index 64600aa8227f..465ce94aee76 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
@@ -574,7 +574,7 @@ struct drm_i915_gem_object {
 	 */
 	u16 write_domain;
 
-	struct intel_frontbuffer __rcu *frontbuffer;
+	struct i915_frontbuffer __rcu *frontbuffer;
 
 	/** Current tiling stride for the object, if it's tiled. */
 	unsigned int tiling_and_stride;
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 6e159bb8ad2f..9ef9bc8f597a 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -311,6 +311,8 @@ struct drm_i915_private {
 		struct file *mmap_singleton;
 	} gem;
 
+	spinlock_t frontbuffer_lock; /* protects obj->frontbuffer (write-side) */
+
 	struct intel_pxp *pxp;
 
 	struct i915_pmu pmu;
diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index e14a0c3db999..39b747c3e223 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -1298,6 +1298,8 @@ void i915_gem_init_early(struct drm_i915_private *dev_priv)
 {
 	i915_gem_init__mm(dev_priv);
 	i915_gem_init__contexts(dev_priv);
+
+	spin_lock_init(&dev_priv->frontbuffer_lock);
 }
 
 void i915_gem_cleanup_early(struct drm_i915_private *dev_priv)
diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index 25e97031d76e..cb36daaa101d 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -1990,13 +1990,13 @@ int _i915_vma_move_to_active(struct i915_vma *vma,
 	}
 
 	if (flags & EXEC_OBJECT_WRITE) {
-		struct intel_frontbuffer *front;
+		struct i915_frontbuffer *front;
 
 		front = i915_gem_object_get_frontbuffer(obj);
 		if (unlikely(front)) {
-			if (intel_frontbuffer_invalidate(front, ORIGIN_CS))
+			if (intel_frontbuffer_invalidate(&front->base, ORIGIN_CS))
 				i915_active_add_request(&front->write, rq);
-			intel_frontbuffer_put(front);
+			i915_gem_object_frontbuffer_put(front);
 		}
 	}
 
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_vma.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_vma.h
index 4465c40f8134..b17e3bab23d5 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/i915_vma.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_vma.h
@@ -26,8 +26,6 @@ struct i915_vma {
 	struct xe_ggtt_node *node;
 };
 
-#define i915_ggtt_clear_scanout(bo) do { } while (0)
-
 #define i915_vma_fence_id(vma) -1
 
 static inline u32 i915_ggtt_offset(const struct i915_vma *vma)
diff --git a/drivers/gpu/drm/xe/display/intel_bo.c b/drivers/gpu/drm/xe/display/intel_bo.c
index 2437c00a2d3e..bad2243b9114 100644
--- a/drivers/gpu/drm/xe/display/intel_bo.c
+++ b/drivers/gpu/drm/xe/display/intel_bo.c
@@ -5,6 +5,7 @@
 
 #include "xe_bo.h"
 #include "intel_bo.h"
+#include "intel_frontbuffer.h"
 
 bool intel_bo_is_tiled(struct drm_gem_object *obj)
 {
@@ -40,15 +41,56 @@ int intel_bo_read_from_page(struct drm_gem_object *obj, u64 offset, void *dst, i
 	return xe_bo_read(bo, offset, dst, size);
 }
 
-struct intel_frontbuffer *intel_bo_get_frontbuffer(struct drm_gem_object *obj)
+struct xe_frontbuffer {
+	struct intel_frontbuffer base;
+	struct drm_gem_object *obj;
+	struct kref ref;
+};
+
+struct intel_frontbuffer *intel_bo_frontbuffer_get(struct drm_gem_object *obj)
 {
-	return NULL;
+	struct xe_frontbuffer *front;
+
+	front = kmalloc(sizeof(*front), GFP_KERNEL);
+	if (!front)
+		return NULL;
+
+	intel_frontbuffer_init(&front->base, obj->dev);
+
+	kref_init(&front->ref);
+
+	drm_gem_object_get(obj);
+	front->obj = obj;
+
+	return &front->base;
 }
 
-struct intel_frontbuffer *intel_bo_set_frontbuffer(struct drm_gem_object *obj,
-						   struct intel_frontbuffer *front)
+void intel_bo_frontbuffer_ref(struct intel_frontbuffer *_front)
 {
-	return front;
+	struct xe_frontbuffer *front =
+		container_of(_front, typeof(*front), base);
+
+	kref_get(&front->ref);
+}
+
+static void frontbuffer_release(struct kref *ref)
+{
+	struct xe_frontbuffer *front =
+		container_of(ref, typeof(*front), ref);
+
+	intel_frontbuffer_fini(&front->base);
+
+	drm_gem_object_put(front->obj);
+
+	kfree(front);
+}
+
+void intel_bo_frontbuffer_put(struct intel_frontbuffer *_front)
+{
+	struct xe_frontbuffer *front =
+		container_of(_front, typeof(*front), base);
+
+	kref_put(&front->ref, frontbuffer_release);
 }
 
 void intel_bo_frontbuffer_flush_for_display(struct intel_frontbuffer *front)
-- 
2.49.1

