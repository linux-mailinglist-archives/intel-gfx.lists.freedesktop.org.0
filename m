Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 06934B1560B
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Jul 2025 01:33:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E28410E342;
	Tue, 29 Jul 2025 23:33:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BGtf3Qed";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71FD510E342
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Jul 2025 23:33:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753831996; x=1785367996;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=0p0bYoySLw6SWwXaoavklKyud4RbFsovIS6ggNwo/74=;
 b=BGtf3Qedge8F0FvjCKz2K9p5Qkzb0XFP7rSVOkCOg7F/cV3OIUo3DM2J
 divCW5YxcZLt96zqnXQRoFHuhdksCcIter19T7MSskdnbGkPIl4gtSulJ
 Y2DWHUAsfTLPCW149dNHf74Wx2ks/sq97hmcHuqFMDZvdin39CnGWy+yw
 e8WLiip/HM/Z7jx3+asZcar74tjDjkxXU+IKZCp2r7oyno329oPZ+p7K0
 fW74EYqMTtf1w6dC8C1oy1M6MwLnAjqnuUhm00gQ9fYBEJQHjLKFfsATQ
 CWiGVdZgzyLBhweDNS/ilJEN384NNAuiEEk4P/EGzItmhXdbAr3Ao904q g==;
X-CSE-ConnectionGUID: 2p4Wu5y1QRmiNUsZay+1pg==
X-CSE-MsgGUID: 3WOP04onQW2gtpAfco5e2w==
X-IronPort-AV: E=McAfee;i="6800,10657,11506"; a="67561614"
X-IronPort-AV: E=Sophos;i="6.16,350,1744095600"; d="scan'208";a="67561614"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2025 16:33:16 -0700
X-CSE-ConnectionGUID: V9vWHHueSlSqWpNGvkBheg==
X-CSE-MsgGUID: XoA/pOWrS6i6U8mQlBVfxA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,350,1744095600"; d="scan'208";a="200012495"
Received: from valcore-skull-1.fm.intel.com ([10.1.39.17])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2025 16:33:16 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 John Harrison <John.C.Harrison@Intel.com>
Subject: [PATCH] drm/i915/guc: Include the GuC registers in the error state
Date: Tue, 29 Jul 2025 16:33:06 -0700
Message-ID: <20250729233305.1246875-2-daniele.ceraolospurio@intel.com>
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

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: John Harrison <John.C.Harrison@Intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c  |   8 ++
 drivers/gpu/drm/i915/gt/uc/intel_guc_reg.h |   1 +
 drivers/gpu/drm/i915/i915_gpu_error.c      | 101 +++++++++++++++++++++
 drivers/gpu/drm/i915/i915_gpu_error.h      |   1 +
 4 files changed, 111 insertions(+)

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
index f434b6825fc2..45c7722db7f9 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -685,6 +685,73 @@ static void err_print_guc_ctb(struct drm_i915_error_state_buf *m,
 		   ctb->head, ctb->tail, ctb->desc_offset, ctb->cmds_offset, ctb->size);
 }
 
+/*
+ * This list includes registers that are useful in debugging GuC hangs. We
+ * include them in the error state so that we don't have to reproduce the
+ * issue locally to capture them.
+ */
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
+	{ 0xc584, 23 },
+	{ 0xc5e4, 105 },
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
+		while (entry < guc_hw_reg_state[i].count)
+			entry += print_range_line(m, guc_hw_reg_state[i].start + entry * 4,
+						  hw_state + total + entry,
+						  guc_hw_reg_state[i].count - entry);
+
+		GEM_BUG_ON(entry != guc_hw_reg_state[i].count);
+		total += entry;
+	}
+}
+
 static void err_print_uc(struct drm_i915_error_state_buf *m,
 			 const struct intel_uc_coredump *error_uc)
 {
@@ -693,6 +760,7 @@ static void err_print_uc(struct drm_i915_error_state_buf *m,
 	intel_uc_fw_dump(&error_uc->guc_fw, &p);
 	intel_uc_fw_dump(&error_uc->huc_fw, &p);
 	err_printf(m, "GuC timestamp: 0x%08x\n", error_uc->guc.timestamp);
+	err_print_guc_hw_state(m, error_uc->guc.hw_state);
 	intel_gpu_error_print_vma(m, NULL, error_uc->guc.vma_log);
 	err_printf(m, "GuC CTB fence: %d\n", error_uc->guc.last_fence);
 	err_print_guc_ctb(m, "Send", error_uc->guc.ctb + 0);
@@ -1025,6 +1093,7 @@ static void cleanup_uc(struct intel_uc_coredump *uc)
 	kfree(uc->huc_fw.file_wanted.path);
 	i915_vma_coredump_free(uc->guc.vma_log);
 	i915_vma_coredump_free(uc->guc.vma_ctb);
+	kfree(uc->guc.hw_state);
 
 	kfree(uc);
 }
@@ -1721,6 +1790,37 @@ static void gt_record_guc_ctb(struct intel_ctb_coredump *saved,
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
@@ -1755,6 +1855,7 @@ gt_record_uc(struct intel_gt_coredump *gt,
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

