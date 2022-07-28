Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3D4E5836C2
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jul 2022 04:21:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F310E10F405;
	Thu, 28 Jul 2022 02:20:57 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF06C10F637;
 Thu, 28 Jul 2022 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658974833; x=1690510833;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gawqpkObKka+BKyy6OZ7aybbBi/898NR2G4bjyDbR40=;
 b=LBahRLfPSoSRiD9cwJRsoHO/JCm3U+oUpvtTWaTYkjvO3CSTLFjLVqnJ
 3L7m/vA2MmNig8I9wBLTtTSBZo7OnmzQdGCofU7b1tCz8/FcKXj/h95Rk
 deOXwe0qkXjUdmR+IS2ik6SSGAYMtgh6GjIT1QASxfmbgH1gCzW3+R8Mb
 yI5eUinyIA19DL3pNmkjehxq4qzo6R1rt3PcwurN2hsyzIdrY9AgzdUEp
 4b/9u8GE6cremvin5tESeicjU2ldQFpGqatA6XBmGff3qCwiPvpXVhD8r
 X5ev3frQoCNIkfjbWbg/8DVhuXiUT5+XxJjGdEVen2majr+cQwE0OwcfO w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10421"; a="285947585"
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="285947585"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 19:20:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="600648471"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by orsmga002.jf.intel.com with ESMTP; 27 Jul 2022 19:20:28 -0700
From: John.C.Harrison@Intel.com
To: Intel-GFX@Lists.FreeDesktop.Org
Date: Wed, 27 Jul 2022 19:20:25 -0700
Message-Id: <20220728022028.2190627-5-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20220728022028.2190627-1-John.C.Harrison@Intel.com>
References: <20220728022028.2190627-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/7] drm/i915/guc: Record CTB info in error logs
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
Cc: DRI-Devel@Lists.FreeDesktop.Org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: John Harrison <John.C.Harrison@Intel.com>

When debugging GuC communication issues, it is useful to have the CTB
info available. So add the state and buffer contents to the error
capture log.

Also, add a sub-structure for the GuC specific error capture info as
it is now becoming numerous.

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
---
 drivers/gpu/drm/i915/i915_gpu_error.c | 59 +++++++++++++++++++++++----
 drivers/gpu/drm/i915/i915_gpu_error.h | 20 +++++++--
 2 files changed, 67 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index addba75252343..543ba63f958ea 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -671,6 +671,18 @@ static void err_print_pciid(struct drm_i915_error_state_buf *m,
 		   pdev->subsystem_device);
 }
 
