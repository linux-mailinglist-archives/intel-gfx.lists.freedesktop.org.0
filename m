Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F3C9359FB29
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Aug 2022 15:20:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F39DBB5514;
	Wed, 24 Aug 2022 13:20:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 481ADB4F5A
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Aug 2022 13:18:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661347099; x=1692883099;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9m5/MrP7QMy7mg5eLlMp4pFDm9JmuW8zU8e6azC+zpo=;
 b=bxElcf6g6cyxDeG7DaFhJZHeWsmQwkK2l9nUtIpzO1oBmcIXBcVqMAAr
 7WS0vBTNAZiyAMN1rlGH8B84f5uqtabFUqbcHqpvVLQXNuXn8jiaRv5AN
 fJTMi5VEewHXWAbjqdTyy/5vizSzO8owbCaiZwZ/F4BjARBW6MxrXJOCV
 8E2ppHVBNZTdgPum2R48EAbdBSyL1eG/NUTuWVbp7zms92EdqirbKRnj6
 FuwftHPLhFbRO+un83CSoULf6n45TlvrinGdU2EIr0z1jvt+VrIYHl5mj
 p8bbMfquom1dDYPAhVrfJo9MgbvOjGRhuP0/oFFf9e5caqUzefMFU4bRX A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10448"; a="380255299"
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="380255299"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2022 06:18:17 -0700
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="586428676"
Received: from zlim2-mobl.gar.corp.intel.com (HELO localhost) ([10.252.52.23])
 by orsmga006-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Aug 2022 06:18:15 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 24 Aug 2022 16:15:55 +0300
Message-Id: <01adb411a5b03571c31ba7e274c0b193a838174c.1661346845.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1661346845.git.jani.nikula@intel.com>
References: <cover.1661346845.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 29/38] drm/i915: move fb_tracking under
 display sub-struct
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
Cc: jani.nikula@intel.com, Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Move display frontbuffer tracking related members under drm_i915_private
display sub-struct.

Rename struct i915_frontbuffer_tracking to intel_frontbuffer_tracking
while at it.

FIXME: fb_tracking.lock mutex init should be moved away from
i915_gem_init_early().

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 .../gpu/drm/i915/display/intel_display_core.h | 12 +++++
 .../drm/i915/display/intel_display_debugfs.c  |  4 +-
 .../gpu/drm/i915/display/intel_frontbuffer.c  | 54 +++++++++----------
 drivers/gpu/drm/i915/i915_drv.h               | 14 -----
 drivers/gpu/drm/i915/i915_gem.c               |  2 +-
 5 files changed, 42 insertions(+), 44 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 0aeebf169ba6..3d2e1b14e186 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -120,6 +120,17 @@ struct intel_dpll {
 	} ref_clks;
 };
 
+struct intel_frontbuffer_tracking {
+	spinlock_t lock;
+
+	/*
+	 * Tracking bits for delayed frontbuffer flushing du to gpu activity or
+	 * scheduled flips.
+	 */
+	unsigned busy_bits;
+	unsigned flip_bits;
+};
+
 struct intel_hotplug {
 	struct delayed_work hotplug_work;
 
@@ -363,6 +374,7 @@ struct intel_display {
 	struct intel_dmc dmc;
 	struct intel_dpll dpll;
 	struct intel_fbc *fbc[I915_MAX_FBCS];
+	struct intel_frontbuffer_tracking fb_tracking;
 	struct intel_hotplug hotplug;
 	struct intel_opregion opregion;
 	struct intel_overlay *overlay;
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 619523f85a18..5dc364e9db49 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -37,10 +37,10 @@ static int i915_frontbuffer_tracking(struct seq_file *m, void *unused)
 	struct drm_i915_private *dev_priv = node_to_i915(m->private);
 
 	seq_printf(m, "FB tracking busy bits: 0x%08x\n",
-		   dev_priv->fb_tracking.busy_bits);
+		   dev_priv->display.fb_tracking.busy_bits);
 
 	seq_printf(m, "FB tracking flip bits: 0x%08x\n",
-		   dev_priv->fb_tracking.flip_bits);
+		   dev_priv->display.fb_tracking.flip_bits);
 
 	return 0;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
