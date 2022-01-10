Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A449489C7E
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jan 2022 16:45:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4889610FE20;
	Mon, 10 Jan 2022 15:45:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22BF8112328
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jan 2022 15:45:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641829555; x=1673365555;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2D0G46IIaa0BYh9hpRw8qikag5YciQlRkd/1/AE1P9A=;
 b=DAIZfxUsXA1XPpEqpa+iIyhDxWzOSxgR8nGxykq2OnciQ3luIao5U/xb
 iMnJRmVrjXcOwF1KCs85uWSDwVDepUO/AumH+lBhs6kdAWxXnwiDrjW6V
 sV+FOOicVEg2lUtkEuYg6GVfKrdLdfqcq/60JDWOJITMhSfxZ0N1L/u1Y
 kdvRZMYI5MvLqO+0hx1pLKFt7CyoMcLlOtsjZEbzM/rdA2kSBLyYY0/q5
 7p0VY+2T3lFbAS/QDKvpkSW431OnP9mod2v+eJB5v8jFivmJul8Rw6CAz
 eGCENzfy1+3CDbaIaUe/267ZECsQP4MIDj+bY11FTHwMOlTx2HIZDtVel g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10222"; a="243450230"
X-IronPort-AV: E=Sophos;i="5.88,277,1635231600"; d="scan'208";a="243450230"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2022 07:45:54 -0800
X-IronPort-AV: E=Sophos;i="5.88,277,1635231600"; d="scan'208";a="528318493"
Received: from bdoyle2-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.26.184])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2022 07:45:52 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 10 Jan 2022 17:45:37 +0200
Message-Id: <b76bf596eba67eb8495623551da2b62f961b0ad2.1641829429.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1641829428.git.jani.nikula@intel.com>
References: <cover.1641829428.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/6] drm/i915: split out i915_gem.h declarations
 from i915_drv.h
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

i915_gem.h should be the place for declarations for i915_gem.c, but
looks like it's filled with all sorts of cruft. Even so, move the
declarations where they belong.

Acked-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h | 32 -----------------------------
 drivers/gpu/drm/i915/i915_gem.h | 36 +++++++++++++++++++++++++++++++++
 2 files changed, 36 insertions(+), 32 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index a44e0c3298fc..e55a50d255a6 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1603,9 +1603,6 @@ intel_vm_no_concurrent_access_wa(struct drm_i915_private *i915)
 }
 
 /* i915_gem.c */
