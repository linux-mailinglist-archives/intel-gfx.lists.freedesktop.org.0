Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CCD6B4D8A7D
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Mar 2022 18:07:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B8C910E9A5;
	Mon, 14 Mar 2022 17:07:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3AD7B10E44C
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Mar 2022 17:07:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647277650; x=1678813650;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fgDl/F0cZgFz1hxF8YXYYFWi+WO6MRfa+K2kasLpRFI=;
 b=D04KEODJELZGFNFqshYAA2i0CNepOHWpwSzEf+WW+gXPEPVRLvWZLiJ+
 P/It5tPEdmZr6mnlarCopmjD64TUo467D4XFTi1Vl5YddjIC1CBGBQMoz
 NM12X5Z75kPJv1Cilzu1VFYJA4lrajkjjEWBBehDYm9CDwVoOMSlqglTQ
 0mNSUfKbn/vGgQMyYdAqRlwx2DPe1nVjWGfZkL9j1xKpYkoA/xWGJvAsl
 94l5J2/gLeX3So1NFWBBVddAiJs/xJbcH7ZVQBz7jHv660uAJ5+eNq5nk
 BCFPm1Q/aknYNvLL3cpiK2t7RcLDcqll+EQiMkBmH0b7LV9tgih+2mmhO Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10285"; a="238257165"
X-IronPort-AV: E=Sophos;i="5.90,181,1643702400"; d="scan'208";a="238257165"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2022 10:07:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,181,1643702400"; d="scan'208";a="597977083"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by fmsmga008.fm.intel.com with ESMTP; 14 Mar 2022 10:07:28 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Mar 2022 10:09:52 -0700
Message-Id: <20220314170954.1537154-12-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220314170954.1537154-1-alan.previn.teres.alexis@intel.com>
References: <20220314170954.1537154-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v9 11/13] drm/i915/guc: Pre-allocate output
 nodes for extraction
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
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In the rare but possible scenario where we are in the midst of
multiple GuC error-capture (and engine reset) events and the
user also triggers a forced full GT reset or the internal watchdog
triggers the same, intel_guc_submission_reset_prepare's call
to flush_work(&guc->ct.requests.worker) can cause the G2H message
handler to trigger intel_guc_capture_store_snapshot upon
receiving new G2H error-capture notifications. This can happen
despite the prior call to disable_submission(guc);. However,
there's no race-free way for intel_guc_capture_store_snapshot to
know that we are in the midst of a reset. That said, we can never
dynamically allocate the output nodes in this handler. Thus, we
shall pre-allocate a fixed number of empty nodes up front (at the
time of ADS registration) that we can consume from or return to
an internal cached list of nodes.

Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
Reviewed-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h |  19 +-
 .../gpu/drm/i915/gt/uc/intel_guc_capture.c    | 177 ++++++++++++++----
 2 files changed, 161 insertions(+), 35 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h b/drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h
