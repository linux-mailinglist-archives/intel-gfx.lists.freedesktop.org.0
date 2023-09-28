Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 743CE7B24E9
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Sep 2023 20:10:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D99610E6AC;
	Thu, 28 Sep 2023 18:10:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D10410E6AC
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Sep 2023 18:09:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695924596; x=1727460596;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vVQW72ENVDKj31cZw9XJz3cAm22T4K7UtFm8ZYesG2A=;
 b=jfVveoMeR6aHw2MZJUMwz1Pb2WMInr7UIH9eEAKNbMKo9EvOEJf515Dl
 HZncEeOsc+72TIYRSs4MO91iYC+5GoDRfgCwn3uNTv/+hdN183wlg+KpN
 JPlrsN24+SKSNV62hRL7ZDxz8N4VjcbHyUmRawFVajcZKqaFxiLAhK33R
 v9g4tpzqV/ISL8BdgUd9XE1eG8Rs6mGKA2pZF2K3d5W2ASH0mirvPk9YV
 ODSLnKFPtPu6yCYIG53HL2d90bRPQ8V8mk22hGu8VEOA0nxOVTUKgcRg7
 KSIw0YQ723m8llE/ljYFO6KeTHGAvadc6Jpln5Fwk/pxKMGyDpNs6Y+Jx w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="448627830"
X-IronPort-AV: E=Sophos;i="6.03,184,1694761200"; d="scan'208";a="448627830"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2023 11:09:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="865366577"
X-IronPort-AV: E=Sophos;i="6.03,184,1694761200"; d="scan'208";a="865366577"
Received: from danielba-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.53.20])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2023 11:09:44 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 28 Sep 2023 21:08:55 +0300
Message-Id: <a82ecc95cbc9dfbb5853e483740a8f849c0dc043.1695924021.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1695924021.git.jani.nikula@intel.com>
References: <cover.1695924021.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 11/15] drm/i915/guc: don't look at gpu error
 guts in guc capture
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The new interfaces aren't pretty, but it clarifies the separation
between intel_guc_capture.c and i915_gpu_error.c. The former should not
modify stuff internal to the latter.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/gt/uc/intel_guc_capture.c    | 63 ++++++++-----------
 .../gpu/drm/i915/gt/uc/intel_guc_capture.h    | 20 ++++--
 drivers/gpu/drm/i915/i915_gpu_error.c         | 24 +++++--
 3 files changed, 57 insertions(+), 50 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