-void i915_gem_init_early(struct drm_i915_private *dev_priv);
-void i915_gem_cleanup_early(struct drm_i915_private *dev_priv);
-
 static inline void i915_gem_drain_freed_objects(struct drm_i915_private *i915)
 {
 	/*
@@ -1644,32 +1641,10 @@ static inline void i915_gem_drain_workqueue(struct drm_i915_private *i915)
 	drain_workqueue(i915->wq);
 }
 
-struct i915_vma * __must_check
-i915_gem_object_ggtt_pin_ww(struct drm_i915_gem_object *obj,
-			    struct i915_gem_ww_ctx *ww,
-			    const struct i915_ggtt_view *view,
-			    u64 size, u64 alignment, u64 flags);
-
-struct i915_vma * __must_check
-i915_gem_object_ggtt_pin(struct drm_i915_gem_object *obj,
-			 const struct i915_ggtt_view *view,
-			 u64 size, u64 alignment, u64 flags);
-
-int i915_gem_object_unbind(struct drm_i915_gem_object *obj,
-			   unsigned long flags);
-#define I915_GEM_OBJECT_UNBIND_ACTIVE BIT(0)
-#define I915_GEM_OBJECT_UNBIND_BARRIER BIT(1)
-#define I915_GEM_OBJECT_UNBIND_TEST BIT(2)
-#define I915_GEM_OBJECT_UNBIND_VM_TRYLOCK BIT(3)
-
-void i915_gem_runtime_suspend(struct drm_i915_private *dev_priv);
-
 int i915_gem_dumb_create(struct drm_file *file_priv,
 			 struct drm_device *dev,
 			 struct drm_mode_create_dumb *args);
 
-int __must_check i915_gem_set_global_seqno(struct drm_device *dev, u32 seqno);
-
 static inline u32 i915_reset_count(struct i915_gpu_error *error)
 {
 	return atomic_read(&error->reset_count);
@@ -1681,17 +1656,10 @@ static inline u32 i915_reset_engine_count(struct i915_gpu_error *error,
 	return atomic_read(&error->reset_engine_count[engine->uabi_class]);
 }
 
-int __must_check i915_gem_init(struct drm_i915_private *dev_priv);
-void i915_gem_driver_register(struct drm_i915_private *i915);
-void i915_gem_driver_unregister(struct drm_i915_private *i915);
-void i915_gem_driver_remove(struct drm_i915_private *dev_priv);
-void i915_gem_driver_release(struct drm_i915_private *dev_priv);
 void i915_gem_suspend(struct drm_i915_private *dev_priv);
 void i915_gem_suspend_late(struct drm_i915_private *dev_priv);
 void i915_gem_resume(struct drm_i915_private *dev_priv);
 
-int i915_gem_open(struct drm_i915_private *i915, struct drm_file *file);
-
 int i915_gem_object_set_cache_level(struct drm_i915_gem_object *obj,
 				    enum i915_cache_level cache_level);
 
diff --git a/drivers/gpu/drm/i915/i915_gem.h b/drivers/gpu/drm/i915/i915_gem.h
index d0752e5553db..0ebe32dc6e83 100644
--- a/drivers/gpu/drm/i915/i915_gem.h
+++ b/drivers/gpu/drm/i915/i915_gem.h
@@ -27,12 +27,18 @@
 
 #include <linux/bug.h>
 #include <linux/interrupt.h>
+#include <linux/types.h>
 
 #include <drm/drm_drv.h>
 
 #include "i915_utils.h"
 
+struct drm_file;
+struct drm_i915_gem_object;
 struct drm_i915_private;
+struct i915_gem_ww_ctx;
+struct i915_ggtt_view;
+struct i915_vma;
 
 #ifdef CONFIG_DRM_I915_DEBUG_GEM
 
@@ -123,4 +129,34 @@ static inline bool __tasklet_is_scheduled(struct tasklet_struct *t)
 	return test_bit(TASKLET_STATE_SCHED, &t->state);
 }
 
+void i915_gem_init_early(struct drm_i915_private *i915);
+void i915_gem_cleanup_early(struct drm_i915_private *i915);
+int __must_check i915_gem_init(struct drm_i915_private *i915);
+void i915_gem_driver_register(struct drm_i915_private *i915);
+void i915_gem_driver_unregister(struct drm_i915_private *i915);
+void i915_gem_driver_remove(struct drm_i915_private *i915);
+void i915_gem_driver_release(struct drm_i915_private *i915);
+int i915_gem_open(struct drm_i915_private *i915, struct drm_file *file);
+
+void i915_gem_runtime_suspend(struct drm_i915_private *i915);
+
+struct i915_vma * __must_check
+i915_gem_object_ggtt_pin_ww(struct drm_i915_gem_object *obj,
+			    struct i915_gem_ww_ctx *ww,
+			    const struct i915_ggtt_view *view,
+			    u64 size, u64 alignment, u64 flags);
+
+struct i915_vma * __must_check
+i915_gem_object_ggtt_pin(struct drm_i915_gem_object *obj,
+			 const struct i915_ggtt_view *view,
+			 u64 size, u64 alignment, u64 flags);
+
+#define I915_GEM_OBJECT_UNBIND_ACTIVE		BIT(0)
+#define I915_GEM_OBJECT_UNBIND_BARRIER		BIT(1)
+#define I915_GEM_OBJECT_UNBIND_TEST		BIT(2)
+#define I915_GEM_OBJECT_UNBIND_VM_TRYLOCK	BIT(3)
+
+int i915_gem_object_unbind(struct drm_i915_gem_object *obj,
+			   unsigned long flags);
+
 #endif /* __I915_GEM_H__ */
-- 
2.30.2

