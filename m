Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BA5298E22A
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Oct 2024 20:17:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECF6110E778;
	Wed,  2 Oct 2024 18:17:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ISXFimno";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72DD610E22C;
 Wed,  2 Oct 2024 18:17:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727893020; x=1759429020;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=m250e0V8uuD667iMWJkLAQaVpdRayQU1FVsqhDOulz4=;
 b=ISXFimnoQ0D9Ca+5iO4KrBdShQbcvkJV38ys07tCGEg1UoN2F4jWY2uH
 OMd5cs1hTU07JuaSSpsBSv/LyXOGZSUiBZao1ps6IFQxkfBEV5PRsZHWR
 sxeosVyCMj2SBTku4jjcTvucXSj0ed/i2SNLYXKXWBojmCzKE9DUKdZZj
 OklKCzT1UXaRkCmn3ZQShyx7C1OvWEoArvRb9GNWDDGLo7f+zAPigxYsO
 CxXtBQY9L12H9VLnDOjpUI1M34nQwExkujiQ52/0mqgtaSmfVkzAf8IeB
 3sWqB1XXiLgyJCA/MyPOv5+sFdbj5eb39QdTum8RFvbU0WzrOBJKnTyQz g==;
X-CSE-ConnectionGUID: YcwyPXYfSAWZEFaCmzDSsQ==
X-CSE-MsgGUID: qTNCJTwHQtynJF5y0uCgvg==
X-IronPort-AV: E=McAfee;i="6700,10204,11213"; a="30956252"
X-IronPort-AV: E=Sophos;i="6.11,172,1725346800"; d="scan'208";a="30956252"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2024 11:17:00 -0700
X-CSE-ConnectionGUID: djx5KzvMQBy6TuaDljPqvQ==
X-CSE-MsgGUID: svnu+Y7GQOWYG49xeKYWuQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,172,1725346800"; d="scan'208";a="74201302"
Received: from lbogdanm-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.49])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2024 11:16:58 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH] drm/i915: use NULL for zero wakeref_t instead of plain
 integer 0
Date: Wed,  2 Oct 2024 21:16:55 +0300
Message-Id: <20241002181655.582597-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
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

