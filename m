Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 419BFB508E8
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Sep 2025 00:36:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78A6910E813;
	Tue,  9 Sep 2025 22:36:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="P0onYJfJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A27310E813
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Sep 2025 22:36:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757457390; x=1788993390;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=2WgqHEaXsxuAPTmlGreouk1U20Bo/1HbhUxL5cMe2Bs=;
 b=P0onYJfJKZLZ1qq5vlGAdsdMKHT+o6NCPg+6C/MW2/q1rVgNbmKsPyMQ
 UD1WFIwIUf6qETVHZ2sT/nCYNQpU+W7RoQ1tk7y2IbzZqPMhrWK8El1mo
 yu1M4Oebr566S2xaXotgNnHLqa8UrivNjHGi0oy5Aswz3eBZ9fufAMYJW
 Yhl+bsMONWxaUJk6bfcv3mSRjVBRDFp9hmxeN5CYn56Z+yoFdGlXbQTr2
 RlmM+3oBcI3WvOr3FU2c1J9eQr/1wsrrWX8BWkvxoqkJeV1aXWUcp0QdB
 4MAjChPACgUkMUxlNP2AnIB5tqe+azTIPWbSUYrk293KX1swUW3lLspOs Q==;
X-CSE-ConnectionGUID: vgQfZFCWQ7SgpWimIiqqnQ==
X-CSE-MsgGUID: Tp0GARE7SB62xKhFwy/XoA==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="59682093"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="59682093"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2025 15:36:29 -0700
X-CSE-ConnectionGUID: /77flfheTR2PS4tcMng+AQ==
X-CSE-MsgGUID: P8CEP3DKRfWpwXUm3jqPqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,252,1751266800"; d="scan'208";a="172806611"
Received: from valcore-skull-1.fm.intel.com ([10.1.39.17])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2025 15:36:29 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 John Harrison <John.C.Harrison@Intel.com>
Subject: [PATCH v3] drm/i915/guc: Include the GuC registers in the error state
Date: Tue,  9 Sep 2025 15:36:22 -0700
Message-ID: <20250909223621.3782625-2-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

If GuC hangs, the GuC logs might not contain enough information to
understand exactly why the hang occurred. In this case, we need to
look at the GuC HW state to try to understand where the GuC is stuck. It
is therefore useful to include the GuC HW state in the error capture.

The list of registers that are part of the GuC HW state can change based
on platform, but it is the same for all platforms from TGL to MTL so we
only need to support one version for i915.

v2: revised list
v3: remove confusing comment, use sizeof(u32) instead of 4 (John)

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: John Harrison <John.C.Harrison@Intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c  |   8 ++
 drivers/gpu/drm/i915/gt/uc/intel_guc_reg.h |   1 +
 drivers/gpu/drm/i915/i915_gpu_error.c      | 102 +++++++++++++++++++++
 drivers/gpu/drm/i915/i915_gpu_error.h      |   1 +
 4 files changed, 112 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c
index e7ccfa520df3..384d1400134d 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c
@@ -46,6 +46,14 @@ static void guc_prepare_xfer(struct intel_gt *gt)
 		/* allows for 5us (in 10ns units) before GT can go to RC6 */
 		intel_uncore_write(uncore, GUC_ARAT_C6DIS, 0x1FF);
 	}
+
+	/*
+	 * Starting from IP 12.50 we need to enable the mirroring of GuC
+	 * internal state to debug registers. This is always enabled on previous
+	 * IPs.
+	 */
+	if (GRAPHICS_VER_FULL(uncore->i915) >= IP_VER(12, 50))
+		intel_uncore_rmw(uncore, GUC_SHIM_CONTROL2, 0, GUC_ENABLE_DEBUG_REG);
 }
 
 static int guc_xfer_rsa_mmio(struct intel_uc_fw *guc_fw,
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_reg.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_reg.h
index 3fd798837502..f73dab527547 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_reg.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_reg.h
@@ -96,6 +96,7 @@
 #define   GUC_GEN10_SHIM_WC_ENABLE		(1<<21)
 
 #define GUC_SHIM_CONTROL2		_MMIO(0xc068)
+#define   GUC_ENABLE_DEBUG_REG		(1<<11)
 #define   GUC_IS_PRIVILEGED		(1<<29)
 #define   GSC_LOADS_HUC			(1<<30)
 
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index 89f7c04a3330..7582ef34bf3f 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -685,6 +685,74 @@ static void err_print_guc_ctb(struct drm_i915_error_state_buf *m,
 		   ctb->head, ctb->tail, ctb->desc_offset, ctb->cmds_offset, ctb->size);
 }
 
