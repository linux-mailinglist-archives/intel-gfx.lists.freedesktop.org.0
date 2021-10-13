Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E450342CC38
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Oct 2021 22:56:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A7526EB72;
	Wed, 13 Oct 2021 20:56:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1AC06EB6B;
 Wed, 13 Oct 2021 20:55:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10136"; a="214690372"
X-IronPort-AV: E=Sophos;i="5.85,371,1624345200"; d="scan'208";a="214690372"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2021 13:47:19 -0700
X-IronPort-AV: E=Sophos;i="5.85,371,1624345200"; d="scan'208";a="524782681"
Received: from jons-linux-dev-box.fm.intel.com ([10.1.27.20])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2021 13:47:18 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>,
	<dri-devel@lists.freedesktop.org>
Cc: <john.c.harrison@intel.com>
Date: Wed, 13 Oct 2021 13:42:07 -0700
Message-Id: <20211013204231.19287-2-matthew.brost@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211013204231.19287-1-matthew.brost@intel.com>
References: <20211013204231.19287-1-matthew.brost@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 01/25] drm/i915/guc: Move GuC guc_id allocation
 under submission state sub-struct
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

Move guc_id allocation under submission state sub-struct as a future
patch will reuse the spin lock as a global submission state lock. Moving
this into sub-struct makes ownership of fields / lock clear.

v2:
 (Docs)
  - Add comment for submission_state sub-structure
v3:
 (John Harrison)
  - Fixup a few comments

Signed-off-by: Matthew Brost <matthew.brost@intel.com>
Reviewed-by: John Harrison <John.C.Harrison@Intel.com>
---
 drivers/gpu/drm/i915/gt/intel_context_types.h |  6 +--
 drivers/gpu/drm/i915/gt/uc/intel_guc.h        | 28 +++++++----
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 48 ++++++++++---------
 3 files changed, 47 insertions(+), 35 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
