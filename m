Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A4BE42E04C
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Oct 2021 19:46:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BB5F6E857;
	Thu, 14 Oct 2021 17:46:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 815556E1B6;
 Thu, 14 Oct 2021 17:46:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10137"; a="228030818"
X-IronPort-AV: E=Sophos;i="5.85,373,1624345200"; d="scan'208";a="228030818"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2021 10:25:03 -0700
X-IronPort-AV: E=Sophos;i="5.85,373,1624345200"; d="scan'208";a="481360430"
Received: from jons-linux-dev-box.fm.intel.com ([10.1.27.20])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2021 10:25:00 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>,
	<dri-devel@lists.freedesktop.org>
Cc: <john.c.harrison@intel.com>
Date: Thu, 14 Oct 2021 10:19:50 -0700
Message-Id: <20211014172005.27155-11-matthew.brost@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211014172005.27155-1-matthew.brost@intel.com>
References: <20211014172005.27155-1-matthew.brost@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 10/25] drm/i915/guc: Assign contexts in
 parent-child relationship consecutive guc_ids
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

Assign contexts in parent-child relationship consecutive guc_ids. This
is accomplished by partitioning guc_id space between ones that need to
be consecutive (1/16 available guc_ids) and ones that do not (15/16 of
available guc_ids). The consecutive search is implemented via the bitmap
API.

This is a precursor to the full GuC multi-lrc implementation but aligns
to how GuC mutli-lrc interface is defined - guc_ids must be consecutive
when using the GuC multi-lrc interface.

v2:
 (Daniel Vetter)
  - Explicitly state why we assign consecutive guc_ids
v3:
 (John Harrison)
  - Bring back in spin lock

Signed-off-by: Matthew Brost <matthew.brost@intel.com>
Reviewed-by: John Harrison <John.C.Harrison@Intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc.h        |   6 +-
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 104 ++++++++++++++----
 2 files changed, 86 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
