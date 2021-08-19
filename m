Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 937033F136E
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Aug 2021 08:23:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4084D6E98E;
	Thu, 19 Aug 2021 06:22:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6ED806E949;
 Thu, 19 Aug 2021 06:21:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10080"; a="216220772"
X-IronPort-AV: E=Sophos;i="5.84,334,1620716400"; d="scan'208";a="216220772"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2021 23:21:55 -0700
X-IronPort-AV: E=Sophos;i="5.84,334,1620716400"; d="scan'208";a="511675191"
Received: from jons-linux-dev-box.fm.intel.com ([10.1.27.20])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2021 23:21:55 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>,
	<dri-devel@lists.freedesktop.org>
Cc: <daniel.vetter@ffwll.ch>
Date: Wed, 18 Aug 2021 23:16:38 -0700
Message-Id: <20210819061639.21051-27-matthew.brost@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210819061639.21051-1-matthew.brost@intel.com>
References: <20210819061639.21051-1-matthew.brost@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 26/27] drm/i915/guc: Add GuC kernel doc
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

Add GuC kernel doc for all structures added thus far for GuC submission
and update the main GuC submission section with the new interface
details.

v2:
 - Drop guc_active.lock DOC

Signed-off-by: Matthew Brost <matthew.brost@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_context_types.h | 44 ++++++---
 drivers/gpu/drm/i915/gt/uc/intel_guc.h        | 19 +++-
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 97 ++++++++++++++-----
 drivers/gpu/drm/i915/i915_request.h           | 18 ++--
 4 files changed, 128 insertions(+), 50 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
