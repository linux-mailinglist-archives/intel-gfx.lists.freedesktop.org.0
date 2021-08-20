Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE8D53F36C8
	for <lists+intel-gfx@lfdr.de>; Sat, 21 Aug 2021 00:50:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B15A6EB31;
	Fri, 20 Aug 2021 22:50:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92BE56EB33;
 Fri, 20 Aug 2021 22:50:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10082"; a="216580042"
X-IronPort-AV: E=Sophos;i="5.84,338,1620716400"; d="scan'208";a="216580042"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2021 15:50:02 -0700
X-IronPort-AV: E=Sophos;i="5.84,338,1620716400"; d="scan'208";a="513098595"
Received: from jons-linux-dev-box.fm.intel.com ([10.1.27.20])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2021 15:50:02 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>,
	<dri-devel@lists.freedesktop.org>
Cc: <daniel.vetter@ffwll.ch>,
	<tony.ye@intel.com>,
	<zhengguo.xu@intel.com>
Date: Fri, 20 Aug 2021 15:44:31 -0700
Message-Id: <20210820224446.30620-13-matthew.brost@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210820224446.30620-1-matthew.brost@intel.com>
References: <20210820224446.30620-1-matthew.brost@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 12/27] drm/i915/guc: Add multi-lrc context
 registration
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

Add multi-lrc context registration H2G. In addition a workqueue and
process descriptor are setup during multi-lrc context registration as
these data structures are needed for multi-lrc submission.

Signed-off-by: Matthew Brost <matthew.brost@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_context_types.h |  12 ++
 drivers/gpu/drm/i915/gt/intel_lrc.c           |   5 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h   |   2 +-
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 109 +++++++++++++++++-
 4 files changed, 126 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
index 0fafc178cf2c..6f567ebeb039 100644
--- a/drivers/gpu/drm/i915/gt/intel_context_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
@@ -232,8 +232,20 @@ struct intel_context {
 		/** @parent: pointer to parent if child */
 		struct intel_context *parent;
 
+
+		/** @guc_wqi_head: head pointer in work queue */
+		u16 guc_wqi_head;
+		/** @guc_wqi_tail: tail pointer in work queue */
+		u16 guc_wqi_tail;
+
 		/** @guc_number_children: number of children if parent */
 		u8 guc_number_children;
+
+		/**
+		 * @parent_page: page in context used by parent for work queue,
+		 * work queue descriptor
+		 */
+		u8 parent_page;
 	};
 
 #ifdef CONFIG_DRM_I915_SELFTEST
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index bb4af4977920..0ddbad4e062a 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -861,6 +861,11 @@ __lrc_alloc_state(struct intel_context *ce, struct intel_engine_cs *engine)
 		context_size += PAGE_SIZE;
 	}
 
+	if (intel_context_is_parent(ce)) {
+		ce->parent_page = context_size / PAGE_SIZE;
+		context_size += PAGE_SIZE;
+	}
+
 	obj = i915_gem_object_create_lmem(engine->i915, context_size, 0);
 	if (IS_ERR(obj))
 		obj = i915_gem_object_create_shmem(engine->i915, context_size);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
index fa4be13c8854..0e600a3b8f1e 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
@@ -52,7 +52,7 @@
 
 #define GUC_DOORBELL_INVALID		256
 
-#define GUC_WQ_SIZE			(PAGE_SIZE * 2)
+#define GUC_WQ_SIZE			(PAGE_SIZE / 2)
 
 /* Work queue item header definitions */
 #define WQ_STATUS_ACTIVE		1
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 14b24298cdd7..dbcb9ab28a9a 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -340,6 +340,39 @@ static struct i915_priolist *to_priolist(struct rb_node *rb)
 	return rb_entry(rb, struct i915_priolist, node);
 }
 
+/*
+ * When using multi-lrc submission an extra page in the context state is
+ * reserved for the process descriptor and work queue.
+ *
+ * The layout of this page is below:
+ * 0						guc_process_desc
+ * ...						unused
+ * PAGE_SIZE / 2				work queue start
+ * ...						work queue
+ * PAGE_SIZE - 1				work queue end
+ */
+#define WQ_OFFSET	(PAGE_SIZE / 2)
+static u32 __get_process_desc_offset(struct intel_context *ce)
+{
+	GEM_BUG_ON(!ce->parent_page);
+
+	return ce->parent_page * PAGE_SIZE;
+}
+
+static u32 __get_wq_offset(struct intel_context *ce)
+{
+	return __get_process_desc_offset(ce) + WQ_OFFSET;
+}
+
+static struct guc_process_desc *
+__get_process_desc(struct intel_context *ce)
+{
+	return (struct guc_process_desc *)
+		(ce->lrc_reg_state +
+		 ((__get_process_desc_offset(ce) -
+		   LRC_STATE_OFFSET) / sizeof(u32)));
+}
+
 static struct guc_lrc_desc *__get_lrc_desc(struct intel_guc *guc, u32 index)
 {
 	struct guc_lrc_desc *base = guc->lrc_desc_pool_vaddr;
@@ -1342,6 +1375,30 @@ static void unpin_guc_id(struct intel_guc *guc, struct intel_context *ce)
 	spin_unlock_irqrestore(&guc->submission_state.lock, flags);
 }
 