As of commit 2edc6a75f26c ("drm/i915: switch intel_wakeref_t underlying
type to struct ref_tracker *") we gained quite a few sparse warnings
about "Using plain integer as NULL pointer" for using 0 to initialize
wakeref_t. Switch to NULL everywhere.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c       |  2 +-
 drivers/gpu/drm/i915/display/intel_display_power.c |  6 +++---
 drivers/gpu/drm/i915/display/intel_display_power.h |  4 ++--
 drivers/gpu/drm/i915/display/intel_pps.c           |  2 +-
 drivers/gpu/drm/i915/gem/i915_gem_shrinker.c       |  2 +-
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c            |  4 ++--
 drivers/gpu/drm/i915/gt/intel_breadcrumbs.c        |  2 +-
 drivers/gpu/drm/i915/gt/intel_gt_pm.h              |  6 +++---
 drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c  |  2 +-
 drivers/gpu/drm/i915/i915_vma.c                    |  4 ++--
 drivers/gpu/drm/i915/intel_runtime_pm.c            |  2 +-
 drivers/gpu/drm/i915/intel_runtime_pm.h            |  6 +++---
 drivers/gpu/drm/i915/intel_wakeref.c               | 14 +++++++-------
 drivers/gpu/drm/i915/pxp/intel_pxp.c               |  2 +-
 .../drm/xe/compat-i915-headers/intel_runtime_pm.h  |  6 +++---
 15 files changed, 32 insertions(+), 32 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 74311bb9d290..2864a894d399 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7589,7 +7589,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	struct intel_crtc_state *new_crtc_state, *old_crtc_state;
 	struct intel_crtc *crtc;
 	struct intel_power_domain_mask put_domains[I915_MAX_PIPES] = {};
-	intel_wakeref_t wakeref = 0;
+	intel_wakeref_t wakeref = NULL;
 	int i;
 
 	intel_atomic_commit_fence_wait(state);
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 7b16ba1a8226..c2bc80f5bf6b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -545,7 +545,7 @@ intel_display_power_get_if_enabled(struct drm_i915_private *dev_priv,
 
 	wakeref = intel_runtime_pm_get_if_in_use(&dev_priv->runtime_pm);
 	if (!wakeref)
-		return 0;
+		return NULL;
 
 	mutex_lock(&power_domains->lock);
 
@@ -560,7 +560,7 @@ intel_display_power_get_if_enabled(struct drm_i915_private *dev_priv,
 
 	if (!is_enabled) {
 		intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);
-		wakeref = 0;
+		wakeref = NULL;
 	}
 
 	return wakeref;
@@ -648,7 +648,7 @@ intel_display_power_put_async_work(struct work_struct *work)
 	struct i915_power_domains *power_domains = &dev_priv->display.power.domains;
 	struct intel_runtime_pm *rpm = &dev_priv->runtime_pm;
 	intel_wakeref_t new_work_wakeref = intel_runtime_pm_get_raw(rpm);
-	intel_wakeref_t old_work_wakeref = 0;
+	intel_wakeref_t old_work_wakeref = NULL;
 
 	mutex_lock(&power_domains->lock);
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
index 3b7c1a0bb1de..3f8f84df4733 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -297,10 +297,10 @@ void gen9_dbuf_slices_update(struct drm_i915_private *dev_priv,
 
 #define with_intel_display_power(i915, domain, wf) \
 	for ((wf) = intel_display_power_get((i915), (domain)); (wf); \
-	     intel_display_power_put_async((i915), (domain), (wf)), (wf) = 0)
+	     intel_display_power_put_async((i915), (domain), (wf)), (wf) = NULL)
 
 #define with_intel_display_power_if_enabled(i915, domain, wf) \
 	for ((wf) = intel_display_power_get_if_enabled((i915), (domain)); (wf); \
-	     intel_display_power_put_async((i915), (domain), (wf)), (wf) = 0)
+	     intel_display_power_put_async((i915), (domain), (wf)), (wf) = NULL)
 
 #endif /* __INTEL_DISPLAY_POWER_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 88abc4c7cda1..ffeee9daa568 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -87,7 +87,7 @@ intel_wakeref_t intel_pps_unlock(struct intel_dp *intel_dp,
 	mutex_unlock(&display->pps.mutex);
 	intel_display_power_put(dev_priv, POWER_DOMAIN_DISPLAY_CORE, wakeref);
 
-	return 0;
+	return NULL;
 }
 
 static void
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c b/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
index d166052eb2ce..9117e9422844 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
@@ -117,7 +117,7 @@ i915_gem_shrink(struct i915_gem_ww_ctx *ww,
 		},
 		{ NULL, 0 },
 	}, *phase;
-	intel_wakeref_t wakeref = 0;
+	intel_wakeref_t wakeref = NULL;
 	unsigned long count = 0;
 	unsigned long scanned = 0;
 	int err = 0, i = 0;
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
index b22e2019768f..abb82be0d0aa 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
@@ -1038,7 +1038,7 @@ static vm_fault_t vm_fault_ttm(struct vm_fault *vmf)
 	struct ttm_buffer_object *bo = area->vm_private_data;
 	struct drm_device *dev = bo->base.dev;
 	struct drm_i915_gem_object *obj = i915_ttm_to_gem(bo);
-	intel_wakeref_t wakeref = 0;
+	intel_wakeref_t wakeref = NULL;
 	vm_fault_t ret;
 	int idx;
 