index 5d959e62d146..3624abfd22d1 100644
--- a/drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h
+++ b/drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h
@@ -31,7 +31,7 @@ struct __guc_capture_bufstate {
  *
  * A single unit of extracted error-capture output data grouped together
  * at an engine-instance level. We keep these nodes in a linked list.
- * See outlist below.
+ * See cachelist and outlist below.
  */
 struct __guc_capture_parsed_output {
 	/*
@@ -190,7 +190,22 @@ struct intel_guc_state_capture {
 	void *ads_null_cache;
 
 	/**
-	 * @outlist: allocated nodes with parsed engine-instance error capture data
+	 * @cachelist: Pool of pre-allocated nodes for error capture output
+	 *
+	 * We need this pool of pre-allocated nodes because we cannot
+	 * dynamically allocate new nodes when receiving the G2H notification
+	 * because the event handlers for all G2H event-processing is called
+	 * by the ct processing worker queue and when that queue is being
+	 * processed, there is no absoluate guarantee that we are not in the
+	 * midst of a GT reset operation (which doesn't allow allocations).
+	 */
+	struct list_head cachelist;
+#define PREALLOC_NODES_MAX_COUNT (3 * GUC_MAX_ENGINE_CLASSES * GUC_MAX_INSTANCES_PER_CLASS)
+#define PREALLOC_NODES_DEFAULT_NUMREGS 64
+	int max_mmio_per_node;
+
+	/**
+	 * @outlist: Pool of pre-allocated nodes for error capture output
 	 *
 	 * A linked list of parsed GuC error-capture output data before
 	 * reporting with formatting via i915_gpu_coredump. Each node in this linked list shall
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
index 8aa6a81dd210..40d03649ef65 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
@@ -581,6 +581,8 @@ intel_guc_capture_getlistsize(struct intel_guc *guc, u32 owner, u32 type, u32 cl
 	return 0;
 }
 
+static void guc_capture_create_prealloc_nodes(struct intel_guc *guc);
+
 int
 intel_guc_capture_getlist(struct intel_guc *guc, u32 owner, u32 type, u32 classid,
 			  void **outptr)
@@ -601,6 +603,12 @@ intel_guc_capture_getlist(struct intel_guc *guc, u32 owner, u32 type, u32 classi
 		return cache->status;
 	}
 
+	/*
+	 * ADS population of input registers is a good
+	 * time to pre-allocate cachelist output nodes
+	 */
+	guc_capture_create_prealloc_nodes(guc);
+
 	ret = intel_guc_capture_getlistsize(guc, owner, type, classid, &size);
 	if (ret) {
 		cache->is_valid = true;
@@ -741,7 +749,8 @@ intel_guc_capture_output_min_size_est(struct intel_guc *guc)
  *                                err-state-captured register-list we find, we alloc 'C':
  *      --> alloc C: A capture-output-node structure that includes misc capture info along
  *                   with 3 register list dumps (global, engine-class and engine-instance)
- *                   This node is dynamically allocated and populated with the error-capture
+ *                   This node is created from a pre-allocated list of blank nodes in
+ *                   guc->capture->cachelist and populated with the error-capture
  *                   data from GuC and then it's added into guc->capture->outlist linked
  *                   list. This list is used for matchup and printout by i915_gpu_coredump
  *                   and err_print_gt, (when user invokes the error capture sysfs).
@@ -901,19 +910,20 @@ guc_capture_delete_one_node(struct intel_guc *guc, struct __guc_capture_parsed_o
 }
 
 static void
-guc_capture_delete_nodes(struct intel_guc *guc)
+guc_capture_delete_prealloc_nodes(struct intel_guc *guc)
 {
+	struct __guc_capture_parsed_output *n, *ntmp;
+
 	/*
 	 * NOTE: At the end of driver operation, we must assume that we
-	 * have nodes in outlist from unclaimed error capture events
-	 * that occurred prior to shutdown.
+	 * have prealloc nodes in both the cachelist as well as outlist
+	 * if unclaimed error capture events occurred prior to shutdown.
 	 */
-	if (!list_empty(&guc->capture->outlist)) {
-		struct __guc_capture_parsed_output *n, *ntmp;
+	list_for_each_entry_safe(n, ntmp, &guc->capture->outlist, link)
+		guc_capture_delete_one_node(guc, n);
 
-		list_for_each_entry_safe(n, ntmp, &guc->capture->outlist, link)
-			guc_capture_delete_one_node(guc, n);
-	}
+	list_for_each_entry_safe(n, ntmp, &guc->capture->cachelist, link)
+		guc_capture_delete_one_node(guc, n);
 }
 
 static void
@@ -930,21 +940,80 @@ guc_capture_add_node_to_outlist(struct intel_guc_state_capture *gc,
 	guc_capture_add_node_to_list(node, &gc->outlist);
 }
 
+static void
+guc_capture_add_node_to_cachelist(struct intel_guc_state_capture *gc,
+				  struct __guc_capture_parsed_output *node)
+{
+	guc_capture_add_node_to_list(node, &gc->cachelist);
+}
+
 static void
 guc_capture_init_node(struct intel_guc *guc, struct __guc_capture_parsed_output *node)
 {
+	struct guc_mmio_reg *tmp[GUC_CAPTURE_LIST_TYPE_MAX];
+	int i;
+
+	for (i = 0; i < GUC_CAPTURE_LIST_TYPE_MAX; ++i) {
+		tmp[i] = node->reginfo[i].regs;
+		memset(tmp[i], 0, sizeof(struct guc_mmio_reg) *
+		       guc->capture->max_mmio_per_node);
+	}
+	memset(node, 0, sizeof(*node));
+	for (i = 0; i < GUC_CAPTURE_LIST_TYPE_MAX; ++i)
+		node->reginfo[i].regs = tmp[i];
+
 	INIT_LIST_HEAD(&node->link);
 }
 
+static struct __guc_capture_parsed_output *
+guc_capture_get_prealloc_node(struct intel_guc *guc)
+{
+	struct __guc_capture_parsed_output *found = NULL;
+
+	if (!list_empty(&guc->capture->cachelist)) {
+		struct __guc_capture_parsed_output *n, *ntmp;
+
+		/* get first avail node from the cache list */
+		list_for_each_entry_safe(n, ntmp, &guc->capture->cachelist, link) {
+			found = n;
+			list_del(&n->link);
+			break;
+		}
+	} else {
+		struct __guc_capture_parsed_output *n, *ntmp;
+
+		/* traverse down and steal back the oldest node already allocated */
+		list_for_each_entry_safe(n, ntmp, &guc->capture->outlist, link) {
+			found = n;
+		}
+		if (found)
+			list_del(&found->link);
+	}
+	if (found)
+		guc_capture_init_node(guc, found);
+
+	return found;
+}
+
 static struct __guc_capture_parsed_output *
 guc_capture_alloc_one_node(struct intel_guc *guc)
 {
 	struct __guc_capture_parsed_output *new;
+	int i;
 
 	new = kzalloc(sizeof(*new), GFP_KERNEL);
 	if (!new)
 		return NULL;
 
+	for (i = 0; i < GUC_CAPTURE_LIST_TYPE_MAX; ++i) {
+		new->reginfo[i].regs = kcalloc(guc->capture->max_mmio_per_node,
+					       sizeof(struct guc_mmio_reg), GFP_KERNEL);
+		if (!new->reginfo[i].regs) {
+			while (i)
+				kfree(new->reginfo[--i].regs);
+			return NULL;
+		}
+	}
 	guc_capture_init_node(guc, new);
 
 	return new;
@@ -957,7 +1026,7 @@ guc_capture_clone_node(struct intel_guc *guc, struct __guc_capture_parsed_output
 	struct __guc_capture_parsed_output *new;
 	int i;
 
-	new = guc_capture_alloc_one_node(guc);
+	new = guc_capture_get_prealloc_node(guc);
 	if (!new)
 		return NULL;
 	if (!original)
@@ -968,13 +1037,12 @@ guc_capture_clone_node(struct intel_guc *guc, struct __guc_capture_parsed_output
 	/* copy reg-lists that we want to clone */
 	for (i = 0; i < GUC_CAPTURE_LIST_TYPE_MAX; ++i) {
 		if (keep_reglist_mask & BIT(i)) {
-			new->reginfo[i].regs = kcalloc(original->reginfo[i].num_regs,
-						       sizeof(struct guc_mmio_reg), GFP_KERNEL);
-			if (!new->reginfo[i].regs)
-				goto bail_clone;
+			GEM_BUG_ON(original->reginfo[i].num_regs  >
+				   guc->capture->max_mmio_per_node);
 
 			memcpy(new->reginfo[i].regs, original->reginfo[i].regs,
 			       original->reginfo[i].num_regs * sizeof(struct guc_mmio_reg));
+
 			new->reginfo[i].num_regs = original->reginfo[i].num_regs;
 			new->reginfo[i].vfid  = original->reginfo[i].vfid;
 
@@ -989,12 +1057,58 @@ guc_capture_clone_node(struct intel_guc *guc, struct __guc_capture_parsed_output
 	}
 
 	return new;
+}
 
-bail_clone:
-	for (i = 0; i < GUC_CAPTURE_LIST_TYPE_MAX; ++i)
-		kfree(new->reginfo[i].regs);
-	kfree(new);
-	return NULL;
+static void
+__guc_capture_create_prealloc_nodes(struct intel_guc *guc)
+{
+	struct __guc_capture_parsed_output *node = NULL;
+	struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
+	int i;
+
+	for (i = 0; i < PREALLOC_NODES_MAX_COUNT; ++i) {
+		node = guc_capture_alloc_one_node(guc);
+		if (!node) {
+			drm_warn(&i915->drm, "GuC Capture pre-alloc-cache failure\n");
+			/* dont free the priors, use what we got and cleanup at shutdown */
+			return;
+		}
+		guc_capture_add_node_to_cachelist(guc->capture, node);
+	}
+}
+
+static int
+guc_get_max_reglist_count(struct intel_guc *guc)
+{
+	int i, j, k, tmp, maxregcount = 0;
+
+	for (i = 0; i < GUC_CAPTURE_LIST_INDEX_MAX; ++i) {
+		for (j = 0; j < GUC_CAPTURE_LIST_TYPE_MAX; ++j) {
+			for (k = 0; k < GUC_MAX_ENGINE_CLASSES; ++k) {
+				if (j == GUC_CAPTURE_LIST_TYPE_GLOBAL && k > 0)
+					continue;
+
+				tmp = guc_cap_list_num_regs(guc->capture, i, j, k);
+				if (tmp > maxregcount)
+					maxregcount = tmp;
+			}
+		}
+	}
+	if (!maxregcount)
+		maxregcount = PREALLOC_NODES_DEFAULT_NUMREGS;
+
+	return maxregcount;
+}
+
+static void
+guc_capture_create_prealloc_nodes(struct intel_guc *guc)
+{
+	/* skip if we've already done the pre-alloc */
+	if (guc->capture->max_mmio_per_node)
+		return;
+
+	guc->capture->max_mmio_per_node = guc_get_max_reglist_count(guc);
+	__guc_capture_create_prealloc_nodes(guc);
 }
 
 static int
@@ -1110,13 +1224,13 @@ guc_capture_extract_reglists(struct intel_guc *guc, struct __guc_capture_bufstat
 				guc_capture_add_node_to_outlist(guc->capture, node);
 				node = NULL;
 			} else if (datatype == GUC_CAPTURE_LIST_TYPE_ENGINE_CLASS &&
-				   node->reginfo[GUC_CAPTURE_LIST_TYPE_ENGINE_CLASS].regs) {
+				   node->reginfo[GUC_CAPTURE_LIST_TYPE_ENGINE_CLASS].num_regs) {
 				/* Add to list, clone node and duplicate global list */
 				guc_capture_add_node_to_outlist(guc->capture, node);
 				node = guc_capture_clone_node(guc, node,
 							      GCAP_PARSED_REGLIST_INDEX_GLOBAL);
 			} else if (datatype == GUC_CAPTURE_LIST_TYPE_ENGINE_INSTANCE &&
-				   node->reginfo[GUC_CAPTURE_LIST_TYPE_ENGINE_INSTANCE].regs) {
+				   node->reginfo[GUC_CAPTURE_LIST_TYPE_ENGINE_INSTANCE].num_regs) {
 				/* Add to list, clone node and duplicate global + class lists */
 				guc_capture_add_node_to_outlist(guc->capture, node);
 				node = guc_capture_clone_node(guc, node,
@@ -1126,7 +1240,7 @@ guc_capture_extract_reglists(struct intel_guc *guc, struct __guc_capture_bufstat
 		}
 
 		if (!node) {
-			node = guc_capture_alloc_one_node(guc);
+			node = guc_capture_get_prealloc_node(guc);
 			if (!node) {
 				ret = -ENOMEM;
 				break;
@@ -1151,17 +1265,13 @@ guc_capture_extract_reglists(struct intel_guc *guc, struct __guc_capture_bufstat
 			break;
 		}
 
-		regs = NULL;
 		numregs = FIELD_GET(CAP_HDR_NUM_MMIOS, hdr.num_mmios);
-		if (numregs) {
-			regs = kcalloc(numregs, sizeof(struct guc_mmio_reg), GFP_KERNEL);
-			if (!regs) {
-				ret = -ENOMEM;
-				break;
-			}
+		if (numregs > guc->capture->max_mmio_per_node) {
+			drm_dbg(&i915->drm, "GuC Capture list extraction clipped by prealloc!\n");
+			numregs = guc->capture->max_mmio_per_node;
 		}
 		node->reginfo[datatype].num_regs = numregs;
-		node->reginfo[datatype].regs = regs;
+		regs = node->reginfo[datatype].regs;
 		i = 0;
 		while (numregs--) {
 			if (guc_capture_log_get_register(guc, buf, &regs[i++])) {
@@ -1181,8 +1291,8 @@ guc_capture_extract_reglists(struct intel_guc *guc, struct __guc_capture_bufstat
 				break;
 			}
 		}
-		/* else free it */
-		kfree(node);
+		if (node) /* else return it back to cache list */
+			guc_capture_add_node_to_cachelist(guc->capture, node);
 	}
 	return ret;
 }
@@ -1290,7 +1400,7 @@ void intel_guc_capture_destroy(struct intel_guc *guc)
 
 	guc_capture_free_ads_cache(guc->capture);
 
-	guc_capture_delete_nodes(guc);
+	guc_capture_delete_prealloc_nodes(guc);
 
 	guc_capture_free_extlists(guc->capture->extlists);
 	kfree(guc->capture->extlists);
@@ -1308,6 +1418,7 @@ int intel_guc_capture_init(struct intel_guc *guc)
 	guc->capture->reglists = guc_capture_get_device_reglist(guc);
 
 	INIT_LIST_HEAD(&guc->capture->outlist);
+	INIT_LIST_HEAD(&guc->capture->cachelist);
 
 	return 0;
 }
-- 
2.25.1

