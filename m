Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2DC1400649
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Sep 2021 22:01:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56F096E8D6;
	Fri,  3 Sep 2021 20:01:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87BBE6E8D5;
 Fri,  3 Sep 2021 20:01:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10096"; a="280519160"
X-IronPort-AV: E=Sophos;i="5.85,266,1624345200"; d="scan'208";a="280519160"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2021 13:01:35 -0700
X-IronPort-AV: E=Sophos;i="5.85,266,1624345200"; d="scan'208";a="689961797"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2021 13:01:35 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org, John.C.Harrison@Intel.com,
 matthew.brost@intel.com
Date: Fri,  3 Sep 2021 12:59:17 -0700
Message-Id: <20210903195917.746244-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210902005022.711767-26-daniele.ceraolospurio@intel.com>
References: <20210902005022.711767-26-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 25/25] drm/i915/guc: Add GuC kernel doc
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

From: Matthew Brost <matthew.brost@intel.com>

Add GuC kernel doc for all structures added thus far for GuC submission
and update the main GuC submission section with the new interface
details.

v2:
 - Drop guc_active.lock DOC
v3:
 - Fixup a few kernel doc comments (Daniele)
v4 (Daniele):
 - Implement doc suggestions from John
 - Add kerneldoc for all members of the GuC structure and pull the file
   in i915.rst
v5 (Daniele):
 - Implement new doc suggestions from John

Signed-off-by: Matthew Brost <matthew.brost@intel.com>
Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: John Harrison <John.C.Harrison@Intel.com>
---
 Documentation/gpu/i915.rst                    |   2 +
 drivers/gpu/drm/i915/gt/intel_context_types.h |  43 +++++---
 drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  75 ++++++++++---
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 100 ++++++++++++++----
 drivers/gpu/drm/i915/i915_request.h           |  21 ++--
 5 files changed, 181 insertions(+), 60 deletions(-)

diff --git a/Documentation/gpu/i915.rst b/Documentation/gpu/i915.rst
index 101dde3eb1ea..311e10400708 100644
--- a/Documentation/gpu/i915.rst
+++ b/Documentation/gpu/i915.rst
@@ -495,6 +495,8 @@ GuC
 .. kernel-doc:: drivers/gpu/drm/i915/gt/uc/intel_guc.c
    :doc: GuC
 
+.. kernel-doc:: drivers/gpu/drm/i915/gt/uc/intel_guc.h
+
 GuC Firmware Layout
 ~~~~~~~~~~~~~~~~~~~
 
diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
index 5285d660eacf..930569a1a01f 100644
--- a/drivers/gpu/drm/i915/gt/intel_context_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
@@ -156,40 +156,51 @@ struct intel_context {
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
+		 * @fences: maintains a list of requests that are currently
+		 * being fenced until a GuC operation completes
 		 */
 		struct list_head fences;
-		/* GuC context blocked fence */
+		/**
+		 * @blocked: fence used to signal when the blocking of a
+		 * context's submissions is complete.
+		 */
 		struct i915_sw_fence blocked;
-		/* GuC committed requests */
+		/** @number_committed_requests: number of committed requests */
 		int number_committed_requests;
-		/** requests: active requests on this context */
+		/** @requests: list of active requests on this context */
 		struct list_head requests;
-		/*
-		 * GuC priority management
-		 */
+		/** @prio: the context's current guc priority */
 		u8 prio;
+		/**
+		 * @prio_count: a counter of the number requests in flight in
+		 * each priority bucket
+		 */
 		u32 prio_count[GUC_CLIENT_PRIORITY_NUM];
 	} guc_state;
 
 	struct {
-		/* GuC LRC descriptor ID */
+		/**
+		 * @id: handle which is used to uniquely identify this context
+		 * with the GuC, protected by guc->contexts_lock
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
index 2e27fe59786b..5dd174babf7a 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
@@ -22,74 +22,121 @@
 
 struct __guc_ads_blob;
 
-/*
- * Top level structure of GuC. It handles firmware loading and manages client
- * pool. intel_guc owns a intel_guc_client to replace the legacy ExecList
- * submission.
+/**
+ * struct intel_guc - Top level structure of GuC.
+ *
+ * It handles firmware loading and manages client pool. intel_guc owns an
+ * i915_sched_engine for submission.
  */
 struct intel_guc {
+	/** @fw: the GuC firmware */
 	struct intel_uc_fw fw;
+	/** @log: sub-structure containing GuC log related data and objects */
 	struct intel_guc_log log;
+	/** @ct: the command transport communication channel */
 	struct intel_guc_ct ct;
+	/** @slpc: sub-structure containing SLPC related data and objects */
 	struct intel_guc_slpc slpc;
 
-	/* Global engine used to submit requests to GuC */
+	/** @sched_engine: Global engine used to submit requests to GuC */
 	struct i915_sched_engine *sched_engine;
+	/**
+	 * @stalled_request: if GuC can't process a request for any reason, we
+	 * save it until GuC restarts processing. No other request can be
+	 * submitted until the stalled request is processed.
+	 */
 	struct i915_request *stalled_request;
 
 	/* intel_guc_recv interrupt related state */
+	/** @irq_lock: protects GuC irq state */
 	spinlock_t irq_lock;
+	/**
+	 * @msg_enabled_mask: mask of events that are processed when receiving
+	 * an INTEL_GUC_ACTION_DEFAULT G2H message.
+	 */
 	unsigned int msg_enabled_mask;
 
+	/**
+	 * @outstanding_submission_g2h: number of outstanding GuC to Host
+	 * responses related to GuC submission, used to determine if the GT is
+	 * idle
+	 */
 	atomic_t outstanding_submission_g2h;
 
+	/** @interrupts: pointers to GuC interrupt-managing functions. */
 	struct {
 		void (*reset)(struct intel_guc *guc);
 		void (*enable)(struct intel_guc *guc);
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
+	/** @guc_ids: used to allocate unique ce->guc_id.id values */
 	struct ida guc_ids;
+	/**
+	 * @guc_id_list: list of intel_context with valid guc_ids but no refs
+	 */
 	struct list_head guc_id_list;
 
+	/**
+	 * @submission_supported: tracks whether we support GuC submission on
+	 * the current platform
+	 */
 	bool submission_supported;
+	/** @submission_selected: tracks whether the user enabled GuC submission */
 	bool submission_selected;
+	/**
+	 * @rc_supported: tracks whether we support GuC rc on the current platform
+	 */
 	bool rc_supported;
+	/** @rc_selected: tracks whether the user enabled GuC rc */
 	bool rc_selected;
 
+	/** @ads_vma: object allocated to hold the GuC ADS */
 	struct i915_vma *ads_vma;
+	/** @ads_blob: contents of the GuC ADS */
 	struct __guc_ads_blob *ads_blob;
+	/** @ads_regset_size: size of the save/restore regsets in the ADS */
 	u32 ads_regset_size;
+	/** @ads_golden_ctxt_size: size of the golden contexts in the ADS */
 	u32 ads_golden_ctxt_size;
 
+	/** @lrc_desc_pool: object allocated to hold the GuC LRC descriptor pool */
 	struct i915_vma *lrc_desc_pool;
+	/** @lrc_desc_pool_vaddr: contents of the GuC LRC descriptor pool */
 	void *lrc_desc_pool_vaddr;
 
-	/* guc_id to intel_context lookup */
+	/**
+	 * @context_lookup: used to resolve intel_context from guc_id, if a
+	 * context is present in this structure it is registered with the GuC
+	 */
 	struct xarray context_lookup;
 
-	/* Control params for fw initialization */
+	/** @params: Control params for fw initialization */
 	u32 params[GUC_CTL_MAX_DWORDS];
 
-	/* GuC's FW specific registers used in MMIO send */
+	/** @send_regs: GuC's FW specific registers used for sending MMIO H2G */
 	struct {
 		u32 base;
 		unsigned int count;
 		enum forcewake_domains fw_domains;
 	} send_regs;
 
-	/* register used to send interrupts to the GuC FW */
+	/** @notify_reg: register used to send interrupts to the GuC FW */
 	i915_reg_t notify_reg;
 
-	/* Store msg (e.g. log flush) that we see while CTBs are disabled */
+	/**
+	 * @mmio_msg: notification bitmask that the GuC writes in one of its
+	 * registers when the CT channel is disabled, to be processed when the
+	 * channel is back up.
+	 */
 	u32 mmio_msg;
 
-	/* To serialize the intel_guc_send actions */
+	/** @send_mutex: used to serialize the intel_guc_send actions */
 	struct mutex send_mutex;
 };
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 6a894c3b7925..6997078ae1ac 100644
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
@@ -51,14 +36,85 @@
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
+ * Covered in detail in other sections but CTBs (Host to GuC - H2G, GuC to Host
+ * - G2H) are a message interface between the i915 and GuC.
+ *
+ * Context registration:
+ * Before a context can be submitted it must be registered with the GuC via a
+ * H2G. A unique guc_id is associated with each context. The context is either
+ * registered at request creation time (normal operation) or at submission time
+ * (abnormal operation, e.g. after a reset).
+ *
+ * Context submission:
+ * The i915 updates the LRC tail value in memory. The i915 must enable the
+ * scheduling of the context within the GuC for the GuC to actually consider it.
+ * Therefore, the first time a disabled context is submitted we use a schedule
+ * enable H2G, while follow up submissions are done via the context submit H2G,
+ * which informs the GuC that a previously enabled context has new work
+ * available.
+ *
+ * Context unpin:
+ * To unpin a context a H2G is used to disable scheduling. When the
+ * corresponding G2H returns indicating the scheduling disable operation has
+ * completed it is safe to unpin the context. While a disable is in flight it
+ * isn't safe to resubmit the context so a fence is used to stall all future
+ * requests of that context until the G2H is returned.
+ *
+ * Context deregistration:
+ * Before a context can be destroyed or if we steal its guc_id we must
+ * deregister the context with the GuC via H2G. If stealing the guc_id it isn't
+ * safe to submit anything to this guc_id until the deregister completes so a
+ * fence is used to stall all requests associated with this guc_id until the
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
+ * This is the submission lock for all contexts that share an i915 schedule
+ * engine (sched_engine), thus only one of the contexts which share a
+ * sched_engine can be submitting at a time. Currently only one sched_engine is
+ * used for all of GuC submission but that could change in the future.
+ *
+ * guc->contexts_lock
+ * Protects guc_id allocation for the given GuC, i.e. only one context can be
+ * doing guc_id allocation operations at a time for each GuC in the system.
+ *
+ * ce->guc_state.lock
+ * Protects everything under ce->guc_state. Ensures that a context is in the
+ * correct state before issuing a H2G. e.g. We don't issue a schedule disable
+ * on a disabled context (bad idea), we don't issue a schedule enable when a
+ * schedule disable is in flight, etc... Also protects list of inflight requests
+ * on the context and the priority management state. Lock is individual to each
+ * context.
+ *
+ * Lock ordering rules:
+ * sched_engine->lock -> ce->guc_state.lock
+ * guc->contexts_lock -> ce->guc_state.lock
  *
+ * Reset races:
+ * When a full GT reset is triggered it is assumed that some G2H responses to
+ * H2Gs can be lost as the GuC is also reset. Losing these G2H can prove to be
+ * fatal as we do certain operations upon receiving a G2H (e.g. destroy
+ * contexts, release guc_ids, etc...). When this occurs we can scrub the
+ * context state and cleanup appropriately, however this is quite racey.
+ * To avoid races, the reset code must disable submission before scrubbing for
+ * the missing G2H, while the submission code must check for submission being
+ * disabled and skip sending H2Gs and updating context states when it is. Both
+ * sides must also make sure to hold the relevant locks.
  */
 
 /* GuC Virtual Engine */
diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
index d818cfbfc41d..7bd9ed20623e 100644
--- a/drivers/gpu/drm/i915/i915_request.h
+++ b/drivers/gpu/drm/i915/i915_request.h
@@ -290,18 +290,23 @@ struct i915_request {
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
+	 * @guc_prio: Priority level while the request is in flight. Differs
+	 * from i915 scheduler priority. See comment above
+	 * I915_SCHEDULER_CAP_STATIC_PRIORITY_MAP for details. Protected by
+	 * ce->guc_active.lock. Two special values (GUC_PRIO_INIT and
+	 * GUC_PRIO_FINI) outside the GuC priority range are used to indicate
+	 * if the priority has not been initialized yet or if no more updates
+	 * are possible because the request has completed.
 	 */
 #define	GUC_PRIO_INIT	0xff
 #define	GUC_PRIO_FINI	0xfe
-- 
2.25.1