index 791248f812aa..0d4cfbd8403e 100644
--- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
+++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
@@ -81,9 +81,9 @@ static void frontbuffer_flush(struct drm_i915_private *i915,
 			      enum fb_op_origin origin)
 {
 	/* Delay flushing when rings are still busy.*/
-	spin_lock(&i915->fb_tracking.lock);
-	frontbuffer_bits &= ~i915->fb_tracking.busy_bits;
-	spin_unlock(&i915->fb_tracking.lock);
+	spin_lock(&i915->display.fb_tracking.lock);
+	frontbuffer_bits &= ~i915->display.fb_tracking.busy_bits;
+	spin_unlock(&i915->display.fb_tracking.lock);
 
 	if (!frontbuffer_bits)
 		return;
@@ -111,11 +111,11 @@ static void frontbuffer_flush(struct drm_i915_private *i915,
 void intel_frontbuffer_flip_prepare(struct drm_i915_private *i915,
 				    unsigned frontbuffer_bits)
 {
-	spin_lock(&i915->fb_tracking.lock);
-	i915->fb_tracking.flip_bits |= frontbuffer_bits;
+	spin_lock(&i915->display.fb_tracking.lock);
+	i915->display.fb_tracking.flip_bits |= frontbuffer_bits;
 	/* Remove stale busy bits due to the old buffer. */
-	i915->fb_tracking.busy_bits &= ~frontbuffer_bits;
-	spin_unlock(&i915->fb_tracking.lock);
+	i915->display.fb_tracking.busy_bits &= ~frontbuffer_bits;
+	spin_unlock(&i915->display.fb_tracking.lock);
 }
 
 /**
@@ -131,11 +131,11 @@ void intel_frontbuffer_flip_prepare(struct drm_i915_private *i915,
 void intel_frontbuffer_flip_complete(struct drm_i915_private *i915,
 				     unsigned frontbuffer_bits)
 {
-	spin_lock(&i915->fb_tracking.lock);
+	spin_lock(&i915->display.fb_tracking.lock);
 	/* Mask any cancelled flips. */
-	frontbuffer_bits &= i915->fb_tracking.flip_bits;
-	i915->fb_tracking.flip_bits &= ~frontbuffer_bits;
-	spin_unlock(&i915->fb_tracking.lock);
+	frontbuffer_bits &= i915->display.fb_tracking.flip_bits;
+	i915->display.fb_tracking.flip_bits &= ~frontbuffer_bits;
+	spin_unlock(&i915->display.fb_tracking.lock);
 
 	if (frontbuffer_bits)
 		frontbuffer_flush(i915, frontbuffer_bits, ORIGIN_FLIP);
@@ -155,10 +155,10 @@ void intel_frontbuffer_flip_complete(struct drm_i915_private *i915,
 void intel_frontbuffer_flip(struct drm_i915_private *i915,
 			    unsigned frontbuffer_bits)
 {
-	spin_lock(&i915->fb_tracking.lock);
+	spin_lock(&i915->display.fb_tracking.lock);
 	/* Remove stale busy bits due to the old buffer. */
-	i915->fb_tracking.busy_bits &= ~frontbuffer_bits;
-	spin_unlock(&i915->fb_tracking.lock);
+	i915->display.fb_tracking.busy_bits &= ~frontbuffer_bits;
+	spin_unlock(&i915->display.fb_tracking.lock);
 
 	frontbuffer_flush(i915, frontbuffer_bits, ORIGIN_FLIP);
 }
@@ -170,10 +170,10 @@ void __intel_fb_invalidate(struct intel_frontbuffer *front,
 	struct drm_i915_private *i915 = to_i915(front->obj->base.dev);
 
 	if (origin == ORIGIN_CS) {
-		spin_lock(&i915->fb_tracking.lock);
-		i915->fb_tracking.busy_bits |= frontbuffer_bits;
-		i915->fb_tracking.flip_bits &= ~frontbuffer_bits;
-		spin_unlock(&i915->fb_tracking.lock);
+		spin_lock(&i915->display.fb_tracking.lock);
+		i915->display.fb_tracking.busy_bits |= frontbuffer_bits;
+		i915->display.fb_tracking.flip_bits &= ~frontbuffer_bits;
+		spin_unlock(&i915->display.fb_tracking.lock);
 	}
 
 	trace_intel_frontbuffer_invalidate(frontbuffer_bits, origin);
@@ -191,11 +191,11 @@ void __intel_fb_flush(struct intel_frontbuffer *front,
 	struct drm_i915_private *i915 = to_i915(front->obj->base.dev);
 
 	if (origin == ORIGIN_CS) {
-		spin_lock(&i915->fb_tracking.lock);
+		spin_lock(&i915->display.fb_tracking.lock);
 		/* Filter out new bits since rendering started. */
-		frontbuffer_bits &= i915->fb_tracking.busy_bits;
-		i915->fb_tracking.busy_bits &= ~frontbuffer_bits;
-		spin_unlock(&i915->fb_tracking.lock);
+		frontbuffer_bits &= i915->display.fb_tracking.busy_bits;
+		i915->display.fb_tracking.busy_bits &= ~frontbuffer_bits;
+		spin_unlock(&i915->display.fb_tracking.lock);
 	}
 
 	if (frontbuffer_bits)
@@ -221,7 +221,7 @@ static void frontbuffer_retire(struct i915_active *ref)
 }
 
 static void frontbuffer_release(struct kref *ref)
-	__releases(&to_i915(front->obj->base.dev)->fb_tracking.lock)
+	__releases(&to_i915(front->obj->base.dev)->display.fb_tracking.lock)
 {
 	struct intel_frontbuffer *front =
 		container_of(ref, typeof(*front), ref);
@@ -238,7 +238,7 @@ static void frontbuffer_release(struct kref *ref)
 	spin_unlock(&obj->vma.lock);
 
 	RCU_INIT_POINTER(obj->frontbuffer, NULL);
-	spin_unlock(&to_i915(obj->base.dev)->fb_tracking.lock);
+	spin_unlock(&to_i915(obj->base.dev)->display.fb_tracking.lock);
 
 	i915_active_fini(&front->write);
 
@@ -268,7 +268,7 @@ intel_frontbuffer_get(struct drm_i915_gem_object *obj)
 			 frontbuffer_retire,
 			 I915_ACTIVE_RETIRE_SLEEPS);
 
-	spin_lock(&i915->fb_tracking.lock);
+	spin_lock(&i915->display.fb_tracking.lock);
 	if (rcu_access_pointer(obj->frontbuffer)) {
 		kfree(front);
 		front = rcu_dereference_protected(obj->frontbuffer, true);
@@ -277,7 +277,7 @@ intel_frontbuffer_get(struct drm_i915_gem_object *obj)
 		i915_gem_object_get(obj);
 		rcu_assign_pointer(obj->frontbuffer, front);
 	}
-	spin_unlock(&i915->fb_tracking.lock);
+	spin_unlock(&i915->display.fb_tracking.lock);
 
 	return front;
 }
@@ -286,7 +286,7 @@ void intel_frontbuffer_put(struct intel_frontbuffer *front)
 {
 	kref_put_lock(&front->ref,
 		      frontbuffer_release,
-		      &to_i915(front->obj->base.dev)->fb_tracking.lock);
+		      &to_i915(front->obj->base.dev)->display.fb_tracking.lock);
 }
 
 /**
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 8544ca84fed4..a119a604b4e2 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -39,7 +39,6 @@
 #include "display/intel_display.h"
 #include "display/intel_display_core.h"
 #include "display/intel_dsb.h"
-#include "display/intel_frontbuffer.h"
 
 #include "gem/i915_gem_context_types.h"
 #include "gem/i915_gem_lmem.h"
@@ -187,17 +186,6 @@ i915_fence_timeout(const struct drm_i915_private *i915)
 
 #define HAS_HW_SAGV_WM(i915) (DISPLAY_VER(i915) >= 13 && !IS_DGFX(i915))
 
-struct i915_frontbuffer_tracking {
-	spinlock_t lock;
-
-	/*
-	 * Tracking bits for delayed frontbuffer flushing du to gpu activity or
-	 * scheduled flips.
-	 */
-	unsigned busy_bits;
-	unsigned flip_bits;
-};
-
 struct i915_virtual_gpu {
 	struct mutex lock; /* serialises sending of g2v_notify command pkts */
 	bool active;
@@ -331,8 +319,6 @@ struct drm_i915_private {
 
 	struct list_head global_obj_list;
 
-	struct i915_frontbuffer_tracking fb_tracking;
-
 	struct intel_atomic_helper {
 		struct llist_head free_list;
 		struct work_struct free_work;
diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index 4b76051312dd..679c166fdcb0 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -1212,7 +1212,7 @@ void i915_gem_init_early(struct drm_i915_private *dev_priv)
 	i915_gem_init__mm(dev_priv);
 	i915_gem_init__contexts(dev_priv);
 
-	spin_lock_init(&dev_priv->fb_tracking.lock);
+	spin_lock_init(&dev_priv->display.fb_tracking.lock);
 }
 
 void i915_gem_cleanup_early(struct drm_i915_private *dev_priv)
-- 
2.34.1

