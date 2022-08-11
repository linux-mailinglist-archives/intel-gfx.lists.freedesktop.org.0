Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 785D558FF19
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Aug 2022 17:17:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E08CB0440;
	Thu, 11 Aug 2022 15:17:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 593CBB3E21
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Aug 2022 15:16:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660230969; x=1691766969;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZA/jHSG7c/BE57DLQrxO6edobTvyqKYx6Gm5X+8LWEU=;
 b=mEIMzJA3mXJjT+BTUjX/i22806karnDcYgyI2b6bkasZbAmuABwY/hXc
 tnFafRkFRM0krq71h8Pe/wH08bGHWp6Kg1UahfGTyYJH76756RHyW8eIY
 +4NSmERvth1iGw/yBEw/gsL7gA7Ks6tsj6uHJ45uGkcK7f14BkmEXDJs3
 AdXIWIXH3w3hjxtIq6ke9hw0Z+vPrH/D61X7nsO5JcCRKRXL2xHk/iLFi
 yY70duVnOI0+jviwpWO0oBV4j1WmSaUecBqOVWK5HxQk3PZu2SOxyjg/m
 /vjwwx+gjwQ0rvTk7roAM/qkluI72i9yrrLHphrB1S9i2JFJY4n9gt/4/ w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10436"; a="278320109"
X-IronPort-AV: E=Sophos;i="5.93,230,1654585200"; d="scan'208";a="278320109"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 08:10:16 -0700
X-IronPort-AV: E=Sophos;i="5.93,230,1654585200"; d="scan'208";a="608953389"
Received: from gdogaru-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.48.102])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 08:10:14 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Aug 2022 18:07:41 +0300
Message-Id: <f7e68120d906fc26b07aca6fad1f7fcb66422ff0.1660230121.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1660230121.git.jani.nikula@intel.com>
References: <cover.1660230121.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 30/39] drm/i915: move fb_tracking under display
 sub-struct
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
Cc: jani.nikula@intel.com, lucas.demarchi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Move display related members under drm_i915_private display sub-struct.

Rename struct i915_frontbuffer_tracking to intel_frontbuffer_tracking
while at it.

FIXME: fb_tracking.lock mutex init should be moved away from
i915_gem_init_early().

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_display_core.h | 12 +++++
 .../drm/i915/display/intel_display_debugfs.c  |  4 +-
 .../gpu/drm/i915/display/intel_frontbuffer.c  | 54 +++++++++----------
 drivers/gpu/drm/i915/i915_drv.h               | 14 -----
 drivers/gpu/drm/i915/i915_gem.c               |  2 +-
 5 files changed, 42 insertions(+), 44 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 714fb1a6bda3..f3fc69d4b7e0 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -119,6 +119,17 @@ struct intel_dpll {
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
 
@@ -365,6 +376,7 @@ struct intel_display {
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
index 5833affe263d..19f41526c70a 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -39,7 +39,6 @@
 #include "display/intel_display.h"
 #include "display/intel_display_core.h"
 #include "display/intel_dsb.h"
-#include "display/intel_frontbuffer.h"
 
 #include "gem/i915_gem_context_types.h"
 #include "gem/i915_gem_lmem.h"
@@ -186,17 +185,6 @@ i915_fence_timeout(const struct drm_i915_private *i915)
 
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
@@ -327,8 +315,6 @@ struct drm_i915_private {
 
 	struct list_head global_obj_list;
 
-	struct i915_frontbuffer_tracking fb_tracking;
-
 	struct intel_atomic_helper {
 		struct llist_head free_list;
 		struct work_struct free_work;
diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index 702e5b89be22..0639ec7e5455 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -1213,7 +1213,7 @@ void i915_gem_init_early(struct drm_i915_private *dev_priv)
 	i915_gem_init__mm(dev_priv);
 	i915_gem_init__contexts(dev_priv);
 
-	spin_lock_init(&dev_priv->fb_tracking.lock);
+	spin_lock_init(&dev_priv->display.fb_tracking.lock);
 }
 
 void i915_gem_cleanup_early(struct drm_i915_private *dev_priv)
-- 
2.34.1

