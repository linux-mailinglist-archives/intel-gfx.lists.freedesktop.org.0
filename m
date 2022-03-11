Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B2DE4D6927
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Mar 2022 20:40:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9148210E04A;
	Fri, 11 Mar 2022 19:40:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E65D10E04A
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Mar 2022 19:40:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647027615; x=1678563615;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=3NunriSBLOlPz+t0c03waKPeNl6SUU9pdBZ+4zngwEA=;
 b=RGsPD5PSWq3mk/zoUyo5GomclDDlTDGjyd4rUQnwYVSVohUkjCQeOyER
 kcroUjuklFm/GEhubhASchY7jDRtYuJ2oJ6C/PtAD3ZvrnmQ41cDHXQMP
 VTcyy/Oert3RMSKnvSplMEfXA5waZgoZ3pKdskDnssDBHijoKKxWh77H8
 SZcyZzVXBFMAs3K8K0eFSWaLWejOcZ++Uq4AZ48FnhH7nFXa21tnTDqzN
 7hrNY4Uo8VYJ4ITHwixOzZ2ulwTOIk3KznpoQcv+snFojOP+uu5IXdAw2
 6Fe3eW/5d0mGRHzMhj91auLgNLBWHNSzNdynPdcLfX68EubwsRD4A2vjD Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10283"; a="235593571"
X-IronPort-AV: E=Sophos;i="5.90,174,1643702400"; d="scan'208";a="235593571"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2022 11:40:14 -0800
X-IronPort-AV: E=Sophos;i="5.90,174,1643702400"; d="scan'208";a="514613833"
Received: from orsosgc001.jf.intel.com (HELO unerlige-ril-10.165.21.154)
 ([10.165.21.154])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2022 11:40:14 -0800
Date: Fri, 11 Mar 2022 11:40:14 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Alan Previn <alan.previn.teres.alexis@intel.com>
Message-ID: <20220311194014.GG23794@unerlige-ril-10.165.21.154>
References: <20220226095541.1010534-1-alan.previn.teres.alexis@intel.com>
 <20220226095541.1010534-12-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