index 74f071a0b6d5..4ca197f400ba 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
@@ -82,9 +82,13 @@ struct intel_guc {
 		 */
 		spinlock_t lock;
 		/**
-		 * @guc_ids: used to allocate new guc_ids
+		 * @guc_ids: used to allocate new guc_ids, single-lrc
 		 */
 		struct ida guc_ids;
+		/**
+		 * @guc_ids_bitmap: used to allocate new guc_ids, multi-lrc
+		 */
+		unsigned long *guc_ids_bitmap;
 		/**
 		 * @guc_id_list: list of intel_context with valid guc_ids but no
 		 * refs
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index fbcf2dc2b2de..7ba4f1d6f69c 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -128,6 +128,16 @@ guc_create_virtual(struct intel_engine_cs **siblings, unsigned int count);
 
 #define GUC_REQUEST_SIZE 64 /* bytes */
 
+/*
+ * We reserve 1/16 of the guc_ids for multi-lrc as these need to be contiguous
+ * per the GuC submission interface. A different allocation algorithm is used
+ * (bitmap vs. ida) between multi-lrc and single-lrc hence the reason to
+ * partition the guc_id space. We believe the number of multi-lrc contexts in
+ * use should be low and 1/16 should be sufficient. Minimum of 32 guc_ids for
+ * multi-lrc.
+ */
+#define NUMBER_MULTI_LRC_GUC_ID		(GUC_MAX_LRC_DESCRIPTORS / 16)
+
 /*
  * Below is a set of functions which control the GuC scheduling state which
  * require a lock.
@@ -1207,6 +1217,11 @@ int intel_guc_submission_init(struct intel_guc *guc)
 	INIT_WORK(&guc->submission_state.destroyed_worker,
 		  destroyed_worker_func);
 
+	guc->submission_state.guc_ids_bitmap =
+		bitmap_zalloc(NUMBER_MULTI_LRC_GUC_ID, GFP_KERNEL);
+	if (!guc->submission_state.guc_ids_bitmap)
+		return -ENOMEM;
+
 	return 0;
 }
 
@@ -1218,6 +1233,7 @@ void intel_guc_submission_fini(struct intel_guc *guc)
 	guc_flush_destroyed_contexts(guc);
 	guc_lrc_desc_pool_destroy(guc);
 	i915_sched_engine_put(guc->sched_engine);
+	bitmap_free(guc->submission_state.guc_ids_bitmap);
 }
 
 static inline void queue_request(struct i915_sched_engine *sched_engine,
@@ -1269,18 +1285,43 @@ static void guc_submit_request(struct i915_request *rq)
 	spin_unlock_irqrestore(&sched_engine->lock, flags);
 }
 
-static int new_guc_id(struct intel_guc *guc)
+static int new_guc_id(struct intel_guc *guc, struct intel_context *ce)
 {
-	return ida_simple_get(&guc->submission_state.guc_ids, 0,
-			      GUC_MAX_LRC_DESCRIPTORS, GFP_KERNEL |
-			      __GFP_RETRY_MAYFAIL | __GFP_NOWARN);
+	int ret;
+
+	GEM_BUG_ON(intel_context_is_child(ce));
+
+	if (intel_context_is_parent(ce))
+		ret = bitmap_find_free_region(guc->submission_state.guc_ids_bitmap,
+					      NUMBER_MULTI_LRC_GUC_ID,
+					      order_base_2(ce->parallel.number_children
+							   + 1));
+	else
+		ret = ida_simple_get(&guc->submission_state.guc_ids,
+				     NUMBER_MULTI_LRC_GUC_ID,
+				     GUC_MAX_LRC_DESCRIPTORS,
+				     GFP_KERNEL | __GFP_RETRY_MAYFAIL |
+				     __GFP_NOWARN);
+	if (unlikely(ret < 0))
+		return ret;
+
+	ce->guc_id.id = ret;
+	return 0;
 }
 
 static void __release_guc_id(struct intel_guc *guc, struct intel_context *ce)
 {
+	GEM_BUG_ON(intel_context_is_child(ce));
+
 	if (!context_guc_id_invalid(ce)) {
-		ida_simple_remove(&guc->submission_state.guc_ids,
-				  ce->guc_id.id);
+		if (intel_context_is_parent(ce))
+			bitmap_release_region(guc->submission_state.guc_ids_bitmap,
+					      ce->guc_id.id,
+					      order_base_2(ce->parallel.number_children
+							   + 1));
+		else
+			ida_simple_remove(&guc->submission_state.guc_ids,
+					  ce->guc_id.id);
 		reset_lrc_desc(guc, ce->guc_id.id);
 		set_context_guc_id_invalid(ce);
 	}
@@ -1297,49 +1338,64 @@ static void release_guc_id(struct intel_guc *guc, struct intel_context *ce)
 	spin_unlock_irqrestore(&guc->submission_state.lock, flags);
 }
 
-static int steal_guc_id(struct intel_guc *guc)
+static int steal_guc_id(struct intel_guc *guc, struct intel_context *ce)
 {
-	struct intel_context *ce;
-	int guc_id;
+	struct intel_context *cn;
 
 	lockdep_assert_held(&guc->submission_state.lock);
+	GEM_BUG_ON(intel_context_is_child(ce));
+	GEM_BUG_ON(intel_context_is_parent(ce));
 
 	if (!list_empty(&guc->submission_state.guc_id_list)) {
-		ce = list_first_entry(&guc->submission_state.guc_id_list,
+		cn = list_first_entry(&guc->submission_state.guc_id_list,
 				      struct intel_context,
 				      guc_id.link);
 
-		GEM_BUG_ON(atomic_read(&ce->guc_id.ref));
-		GEM_BUG_ON(context_guc_id_invalid(ce));
+		GEM_BUG_ON(atomic_read(&cn->guc_id.ref));
+		GEM_BUG_ON(context_guc_id_invalid(cn));
+		GEM_BUG_ON(intel_context_is_child(cn));
+		GEM_BUG_ON(intel_context_is_parent(cn));
 
-		list_del_init(&ce->guc_id.link);
-		guc_id = ce->guc_id.id;
+		list_del_init(&cn->guc_id.link);
+		ce->guc_id = cn->guc_id;
 
 		spin_lock(&ce->guc_state.lock);
-		clr_context_registered(ce);
+		clr_context_registered(cn);
 		spin_unlock(&ce->guc_state.lock);
 
-		set_context_guc_id_invalid(ce);
-		return guc_id;
+		set_context_guc_id_invalid(cn);
+
+		return 0;
 	} else {
 		return -EAGAIN;
 	}
 }
 
-static int assign_guc_id(struct intel_guc *guc, u16 *out)
+static int assign_guc_id(struct intel_guc *guc, struct intel_context *ce)
 {
 	int ret;
 
 	lockdep_assert_held(&guc->submission_state.lock);
+	GEM_BUG_ON(intel_context_is_child(ce));
 
-	ret = new_guc_id(guc);
+	ret = new_guc_id(guc, ce);
 	if (unlikely(ret < 0)) {
-		ret = steal_guc_id(guc);
+		if (intel_context_is_parent(ce))
+			return -ENOSPC;
+
+		ret = steal_guc_id(guc, ce);
 		if (ret < 0)
 			return ret;
 	}
 
-	*out = ret;
+	if (intel_context_is_parent(ce)) {
+		struct intel_context *child;
+		int i = 1;
+
+		for_each_child(ce, child)
+			child->guc_id.id = ce->guc_id.id + i++;
+	}
+
 	return 0;
 }
 
@@ -1357,7 +1413,7 @@ static int pin_guc_id(struct intel_guc *guc, struct intel_context *ce)
 	might_lock(&ce->guc_state.lock);
 
 	if (context_guc_id_invalid(ce)) {
-		ret = assign_guc_id(guc, &ce->guc_id.id);
+		ret = assign_guc_id(guc, ce);
 		if (ret)
 			goto out_unlock;
 		ret = 1;	/* Indidcates newly assigned guc_id */
@@ -1399,8 +1455,10 @@ static void unpin_guc_id(struct intel_guc *guc, struct intel_context *ce)
 	unsigned long flags;
 
 	GEM_BUG_ON(atomic_read(&ce->guc_id.ref) < 0);
+	GEM_BUG_ON(intel_context_is_child(ce));
 
-	if (unlikely(context_guc_id_invalid(ce)))
+	if (unlikely(context_guc_id_invalid(ce) ||
+		     intel_context_is_parent(ce)))
 		return;
 
 	spin_lock_irqsave(&guc->submission_state.lock, flags);
-- 
2.32.0

