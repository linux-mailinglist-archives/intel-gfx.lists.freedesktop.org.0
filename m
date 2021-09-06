Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B6A99401ECD
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Sep 2021 18:56:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D614989BF3;
	Mon,  6 Sep 2021 16:55:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E85C89B20;
 Mon,  6 Sep 2021 16:55:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10099"; a="219697354"
X-IronPort-AV: E=Sophos;i="5.85,272,1624345200"; d="scan'208";a="219697354"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2021 09:55:41 -0700
X-IronPort-AV: E=Sophos;i="5.85,272,1624345200"; d="scan'208";a="579695087"
Received: from mkrygin-mobl1.ccr.corp.intel.com (HELO
 thellstr-mobl1.intel.com) ([10.249.254.45])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2021 09:55:39 -0700
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Cc: maarten.lankhorst@linux.intel.com, matthew.auld@intel.com,
 =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Brost Matthew <matthew.brost@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Date: Mon,  6 Sep 2021 18:55:12 +0200
Message-Id: <20210906165515.450541-5-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210906165515.450541-1-thomas.hellstrom@linux.intel.com>
References: <20210906165515.450541-1-thomas.hellstrom@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 4/6] drm/i915/gt: Register the migrate
 contexts with their engines
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

Pinned contexts, like the migrate contexts need reset after resume
since their context image may have been lost. Also the GuC needs to
register pinned contexts.

Add a list to struct intel_engine_cs where we add all pinned contexts on
creation, and traverse that list at resume time to reset the pinned
contexts.

This fixes the kms_pipe_crc_basic@suspend-read-crc-pipe-a selftest for now,
but proper LMEM backup / restore is needed for full suspend functionality.
However, note that even with full LMEM backup / restore it may be
desirable to keep the reset since backing up the migrate context images
must happen using memcpy() after the migrate context has become inactive,
and for performance- and other reasons we want to avoid memcpy() from
LMEM.

Also traverse the list at guc_init_lrc_mapping() calling
guc_kernel_context_pin() for the pinned contexts, like is already done
for the kernel context.

v2:
- Don't reset the contexts on each __engine_unpark() but rather at
  resume time (Chris Wilson).
v3:
- Reset contexts in the engine sanitize callback. (Chris Wilson)

Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: Matthew Auld <matthew.auld@intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Brost Matthew <matthew.brost@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Signed-off-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_context_types.h |  8 +++++++
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  4 ++++
 drivers/gpu/drm/i915/gt/intel_engine_pm.c     | 23 +++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_engine_pm.h     |  2 ++
 drivers/gpu/drm/i915/gt/intel_engine_types.h  |  7 ++++++
 .../drm/i915/gt/intel_execlists_submission.c  |  2 ++
 .../gpu/drm/i915/gt/intel_ring_submission.c   |  3 +++
 drivers/gpu/drm/i915/gt/mock_engine.c         |  2 ++
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 12 +++++++---
 9 files changed, 60 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
