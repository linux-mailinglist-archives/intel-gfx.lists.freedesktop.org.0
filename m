Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B6AE6473C7
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Dec 2022 17:02:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1FE710E4C8;
	Thu,  8 Dec 2022 16:02:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6433C10E4C0
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Dec 2022 16:01:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670515315; x=1702051315;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=aeVxGx42ZwgK1rHumg0PtYi2PhK9+yh1pC2DhlLFR8c=;
 b=CqA8OxGTT5LOoxTvpMeVKudIpAIkpV5ljaZw3uGogBl9ALorb6eJbn2d
 n8Hiv/ZztVmVhZtl3oI55foIaxfjxsa8BAhdxsQNbY2nLaLVjnSW7vkwv
 E+bFeBUddRodNCcuOPSnC7gQpqHhd9uYaAofh5vflAiv/ifuOyKOydtc7
 LHGmjHmX2efKeHV8NZK4vE+le7ftYrbnph6KwSmYqBA4mHKlsRzW5YZRn
 3L+PHG25hkl+o+2iM2WdtQ5rLKnNzeTW95m4Is7HZjuXThczhDaspsLo6
 rJ18VJouqaTjEkZt6oUTrqNmYkwl0UJXl7lmo1epdtwOLTEIaY0tjSYcF g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="304861172"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="304861172"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2022 08:01:22 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="679580906"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="679580906"
Received: from lab-ah.igk.intel.com ([10.91.215.196])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2022 08:01:20 -0800
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Dec 2022 17:01:03 +0100
Message-Id: <20221208160103.308581-4-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221208160103.308581-1-andrzej.hajda@intel.com>
References: <20221208160103.308581-1-andrzej.hajda@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/4] drm/i915: kill fetch_and_zero
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Macro has been replaced with shorter and generic xchg(ptr, 0).

Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_pages.c             | 4 ++--
 drivers/gpu/drm/i915/gem/i915_gem_stolen.c            | 2 +-
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c               | 6 +++---
 drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c | 4 ++--
 drivers/gpu/drm/i915/i915_hwmon.c                     | 2 +-
 drivers/gpu/drm/i915/i915_perf.c                      | 2 +-
 drivers/gpu/drm/i915/i915_query.c                     | 2 +-
 drivers/gpu/drm/i915/i915_request.c                   | 4 ++--
 drivers/gpu/drm/i915/i915_utils.h                     | 6 ------
 drivers/gpu/drm/i915/i915_vma.c                       | 2 +-
 drivers/gpu/drm/i915/intel_memory_region.c            | 2 +-
 drivers/gpu/drm/i915/intel_uncore.c                   | 4 ++--
 drivers/gpu/drm/i915/intel_wakeref.c                  | 4 ++--
 drivers/gpu/drm/i915/pxp/intel_pxp.c                  | 2 +-
 drivers/gpu/drm/i915/pxp/intel_pxp_session.c          | 4 ++--
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c              | 2 +-
 16 files changed, 23 insertions(+), 29 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pages.c b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
index 05a27723ebb8cb..215d4cf6effb60 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_pages.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
@@ -209,7 +209,7 @@ __i915_gem_object_unset_pages(struct drm_i915_gem_object *obj)
 
 	assert_object_held_shared(obj);
 
-	pages = fetch_and_zero(&obj->mm.pages);
+	pages = xchg(&obj->mm.pages, NULL);
 	if (IS_ERR_OR_NULL(pages))
 		return pages;
 
@@ -515,7 +515,7 @@ void __i915_gem_object_release_map(struct drm_i915_gem_object *obj)
 	 * Furthermore, since this is an unsafe operation reserved only
 	 * for construction time manipulation, we ignore locking prudence.
 	 */