In-Reply-To: <20220226095541.1010534-12-alan.previn.teres.alexis@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH v7 11/13] drm/i915/guc: Pre-allocate output
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sat, Feb 26, 2022 at 01:55:39AM -0800, Alan Previn wrote:
>In the rare but possible scenario where we are in the midst of
>multiple GuC error-capture (and engine reset) events and the
>user also triggers a forced full GT reset or the internal watchdog
>triggers the same, intel_guc_submission_reset_prepare's call
>to flush_work(&guc->ct.requests.worker) can cause the G2H message
>handler to trigger intel_guc_capture_store_snapshot upon
>receiving new G2H error-capture notifications. This can happen
>despite the prior call to disable_submission(guc);. However,
>there's no race-free way for intel_guc_capture_store_snapshot to
>know that we are in the midst of a reset. That said, we can never
>dynamically allocate the output nodes in this handler. Thus, we
>shall pre-allocate a fixed number of empty nodes up front (at the
>time of ADS registration) that we can consume from or return to
>an internal cached list of nodes.
>
>Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
>---
> drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h |  19 +-
> .../gpu/drm/i915/gt/uc/intel_guc_capture.c    | 178 ++++++++++++++----
> 2 files changed, 160 insertions(+), 37 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h b/drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h
>index 2b09aa05d8b7..a77a6274e0b0 100644
>--- a/drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h
>+++ b/drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h
>@@ -31,7 +31,7 @@ struct __guc_capture_bufstate {
>  *
>  * A single unit of extracted error-capture output data grouped together
>  * at an engine-instance level. We keep these nodes in a linked list.
>- * See outlist below.
>+ * See cachelist and outlist below.
>  */
> struct __guc_capture_parsed_output {
> 	/*
>@@ -188,7 +188,22 @@ struct __guc_state_capture_priv {
> 						[GUC_MAX_ENGINE_CLASSES];
>
> 	/**
>-	 * @outlist: allocated nodes with parsed engine-instance error capture data
>+	 * @cachelist: Pool of pre-allocated nodes for error capture output
>+	 *
>+	 * We need this pool of pre-allocated nodes because we cannot
>+	 * dynamically allocate new nodes when receiving the G2H notification
>+	 * because the event handlers for all G2H event-processing is called
>+	 * by the ct processing worker queue and when that queue is being
>+	 * processed, there is no absoluate guarantee that we are not in the
>+	 * midst of a GT reset operation (which doesn't allow allocations).
>+	 */
>+	struct list_head cachelist;
>+#define PREALLOC_NODES_MAX_COUNT (3 * GUC_MAX_ENGINE_CLASSES * GUC_MAX_INSTANCES_PER_CLASS)
>+#define PREALLOC_NODES_DEFAULT_NUMREGS 64
>+	int max_mmio_per_node;
>+
>+	/**
>+	 * @outlist: Pool of pre-allocated nodes for error capture output
> 	 *
> 	 * A linked list of parsed GuC error-capture output data before
> 	 * reporting with formatting via i915_gpu_coredump. Each node in this linked list shall
>diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
>index 9308157d9a74..7bd297515504 100644
>--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
>+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
>@@ -583,6 +583,8 @@ intel_guc_capture_getlistsize(struct intel_guc *guc, u32 owner, u32 type, u32 cl
> 	return 0;
> }
>
>+static void guc_capture_create_prealloc_nodes(struct intel_guc *guc);
>+
> int
> intel_guc_capture_getlist(struct intel_guc *guc, u32 owner, u32 type, u32 classid,
> 			  struct file **fileoutptr)
>@@ -604,6 +606,12 @@ intel_guc_capture_getlist(struct intel_guc *guc, u32 owner, u32 type, u32 classi
> 		return cache->status;
> 	}
>
>+	/*
>+	 * ADS population of input registers is a good
>+	 * time to pre-allocate cachelist output nodes
>+	 */
>+	guc_capture_create_prealloc_nodes(guc);
>+
> 	ret = intel_guc_capture_getlistsize(guc, owner, type, classid, &size);
> 	if (ret) {
> 		cache->is_valid = true;
>@@ -721,7 +729,8 @@ int intel_guc_capture_output_min_size_est(struct intel_guc *guc)
>  *                                err-state-captured register-list we find, we alloc 'C':
>  *      --> alloc C: A capture-output-node structure that includes misc capture info along
>  *                   with 3 register list dumps (global, engine-class and engine-instance)
>- *                   This node is dynamically allocated and populated with the error-capture
>+ *                   This node is created from a pre-allocated list of blank nodes in
>+ *                   guc->capture->priv->cachelist and populated with the error-capture
>  *                   data from GuC and then it's added into guc->capture->priv->outlist linked
>  *                   list. This list is used for matchup and printout by i915_gpu_coredump
>  *                   and err_print_gt, (when user invokes the error capture sysfs).
>@@ -865,19 +874,20 @@ guc_capture_delete_one_node(struct intel_guc *guc, struct __guc_capture_parsed_o
> }
>
> static void
>-guc_capture_delete_nodes(struct intel_guc *guc)
>+guc_capture_delete_prealloc_nodes(struct intel_guc *guc)
> {
>+	struct __guc_capture_parsed_output *n, *ntmp;
>+
> 	/*
> 	 * NOTE: At the end of driver operation, we must assume that we
>-	 * have nodes in outlist from unclaimed error capture events
>-	 * that occurred prior to shutdown.
>+	 * have prealloc nodes in both the cachelist as well as outlist
>+	 * if unclaimed error capture events occurred prior to shutdown.
> 	 */
>-	if (!list_empty(&guc->capture.priv->outlist)) {
>-		struct __guc_capture_parsed_output *n, *ntmp;
>+	list_for_each_entry_safe(n, ntmp, &guc->capture.priv->outlist, link)
>+		guc_capture_delete_one_node(guc, n);
>
>-		list_for_each_entry_safe(n, ntmp, &guc->capture.priv->outlist, link)
>-			guc_capture_delete_one_node(guc, n);
>-	}
>+	list_for_each_entry_safe(n, ntmp, &guc->capture.priv->cachelist, link)
>+		guc_capture_delete_one_node(guc, n);
> }
>
> static void
>@@ -894,21 +904,80 @@ guc_capture_add_node_to_outlist(struct __guc_state_capture_priv *gc,
> 	guc_capture_add_node_to_list(node, &gc->outlist);
> }
>
>+static void
>+guc_capture_add_node_to_cachelist(struct __guc_state_capture_priv *gc,
>+				  struct __guc_capture_parsed_output *node)
>+{
>+	guc_capture_add_node_to_list(node, &gc->cachelist);
>+}
>+
> static void
> guc_capture_init_node(struct intel_guc *guc, struct __guc_capture_parsed_output *node)
> {
>+	struct guc_mmio_reg *tmp[GUC_CAPTURE_LIST_TYPE_MAX];
>+	int i;
>+
>+	for (i = 0; i < GUC_CAPTURE_LIST_TYPE_MAX; ++i) {
>+		tmp[i] = node->reginfo[i].regs;
>+		memset(tmp[i], 0, sizeof(struct guc_mmio_reg) *
>+		       guc->capture.priv->max_mmio_per_node);
>+	}
>+	memset(node, 0, sizeof(*node));
>+	for (i = 0; i < GUC_CAPTURE_LIST_TYPE_MAX; ++i)
>+		node->reginfo[i].regs = tmp[i];
>+
> 	INIT_LIST_HEAD(&node->link);
> }
>
>+static struct __guc_capture_parsed_output *
>+guc_capture_get_prealloc_node(struct intel_guc *guc)
>+{
>+	struct __guc_capture_parsed_output *found = NULL;
>+
>+	if (!list_empty(&guc->capture.priv->cachelist)) {
>+		struct __guc_capture_parsed_output *n, *ntmp;
>+
>+		/* get first avail node from the cache list */
>+		list_for_each_entry_safe(n, ntmp, &guc->capture.priv->cachelist, link) {
>+			found = n;
>+			list_del(&n->link);
>+			break;
>+		}
>+	} else {
>+		struct __guc_capture_parsed_output *n, *ntmp;
>+
>+		/* traverse down and steal back the oldest node already allocated */
>+		list_for_each_entry_safe(n, ntmp, &guc->capture.priv->outlist, link) {
>+			found = n;
>+		}
>+		if (found)
>+			list_del(&found->link);
>+	}
>+	if (found)
>+		guc_capture_init_node(guc, found);
>+
>+	return found;
>+}
>+
> static struct __guc_capture_parsed_output *
> guc_capture_alloc_one_node(struct intel_guc *guc)
> {
> 	struct __guc_capture_parsed_output *new;
>+	int i;
>
> 	new = kzalloc(sizeof(*new), GFP_KERNEL);
> 	if (!new)
> 		return NULL;
>
>+	for (i = 0; i < GUC_CAPTURE_LIST_TYPE_MAX; ++i) {
>+		new->reginfo[i].regs = kcalloc(guc->capture.priv->max_mmio_per_node,
>+					       sizeof(struct guc_mmio_reg), GFP_KERNEL);
>+		if (!new->reginfo[i].regs) {
>+			while (i)
>+				kfree(new->reginfo[--i].regs);
>+			return NULL;
>+		}
>+	}
> 	guc_capture_init_node(guc, new);

In guc_capture_init_node, looks like you are just saving the .regs 
pointer and then restoring it back. If so, you don't need to call 
guc_capture_init_node here because kzalloc already zeroes out the new 
node.

With that, this is

Reviewed-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Umesh
>
> 	return new;
>@@ -921,7 +990,7 @@ guc_capture_clone_node(struct intel_guc *guc, struct __guc_capture_parsed_output
> 	struct __guc_capture_parsed_output *new;
> 	int i;
>
>-	new = guc_capture_alloc_one_node(guc);
>+	new = guc_capture_get_prealloc_node(guc);
> 	if (!new)
> 		return NULL;
> 	if (!ori)
>@@ -932,16 +1001,14 @@ guc_capture_clone_node(struct intel_guc *guc, struct __guc_capture_parsed_output
> 	/* copy reg-lists that we want to clone */
> 	for (i = 0; i < GUC_CAPTURE_LIST_TYPE_MAX; ++i) {
> 		if (keep_reglist_mask & BIT(i)) {
>-			new->reginfo[i].regs = kcalloc(ori->reginfo[i].num_regs,
>-						       sizeof(struct guc_mmio_reg), GFP_KERNEL);
>-			if (!new->reginfo[i].regs)
>-				goto bail_clone;
>+			GEM_BUG_ON(ori->reginfo[i].num_regs  >
>+				   guc->capture.priv->max_mmio_per_node);
>
> 			memcpy(new->reginfo[i].regs, ori->reginfo[i].regs,
> 			       ori->reginfo[i].num_regs * sizeof(struct guc_mmio_reg));
>+
> 			new->reginfo[i].num_regs = ori->reginfo[i].num_regs;
> 			new->reginfo[i].vfid  = ori->reginfo[i].vfid;
>-
> 			if (i == GUC_CAPTURE_LIST_TYPE_ENGINE_CLASS) {
> 				new->eng_class = ori->eng_class;
> 			} else if (i == GUC_CAPTURE_LIST_TYPE_ENGINE_INSTANCE) {
>@@ -953,14 +1020,58 @@ guc_capture_clone_node(struct intel_guc *guc, struct __guc_capture_parsed_output
> 	}
>
> 	return new;
>+}
>
>-bail_clone:
>-	for (i = 0; i < GUC_CAPTURE_LIST_TYPE_MAX; ++i) {
>-		if (new->reginfo[i].regs)
>-			kfree(new->reginfo[i].regs);
>+static void
>+__guc_capture_create_prealloc_nodes(struct intel_guc *guc)
>+{
>+	struct __guc_capture_parsed_output *node = NULL;
>+	struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
>+	int i;
>+
>+	for (i = 0; i < PREALLOC_NODES_MAX_COUNT; ++i) {
>+		node = guc_capture_alloc_one_node(guc);
>+		if (!node) {
>+			drm_warn(&i915->drm, "GuC Capture pre-alloc-cache failure\n");
>+			/* dont free the priors, use what we got and cleanup at shutdown */
>+			return;
>+		}
>+		guc_capture_add_node_to_cachelist(guc->capture.priv, node);
> 	}
>-	kfree(new);
>-	return NULL;
>+}
>+
>+static int
>+guc_get_max_reglist_count(struct intel_guc *guc)
>+{
>+	int i, j, k, tmp, maxregcount = 0;
>+
>+	for (i = 0; i < GUC_CAPTURE_LIST_INDEX_MAX; ++i) {
>+		for (j = 0; j < GUC_CAPTURE_LIST_TYPE_MAX; ++j) {
>+			for (k = 0; k < GUC_MAX_ENGINE_CLASSES; ++k) {
>+				if (j == GUC_CAPTURE_LIST_TYPE_GLOBAL && k > 0)
>+					continue;
>+
>+				tmp = guc_cap_list_num_regs(guc->capture.priv, i, j, k);
>+				if (tmp > maxregcount)
>+					maxregcount = tmp;
>+			}
>+		}
>+	}
>+	if (!maxregcount)
>+		maxregcount = PREALLOC_NODES_DEFAULT_NUMREGS;
>+
>+	return maxregcount;
>+}
>+
>+static void
>+guc_capture_create_prealloc_nodes(struct intel_guc *guc)
>+{
>+	/* skip if we've already done the pre-alloc */
>+	if (guc->capture.priv->max_mmio_per_node)
>+		return;
>+
>+	guc->capture.priv->max_mmio_per_node = guc_get_max_reglist_count(guc);
>+	__guc_capture_create_prealloc_nodes(guc);
> }
>
> static int
>@@ -1076,13 +1187,13 @@ guc_capture_extract_reglists(struct intel_guc *guc, struct __guc_capture_bufstat
> 				guc_capture_add_node_to_outlist(guc->capture.priv, node);
> 				node = NULL;
> 			} else if (datatype == GUC_CAPTURE_LIST_TYPE_ENGINE_CLASS &&
>-				   node->reginfo[GUC_CAPTURE_LIST_TYPE_ENGINE_CLASS].regs) {
>+				   node->reginfo[GUC_CAPTURE_LIST_TYPE_ENGINE_CLASS].num_regs) {
> 				/* Add to list, clone node and duplicate global list */
> 				guc_capture_add_node_to_outlist(guc->capture.priv, node);
> 				node = guc_capture_clone_node(guc, node,
> 							      GCAP_PARSED_REGLIST_INDEX_GLOBAL);
> 			} else if (datatype == GUC_CAPTURE_LIST_TYPE_ENGINE_INSTANCE &&
>-				   node->reginfo[GUC_CAPTURE_LIST_TYPE_ENGINE_INSTANCE].regs) {
>+				   node->reginfo[GUC_CAPTURE_LIST_TYPE_ENGINE_INSTANCE].num_regs) {
> 				/* Add to list, clone node and duplicate global + class lists */
> 				guc_capture_add_node_to_outlist(guc->capture.priv, node);
> 				node = guc_capture_clone_node(guc, node,
>@@ -1092,7 +1203,7 @@ guc_capture_extract_reglists(struct intel_guc *guc, struct __guc_capture_bufstat
> 		}
>
> 		if (!node) {
>-			node = guc_capture_alloc_one_node(guc);
>+			node = guc_capture_get_prealloc_node(guc);
> 			if (!node) {
> 				ret = -ENOMEM;
> 				break;
>@@ -1117,17 +1228,13 @@ guc_capture_extract_reglists(struct intel_guc *guc, struct __guc_capture_bufstat
> 			break;
> 		}
>
>-		regs = NULL;
> 		numregs = FIELD_GET(CAP_HDR_NUM_MMIOS, hdr.num_mmios);
>-		if (numregs) {
>-			regs = kcalloc(numregs, sizeof(struct guc_mmio_reg), GFP_KERNEL);
>-			if (!regs) {
>-				ret = -ENOMEM;
>-				break;
>-			}
>+		if (numregs > guc->capture.priv->max_mmio_per_node) {
>+			drm_dbg(&i915->drm, "GuC Capture list extraction clipped by prealloc!\n");
>+			numregs = guc->capture.priv->max_mmio_per_node;
> 		}
> 		node->reginfo[datatype].num_regs = numregs;
>-		node->reginfo[datatype].regs = regs;
>+		regs = node->reginfo[datatype].regs;
> 		i = 0;
> 		while (numregs--) {
> 			if (guc_capture_log_get_register(guc, buf, &regs[i++])) {
>@@ -1147,8 +1254,8 @@ guc_capture_extract_reglists(struct intel_guc *guc, struct __guc_capture_bufstat
> 				break;
> 			}
> 		}
>-		if (node) /* else free it */
>-			kfree(node);
>+		if (node) /* else return it back to cache list */
>+			guc_capture_add_node_to_cachelist(guc->capture.priv, node);
> 	}
> 	return ret;
> }
>@@ -1255,7 +1362,7 @@ void intel_guc_capture_destroy(struct intel_guc *guc)
>
> 	guc_capture_free_ads_cache(guc->capture.priv);
>
>-	guc_capture_delete_nodes(guc);
>+	guc_capture_delete_prealloc_nodes(guc);
>
> 	if (guc->capture.priv->extlists) {
> 		guc_capture_free_extlists(guc->capture.priv->extlists);
>@@ -1275,6 +1382,7 @@ int intel_guc_capture_init(struct intel_guc *guc)
> 	guc->capture.priv->reglists = guc_capture_get_device_reglist(guc);
>
> 	INIT_LIST_HEAD(&guc->capture.priv->outlist);
>+	INIT_LIST_HEAD(&guc->capture.priv->cachelist);
>
> 	return 0;
> }
>-- 
>2.25.1
>