index e54351a170e2..a63631ea0ec4 100644
--- a/drivers/gpu/drm/i915/gt/intel_context_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
@@ -152,6 +152,14 @@ struct intel_context {
 	/** sseu: Control eu/slice partitioning */
 	struct intel_sseu sseu;
 
+	/**
+	 * pinned_contexts_link: List link for the engine's pinned contexts.
+	 * This is only used if this is a perma-pinned kernel context and
+	 * the list is assumed to only be manipulated during driver load
+	 * or unload time so no mutex protection currently.
+	 */
+	struct list_head pinned_contexts_link;
+
 	u8 wa_bb_page; /* if set, page num reserved for context workarounds */
 
 	struct {
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 332efea696a5..c606a4714904 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -320,6 +320,7 @@ static int intel_engine_setup(struct intel_gt *gt, enum intel_engine_id id)
 
 	BUILD_BUG_ON(BITS_PER_TYPE(engine->mask) < I915_NUM_ENGINES);
 
+	INIT_LIST_HEAD(&engine->pinned_contexts_list);
 	engine->id = id;
 	engine->legacy_idx = INVALID_ENGINE;
 	engine->mask = BIT(id);
@@ -875,6 +876,8 @@ intel_engine_create_pinned_context(struct intel_engine_cs *engine,
 		return ERR_PTR(err);
 	}
 
+	list_add_tail(&ce->pinned_contexts_link, &engine->pinned_contexts_list);
+
 	/*
 	 * Give our perma-pinned kernel timelines a separate lockdep class,
 	 * so that we can use them from within the normal user timelines
@@ -897,6 +900,7 @@ void intel_engine_destroy_pinned_context(struct intel_context *ce)
 	list_del(&ce->timeline->engine_link);
 	mutex_unlock(&hwsp->vm->mutex);
 
+	list_del(&ce->pinned_contexts_link);
 	intel_context_unpin(ce);
 	intel_context_put(ce);
 }
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_pm.c b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
index 1f07ac4e0672..dacd62773735 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
@@ -298,6 +298,29 @@ void intel_engine_init__pm(struct intel_engine_cs *engine)
 	intel_engine_init_heartbeat(engine);
 }
 
+/**
+ * intel_engine_reset_pinned_contexts - Reset the pinned contexts of
+ * an engine.
+ * @engine: The engine whose pinned contexts we want to reset.
+ *
+ * Typically the pinned context LMEM images lose or get their content
+ * corrupted on suspend. This function resets their images.
+ */
+void intel_engine_reset_pinned_contexts(struct intel_engine_cs *engine)
+{
+	struct intel_context *ce;
+
+	list_for_each_entry(ce, &engine->pinned_contexts_list,
+			    pinned_contexts_link) {
+		/* kernel context gets reset at __engine_unpark() */
+		if (ce == engine->kernel_context)
+			continue;
+
+		dbg_poison_ce(ce);
+		ce->ops->reset(ce);
+	}
+}
+
 #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
 #include "selftest_engine_pm.c"
 #endif
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_pm.h b/drivers/gpu/drm/i915/gt/intel_engine_pm.h
index 70ea46d6cfb0..8520c595f5e1 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_pm.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_pm.h
@@ -69,4 +69,6 @@ intel_engine_create_kernel_request(struct intel_engine_cs *engine)
 
 void intel_engine_init__pm(struct intel_engine_cs *engine);
 
+void intel_engine_reset_pinned_contexts(struct intel_engine_cs *engine);
+
 #endif /* INTEL_ENGINE_PM_H */
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index bfbfe53c23dd..5ae1207c363b 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -307,6 +307,13 @@ struct intel_engine_cs {
 
 	struct intel_context *kernel_context; /* pinned */
 
+	/**
+	 * pinned_contexts_list: List of pinned contexts. This list is only
+	 * assumed to be manipulated during driver load- or unload time and
+	 * does therefore not have any additional protection.
+	 */
+	struct list_head pinned_contexts_list;
+
 	intel_engine_mask_t saturated; /* submitting semaphores too late? */
 
 	struct {
diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index de5f9c86b9a4..e80d6a1c7cde 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -2791,6 +2791,8 @@ static void execlists_sanitize(struct intel_engine_cs *engine)
 
 	/* And scrub the dirty cachelines for the HWSP */
 	clflush_cache_range(engine->status_page.addr, PAGE_SIZE);
+
+	intel_engine_reset_pinned_contexts(engine);
 }
 
 static void enable_error_interrupt(struct intel_engine_cs *engine)
diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index 3c65efcb7bed..593524195707 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -17,6 +17,7 @@
 #include "intel_ring.h"
 #include "shmem_utils.h"
 #include "intel_engine_heartbeat.h"
+#include "intel_engine_pm.h"
 
 /* Rough estimate of the typical request size, performing a flush,
  * set-context and then emitting the batch.
@@ -292,6 +293,8 @@ static void xcs_sanitize(struct intel_engine_cs *engine)
 
 	/* And scrub the dirty cachelines for the HWSP */
 	clflush_cache_range(engine->status_page.addr, PAGE_SIZE);
+
+	intel_engine_reset_pinned_contexts(engine);
 }
 
 static void reset_prepare(struct intel_engine_cs *engine)
diff --git a/drivers/gpu/drm/i915/gt/mock_engine.c b/drivers/gpu/drm/i915/gt/mock_engine.c
index 2c1af030310c..8b89215afe46 100644
--- a/drivers/gpu/drm/i915/gt/mock_engine.c
+++ b/drivers/gpu/drm/i915/gt/mock_engine.c
@@ -376,6 +376,8 @@ int mock_engine_init(struct intel_engine_cs *engine)
 {
 	struct intel_context *ce;
 
+	INIT_LIST_HEAD(&engine->pinned_contexts_list);
+
 	engine->sched_engine = i915_sched_engine_create(ENGINE_MOCK);
 	if (!engine->sched_engine)
 		return -ENOMEM;
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 87d8dc8f51b9..58bc50d3abe5 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -2310,6 +2310,8 @@ static void guc_sanitize(struct intel_engine_cs *engine)
 
 	/* And scrub the dirty cachelines for the HWSP */
 	clflush_cache_range(engine->status_page.addr, PAGE_SIZE);
+
+	intel_engine_reset_pinned_contexts(engine);
 }
 
 static void setup_hwsp(struct intel_engine_cs *engine)
@@ -2385,9 +2387,13 @@ static inline void guc_init_lrc_mapping(struct intel_guc *guc)
 	 * and even it did this code would be run again.
 	 */
 
-	for_each_engine(engine, gt, id)
-		if (engine->kernel_context)
-			guc_kernel_context_pin(guc, engine->kernel_context);
+	for_each_engine(engine, gt, id) {
+		struct intel_context *ce;
+
+		list_for_each_entry(ce, &engine->pinned_contexts_list,
+				    pinned_contexts_link)
+			guc_kernel_context_pin(guc, ce);
+	}
 }
 
 static void guc_release(struct intel_engine_cs *engine)
-- 
2.31.1

