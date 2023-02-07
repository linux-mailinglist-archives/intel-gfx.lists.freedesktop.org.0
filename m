Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8590968CEAD
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Feb 2023 06:07:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0247B10E2EB;
	Tue,  7 Feb 2023 05:07:13 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC23110E2E4;
 Tue,  7 Feb 2023 05:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675746428; x=1707282428;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rk53c4u2zdjTqF9v7UX7pkPFywuj+sHDOJ0U+Si6OT0=;
 b=jn92o2UrY9JoT1ixzwSptpE2R2gvrJtos7bDZCG3F/bX+s0+LQukgmRd
 QAgoLYfhEHBk9czs7ONvDgaOwc9c/3P2/eCYzX7GZZ6rfnx+nQ7wcuDE6
 nXwO1AEbqB0cLC4AWPTl2rhLrmncTONkxKNWMlZQs1ZKP0YZ4QnZE+CGt
 k4ZlbfjX9x9T8M3Bu9yizDDikHrhWCrcdxNhD+purVdRybZXxX//Ftkk0
 pMgYTjBKieH17nUrzvc6bTh54xXnx1Y5USNoI+nBJpRV9fq6GUvPS1fe0
 7P2kEEXuaXGrLGbbHvS6BsROU/y6C4RGbDydCb8Y9U57WxO10E4rLFmLO g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="309049940"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="309049940"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2023 21:07:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="840631502"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="840631502"
Received: from relo-linux-5.jf.intel.com ([10.165.21.152])
 by orsmga005.jf.intel.com with ESMTP; 06 Feb 2023 21:07:07 -0800
From: John.C.Harrison@Intel.com
To: Intel-GFX@Lists.FreeDesktop.Org
Date: Mon,  6 Feb 2023 21:07:14 -0800
Message-Id: <20230207050717.1833718-4-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230207050717.1833718-1-John.C.Harrison@Intel.com>
References: <20230207050717.1833718-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 3/6] drm/i915/guc: More debug print updates -
 GuC reg capture
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
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>,
 DRI-Devel@Lists.FreeDesktop.Org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: John Harrison <John.C.Harrison@Intel.com>

Update a bunch more debug prints to use the new GT based scheme.

v2: Upgrade the no node found message to a warning on the grounds of
it being quite important if the error capture can't find any register
state information.

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
Reviewed-by: Alan Previn <alan.previn.teres.alexis@intel.com>
---
 .../gpu/drm/i915/gt/uc/intel_guc_capture.c    | 51 ++++++++-----------
 1 file changed, 21 insertions(+), 30 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
index fc3b994626a4f..101d44de729b1 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
@@ -15,6 +15,7 @@
 #include "guc_capture_fwif.h"
 #include "intel_guc_capture.h"
 #include "intel_guc_fwif.h"
+#include "intel_guc_print.h"
 #include "i915_drv.h"
 #include "i915_gpu_error.h"
 #include "i915_irq.h"
@@ -353,7 +354,6 @@ guc_capture_alloc_steered_lists_xe_hpg(struct intel_guc *guc,
 				       u32 ipver)
 {
 	struct intel_gt *gt = guc_to_gt(guc);
-	struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
 	struct sseu_dev_info *sseu;
 	int slice, subslice, i, iter, num_steer_regs, num_tot_regs = 0;
 	const struct __guc_mmio_reg_descr_group *list;
@@ -402,7 +402,7 @@ guc_capture_alloc_steered_lists_xe_hpg(struct intel_guc *guc,
 		}
 	}
 
-	drm_dbg(&i915->drm, "GuC-capture found %d-ext-regs.\n", num_tot_regs);
+	guc_dbg(guc, "capture found %d ext-regs.\n", num_tot_regs);
 	guc->capture->extlists = extlists;
 }
 
@@ -477,7 +477,6 @@ guc_capture_list_init(struct intel_guc *guc, u32 owner, u32 type, u32 classid,
 		      struct guc_mmio_reg *ptr, u16 num_entries)
 {
 	u32 i = 0, j = 0;
-	struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
 	const struct __guc_mmio_reg_descr_group *reglists = guc->capture->reglists;
 	struct __guc_mmio_reg_descr_group *extlists = guc->capture->extlists;
 	const struct __guc_mmio_reg_descr_group *match;
@@ -509,8 +508,7 @@ guc_capture_list_init(struct intel_guc *guc, u32 owner, u32 type, u32 classid,
 		}
 	}
 	if (i < num_entries)
-		drm_dbg(&i915->drm, "GuC-capture: Init reglist short %d out %d.\n",
-			(int)i, (int)num_entries);
+		guc_dbg(guc, "Got short capture reglist init: %d out %d.\n", i, num_entries);
 
 	return 0;
 }
