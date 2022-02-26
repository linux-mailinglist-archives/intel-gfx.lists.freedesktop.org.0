Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9CBD4C540B
	for <lists+intel-gfx@lfdr.de>; Sat, 26 Feb 2022 06:53:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCEEF10ED0B;
	Sat, 26 Feb 2022 05:53:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D333E10ED04
 for <intel-gfx@lists.freedesktop.org>; Sat, 26 Feb 2022 05:53:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645854796; x=1677390796;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TVmnog9GpKJ80XsfNoLqmvja4sJ2rB9c+/e7s9Mr1hw=;
 b=TaCTQZjqiMoVBuQafPpICl5aDn0sidWVfiLR3hGBA2P+xUMIDhFxHGyH
 QUTwHGsETLBFXFooMoB0ACI78aZLXWrGVYxO/IjbRHahR8zNEPhXqrulB
 RcCItJNnlPBGz0DdPziBMCi87/015ou9wEucITHK5yo+C6Aj3buykrvsb
 U68wKw8M7+FPnCftMXCAXXO5o24dLQNCz+KjaiYlBOXmYSlEj2fyPyWTh
 y+OiUXwgD3xhxI+KXSBKOVTUEKvCUncoHh1zvdoPdANMcFTd2/vGmqkH4
 K8NMqiAlEXE8idAxxTlPlRYrmd8rsiZA6+vs+ENXyjapYqek6K9tq94XN A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10269"; a="277274594"
X-IronPort-AV: E=Sophos;i="5.90,138,1643702400"; d="scan'208";a="277274594"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2022 21:53:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,138,1643702400"; d="scan'208";a="574817094"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by orsmga001.jf.intel.com with ESMTP; 25 Feb 2022 21:53:16 -0800
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Feb 2022 21:55:24 -0800
Message-Id: <20220226055526.665514-12-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220226055526.665514-1-alan.previn.teres.alexis@intel.com>
References: <20220226055526.665514-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v6 11/13] drm/i915/guc: Pre-allocate output
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
---
 drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h |  19 +-
 .../gpu/drm/i915/gt/uc/intel_guc_capture.c    | 178 ++++++++++++++----
 2 files changed, 160 insertions(+), 37 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h b/drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h