index 66286ce36c84..80bbdc7810f6 100644
--- a/drivers/gpu/drm/i915/gt/intel_context_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
@@ -156,40 +156,52 @@ struct intel_context {
 	u8 wa_bb_page; /* if set, page num reserved for context workarounds */
 
 	struct {
-		/** lock: protects everything in guc_state */
+		/** @lock: protects everything in guc_state */
 		spinlock_t lock;
 		/**
-		 * sched_state: scheduling state of this context using GuC
+		 * @sched_state: scheduling state of this context using GuC
 		 * submission
 		 */
 		u32 sched_state;
 		/*
-		 * fences: maintains of list of requests that have a submit
-		 * fence related to GuC submission
+		 * @fences: maintains a list of requests are currently being
+		 * fenced until a GuC operation completes
 		 */
 		struct list_head fences;
-		/* GuC context blocked fence */
+		/**
+		 * @blocked_fence: fence used to signal when the blocking of a
+		 * contexts submissions is complete.
+		 */
 		struct i915_sw_fence blocked_fence;
-		/* GuC committed requests */
+		/** @number_committed_requests: number of committed requests */
 		int number_committed_requests;
-		/** requests: active requests on this context */
+		/** @requests: list of active requests on this context */
 		struct list_head requests;
-		/*
-		 * GuC priority management
-		 */
+		/** @prio: the contexts current guc priority */
 		u8 prio;
+		/**
+		 * @prio_count: a counter of the number requests inflight in
+		 * each priority bucket
+		 */
 		u32 prio_count[GUC_CLIENT_PRIORITY_NUM];
 	} guc_state;
 
 	struct {
-		/* GuC LRC descriptor ID */
+		/**
+		 * @id: unique handle which is used to communicate information
+		 * with the GuC about this context, protected by
+		 * guc->contexts_lock
+		 */
 		u16 id;
-
-		/* GuC LRC descriptor reference count */
+		/**
+		 * @ref: the number of references to the guc_id, when
+		 * transitioning in and out of zero protected by
+		 * guc->contexts_lock
+		 */
 		atomic_t ref;
-
-		/*
-		 * GuC ID link - in list when unpinned but guc_id still valid in GuC
+		/**
+		 * @link: in guc->guc_id_list when the guc_id has no refs but is
+		 * still valid, protected by guc->contexts_lock
 		 */
 		struct list_head link;
 	} guc_id;
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
index 2e27fe59786b..112dd29a63fe 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
@@ -41,6 +41,10 @@ struct intel_guc {
 	spinlock_t irq_lock;
 	unsigned int msg_enabled_mask;
 
+	/**
+	 * @outstanding_submission_g2h: number of outstanding G2H related to GuC
+	 * submission, used to determine if the GT is idle
+	 */
 	atomic_t outstanding_submission_g2h;
 
 	struct {
@@ -49,12 +53,16 @@ struct intel_guc {
 		void (*disable)(struct intel_guc *guc);
 	} interrupts;
 
-	/*
-	 * contexts_lock protects the pool of free guc ids and a linked list of
-	 * guc ids available to be stolen
+	/**
+	 * @contexts_lock: protects guc_ids, guc_id_list, ce->guc_id.id, and
+	 * ce->guc_id.ref when transitioning in and out of zero
 	 */
 	spinlock_t contexts_lock;
+	/** @guc_ids: used to allocate new guc_ids */
 	struct ida guc_ids;
+	/**
+	 * @guc_id_list: list of intel_context with valid guc_ids but no refs
+	 */
 	struct list_head guc_id_list;
 
 	bool submission_supported;
@@ -70,7 +78,10 @@ struct intel_guc {
 	struct i915_vma *lrc_desc_pool;
 	void *lrc_desc_pool_vaddr;
 
-	/* guc_id to intel_context lookup */
+	/**
+	 * @context_lookup: used to resolve intel_context from guc_id, if a
+	 * context is present in this structure it is registered with the GuC
+	 */
 	struct xarray context_lookup;
 
 	/* Control params for fw initialization */
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 4b9a2f3774d5..7e0a32e729c2 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -28,21 +28,6 @@
 /**
  * DOC: GuC-based command submission
  *
- * IMPORTANT NOTE: GuC submission is currently not supported in i915. The GuC
- * firmware is moving to an updated submission interface and we plan to
- * turn submission back on when that lands. The below documentation (and related
- * code) matches the old submission model and will be updated as part of the
- * upgrade to the new flow.
- *
- * GuC stage descriptor:
- * During initialization, the driver allocates a static pool of 1024 such
- * descriptors, and shares them with the GuC. Currently, we only use one
- * descriptor. This stage descriptor lets the GuC know about the workqueue and
- * process descriptor. Theoretically, it also lets the GuC know about our HW
- * contexts (context ID, etc...), but we actually employ a kind of submission
- * where the GuC uses the LRCA sent via the work item instead. This is called
- * a "proxy" submission.
- *
  * The Scratch registers:
  * There are 16 MMIO-based registers start from 0xC180. The kernel driver writes
  * a value to the action register (SOFT_SCRATCH_0) along with any data. It then
@@ -51,14 +36,82 @@
  * processes the request. The kernel driver polls waiting for this update and
  * then proceeds.
  *
- * Work Items:
- * There are several types of work items that the host may place into a
- * workqueue, each with its own requirements and limitations. Currently only
- * WQ_TYPE_INORDER is needed to support legacy submission via GuC, which
- * represents in-order queue. The kernel driver packs ring tail pointer and an
- * ELSP context descriptor dword into Work Item.
- * See guc_add_request()
+ * Command Transport buffers (CTBs):
+ * Covered in detail in other sections but CTBs (host-to-guc, H2G, guc-to-host
+ * G2H) are a message interface between the i915 and GuC used to controls
+ * submissions.
+ *
+ * Context registration:
+ * Before a context can be submitted it must be registered with the GuC via a
+ * H2G. A unique guc_id is associated with each context. The context is either
+ * registered at request creation time (normal operation) or at submission time
+ * (abnormal operation, e.g. after a reset).
+ *
+ * Context submission:
+ * The i915 updates the LRC tail value in memory. Either a schedule enable H2G
+ * or context submit H2G is used to submit a context.
+ *
+ * Context unpin:
+ * To unpin a context a H2G is used to disable scheduling and when the
+ * corresponding G2H returns indicating the scheduling disable operation has
+ * completed it is safe to unpin the context. While a disable is in flight it
+ * isn't safe to resubmit the context so a fence is used to stall all future
+ * requests until the G2H is returned.
+ *
+ * Context deregistration:
+ * Before a context can be destroyed or we steal its guc_id we must deregister
+ * the context with the GuC via H2G. If stealing the guc_id it isn't safe to
+ * submit anything to this guc_id until the deregister completes so a fence is
+ * used to stall all requests associated with this guc_ids until the
+ * corresponding G2H returns indicating the guc_id has been deregistered.
+ *
+ * guc_ids:
+ * Unique number associated with private GuC context data passed in during
+ * context registration / submission / deregistration. 64k available. Simple ida
+ * is used for allocation.
+ *
+ * Stealing guc_ids:
+ * If no guc_ids are available they can be stolen from another context at
+ * request creation time if that context is unpinned. If a guc_id can't be found
+ * we punt this problem to the user as we believe this is near impossible to hit
+ * during normal use cases.
+ *
+ * Locking:
+ * In the GuC submission code we have 3 basic spin locks which protect
+ * everything. Details about each below.
+ *
+ * sched_engine->lock
+ * This is the submission lock for all contexts that share a i915 schedule
+ * engine (sched_engine), thus only 1 context which share a sched_engine can be
+ * submitting at a time. Currently only 1 sched_engine used for all of GuC
+ * submission but that could change in the future.
+ *
+ * guc->contexts_lock
+ * Protects guc_id allocation. Global lock i.e. Only 1 context that uses GuC
+ * submission can hold this at a time.
+ *
+ * ce->guc_state.lock
+ * Protects everything under ce->guc_state. Ensures that a context is in the
+ * correct state before issuing a H2G. e.g. We don't issue a schedule disable
+ * on disabled context (bad idea), we don't issue schedule enable when a
+ * schedule disable is inflight, etc... Also protects list of inflight requests
+ * on the context and the priority management state. Lock individual to each
+ * context.
+ *
+ * Lock ordering rules:
+ * sched_engine->lock -> ce->guc_state.lock
+ * guc->contexts_lock -> ce->guc_state.lock
  *
+ * Reset races:
+ * When a GPU full reset is triggered it is assumed that some G2H responses to
+ * a H2G can be lost as the GuC is likely toast. Losing these G2H can prove to
+ * fatal as we do certain operations upon receiving a G2H (e.g. destroy
+ * contexts, release guc_ids, etc...). Luckly when this occurs we can scrub
+ * context state and cleanup appropriately, however this is quite racey. To
+ * avoid races the rules are check for submission being disabled (i.e. check for
+ * mid reset) with the appropriate lock being held. If submission is disabled
+ * don't send the H2G or update the context state. The reset code must disable
+ * submission and grab all these locks before scrubbing for the missing G2H.
  */
 
 /* GuC Virtual Engine */
diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
index d818cfbfc41d..177eaf55adff 100644
--- a/drivers/gpu/drm/i915/i915_request.h
+++ b/drivers/gpu/drm/i915/i915_request.h
@@ -290,18 +290,20 @@ struct i915_request {
 		struct hrtimer timer;
 	} watchdog;
 
-	/*
-	 * Requests may need to be stalled when using GuC submission waiting for
-	 * certain GuC operations to complete. If that is the case, stalled
-	 * requests are added to a per context list of stalled requests. The
-	 * below list_head is the link in that list.
+	/**
+	 * @guc_fence_link: Requests may need to be stalled when using GuC
+	 * submission waiting for certain GuC operations to complete. If that is
+	 * the case, stalled requests are added to a per context list of stalled
+	 * requests. The below list_head is the link in that list. Protected by
+	 * ce->guc_state.lock.
 	 */
 	struct list_head guc_fence_link;
 
 	/**
-	 * Priority level while the request is inflight. Differs from i915
-	 * scheduler priority. See comment above
-	 * I915_SCHEDULER_CAP_STATIC_PRIORITY_MAP for details.
+	 * @guc_prio: Priority level while the request is inflight. Differs from
+	 * i915 scheduler priority. See comment above
+	 * I915_SCHEDULER_CAP_STATIC_PRIORITY_MAP for details. Protected by
+	 * ce->guc_active.lock.
 	 */
 #define	GUC_PRIO_INIT	0xff
 #define	GUC_PRIO_FINI	0xfe
-- 
2.32.0