@@ -540,12 +538,11 @@ guc_capture_getlistsize(struct intel_guc *guc, u32 owner, u32 type, u32 classid,
 			size_t *size, bool is_purpose_est)
 {
 	struct intel_guc_state_capture *gc = guc->capture;
-	struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
 	struct __guc_capture_ads_cache *cache = &gc->ads_cache[owner][type][classid];
 	int num_regs;
 
 	if (!gc->reglists) {
-		drm_warn(&i915->drm, "GuC-capture: No reglist on this device\n");
+		guc_warn(guc, "No capture reglist for this device\n");
 		return -ENODEV;
 	}
 
@@ -557,9 +554,9 @@ guc_capture_getlistsize(struct intel_guc *guc, u32 owner, u32 type, u32 classid,
 	if (!is_purpose_est && owner == GUC_CAPTURE_LIST_INDEX_PF &&
 	    !guc_capture_get_one_list(gc->reglists, owner, type, classid)) {
 		if (type == GUC_CAPTURE_LIST_TYPE_GLOBAL)
-			drm_warn(&i915->drm, "Missing GuC-Err-Cap reglist Global!\n");
+			guc_warn(guc, "Missing capture reglist: global!\n");
 		else
-			drm_warn(&i915->drm, "Missing GuC-Err-Cap reglist %s(%u):%s(%u)!\n",
+			guc_warn(guc, "Missing capture reglist: %s(%u):%s(%u)!\n",
 				 __stringify_type(type), type,
 				 __stringify_engclass(classid), classid);
 		return -ENODATA;
@@ -592,7 +589,6 @@ intel_guc_capture_getlist(struct intel_guc *guc, u32 owner, u32 type, u32 classi
 {
 	struct intel_guc_state_capture *gc = guc->capture;
 	struct __guc_capture_ads_cache *cache = &gc->ads_cache[owner][type][classid];
-	struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
 	struct guc_debug_capture_list *listnode;
 	int ret, num_regs;
 	u8 *caplist, *tmp;
@@ -623,7 +619,7 @@ intel_guc_capture_getlist(struct intel_guc *guc, u32 owner, u32 type, u32 classi
 
 	caplist = kzalloc(size, GFP_KERNEL);
 	if (!caplist) {
-		drm_dbg(&i915->drm, "GuC-capture: failed to alloc cached caplist");
+		guc_dbg(guc, "Failed to alloc cached register capture list");
 		return -ENOMEM;
 	}
 
@@ -653,7 +649,6 @@ intel_guc_capture_getnullheader(struct intel_guc *guc,
 				void **outptr, size_t *size)
 {
 	struct intel_guc_state_capture *gc = guc->capture;
-	struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
 	int tmp = sizeof(u32) * 4;
 	void *null_header;
 
@@ -665,7 +660,7 @@ intel_guc_capture_getnullheader(struct intel_guc *guc,
 
 	null_header = kzalloc(tmp, GFP_KERNEL);
 	if (!null_header) {
-		drm_dbg(&i915->drm, "GuC-capture: failed to alloc cached nulllist");
+		guc_dbg(guc, "Failed to alloc cached register capture null list");
 		return -ENOMEM;
 	}
 
@@ -727,7 +722,6 @@ guc_capture_output_min_size_est(struct intel_guc *guc)
 
 static void check_guc_capture_size(struct intel_guc *guc)
 {
-	struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
 	int min_size = guc_capture_output_min_size_est(guc);
 	int spare_size = min_size * GUC_CAPTURE_OVERBUFFER_MULTIPLIER;
 	u32 buffer_size = intel_guc_log_section_size_capture(&guc->log);
@@ -741,13 +735,13 @@ static void check_guc_capture_size(struct intel_guc *guc)
 	 * INTEL_GUC_STATE_CAPTURE_EVENT_STATUS_NOSPACE.
 	 */
 	if (min_size < 0)
-		drm_warn(&i915->drm, "Failed to calculate GuC error state capture buffer minimum size: %d!\n",
+		guc_warn(guc, "Failed to calculate error state capture buffer minimum size: %d!\n",
 			 min_size);
 	else if (min_size > buffer_size)
-		drm_warn(&i915->drm, "GuC error state capture buffer maybe small: %d < %d\n",
+		guc_warn(guc, "Error state capture buffer maybe small: %d < %d\n",
 			 buffer_size, min_size);
 	else if (spare_size > buffer_size)
-		drm_dbg(&i915->drm, "GuC error state capture buffer lacks spare size: %d < %d (min = %d)\n",
+		guc_dbg(guc, "Error state capture buffer lacks spare size: %d < %d (min = %d)\n",
 			buffer_size, spare_size, min_size);
 }
 
@@ -848,7 +842,6 @@ static int
 guc_capture_log_remove_dw(struct intel_guc *guc, struct __guc_capture_bufstate *buf,
 			  u32 *dw)
 {
-	struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
 	int tries = 2;
 	int avail = 0;
 	u32 *src_data;
@@ -865,7 +858,7 @@ guc_capture_log_remove_dw(struct intel_guc *guc, struct __guc_capture_bufstate *
 			return 4;
 		}
 		if (avail)
-			drm_dbg(&i915->drm, "GuC-Cap-Logs not dword aligned, skipping.\n");
+			guc_dbg(guc, "Register capture log not dword aligned, skipping.\n");
 		buf->rd = 0;
 	}
 
@@ -1118,13 +1111,12 @@ static void
 __guc_capture_create_prealloc_nodes(struct intel_guc *guc)
 {
 	struct __guc_capture_parsed_output *node = NULL;
-	struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
 	int i;
 
 	for (i = 0; i < PREALLOC_NODES_MAX_COUNT; ++i) {
 		node = guc_capture_alloc_one_node(guc);
 		if (!node) {
-			drm_warn(&i915->drm, "GuC Capture pre-alloc-cache failure\n");
+			guc_warn(guc, "Register capture pre-alloc-cache failure\n");
 			/* dont free the priors, use what we got and cleanup at shutdown */
 			return;
 		}
@@ -1169,7 +1161,6 @@ guc_capture_create_prealloc_nodes(struct intel_guc *guc)
 static int
 guc_capture_extract_reglists(struct intel_guc *guc, struct __guc_capture_bufstate *buf)
 {
-	struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
 	struct guc_state_capture_group_header_t ghdr = {0};
 	struct guc_state_capture_header_t hdr = {0};
 	struct __guc_capture_parsed_output *node = NULL;
@@ -1183,7 +1174,7 @@ guc_capture_extract_reglists(struct intel_guc *guc, struct __guc_capture_bufstat
 	if (!i)
 		return -ENODATA;
 	if (i % sizeof(u32)) {
-		drm_warn(&i915->drm, "GuC Capture new entries unaligned\n");
+		guc_warn(guc, "Got mis-aligned register capture entries\n");
 		ret = -EIO;
 		goto bailout;
 	}
@@ -1301,7 +1292,7 @@ guc_capture_extract_reglists(struct intel_guc *guc, struct __guc_capture_bufstat
 				break;
 			}
 			if (datatype != GUC_CAPTURE_LIST_TYPE_GLOBAL)
-				drm_dbg(&i915->drm, "GuC Capture missing global dump: %08x!\n",
+				guc_dbg(guc, "Register capture missing global dump: %08x!\n",
 					datatype);
 		}
 		node->is_partial = is_partial;
@@ -1322,7 +1313,7 @@ guc_capture_extract_reglists(struct intel_guc *guc, struct __guc_capture_bufstat
 
 		numregs = FIELD_GET(CAP_HDR_NUM_MMIOS, hdr.num_mmios);
 		if (numregs > guc->capture->max_mmio_per_node) {
-			drm_dbg(&i915->drm, "GuC Capture list extraction clipped by prealloc!\n");
+			guc_dbg(guc, "Register capture list extraction clipped by prealloc!\n");
 			numregs = guc->capture->max_mmio_per_node;
 		}
 		node->reginfo[datatype].num_regs = numregs;
@@ -1367,7 +1358,6 @@ static void __guc_capture_process_output(struct intel_guc *guc)
 {
 	unsigned int buffer_size, read_offset, write_offset, full_count;
 	struct intel_uc *uc = container_of(guc, typeof(*uc), guc);
-	struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
 	struct guc_log_buffer_state log_buf_state_local;
 	struct guc_log_buffer_state *log_buf_state;
 	struct __guc_capture_bufstate buf;
@@ -1403,7 +1393,8 @@ static void __guc_capture_process_output(struct intel_guc *guc)
 		write_offset = buffer_size;
 	} else if (unlikely((read_offset > buffer_size) ||
 			(write_offset > buffer_size))) {
-		drm_err(&i915->drm, "invalid GuC log capture buffer state!\n");
+		guc_err(guc, "Register capture buffer in invalid state: read = 0x%X, size = 0x%X!\n",
+			read_offset, buffer_size);
 		/* copy whole buffer as offsets are unreliable */
 		read_offset = 0;
 		write_offset = buffer_size;
@@ -1586,13 +1577,11 @@ void intel_guc_capture_get_matching_node(struct intel_gt *gt,
 					 struct intel_context *ce)
 {
 	struct __guc_capture_parsed_output *n, *ntmp;
-	struct drm_i915_private *i915;
 	struct intel_guc *guc;
 
 	if (!gt || !ee || !ce)
 		return;
 
-	i915 = gt->i915;
 	guc = &gt->uc.guc;
 	if (!guc->capture)
 		return;
@@ -1615,7 +1604,9 @@ void intel_guc_capture_get_matching_node(struct intel_gt *gt,
 			return;
 		}
 	}
-	drm_dbg(&i915->drm, "GuC capture can't match ee to node\n");
+
+	guc_warn(guc, "No register capture node found for 0x%04X / 0x%08X\n",
+		 ce->guc_id.id, ce->lrc.lrca);
 }
 
 void intel_guc_capture_process(struct intel_guc *guc)
-- 
2.39.1