index 12252c411159..e7e3984aab78 100644
--- a/drivers/gpu/drm/i915/gt/intel_context_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
@@ -197,18 +197,18 @@ struct intel_context {
 	struct {
 		/**
 		 * @id: handle which is used to uniquely identify this context
-		 * with the GuC, protected by guc->contexts_lock
+		 * with the GuC, protected by guc->submission_state.lock
 		 */
 		u16 id;
 		/**
 		 * @ref: the number of references to the guc_id, when
 		 * transitioning in and out of zero protected by
-		 * guc->contexts_lock
+		 * guc->submission_state.lock
 		 */
 		atomic_t ref;
 		/**
 		 * @link: in guc->guc_id_list when the guc_id has no refs but is
-		 * still valid, protected by guc->contexts_lock
+		 * still valid, protected by guc->submission_state.lock
 		 */
 		struct list_head link;
 	} guc_id;
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
index 5dd174babf7a..82e248c2290c 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
@@ -71,16 +71,26 @@ struct intel_guc {
 	} interrupts;
 
 	/**
-	 * @contexts_lock: protects guc_ids, guc_id_list, ce->guc_id.id, and
-	 * ce->guc_id.ref when transitioning in and out of zero
+	 * @submission_state: sub-structure for submission state protected by
+	 * single lock
 	 */
-	spinlock_t contexts_lock;
-	/** @guc_ids: used to allocate unique ce->guc_id.id values */
-	struct ida guc_ids;
-	/**
-	 * @guc_id_list: list of intel_context with valid guc_ids but no refs
-	 */
-	struct list_head guc_id_list;
+	struct {
+		/**
+		 * @lock: protects everything in submission_state,
+		 * ce->guc_id.id, and ce->guc_id.ref when transitioning in and
+		 * out of zero
+		 */
+		spinlock_t lock;
+		/**
+		 * @guc_ids: used to allocate new guc_ids
+		 */
+		struct ida guc_ids;
+		/**
+		 * @guc_id_list: list of intel_context with valid guc_ids but no
+		 * refs
+		 */
+		struct list_head guc_id_list;
+	} submission_state;
 
 	/**
 	 * @submission_supported: tracks whether we support GuC submission on
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index ba0de35f6323..b2646b088c7f 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -68,14 +68,14 @@
  * fence is used to stall all requests associated with this guc_id until the
  * corresponding G2H returns indicating the guc_id has been deregistered.
  *
- * guc_ids:
+ * submission_state.guc_ids:
  * Unique number associated with private GuC context data passed in during
  * context registration / submission / deregistration. 64k available. Simple ida
  * is used for allocation.
  *
  * Stealing guc_ids:
  * If no guc_ids are available they can be stolen from another context at
- * request creation time if that context is unpinned. If a guc_id can't be found
+ * request creation time if that context is unpinned. If a guc_id an't be found
  * we punt this problem to the user as we believe this is near impossible to hit
  * during normal use cases.
  *
@@ -89,7 +89,7 @@
  * sched_engine can be submitting at a time. Currently only one sched_engine is
  * used for all of GuC submission but that could change in the future.
  *
- * guc->contexts_lock
+ * guc->submission_state.lock
  * Protects guc_id allocation for the given GuC, i.e. only one context can be
  * doing guc_id allocation operations at a time for each GuC in the system.
  *
@@ -103,7 +103,7 @@
  *
  * Lock ordering rules:
  * sched_engine->lock -> ce->guc_state.lock
- * guc->contexts_lock -> ce->guc_state.lock
+ * guc->submission_state.lock -> ce->guc_state.lock
  *
  * Reset races:
  * When a full GT reset is triggered it is assumed that some G2H responses to
@@ -1148,9 +1148,9 @@ int intel_guc_submission_init(struct intel_guc *guc)
 
 	xa_init_flags(&guc->context_lookup, XA_FLAGS_LOCK_IRQ);
 
-	spin_lock_init(&guc->contexts_lock);
-	INIT_LIST_HEAD(&guc->guc_id_list);
-	ida_init(&guc->guc_ids);
+	spin_lock_init(&guc->submission_state.lock);
+	INIT_LIST_HEAD(&guc->submission_state.guc_id_list);
+	ida_init(&guc->submission_state.guc_ids);
 
 	return 0;
 }
@@ -1215,7 +1215,7 @@ static void guc_submit_request(struct i915_request *rq)
 
 static int new_guc_id(struct intel_guc *guc)
 {
-	return ida_simple_get(&guc->guc_ids, 0,
+	return ida_simple_get(&guc->submission_state.guc_ids, 0,
 			      GUC_MAX_LRC_DESCRIPTORS, GFP_KERNEL |
 			      __GFP_RETRY_MAYFAIL | __GFP_NOWARN);
 }
@@ -1223,7 +1223,8 @@ static int new_guc_id(struct intel_guc *guc)
 static void __release_guc_id(struct intel_guc *guc, struct intel_context *ce)
 {
 	if (!context_guc_id_invalid(ce)) {
-		ida_simple_remove(&guc->guc_ids, ce->guc_id.id);
+		ida_simple_remove(&guc->submission_state.guc_ids,
+				  ce->guc_id.id);
 		reset_lrc_desc(guc, ce->guc_id.id);
 		set_context_guc_id_invalid(ce);
 	}
@@ -1235,9 +1236,9 @@ static void release_guc_id(struct intel_guc *guc, struct intel_context *ce)
 {
 	unsigned long flags;
 
-	spin_lock_irqsave(&guc->contexts_lock, flags);
+	spin_lock_irqsave(&guc->submission_state.lock, flags);
 	__release_guc_id(guc, ce);
-	spin_unlock_irqrestore(&guc->contexts_lock, flags);
+	spin_unlock_irqrestore(&guc->submission_state.lock, flags);
 }
 
 static int steal_guc_id(struct intel_guc *guc)
@@ -1245,10 +1246,10 @@ static int steal_guc_id(struct intel_guc *guc)
 	struct intel_context *ce;
 	int guc_id;
 
-	lockdep_assert_held(&guc->contexts_lock);
+	lockdep_assert_held(&guc->submission_state.lock);
 
-	if (!list_empty(&guc->guc_id_list)) {
-		ce = list_first_entry(&guc->guc_id_list,
+	if (!list_empty(&guc->submission_state.guc_id_list)) {
+		ce = list_first_entry(&guc->submission_state.guc_id_list,
 				      struct intel_context,
 				      guc_id.link);
 
@@ -1273,7 +1274,7 @@ static int assign_guc_id(struct intel_guc *guc, u16 *out)
 {
 	int ret;
 
-	lockdep_assert_held(&guc->contexts_lock);
+	lockdep_assert_held(&guc->submission_state.lock);
 
 	ret = new_guc_id(guc);
 	if (unlikely(ret < 0)) {
@@ -1295,7 +1296,7 @@ static int pin_guc_id(struct intel_guc *guc, struct intel_context *ce)
 	GEM_BUG_ON(atomic_read(&ce->guc_id.ref));
 
 try_again:
-	spin_lock_irqsave(&guc->contexts_lock, flags);
+	spin_lock_irqsave(&guc->submission_state.lock, flags);
 
 	might_lock(&ce->guc_state.lock);
 
@@ -1310,7 +1311,7 @@ static int pin_guc_id(struct intel_guc *guc, struct intel_context *ce)
 	atomic_inc(&ce->guc_id.ref);
 
 out_unlock:
-	spin_unlock_irqrestore(&guc->contexts_lock, flags);
+	spin_unlock_irqrestore(&guc->submission_state.lock, flags);
 
 	/*
 	 * -EAGAIN indicates no guc_id are available, let's retire any
@@ -1346,11 +1347,12 @@ static void unpin_guc_id(struct intel_guc *guc, struct intel_context *ce)
 	if (unlikely(context_guc_id_invalid(ce)))
 		return;
 
-	spin_lock_irqsave(&guc->contexts_lock, flags);
+	spin_lock_irqsave(&guc->submission_state.lock, flags);
 	if (!context_guc_id_invalid(ce) && list_empty(&ce->guc_id.link) &&
 	    !atomic_read(&ce->guc_id.ref))
-		list_add_tail(&ce->guc_id.link, &guc->guc_id_list);
-	spin_unlock_irqrestore(&guc->contexts_lock, flags);
+		list_add_tail(&ce->guc_id.link,
+			      &guc->submission_state.guc_id_list);
+	spin_unlock_irqrestore(&guc->submission_state.lock, flags);
 }
 
 static int __guc_action_register_context(struct intel_guc *guc,
@@ -1921,16 +1923,16 @@ static void guc_context_destroy(struct kref *kref)
 	 * returns indicating this context has been deregistered the guc_id is
 	 * returned to the pool of available guc_id.
 	 */
-	spin_lock_irqsave(&guc->contexts_lock, flags);
+	spin_lock_irqsave(&guc->submission_state.lock, flags);
 	if (context_guc_id_invalid(ce)) {
-		spin_unlock_irqrestore(&guc->contexts_lock, flags);
+		spin_unlock_irqrestore(&guc->submission_state.lock, flags);
 		__guc_context_destroy(ce);
 		return;
 	}
 
 	if (!list_empty(&ce->guc_id.link))
 		list_del_init(&ce->guc_id.link);
-	spin_unlock_irqrestore(&guc->contexts_lock, flags);
+	spin_unlock_irqrestore(&guc->submission_state.lock, flags);
 
 	/* Seal race with Reset */
 	spin_lock_irqsave(&ce->guc_state.lock, flags);
-- 
2.32.0