@@ -1195,7 +1195,7 @@ static u64 i915_ttm_mmap_offset(struct drm_i915_gem_object *obj)
 static void i915_ttm_unmap_virtual(struct drm_i915_gem_object *obj)
 {
 	struct ttm_buffer_object *bo = i915_gem_to_ttm(obj);
-	intel_wakeref_t wakeref = 0;
+	intel_wakeref_t wakeref = NULL;
 
 	assert_object_held_shared(obj);
 
diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
index 20b9b04ec1e0..cc866773ba6f 100644
--- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
+++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
@@ -70,7 +70,7 @@ static void __intel_breadcrumbs_disarm_irq(struct intel_breadcrumbs *b)
 	if (!--b->irq_enabled)
 		b->irq_disable(b);
 
-	WRITE_ONCE(b->irq_armed, 0);
+	WRITE_ONCE(b->irq_armed, NULL);
 	intel_gt_pm_put_async(b->irq_engine->gt, wakeref);
 }
 
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.h b/drivers/gpu/drm/i915/gt/intel_gt_pm.h
index dcbfc09194b7..6f25c747bc29 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.h
@@ -35,7 +35,7 @@ static inline void __intel_gt_pm_get(struct intel_gt *gt)
 static inline intel_wakeref_t intel_gt_pm_get_if_awake(struct intel_gt *gt)
 {
 	if (!intel_wakeref_get_if_active(&gt->wakeref))
-		return 0;
+		return NULL;
 
 	return intel_wakeref_track(&gt->wakeref);
 }
@@ -73,7 +73,7 @@ static inline void intel_gt_pm_put_async(struct intel_gt *gt, intel_wakeref_t ha
 }
 
 #define with_intel_gt_pm(gt, wf) \
-	for (wf = intel_gt_pm_get(gt); wf; intel_gt_pm_put(gt, wf), wf = 0)
+	for ((wf) = intel_gt_pm_get(gt); (wf); intel_gt_pm_put((gt), (wf)), (wf) = NULL)
 
 /**
  * with_intel_gt_pm_if_awake - if GT is PM awake, get a reference to prevent
@@ -84,7 +84,7 @@ static inline void intel_gt_pm_put_async(struct intel_gt *gt, intel_wakeref_t ha
  * @wf: pointer to a temporary wakeref.
  */
 #define with_intel_gt_pm_if_awake(gt, wf) \