-	unmap_object(obj, page_mask_bits(fetch_and_zero(&obj->mm.mapping)));
+	unmap_object(obj, page_mask_bits(xchg(&obj->mm.mapping, 0)));
 
 	i915_gem_object_unpin_map(obj);
 }
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
index bc952107880734..360609f482b45b 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
@@ -652,7 +652,7 @@ static void
 i915_gem_object_release_stolen(struct drm_i915_gem_object *obj)
 {
 	struct drm_i915_private *i915 = to_i915(obj->base.dev);
-	struct drm_mm_node *stolen = fetch_and_zero(&obj->stolen);
+	struct drm_mm_node *stolen = xchg(&obj->stolen, NULL);
 
 	GEM_BUG_ON(!stolen);
 	i915_gem_stolen_remove_node(i915, stolen);
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
index 5247d88b3c13e6..91f1165ed30b91 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
@@ -447,7 +447,7 @@ int i915_ttm_purge(struct drm_i915_gem_object *obj)
 		 */
 		shmem_truncate_range(file_inode(i915_tt->filp),
 				     0, (loff_t)-1);
-		fput(fetch_and_zero(&i915_tt->filp));
+		fput(xchg(&i915_tt->filp, 0));
 	}
 
 	obj->write_domain = 0;
@@ -779,7 +779,7 @@ static int __i915_ttm_get_pages(struct drm_i915_gem_object *obj,
 	int ret;
 
 	/* First try only the requested placement. No eviction. */
-	real_num_busy = fetch_and_zero(&placement->num_busy_placement);
+	real_num_busy = xchg(&placement->num_busy_placement, 0);
 	ret = ttm_bo_validate(bo, placement, &ctx);
 	if (ret) {
 		ret = i915_ttm_err_to_gem(ret);
@@ -905,7 +905,7 @@ static void i915_ttm_put_pages(struct drm_i915_gem_object *obj,
 	 */
 
 	if (obj->mm.rsgt)
-		i915_refct_sgt_put(fetch_and_zero(&obj->mm.rsgt));
+		i915_refct_sgt_put(xchg(&obj->mm.rsgt, 0));
 }
 
 /**
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
index ac02fb03659208..c78ac7f0e15f9c 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
@@ -615,7 +615,7 @@ static void throttle_release(struct i915_request **q, int count)
 		if (IS_ERR_OR_NULL(q[i]))
 			continue;
 
-		i915_request_put(fetch_and_zero(&q[i]));
+		i915_request_put(xchg(&q[i], 0));
 	}
 }
 
@@ -1072,7 +1072,7 @@ __sseu_prepare(const char *name,
 err_fini:
 	igt_spinner_fini(*spin);
 err_free:
-	kfree(fetch_and_zero(spin));
+	kfree(xchg(spin, 0));
 	return ret;
 }
 
diff --git a/drivers/gpu/drm/i915/i915_hwmon.c b/drivers/gpu/drm/i915/i915_hwmon.c
index cca7a4350ec8fd..bbdffcde7300f5 100644
--- a/drivers/gpu/drm/i915/i915_hwmon.c
+++ b/drivers/gpu/drm/i915/i915_hwmon.c
@@ -732,5 +732,5 @@ void i915_hwmon_register(struct drm_i915_private *i915)
 
 void i915_hwmon_unregister(struct drm_i915_private *i915)
 {
-	fetch_and_zero(&i915->hwmon);
+	xchg(&i915->hwmon, 0);
 }
diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index d22f30dd4fba27..383cb82ea74f96 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -1535,7 +1535,7 @@ static void oa_put_render_ctx_id(struct i915_perf_stream *stream)
 {
 	struct intel_context *ce;
 
-	ce = fetch_and_zero(&stream->pinned_ctx);
+	ce = xchg(&stream->pinned_ctx, NULL);
 	if (ce) {
 		ce->tag = 0; /* recomputed on next submission after parking */
 		intel_context_unpin(ce);
diff --git a/drivers/gpu/drm/i915/i915_query.c b/drivers/gpu/drm/i915/i915_query.c
index 00871ef9979204..a4d7ef9be4c6ef 100644
--- a/drivers/gpu/drm/i915/i915_query.c
+++ b/drivers/gpu/drm/i915/i915_query.c
@@ -404,7 +404,7 @@ static int query_perf_config_list(struct drm_i915_private *i915,
 		if (!ids)
 			return -ENOMEM;
 
-		alloc = fetch_and_zero(&n_configs);
+		alloc = xchg(&n_configs, 0);
 
 		ids[n_configs++] = 1ull; /* reserved for test_config */
 		rcu_read_lock();
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index f949a9495758a0..931c702d374970 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -117,7 +117,7 @@ static void i915_fence_release(struct dma_fence *fence)
 	GEM_BUG_ON(rq->guc_prio != GUC_PRIO_INIT &&
 		   rq->guc_prio != GUC_PRIO_FINI);
 
-	i915_request_free_capture_list(fetch_and_zero(&rq->capture_list));
+	i915_request_free_capture_list(xchg(&rq->capture_list, 0));
 	if (rq->batch_res) {
 		i915_vma_resource_put(rq->batch_res);
 		rq->batch_res = NULL;
@@ -1948,7 +1948,7 @@ static void request_wait_wake(struct dma_fence *fence, struct dma_fence_cb *cb)
 {
 	struct request_wait *wait = container_of(cb, typeof(*wait), cb);
 
-	wake_up_process(fetch_and_zero(&wait->tsk));
+	wake_up_process(xchg(&wait->tsk, 0));
 }
 
 /**
diff --git a/drivers/gpu/drm/i915/i915_utils.h b/drivers/gpu/drm/i915/i915_utils.h
index 6c14d13364bf78..53ce495e7d1f5b 100644
--- a/drivers/gpu/drm/i915/i915_utils.h
+++ b/drivers/gpu/drm/i915/i915_utils.h
@@ -151,12 +151,6 @@ bool i915_error_injected(void);
 
 #define struct_member(T, member) (((T *)0)->member)
 
-#define fetch_and_zero(ptr) ({						\
-	typeof(*ptr) __T = *(ptr);					\
-	*(ptr) = (typeof(*ptr))0;					\
-	__T;								\
-})
-
 static __always_inline ptrdiff_t ptrdiff(const void *a, const void *b)
 {
 	return a - b;
diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index 34f0e6c923c26d..0c5050356edd75 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -635,7 +635,7 @@ void i915_vma_unpin_and_release(struct i915_vma **p_vma, unsigned int flags)
 	struct i915_vma *vma;
 	struct drm_i915_gem_object *obj;
 
-	vma = fetch_and_zero(p_vma);
+	vma = xchg(p_vma, NULL);
 	if (!vma)
 		return;
 
diff --git a/drivers/gpu/drm/i915/intel_memory_region.c b/drivers/gpu/drm/i915/intel_memory_region.c
index 9a4a7fb55582db..6b656c2a14e8b6 100644
--- a/drivers/gpu/drm/i915/intel_memory_region.c
+++ b/drivers/gpu/drm/i915/intel_memory_region.c
@@ -367,7 +367,7 @@ void intel_memory_regions_driver_release(struct drm_i915_private *i915)
 
 	for (i = 0; i < ARRAY_SIZE(i915->mm.regions); i++) {
 		struct intel_memory_region *region =
-			fetch_and_zero(&i915->mm.regions[i]);
+			xchg(&i915->mm.regions[i], NULL);
 
 		if (region)
 			intel_memory_region_destroy(region);
diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
index 614013745fcafe..84830bb3bfe4bf 100644
--- a/drivers/gpu/drm/i915/intel_uncore.c
+++ b/drivers/gpu/drm/i915/intel_uncore.c
@@ -627,7 +627,7 @@ void intel_uncore_resume_early(struct intel_uncore *uncore)
 	if (!intel_uncore_has_forcewake(uncore))
 		return;
 
-	restore_forcewake = fetch_and_zero(&uncore->fw_domains_saved);
+	restore_forcewake = xchg(&uncore->fw_domains_saved, 0);
 	forcewake_early_sanitize(uncore, restore_forcewake);
 
 	iosf_mbi_register_pmic_bus_access_notifier(&uncore->pmic_bus_access_nb);
@@ -2249,7 +2249,7 @@ static void fw_domain_fini(struct intel_uncore *uncore,
 
 	GEM_BUG_ON(domain_id >= FW_DOMAIN_ID_COUNT);
 
-	d = fetch_and_zero(&uncore->fw_domain[domain_id]);
+	d = xchg(&uncore->fw_domain[domain_id], NULL);
 	if (!d)
 		return;
 
diff --git a/drivers/gpu/drm/i915/intel_wakeref.c b/drivers/gpu/drm/i915/intel_wakeref.c
index dfd87d08221807..59bb9375322954 100644
--- a/drivers/gpu/drm/i915/intel_wakeref.c
+++ b/drivers/gpu/drm/i915/intel_wakeref.c
@@ -16,7 +16,7 @@ static void rpm_get(struct intel_wakeref *wf)
 
 static void rpm_put(struct intel_wakeref *wf)
 {
-	intel_wakeref_t wakeref = fetch_and_zero(&wf->wakeref);
+	intel_wakeref_t wakeref = xchg(&wf->wakeref, 0);
 
 	intel_runtime_pm_put(wf->rpm, wakeref);
 	INTEL_WAKEREF_BUG_ON(!wakeref);
@@ -134,7 +134,7 @@ static void wakeref_auto_timeout(struct timer_list *t)
 	if (!refcount_dec_and_lock_irqsave(&wf->count, &wf->lock, &flags))
 		return;
 
-	wakeref = fetch_and_zero(&wf->wakeref);
+	wakeref = xchg(&wf->wakeref, 0);
 	spin_unlock_irqrestore(&wf->lock, flags);
 
 	intel_runtime_pm_put(wf->rpm, wakeref);
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
index 5efe61f6754601..be082a34218499 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -104,7 +104,7 @@ static int create_vcs_context(struct intel_pxp *pxp)
 static void destroy_vcs_context(struct intel_pxp *pxp)
 {
 	if (pxp->ce)
-		intel_engine_destroy_pinned_context(fetch_and_zero(&pxp->ce));
+		intel_engine_destroy_pinned_context(xchg(&pxp->ce, 0));
 }
 
 static void pxp_init_full(struct intel_pxp *pxp)
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_session.c b/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
index 85572360c71a99..91e1361bd21cd1 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
@@ -132,7 +132,7 @@ static void pxp_terminate(struct intel_pxp *pxp)
 static void pxp_terminate_complete(struct intel_pxp *pxp)
 {
 	/* Re-create the arb session after teardown handle complete */
-	if (fetch_and_zero(&pxp->hw_state_invalidated))
+	if (xchg(&pxp->hw_state_invalidated, 0))
 		pxp_create_arb_session(pxp);
 
 	complete_all(&pxp->termination);
@@ -146,7 +146,7 @@ static void pxp_session_work(struct work_struct *work)
 	u32 events = 0;
 
 	spin_lock_irq(gt->irq_lock);
-	events = fetch_and_zero(&pxp->session_events);
+	events = xchg(&pxp->session_events, 0);
 	spin_unlock_irq(gt->irq_lock);
 
 	if (!events)
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
index b0c9170b139542..8d6bdc94c3683a 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
@@ -231,7 +231,7 @@ static int alloc_streaming_command(struct intel_pxp *pxp)
 
 static void free_streaming_command(struct intel_pxp *pxp)
 {
-	struct drm_i915_gem_object *obj = fetch_and_zero(&pxp->stream_cmd.obj);
+	struct drm_i915_gem_object *obj = xchg(&pxp->stream_cmd.obj, NULL);
 
 	if (!obj)
 		return;
-- 
2.34.1