index 331cec07c125..cdbe7b5c997f 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
@@ -1415,7 +1415,8 @@ guc_capture_reg_to_str(const struct intel_guc *guc, u32 owner, u32 type,
 	} while (0)
 
 int intel_guc_capture_print_engine_node(struct drm_i915_error_state_buf *ebuf,
-					const struct intel_engine_coredump *ee)
+					struct __guc_capture_parsed_output *node,
+					struct intel_guc *guc)
 {
 	const char *grptype[GUC_STATE_CAPTURE_GROUP_TYPE_MAX] = {
 		"full-capture",
@@ -1426,31 +1427,14 @@ int intel_guc_capture_print_engine_node(struct drm_i915_error_state_buf *ebuf,
 		"Engine-Class",
 		"Engine-Instance"
 	};
-	struct intel_guc_state_capture *cap;
-	struct __guc_capture_parsed_output *node;
 	struct intel_engine_cs *eng;
 	struct guc_mmio_reg *regs;
-	struct intel_guc *guc;
 	const char *str;
 	int numregs, i, j;
 	u32 is_ext;
 
-	if (!ebuf || !ee)
+	if (!ebuf)
 		return -EINVAL;
-	cap = ee->guc_capture;
-	if (!cap || !ee->engine)
-		return -ENODEV;
-
-	guc = &ee->engine->gt->uc.guc;
-
-	i915_error_printf(ebuf, "global --- GuC Error Capture on %s command stream:\n",
-			  ee->engine->name);
-
-	node = ee->guc_capture_node;
-	if (!node) {
-		i915_error_printf(ebuf, "  No matching ee-node\n");
-		return 0;
-	}
 
 	i915_error_printf(ebuf, "Coverage:  %s\n", grptype[node->is_partial]);
 
@@ -1502,7 +1486,8 @@ int intel_guc_capture_print_engine_node(struct drm_i915_error_state_buf *ebuf,
 
 #endif //CONFIG_DRM_I915_CAPTURE_ERROR
 
-static void guc_capture_find_ecode(struct intel_engine_coredump *ee)
+static void guc_capture_find_ecode(struct __guc_capture_parsed_output *guc_capture_node,
+				   u32 *ipehr, u32 *instdone)
 {
 	struct gcap_reg_list_info *reginfo;
 	struct guc_mmio_reg *regs;
@@ -1510,27 +1495,26 @@ static void guc_capture_find_ecode(struct intel_engine_coredump *ee)
 	i915_reg_t reg_instdone = RING_INSTDONE(0);
 	int i;
 
-	if (!ee->guc_capture_node)
+	if (!guc_capture_node)
 		return;
 
-	reginfo = ee->guc_capture_node->reginfo + GUC_CAPTURE_LIST_TYPE_ENGINE_INSTANCE;
+	reginfo = guc_capture_node->reginfo + GUC_CAPTURE_LIST_TYPE_ENGINE_INSTANCE;
 	regs = reginfo->regs;
 	for (i = 0; i < reginfo->num_regs; i++) {
 		if (regs[i].offset == reg_ipehr.reg)
-			ee->ipehr = regs[i].value;
+			*ipehr = regs[i].value;
 		else if (regs[i].offset == reg_instdone.reg)
-			ee->instdone.instdone = regs[i].value;
+			*instdone = regs[i].value;
 	}
 }
 
-void intel_guc_capture_free_node(struct intel_engine_coredump *ee)
+void intel_guc_capture_free_node(struct intel_guc_state_capture *guc_capture,
+				 struct __guc_capture_parsed_output *guc_capture_node)
 {
-	if (!ee || !ee->guc_capture_node)
+	if (!guc_capture_node)
 		return;
 
-	guc_capture_add_node_to_cachelist(ee->guc_capture, ee->guc_capture_node);
-	ee->guc_capture = NULL;
-	ee->guc_capture_node = NULL;
+	guc_capture_add_node_to_cachelist(guc_capture, guc_capture_node);
 }
 
 bool intel_guc_capture_is_matching_engine(struct intel_gt *gt,
@@ -1564,20 +1548,23 @@ bool intel_guc_capture_is_matching_engine(struct intel_gt *gt,
 }
 
 void intel_guc_capture_get_matching_node(struct intel_gt *gt,
-					 struct intel_engine_coredump *ee,
-					 struct intel_context *ce)
+					 struct intel_context *ce,
+					 unsigned int guc_id,
+					 struct intel_guc_state_capture **guc_capture,
+					 struct __guc_capture_parsed_output **guc_capture_node,
+					 u32 *ipehr, u32 *instdone)
 {
 	struct __guc_capture_parsed_output *n, *ntmp;
 	struct intel_guc *guc;
 
-	if (!gt || !ee || !ce)
+	if (!gt || !ce)
 		return;
 
 	guc = &gt->uc.guc;
 	if (!guc->capture)
 		return;
 
-	GEM_BUG_ON(ee->guc_capture_node);
+	GEM_BUG_ON(*guc_capture_node);
 
 	/*
 	 * Look for a matching GuC reported error capture node from
@@ -1585,14 +1572,14 @@ void intel_guc_capture_get_matching_node(struct intel_gt *gt,
 	 * identification.
 	 */
 	list_for_each_entry_safe(n, ntmp, &guc->capture->outlist, link) {
-		if (n->eng_inst == GUC_ID_TO_ENGINE_INSTANCE(ee->engine->guc_id) &&
-		    n->eng_class == GUC_ID_TO_ENGINE_CLASS(ee->engine->guc_id) &&
+		if (n->eng_inst == GUC_ID_TO_ENGINE_INSTANCE(guc_id) &&
+		    n->eng_class == GUC_ID_TO_ENGINE_CLASS(guc_id) &&
 		    n->guc_id == ce->guc_id.id &&
 		    (n->lrca & CTX_GTT_ADDRESS_MASK) == (ce->lrc.lrca & CTX_GTT_ADDRESS_MASK)) {
 			list_del(&n->link);
-			ee->guc_capture_node = n;
-			ee->guc_capture = guc->capture;
-			guc_capture_find_ecode(ee);
+			*guc_capture_node = n;
+			*guc_capture = guc->capture;
+			guc_capture_find_ecode(n, ipehr, instdone);
 			return;
 		}
 	}
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h
index 302256d45431..b5862a2672f3 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h
@@ -8,19 +8,27 @@
 
 #include <linux/types.h>
 
+struct __guc_capture_parsed_output;
 struct drm_i915_error_state_buf;
 struct guc_gt_system_info;
+struct intel_context;
 struct intel_engine_coredump;
 struct intel_engine_cs;
-struct intel_context;
 struct intel_gt;
 struct intel_guc;
+struct intel_guc_state_capture;
 
-void intel_guc_capture_free_node(struct intel_engine_coredump *ee);
-int intel_guc_capture_print_engine_node(struct drm_i915_error_state_buf *m,
-					const struct intel_engine_coredump *ee);
-void intel_guc_capture_get_matching_node(struct intel_gt *gt, struct intel_engine_coredump *ee,
-					 struct intel_context *ce);
+void intel_guc_capture_free_node(struct intel_guc_state_capture *guc_capture,
+				 struct __guc_capture_parsed_output *guc_capture_node);
+int intel_guc_capture_print_engine_node(struct drm_i915_error_state_buf *ebuf,
+					struct __guc_capture_parsed_output *node,
+					struct intel_guc *guc);
+void intel_guc_capture_get_matching_node(struct intel_gt *gt,
+					 struct intel_context *ce,
+					 unsigned int guc_id,
+					 struct intel_guc_state_capture **guc_capture,
+					 struct __guc_capture_parsed_output **guc_capture_node,
+					 u32 *ipehr, u32 *instdone);
 bool intel_guc_capture_is_matching_engine(struct intel_gt *gt, struct intel_context *ce,
 					  struct intel_engine_cs *engine);
 void intel_guc_capture_process(struct intel_guc *guc);
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index 837542c94b00..e73b53b384a5 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -815,11 +815,16 @@ static void err_print_gt_engines(struct drm_i915_error_state_buf *m,
 		const struct i915_vma_coredump *vma;
 
 		if (gt->uc && gt->uc->guc.is_guc_capture) {
-			if (ee->guc_capture_node)
-				intel_guc_capture_print_engine_node(m, ee);
-			else
+			if (ee->guc_capture && ee->guc_capture_node && ee->engine) {
+				i915_error_printf(m, "global --- GuC Error Capture on %s command stream:\n",
+						  ee->engine->name);
+
+				intel_guc_capture_print_engine_node(m, ee->guc_capture_node,
+								    &ee->engine->gt->uc.guc);
+			} else {
 				err_printf(m, "  Missing GuC capture node for %s\n",
 					   ee->engine->name);
+			}
 		} else {
 			error_print_engine(m, ee);
 		}
@@ -1053,7 +1058,8 @@ static void cleanup_gt(struct intel_gt_coredump *gt)
 		gt->engine = ee->next;
 
 		i915_vma_coredump_free(ee->vma);
-		intel_guc_capture_free_node(ee);
+		intel_guc_capture_free_node(ee->guc_capture,
+					    ee->guc_capture_node);
 		kfree(ee);
 	}
 
@@ -1669,7 +1675,12 @@ capture_engine(struct intel_engine_cs *engine,
 		intel_engine_coredump_add_vma(ee, capture, compress);
 
 		if (dump_flags & CORE_DUMP_FLAG_IS_GUC_CAPTURE)
-			intel_guc_capture_get_matching_node(engine->gt, ee, ce);
+			intel_guc_capture_get_matching_node(engine->gt, ce,
+							    ee->engine->guc_id,
+							    &ee->guc_capture,
+							    &ee->guc_capture_node,
+							    &ee->ipehr,
+							    &ee->instdone.instdone);
 	} else {
 		kfree(ee);
 		ee = NULL;
@@ -1702,7 +1713,8 @@ gt_record_engines(struct intel_gt_coredump *gt,
 		gt->simulated |= ee->simulated;
 		if (ee->simulated) {
 			if (dump_flags & CORE_DUMP_FLAG_IS_GUC_CAPTURE)
-				intel_guc_capture_free_node(ee);
+				intel_guc_capture_free_node(ee->guc_capture,
+							    ee->guc_capture_node);
 			kfree(ee);
 			continue;
 		}
-- 
2.39.2