-	for (wf = intel_gt_pm_get_if_awake(gt); wf; intel_gt_pm_put_async(gt, wf), wf = 0)
+	for ((wf) = intel_gt_pm_get_if_awake(gt); (wf); intel_gt_pm_put_async((gt), (wf)), (wf) = NULL)
 
 static inline int intel_gt_pm_wait_for_idle(struct intel_gt *gt)
 {
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index ed979847187f..9ede6f240d79 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -1339,7 +1339,7 @@ static ktime_t guc_engine_busyness(struct intel_engine_cs *engine, ktime_t *now)
 	 * start_gt_clk is derived from GuC state. To get a consistent
 	 * view of activity, we query the GuC state only if gt is awake.
 	 */
-	wakeref = in_reset ? 0 : intel_gt_pm_get_if_awake(gt);
+	wakeref = in_reset ? NULL : intel_gt_pm_get_if_awake(gt);
 	if (wakeref) {
 		stats_saved = *stats;
 		gt_stamp_saved = guc->timestamp.gt_stamp;
diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index d2f064d2525c..776f8cc51b2f 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -2157,7 +2157,7 @@ static struct dma_fence *__i915_vma_unbind_async(struct i915_vma *vma)
 int i915_vma_unbind(struct i915_vma *vma)
 {
 	struct i915_address_space *vm = vma->vm;
-	intel_wakeref_t wakeref = 0;
+	intel_wakeref_t wakeref = NULL;
 	int err;
 
 	assert_object_held_shared(vma->obj);
@@ -2196,7 +2196,7 @@ int i915_vma_unbind_async(struct i915_vma *vma, bool trylock_vm)
 {
 	struct drm_i915_gem_object *obj = vma->obj;
 	struct i915_address_space *vm = vma->vm;
-	intel_wakeref_t wakeref = 0;
+	intel_wakeref_t wakeref = NULL;
 	struct dma_fence *fence;
 	int err;
 
diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.c b/drivers/gpu/drm/i915/intel_runtime_pm.c
index a21f5a1c89bc..1a47ecfd3fd8 100644
--- a/drivers/gpu/drm/i915/intel_runtime_pm.c
+++ b/drivers/gpu/drm/i915/intel_runtime_pm.c
@@ -250,7 +250,7 @@ static intel_wakeref_t __intel_runtime_pm_get_if_active(struct intel_runtime_pm
 		     pm_runtime_get_if_active(rpm->kdev) <= 0) ||
 		    (!ignore_usecount &&
 		     pm_runtime_get_if_in_use(rpm->kdev) <= 0))
-			return 0;
+			return NULL;
 	}
 
 	intel_runtime_pm_acquire(rpm, true);
diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.h b/drivers/gpu/drm/i915/intel_runtime_pm.h
index 796a2dcb307e..126f8320f86e 100644
--- a/drivers/gpu/drm/i915/intel_runtime_pm.h
+++ b/drivers/gpu/drm/i915/intel_runtime_pm.h
@@ -188,15 +188,15 @@ intel_wakeref_t intel_runtime_pm_get_raw(struct intel_runtime_pm *rpm);
 
 #define with_intel_runtime_pm(rpm, wf) \
 	for ((wf) = intel_runtime_pm_get(rpm); (wf); \
-	     intel_runtime_pm_put((rpm), (wf)), (wf) = 0)
+	     intel_runtime_pm_put((rpm), (wf)), (wf) = NULL)
 
 #define with_intel_runtime_pm_if_in_use(rpm, wf) \
 	for ((wf) = intel_runtime_pm_get_if_in_use(rpm); (wf); \
-	     intel_runtime_pm_put((rpm), (wf)), (wf) = 0)
+	     intel_runtime_pm_put((rpm), (wf)), (wf) = NULL)
 
 #define with_intel_runtime_pm_if_active(rpm, wf) \
 	for ((wf) = intel_runtime_pm_get_if_active(rpm); (wf); \
-	     intel_runtime_pm_put((rpm), (wf)), (wf) = 0)
+	     intel_runtime_pm_put((rpm), (wf)), (wf) = NULL)
 
 void intel_runtime_pm_put_unchecked(struct intel_runtime_pm *rpm);
 #if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