+/* This list includes registers that are useful in debugging GuC hangs. */
+const struct {
+	u32 start;
+	u32 count;
+} guc_hw_reg_state[] = {
+	{ 0xc0b0, 2 },
+	{ 0xc000, 65 },
+	{ 0xc140, 1 },
+	{ 0xc180, 16 },
+	{ 0xc1dc, 10 },
+	{ 0xc300, 79 },
+	{ 0xc4b4, 47 },
+	{ 0xc574, 1 },
+	{ 0xc57c, 1 },
+	{ 0xc584, 11 },
+	{ 0xc5c0, 8 },
+	{ 0xc5e4, 1 },
+	{ 0xc5ec, 103 },
+	{ 0xc7c0, 1 },
+	{ 0xc0b0, 2 }
+};
+
+static u32 print_range_line(struct drm_i915_error_state_buf *m, u32 start, u32 *dump, u32 count)
+{
+	if (count >= 8) {
+		err_printf(m, "[0x%04x] 0x%08x 0x%08x 0x%08x 0x%08x 0x%08x 0x%08x 0x%08x 0x%08x\n",
+			   start, dump[0], dump[1], dump[2], dump[3],
+			   dump[4], dump[5], dump[6], dump[7]);
+		return 8;
+	} else if (count >= 4) {
+		err_printf(m, "[0x%04x] 0x%08x 0x%08x 0x%08x 0x%08x\n",
+			   start, dump[0], dump[1], dump[2], dump[3]);
+		return 4;
+	} else if (count >= 2) {
+		err_printf(m, "[0x%04x] 0x%08x 0x%08x\n", start, dump[0], dump[1]);
+		return 2;
+	}
+
+	err_printf(m, "[0x%04x] 0x%08x\n", start, dump[0]);
+	return 1;
+}
+
+static void err_print_guc_hw_state(struct drm_i915_error_state_buf *m, u32 *hw_state)
+{
+	u32 total = 0;
+	int i;
+
+	if (!hw_state)
+		return;
+
+	err_printf(m, "GuC Register State:\n");
+
+	for (i = 0; i < ARRAY_SIZE(guc_hw_reg_state); i++) {
+		u32 entry = 0;
+
+		while (entry < guc_hw_reg_state[i].count) {
+			u32 start = guc_hw_reg_state[i].start + entry * sizeof(u32);
+			u32 count = guc_hw_reg_state[i].count - entry;
+			u32 *values = hw_state + total + entry;
+
+			entry += print_range_line(m, start, values, count);
+		}
+
+		GEM_BUG_ON(entry != guc_hw_reg_state[i].count);
+		total += entry;
+	}
+}
+
 static void err_print_uc(struct drm_i915_error_state_buf *m,
 			 const struct intel_uc_coredump *error_uc)
 {
@@ -693,6 +761,7 @@ static void err_print_uc(struct drm_i915_error_state_buf *m,
 	intel_uc_fw_dump(&error_uc->guc_fw, &p);
 	intel_uc_fw_dump(&error_uc->huc_fw, &p);
 	err_printf(m, "GuC timestamp: 0x%08x\n", error_uc->guc.timestamp);
+	err_print_guc_hw_state(m, error_uc->guc.hw_state);
 	intel_gpu_error_print_vma(m, NULL, error_uc->guc.vma_log);
 	err_printf(m, "GuC CTB fence: %d\n", error_uc->guc.last_fence);
 	err_print_guc_ctb(m, "Send", error_uc->guc.ctb + 0);
@@ -1025,6 +1094,7 @@ static void cleanup_uc(struct intel_uc_coredump *uc)
 	kfree(uc->huc_fw.file_wanted.path);
 	i915_vma_coredump_free(uc->guc.vma_log);
 	i915_vma_coredump_free(uc->guc.vma_ctb);
+	kfree(uc->guc.hw_state);
 
 	kfree(uc);
 }
@@ -1721,6 +1791,37 @@ static void gt_record_guc_ctb(struct intel_ctb_coredump *saved,
 	saved->cmds_offset = ((void *)ctb->cmds) - blob_ptr;
 }
 
+static u32 read_guc_state_reg(struct intel_uncore *uncore, int range, int count)
+{
+	GEM_BUG_ON(range >= ARRAY_SIZE(guc_hw_reg_state));
+	GEM_BUG_ON(count >= guc_hw_reg_state[range].count);
+
+	return intel_uncore_read(uncore,
+				 _MMIO(guc_hw_reg_state[range].start + count * sizeof(u32)));
+}
+
+static void gt_record_guc_hw_state(struct intel_uncore *uncore,
+				   struct intel_uc_coredump *error_uc)
+{
+	u32 *hw_state;
+	u32 count = 0;
+	int i, j;
+
+	for (i = 0; i < ARRAY_SIZE(guc_hw_reg_state); i++)
+		count += guc_hw_reg_state[i].count;
+
+	hw_state = kcalloc(count, sizeof(u32), ALLOW_FAIL);
+	if (!hw_state)
+		return;
+
+	count = 0;
+	for (i = 0; i < ARRAY_SIZE(guc_hw_reg_state); i++)
+		for (j = 0; j < guc_hw_reg_state[i].count; j++)
+			hw_state[count++] = read_guc_state_reg(uncore, i, j);
+
+	error_uc->guc.hw_state = hw_state;
+}
+
 static struct intel_uc_coredump *
 gt_record_uc(struct intel_gt_coredump *gt,
 	     struct i915_vma_compress *compress)
@@ -1755,6 +1856,7 @@ gt_record_uc(struct intel_gt_coredump *gt,
 			  uc->guc.ct.ctbs.send.desc, (struct intel_guc *)&uc->guc);
 	gt_record_guc_ctb(error_uc->guc.ctb + 1, &uc->guc.ct.ctbs.recv,
 			  uc->guc.ct.ctbs.send.desc, (struct intel_guc *)&uc->guc);
+	gt_record_guc_hw_state(gt->_gt->uncore, error_uc);
 
 	return error_uc;
 }
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.h b/drivers/gpu/drm/i915/i915_gpu_error.h
index 182324979278..91b3df621a49 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.h
+++ b/drivers/gpu/drm/i915/i915_gpu_error.h
@@ -177,6 +177,7 @@ struct intel_gt_coredump {
 			struct intel_ctb_coredump ctb[2];
 			struct i915_vma_coredump *vma_ctb;
 			struct i915_vma_coredump *vma_log;
+			u32 *hw_state;
 			u32 timestamp;
 			u16 last_fence;
 			bool is_guc_capture;
-- 
2.43.0