+static int __guc_action_register_multi_lrc(struct intel_guc *guc,
+					   struct intel_context *ce,
+					   u32 guc_id,
+					   u32 offset,
+					   bool loop)
+{
+	struct intel_context *child;
+	u32 action[4 + MAX_ENGINE_INSTANCE];
+	int len = 0;
+
+	GEM_BUG_ON(ce->guc_number_children > MAX_ENGINE_INSTANCE);
+
+	action[len++] = INTEL_GUC_ACTION_REGISTER_CONTEXT_MULTI_LRC;
+	action[len++] = guc_id;
+	action[len++] = ce->guc_number_children + 1;
+	action[len++] = offset;
+	for_each_child(ce, child) {
+		offset += sizeof(struct guc_lrc_desc);
+		action[len++] = offset;
+	}
+
+	return guc_submission_send_busy_loop(guc, action, len, 0, loop);
+}
+
 static int __guc_action_register_context(struct intel_guc *guc,
 					 u32 guc_id,
 					 u32 offset,
@@ -1364,9 +1421,15 @@ static int register_context(struct intel_context *ce, bool loop)
 		ce->guc_id.id * sizeof(struct guc_lrc_desc);
 	int ret;
 
+	GEM_BUG_ON(intel_context_is_child(ce));
 	trace_intel_context_register(ce);
 
-	ret = __guc_action_register_context(guc, ce->guc_id.id, offset, loop);
+	if (intel_context_is_parent(ce))
+		ret = __guc_action_register_multi_lrc(guc, ce, ce->guc_id.id,
+						      offset, loop);
+	else
+		ret = __guc_action_register_context(guc, ce->guc_id.id, offset,
+						    loop);
 	if (likely(!ret)) {
 		unsigned long flags;
 
@@ -1396,6 +1459,7 @@ static int deregister_context(struct intel_context *ce, u32 guc_id, bool loop)
 {
 	struct intel_guc *guc = ce_to_guc(ce);
 
+	GEM_BUG_ON(intel_context_is_child(ce));
 	trace_intel_context_deregister(ce);
 
 	return __guc_action_deregister_context(guc, guc_id, loop);
@@ -1423,6 +1487,7 @@ static int guc_lrc_desc_pin(struct intel_context *ce, bool loop)
 	struct guc_lrc_desc *desc;
 	bool context_registered;
 	intel_wakeref_t wakeref;
+	struct intel_context *child;
 	int ret = 0;
 
 	GEM_BUG_ON(!engine->mask);
@@ -1448,6 +1513,42 @@ static int guc_lrc_desc_pin(struct intel_context *ce, bool loop)
 	desc->context_flags = CONTEXT_REGISTRATION_FLAG_KMD;
 	guc_context_policy_init(engine, desc);
 
+	/*
+	 * Context is a parent, we need to register a process descriptor
+	 * describing a work queue and register all child contexts.
+	 */
+	if (intel_context_is_parent(ce)) {
+		struct guc_process_desc *pdesc;
+
+		ce->guc_wqi_tail = 0;
+		ce->guc_wqi_head = 0;
+
+		desc->process_desc = i915_ggtt_offset(ce->state) +
+			__get_process_desc_offset(ce);
+		desc->wq_addr = i915_ggtt_offset(ce->state) +
+			__get_wq_offset(ce);
+		desc->wq_size = GUC_WQ_SIZE;
+
+		pdesc = __get_process_desc(ce);
+		memset(pdesc, 0, sizeof(*(pdesc)));
+		pdesc->stage_id = ce->guc_id.id;
+		pdesc->wq_base_addr = desc->wq_addr;
+		pdesc->wq_size_bytes = desc->wq_size;
+		pdesc->priority = GUC_CLIENT_PRIORITY_KMD_NORMAL;
+		pdesc->wq_status = WQ_STATUS_ACTIVE;
+
+		for_each_child(ce, child) {
+			desc = __get_lrc_desc(guc, child->guc_id.id);
+
+			desc->engine_class =
+				engine_class_to_guc_class(engine->class);
+			desc->hw_context_desc = child->lrc.lrca;
+			desc->priority = GUC_CLIENT_PRIORITY_KMD_NORMAL;
+			desc->context_flags = CONTEXT_REGISTRATION_FLAG_KMD;
+			guc_context_policy_init(engine, desc);
+		}
+	}
+
 	/*
 	 * The context_lookup xarray is used to determine if the hardware
 	 * context is currently registered. There are two cases in which it
@@ -2858,6 +2959,12 @@ g2h_context_lookup(struct intel_guc *guc, u32 desc_idx)
 		return NULL;
 	}
 
+	if (unlikely(intel_context_is_child(ce))) {
+		drm_err(&guc_to_gt(guc)->i915->drm,
+			"Context is child, desc_idx %u", desc_idx);
+		return NULL;
+	}
+
 	return ce;
 }
 
-- 
2.32.0