+static void err_print_guc_ctb(struct drm_i915_error_state_buf *m,
+			      const char *name,
+			      const struct intel_ctb_coredump *ctb)
+{
+	if (!ctb->size)
+		return;
+
+	err_printf(m, "GuC %s CTB: raw: 0x%08X, 0x%08X/%08X, cached: 0x%08X/%08X, desc = 0x%08X, buf = 0x%08X x 0x%08X\n",
+		   name, ctb->raw_status, ctb->raw_head, ctb->raw_tail,
+		   ctb->head, ctb->tail, ctb->desc_offset, ctb->cmds_offset, ctb->size);
+}
+
 static void err_print_uc(struct drm_i915_error_state_buf *m,
 			 const struct intel_uc_coredump *error_uc)
 {
@@ -678,8 +690,12 @@ static void err_print_uc(struct drm_i915_error_state_buf *m,
 
 	intel_uc_fw_dump(&error_uc->guc_fw, &p);
 	intel_uc_fw_dump(&error_uc->huc_fw, &p);
-	err_printf(m, "GuC timestamp: 0x%08x\n", error_uc->timestamp);
-	intel_gpu_error_print_vma(m, NULL, error_uc->guc_log);
+	err_printf(m, "GuC timestamp: 0x%08x\n", error_uc->guc.timestamp);
+	intel_gpu_error_print_vma(m, NULL, error_uc->guc.vma_log);
+	err_printf(m, "GuC CTB fence: %d\n", error_uc->guc.last_fence);
+	err_print_guc_ctb(m, "Send", error_uc->guc.ctb + 0);
+	err_print_guc_ctb(m, "Recv", error_uc->guc.ctb + 1);
+	intel_gpu_error_print_vma(m, NULL, error_uc->guc.vma_ctb);
 }
 
 static void err_free_sgl(struct scatterlist *sgl)
@@ -854,7 +870,7 @@ static void __err_print_to_sgl(struct drm_i915_error_state_buf *m,
 	if (error->gt) {
 		bool print_guc_capture = false;
 
-		if (error->gt->uc && error->gt->uc->is_guc_capture)
+		if (error->gt->uc && error->gt->uc->guc.is_guc_capture)
 			print_guc_capture = true;
 
 		err_print_gt_display(m, error->gt);
@@ -1009,7 +1025,8 @@ static void cleanup_uc(struct intel_uc_coredump *uc)
 {
 	kfree(uc->guc_fw.path);
 	kfree(uc->huc_fw.path);
-	i915_vma_coredump_free(uc->guc_log);
+	i915_vma_coredump_free(uc->guc.vma_log);
+	i915_vma_coredump_free(uc->guc.vma_ctb);
 
 	kfree(uc);
 }
@@ -1658,6 +1675,23 @@ gt_record_engines(struct intel_gt_coredump *gt,
 	}
 }
 
+static void gt_record_guc_ctb(struct intel_ctb_coredump *saved,
+			      const struct intel_guc_ct_buffer *ctb,
+			      const void *blob_ptr, struct intel_guc *guc)
+{
+	if (!ctb || !ctb->desc)
+		return;
+
+	saved->raw_status = ctb->desc->status;
+	saved->raw_head = ctb->desc->head;
+	saved->raw_tail = ctb->desc->tail;
+	saved->head = ctb->head;
+	saved->tail = ctb->tail;
+	saved->size = ctb->size;
+	saved->desc_offset = ((void *)ctb->desc) - blob_ptr;
+	saved->cmds_offset = ((void *)ctb->cmds) - blob_ptr;
+}
+
 static struct intel_uc_coredump *
 gt_record_uc(struct intel_gt_coredump *gt,
 	     struct i915_vma_compress *compress)
@@ -1684,9 +1718,16 @@ gt_record_uc(struct intel_gt_coredump *gt,
 	 * log times to system times (in conjunction with the error->boottime and
 	 * gt->clock_frequency fields saved elsewhere).
 	 */
-	error_uc->timestamp = intel_uncore_read(gt->_gt->uncore, GUCPMTIMESTAMP);
-	error_uc->guc_log = create_vma_coredump(gt->_gt, uc->guc.log.vma,
-						"GuC log buffer", compress);
+	error_uc->guc.timestamp = intel_uncore_read(gt->_gt->uncore, GUCPMTIMESTAMP);
+	error_uc->guc.vma_log = create_vma_coredump(gt->_gt, uc->guc.log.vma,
+						    "GuC log buffer", compress);
+	error_uc->guc.vma_ctb = create_vma_coredump(gt->_gt, uc->guc.ct.vma,
+						    "GuC CT buffer", compress);
+	error_uc->guc.last_fence = uc->guc.ct.requests.last_fence;
+	gt_record_guc_ctb(error_uc->guc.ctb + 0, &uc->guc.ct.ctbs.send,
+			  uc->guc.ct.ctbs.send.desc, (struct intel_guc *)&uc->guc);
+	gt_record_guc_ctb(error_uc->guc.ctb + 1, &uc->guc.ct.ctbs.recv,
+			  uc->guc.ct.ctbs.send.desc, (struct intel_guc *)&uc->guc);
 
 	return error_uc;
 }
@@ -2039,9 +2080,9 @@ __i915_gpu_coredump(struct intel_gt *gt, intel_engine_mask_t engine_mask, u32 du
 			error->gt->uc = gt_record_uc(error->gt, compress);
 			if (error->gt->uc) {
 				if (dump_flags & CORE_DUMP_FLAG_IS_GUC_CAPTURE)
-					error->gt->uc->is_guc_capture = true;
+					error->gt->uc->guc.is_guc_capture = true;
 				else
-					GEM_BUG_ON(error->gt->uc->is_guc_capture);
+					GEM_BUG_ON(error->gt->uc->guc.is_guc_capture);
 			}
 		}
 
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.h b/drivers/gpu/drm/i915/i915_gpu_error.h
index d8a8b3d529e09..efc75cc2ffdb9 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.h
+++ b/drivers/gpu/drm/i915/i915_gpu_error.h
@@ -125,6 +125,15 @@ struct intel_engine_coredump {
 	struct intel_engine_coredump *next;
 };
 
+struct intel_ctb_coredump {
+	u32 raw_head, head;
+	u32 raw_tail, tail;
+	u32 raw_status;
+	u32 desc_offset;
+	u32 cmds_offset;
+	u32 size;
+};
+
 struct intel_gt_coredump {
 	const struct intel_gt *_gt;
 	bool awake;
@@ -165,9 +174,14 @@ struct intel_gt_coredump {
 	struct intel_uc_coredump {
 		struct intel_uc_fw guc_fw;
 		struct intel_uc_fw huc_fw;
-		struct i915_vma_coredump *guc_log;
-		u32 timestamp;
-		bool is_guc_capture;
+		struct guc_info {
+			struct intel_ctb_coredump ctb[2];
+			struct i915_vma_coredump *vma_ctb;
+			struct i915_vma_coredump *vma_log;
+			u32 timestamp;
+			u16 last_fence;
+			bool is_guc_capture;
+		} guc;
 	} *uc;
 
 	struct intel_gt_coredump *next;
-- 
2.37.1