index 7c4f1e4ae0a5..b5eea9676668 100644
--- a/drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h
+++ b/drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h
@@ -30,7 +30,7 @@ struct __guc_capture_bufstate {
  *
  * A single unit of extracted error-capture output data grouped together
  * at an engine-instance level. We keep these nodes in a linked list.
- * See outlist below.
+ * See cachelist and outlist below.
  */
 struct __guc_capture_parsed_output {
 	/*
@@ -187,7 +187,22 @@ struct __guc_state_capture_priv {
 						[GUC_MAX_ENGINE_CLASSES];
 
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
index 492719137bd5..944b4bd8cdfb 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
@@ -582,6 +582,8 @@ intel_guc_capture_getlistsize(struct intel_guc *guc, u32 owner, u32 type, u32 cl
 	return 0;
 }
 
+static void guc_capture_create_prealloc_nodes(struct intel_guc *guc);
+
 int
 intel_guc_capture_getlist(struct intel_guc *guc, u32 owner, u32 type, u32 classid,
 			  void **listptr)
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
 		cache->list = NULL;
@@ -710,7 +718,8 @@ int intel_guc_capture_output_min_size_est(struct intel_guc *guc)
  *                                err-state-captured register-list we find, we alloc 'C':
  *      --> alloc C: A capture-output-node structure that includes misc capture info along
  *                   with 3 register list dumps (global, engine-class and engine-instance)
- *                   This node is dynamically allocated and populated with the error-capture
+ *                   This node is created from a pre-allocated list of blank nodes in
+ *                   guc->capture->priv->cachelist and populated with the error-capture
  *                   data from GuC and then it's added into guc->capture->priv->outlist linked
  *                   list. This list is used for matchup and printout by i915_gpu_coredump
  *                   and err_print_gt, (when user invokes the error capture sysfs).
@@ -854,19 +863,20 @@ guc_capture_delete_one_node(struct intel_guc *guc, struct __guc_capture_parsed_o
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
-	if (!list_empty(&guc->capture.priv->outlist)) {
-		struct __guc_capture_parsed_output *n, *ntmp;
+	list_for_each_entry_safe(n, ntmp, &guc->capture.priv->outlist, link)
+		guc_capture_delete_one_node(guc, n);
 
-		list_for_each_entry_safe(n, ntmp, &guc->capture.priv->outlist, link)
-			guc_capture_delete_one_node(guc, n);
-	}
+	list_for_each_entry_safe(n, ntmp, &guc->capture.priv->cachelist, link)
+		guc_capture_delete_one_node(guc, n);
 }
 
 static void
@@ -883,21 +893,80 @@ guc_capture_add_node_to_outlist(struct __guc_state_capture_priv *gc,
 	guc_capture_add_node_to_list(node, &gc->outlist);
 }
 
+static void
+guc_capture_add_node_to_cachelist(struct __guc_state_capture_priv *gc,
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
+		       guc->capture.priv->max_mmio_per_node);
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
+	if (!list_empty(&guc->capture.priv->cachelist)) {
+		struct __guc_capture_parsed_output *n, *ntmp;
+
+		/* get first avail node from the cache list */
+		list_for_each_entry_safe(n, ntmp, &guc->capture.priv->cachelist, link) {
+			found = n;
+			list_del(&n->link);
+			break;
+		}
+	} else {
+		struct __guc_capture_parsed_output *n, *ntmp;
+
+		/* traverse down and steal back the oldest node already allocated */
+		list_for_each_entry_safe(n, ntmp, &guc->capture.priv->outlist, link) {
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
+		new->reginfo[i].regs = kcalloc(guc->capture.priv->max_mmio_per_node,
+					       sizeof(struct guc_mmio_reg), GFP_KERNEL);
+		if (!new->reginfo[i].regs) {
+			while (i)
+				kfree(new->reginfo[--i].regs);
+			return NULL;
+		}
+	}
 	guc_capture_init_node(guc, new);
 
 	return new;
@@ -910,7 +979,7 @@ guc_capture_clone_node(struct intel_guc *guc, struct __guc_capture_parsed_output
 	struct __guc_capture_parsed_output *new;
 	int i;
 
-	new = guc_capture_alloc_one_node(guc);
+	new = guc_capture_get_prealloc_node(guc);
 	if (!new)
 		return NULL;
 	if (!ori)
@@ -921,16 +990,14 @@ guc_capture_clone_node(struct intel_guc *guc, struct __guc_capture_parsed_output
 	/* copy reg-lists that we want to clone */
 	for (i = 0; i < GUC_CAPTURE_LIST_TYPE_MAX; ++i) {
 		if (keep_reglist_mask & BIT(i)) {
-			new->reginfo[i].regs = kcalloc(ori->reginfo[i].num_regs,
-						       sizeof(struct guc_mmio_reg), GFP_KERNEL);
-			if (!new->reginfo[i].regs)
-				goto bail_clone;
+			GEM_BUG_ON(ori->reginfo[i].num_regs  >
+				   guc->capture.priv->max_mmio_per_node);
 
 			memcpy(new->reginfo[i].regs, ori->reginfo[i].regs,
 			       ori->reginfo[i].num_regs * sizeof(struct guc_mmio_reg));
+
 			new->reginfo[i].num_regs = ori->reginfo[i].num_regs;
 			new->reginfo[i].vfid  = ori->reginfo[i].vfid;
-
 			if (i == GUC_CAPTURE_LIST_TYPE_ENGINE_CLASS) {
 				new->eng_class = ori->eng_class;
 			} else if (i == GUC_CAPTURE_LIST_TYPE_ENGINE_INSTANCE) {
@@ -942,14 +1009,58 @@ guc_capture_clone_node(struct intel_guc *guc, struct __guc_capture_parsed_output
 	}
 
 	return new;
+}
 
-bail_clone:
-	for (i = 0; i < GUC_CAPTURE_LIST_TYPE_MAX; ++i) {
-		if (new->reginfo[i].regs)
-			kfree(new->reginfo[i].regs);
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
+		guc_capture_add_node_to_cachelist(guc->capture.priv, node);
 	}
-	kfree(new);
-	return NULL;
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
+				tmp = guc_cap_list_num_regs(guc->capture.priv, i, j, k);
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
+	if (guc->capture.priv->max_mmio_per_node)
+		return;
+
+	guc->capture.priv->max_mmio_per_node = guc_get_max_reglist_count(guc);
+	__guc_capture_create_prealloc_nodes(guc);
 }
 
 static int
@@ -1065,13 +1176,13 @@ guc_capture_extract_reglists(struct intel_guc *guc, struct __guc_capture_bufstat
 				guc_capture_add_node_to_outlist(guc->capture.priv, node);
 				node = NULL;
 			} else if (datatype == GUC_CAPTURE_LIST_TYPE_ENGINE_CLASS &&
-				   node->reginfo[GUC_CAPTURE_LIST_TYPE_ENGINE_CLASS].regs) {
+				   node->reginfo[GUC_CAPTURE_LIST_TYPE_ENGINE_CLASS].num_regs) {
 				/* Add to list, clone node and duplicate global list */
 				guc_capture_add_node_to_outlist(guc->capture.priv, node);
 				node = guc_capture_clone_node(guc, node,
 							      GCAP_PARSED_REGLIST_INDEX_GLOBAL);
 			} else if (datatype == GUC_CAPTURE_LIST_TYPE_ENGINE_INSTANCE &&
-				   node->reginfo[GUC_CAPTURE_LIST_TYPE_ENGINE_INSTANCE].regs) {
+				   node->reginfo[GUC_CAPTURE_LIST_TYPE_ENGINE_INSTANCE].num_regs) {
 				/* Add to list, clone node and duplicate global + class lists */
 				guc_capture_add_node_to_outlist(guc->capture.priv, node);
 				node = guc_capture_clone_node(guc, node,
@@ -1081,7 +1192,7 @@ guc_capture_extract_reglists(struct intel_guc *guc, struct __guc_capture_bufstat
 		}
 
 		if (!node) {
-			node = guc_capture_alloc_one_node(guc);
+			node = guc_capture_get_prealloc_node(guc);
 			if (!node) {
 				ret = -ENOMEM;
 				break;
@@ -1106,17 +1217,13 @@ guc_capture_extract_reglists(struct intel_guc *guc, struct __guc_capture_bufstat
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
+		if (numregs > guc->capture.priv->max_mmio_per_node) {
+			drm_dbg(&i915->drm, "GuC Capture list extraction clipped by prealloc!\n");
+			numregs = guc->capture.priv->max_mmio_per_node;
 		}
 		node->reginfo[datatype].num_regs = numregs;
-		node->reginfo[datatype].regs = regs;
+		regs = node->reginfo[datatype].regs;
 		i = 0;
 		while (numregs--) {
 			if (guc_capture_log_get_register(guc, buf, &regs[i++])) {
@@ -1136,8 +1243,8 @@ guc_capture_extract_reglists(struct intel_guc *guc, struct __guc_capture_bufstat
 				break;
 			}
 		}
-		if (node) /* else free it */
-			kfree(node);
+		if (node) /* else return it back to cache list */
+			guc_capture_add_node_to_cachelist(guc->capture.priv, node);
 	}
 	return ret;
 }
@@ -1244,7 +1351,7 @@ void intel_guc_capture_destroy(struct intel_guc *guc)
 
 	guc_capture_free_ads_cache(guc->capture.priv);
 
-	guc_capture_delete_nodes(guc);
+	guc_capture_delete_prealloc_nodes(guc);
 
 	if (guc->capture.priv->extlists) {
 		guc_capture_free_extlists(guc->capture.priv->extlists);
@@ -1264,6 +1371,7 @@ int intel_guc_capture_init(struct intel_guc *guc)
 	guc->capture.priv->reglists = guc_capture_get_device_reglist(guc);
 
 	INIT_LIST_HEAD(&guc->capture.priv->outlist);
+	INIT_LIST_HEAD(&guc->capture.priv->cachelist);
 
 	return 0;
 }
-- 
2.25.1