diff --git a/drivers/gpu/drm/i915/intel_wakeref.c b/drivers/gpu/drm/i915/intel_wakeref.c
index dea2f63184f8..87f246047312 100644
--- a/drivers/gpu/drm/i915/intel_wakeref.c
+++ b/drivers/gpu/drm/i915/intel_wakeref.c
@@ -27,11 +27,11 @@ int __intel_wakeref_get_first(struct intel_wakeref *wf)
 	if (!atomic_read(&wf->count)) {
 		INTEL_WAKEREF_BUG_ON(wf->wakeref);
 		wf->wakeref = wakeref;
-		wakeref = 0;
+		wakeref = NULL;
 
 		ret = wf->ops->get(wf);
 		if (ret) {
-			wakeref = xchg(&wf->wakeref, 0);
+			wakeref = xchg(&wf->wakeref, NULL);
 			wake_up_var(&wf->wakeref);
 			goto unlock;
 		}
@@ -52,7 +52,7 @@ int __intel_wakeref_get_first(struct intel_wakeref *wf)
 
 static void ____intel_wakeref_put_last(struct intel_wakeref *wf)
 {
-	intel_wakeref_t wakeref = 0;
+	intel_wakeref_t wakeref = NULL;
 
 	INTEL_WAKEREF_BUG_ON(atomic_read(&wf->count) <= 0);
 	if (unlikely(!atomic_dec_and_test(&wf->count)))
@@ -61,7 +61,7 @@ static void ____intel_wakeref_put_last(struct intel_wakeref *wf)
 	/* ops->put() must reschedule its own release on error/deferral */
 	if (likely(!wf->ops->put(wf))) {
 		INTEL_WAKEREF_BUG_ON(!wf->wakeref);
-		wakeref = xchg(&wf->wakeref, 0);
+		wakeref = xchg(&wf->wakeref, NULL);
 		wake_up_var(&wf->wakeref);
 	}
 
@@ -107,7 +107,7 @@ void __intel_wakeref_init(struct intel_wakeref *wf,
 
 	__mutex_init(&wf->mutex, "wakeref.mutex", &key->mutex);
 	atomic_set(&wf->count, 0);
-	wf->wakeref = 0;
+	wf->wakeref = NULL;
 
 	INIT_DELAYED_WORK(&wf->work, __intel_wakeref_put_work);
 	lockdep_init_map(&wf->work.work.lockdep_map,
@@ -142,7 +142,7 @@ static void wakeref_auto_timeout(struct timer_list *t)
 	if (!refcount_dec_and_lock_irqsave(&wf->count, &wf->lock, &flags))
 		return;
 
-	wakeref = fetch_and_zero(&wf->wakeref);
+	wakeref = xchg(&wf->wakeref, NULL);
 	spin_unlock_irqrestore(&wf->lock, flags);
 
 	intel_runtime_pm_put(&wf->i915->runtime_pm, wakeref);
@@ -154,7 +154,7 @@ void intel_wakeref_auto_init(struct intel_wakeref_auto *wf,
 	spin_lock_init(&wf->lock);
 	timer_setup(&wf->timer, wakeref_auto_timeout, 0);
 	refcount_set(&wf->count, 0);
-	wf->wakeref = 0;
+	wf->wakeref = NULL;
 	wf->i915 = i915;
 }
 
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
index 3a40e4ece925..da3577149769 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -531,7 +531,7 @@ void intel_pxp_invalidate(struct intel_pxp *pxp)
 		if (ctx->pxp_wakeref) {
 			intel_runtime_pm_put(&i915->runtime_pm,
 					     ctx->pxp_wakeref);
-			ctx->pxp_wakeref = 0;
+			ctx->pxp_wakeref = NULL;
 		}
 
 		spin_lock_irq(&i915->gem.contexts.lock);
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/intel_runtime_pm.h b/drivers/gpu/drm/xe/compat-i915-headers/intel_runtime_pm.h
index 380d25428bdb..cba587ceba1b 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/intel_runtime_pm.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/intel_runtime_pm.h
@@ -24,14 +24,14 @@ static inline intel_wakeref_t intel_runtime_pm_get(struct xe_runtime_pm *pm)
 {
 	struct xe_device *xe = container_of(pm, struct xe_device, runtime_pm);
 
-	return xe_pm_runtime_resume_and_get(xe) ? INTEL_WAKEREF_DEF : 0;
+	return xe_pm_runtime_resume_and_get(xe) ? INTEL_WAKEREF_DEF : NULL;
 }
 
 static inline intel_wakeref_t intel_runtime_pm_get_if_in_use(struct xe_runtime_pm *pm)
 {
 	struct xe_device *xe = container_of(pm, struct xe_device, runtime_pm);
 
-	return xe_pm_runtime_get_if_in_use(xe) ? INTEL_WAKEREF_DEF : 0;
+	return xe_pm_runtime_get_if_in_use(xe) ? INTEL_WAKEREF_DEF : NULL;
 }
 
 static inline intel_wakeref_t intel_runtime_pm_get_noresume(struct xe_runtime_pm *pm)
@@ -63,6 +63,6 @@ static inline void intel_runtime_pm_put(struct xe_runtime_pm *pm, intel_wakeref_
 
 #define with_intel_runtime_pm(rpm, wf) \
 	for ((wf) = intel_runtime_pm_get(rpm); (wf); \
-	     intel_runtime_pm_put((rpm), (wf)), (wf) = 0)
+	     intel_runtime_pm_put((rpm), (wf)), (wf) = NULL)
 
 #endif
-- 
2.39.5

