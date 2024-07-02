Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B4A3C9241E1
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jul 2024 17:08:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C34DE10E61C;
	Tue,  2 Jul 2024 15:08:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bG7S1MpX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B97210E618;
 Tue,  2 Jul 2024 15:08:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719932895; x=1751468895;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=hpBvl1AUi4zsrlEqa8tztqecJwomLzrf0D8s96gkRa4=;
 b=bG7S1MpX5NplGTZT3cOstKTAIkGUMkC7olqccEgFioNpCYdTEDTPdhpw
 94wmVO/1drPvf03LZ+qwd5A5eTDx4W2P29XmFGIgXfy7/qSbEFUzF58N+
 89BQbEu7JudibYldSx+Ywl6qp3OuSZa22XqpeggN/wNPiMhEGhAwPaBIl
 cziNnGNYYF7x7P481bzEPQmp4X/6ej3UOmmXmVu+1nDFLxbfkc0XD+DzE
 labYIvYxAH1ZWEk3dTmpgvYT5Yfp/s2yiRD6drhU6Ip2+PE4W3Ue9sfQS
 eXmfE2gtOClMPVnNcZqUHaz9lIeyrx9YxG4PzKjL11rCjK7cMmCyqbYHK A==;
X-CSE-ConnectionGUID: lbAK80plQM2YzgX+D8AYkA==
X-CSE-MsgGUID: sN8WcqOUTWmxzy9oJso/Dg==
X-IronPort-AV: E=McAfee;i="6700,10204,11121"; a="27715104"
X-IronPort-AV: E=Sophos;i="6.09,178,1716274800"; d="scan'208";a="27715104"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2024 08:08:14 -0700
X-CSE-ConnectionGUID: O20iUHB9SjyXPe1qp2qi8A==
X-CSE-MsgGUID: JE/CJGGTTJqDP3JWw983GA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,178,1716274800"; d="scan'208";a="69128642"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO mwauld-desk.intel.com)
 ([10.245.244.129])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2024 08:08:12 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
 Jonathan Cavitt <jonathan.cavitt@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Vinod Govindapillai <vinod.govindapillai@intel.com>
Subject: [PATCH v3 1/2] drm/xe/bmg: implement Wa_16023588340
Date: Tue,  2 Jul 2024 16:06:08 +0100
Message-ID: <20240702150609.155245-3-matthew.auld@intel.com>
X-Mailer: git-send-email 2.45.2
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

This involves enabling l2 caching of host side memory access to VRAM
through the CPU BAR. The main fallout here is with display since VRAM
writes from CPU can now be cached in GPU l2, and display is never
coherent with caches, so needs various manual flushing.  In the case of
fbc we disable it due to complications in getting this to work
correctly (in a later patch).

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Jonathan Cavitt <jonathan.cavitt@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Vinod Govindapillai <vinod.govindapillai@intel.com>
Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
---
 drivers/gpu/drm/xe/Makefile                |  2 +
 drivers/gpu/drm/xe/display/xe_dsb_buffer.c |  8 ++++
 drivers/gpu/drm/xe/display/xe_fb_pin.c     |  3 ++
 drivers/gpu/drm/xe/regs/xe_gt_regs.h       |  8 ++++
 drivers/gpu/drm/xe/xe_device.c             | 30 ++++++++++++
 drivers/gpu/drm/xe/xe_device.h             |  1 +
 drivers/gpu/drm/xe/xe_gt.c                 | 54 ++++++++++++++++++++++
 drivers/gpu/drm/xe/xe_pat.c                | 11 ++++-
 drivers/gpu/drm/xe/xe_wa_oob.rules         |  1 +
 9 files changed, 117 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
index b1e03bfe4a68..970c5c09e20a 100644
--- a/drivers/gpu/drm/xe/Makefile
+++ b/drivers/gpu/drm/xe/Makefile
@@ -25,12 +25,14 @@ $(obj)/generated/%_wa_oob.c $(obj)/generated/%_wa_oob.h: $(obj)/xe_gen_wa_oob \
 
 uses_generated_oob := \
 	$(obj)/xe_ggtt.o \
+	$(obj)/xe_device.o \
 	$(obj)/xe_gsc.o \
 	$(obj)/xe_gt.o \
 	$(obj)/xe_guc.o \
 	$(obj)/xe_guc_ads.o \
 	$(obj)/xe_guc_pc.o \
 	$(obj)/xe_migrate.o \
+	$(obj)/xe_pat.o \
 	$(obj)/xe_ring_ops.o \
 	$(obj)/xe_vm.o \
 	$(obj)/xe_wa.o \
diff --git a/drivers/gpu/drm/xe/display/xe_dsb_buffer.c b/drivers/gpu/drm/xe/display/xe_dsb_buffer.c
index 9e860c61f4b3..ccd0d87d438a 100644
--- a/drivers/gpu/drm/xe/display/xe_dsb_buffer.c
+++ b/drivers/gpu/drm/xe/display/xe_dsb_buffer.c
@@ -7,6 +7,8 @@
 #include "intel_display_types.h"
 #include "intel_dsb_buffer.h"
 #include "xe_bo.h"
+#include "xe_device.h"
+#include "xe_device_types.h"
 #include "xe_gt.h"
 
 u32 intel_dsb_buffer_ggtt_offset(struct intel_dsb_buffer *dsb_buf)
@@ -16,7 +18,10 @@ u32 intel_dsb_buffer_ggtt_offset(struct intel_dsb_buffer *dsb_buf)
 
 void intel_dsb_buffer_write(struct intel_dsb_buffer *dsb_buf, u32 idx, u32 val)
 {
+	struct xe_device *xe = dsb_buf->vma->bo->tile->xe;
+
 	iosys_map_wr(&dsb_buf->vma->bo->vmap, idx * 4, u32, val);
+	xe_device_l2_flush(xe);
 }
 
 u32 intel_dsb_buffer_read(struct intel_dsb_buffer *dsb_buf, u32 idx)
@@ -26,9 +31,12 @@ u32 intel_dsb_buffer_read(struct intel_dsb_buffer *dsb_buf, u32 idx)
 
 void intel_dsb_buffer_memset(struct intel_dsb_buffer *dsb_buf, u32 idx, u32 val, size_t size)
 {
+	struct xe_device *xe = dsb_buf->vma->bo->tile->xe;
+
 	WARN_ON(idx > (dsb_buf->buf_size - size) / sizeof(*dsb_buf->cmd_buf));
 
 	iosys_map_memset(&dsb_buf->vma->bo->vmap, idx * 4, val, size);
+	xe_device_l2_flush(xe);
 }
 
 bool intel_dsb_buffer_create(struct intel_crtc *crtc, struct intel_dsb_buffer *dsb_buf, size_t size)
diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/display/xe_fb_pin.c
index 423f367c7065..d7db44e79eaf 100644
--- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
+++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
@@ -10,6 +10,7 @@
 #include "intel_fb.h"
 #include "intel_fb_pin.h"
 #include "xe_bo.h"
+#include "xe_device.h"
 #include "xe_ggtt.h"
 #include "xe_gt.h"
 #include "xe_pm.h"
@@ -304,6 +305,8 @@ static struct i915_vma *__xe_pin_fb_vma(const struct intel_framebuffer *fb,
 	if (ret)
 		goto err_unpin;
 
+	/* Ensure DPT writes are flushed */
+	xe_device_l2_flush(xe);
 	return vma;
 
 err_unpin:
diff --git a/drivers/gpu/drm/xe/regs/xe_gt_regs.h b/drivers/gpu/drm/xe/regs/xe_gt_regs.h
index d44564bad009..fd9d94174efb 100644
--- a/drivers/gpu/drm/xe/regs/xe_gt_regs.h
+++ b/drivers/gpu/drm/xe/regs/xe_gt_regs.h
@@ -80,6 +80,9 @@
 #define   LE_CACHEABILITY_MASK			REG_GENMASK(1, 0)
 #define   LE_CACHEABILITY(value)		REG_FIELD_PREP(LE_CACHEABILITY_MASK, value)
 
+#define XE2_GAMREQSTRM_CTRL			XE_REG(0x4194)
+#define   CG_DIS_CNTLBUS			REG_BIT(6)
+
 #define CCS_AUX_INV				XE_REG(0x4208)
 
 #define VD0_AUX_INV				XE_REG(0x4218)
@@ -372,6 +375,11 @@
 
 #define XEHPC_L3CLOS_MASK(i)			XE_REG_MCR(0xb194 + (i) * 8)
 
+#define XE2_GLOBAL_INVAL			XE_REG(0xb404)
+
+#define SCRATCH1LPFC				XE_REG(0xb474)
+#define   EN_L3_RW_CCS_CACHE_FLUSH		REG_BIT(0)
+
 #define XE2LPM_L3SQCREG5			XE_REG_MCR(0xb658)
 
 #define XE2_TDF_CTRL				XE_REG(0xb418)
diff --git a/drivers/gpu/drm/xe/xe_device.c b/drivers/gpu/drm/xe/xe_device.c
index cfda7cb5df2c..b0f79ef6bce1 100644
--- a/drivers/gpu/drm/xe/xe_device.c
+++ b/drivers/gpu/drm/xe/xe_device.c
@@ -54,6 +54,9 @@
 #include "xe_vm.h"
 #include "xe_vram.h"
 #include "xe_wait_user_fence.h"
+#include "xe_wa.h"
+
+#include <generated/xe_wa_oob.h>
 
 static int xe_file_open(struct drm_device *dev, struct drm_file *file)
 {
@@ -779,6 +782,11 @@ void xe_device_td_flush(struct xe_device *xe)
 	if (!IS_DGFX(xe) || GRAPHICS_VER(xe) < 20)
 		return;
 
+	if (XE_WA(xe_root_mmio_gt(xe), 16023588340)) {
+		xe_device_l2_flush(xe);
+		return;
+	}
+
 	for_each_gt(gt, xe, id) {
 		if (xe_gt_is_media_type(gt))
 			continue;
@@ -802,6 +810,28 @@ void xe_device_td_flush(struct xe_device *xe)
 	}
 }
 
+void xe_device_l2_flush(struct xe_device *xe)
+{
+	struct xe_gt *gt;
+	int err;
+
+	gt = xe_root_mmio_gt(xe);
+
+	if (!XE_WA(gt, 16023588340))
+		return;
+
+	err = xe_force_wake_get(gt_to_fw(gt), XE_FW_GT);
+	if (err)
+		return;
+
+	xe_mmio_write32(gt, XE2_GLOBAL_INVAL, 0x1);
+
+	if (xe_mmio_wait32(gt, XE2_GLOBAL_INVAL, 0x1, 0x0, 150, NULL, true))
+		xe_gt_err_once(gt, "Global invalidation timeout\n");
+
+	xe_force_wake_put(gt_to_fw(gt), XE_FW_GT);
+}
+
 u32 xe_device_ccs_bytes(struct xe_device *xe, u64 size)
 {
 	return xe_device_has_flat_ccs(xe) ?
diff --git a/drivers/gpu/drm/xe/xe_device.h b/drivers/gpu/drm/xe/xe_device.h
index bb07f5669dbb..0a2a3e7fd402 100644
--- a/drivers/gpu/drm/xe/xe_device.h
+++ b/drivers/gpu/drm/xe/xe_device.h
@@ -162,6 +162,7 @@ u64 xe_device_canonicalize_addr(struct xe_device *xe, u64 address);
 u64 xe_device_uncanonicalize_addr(struct xe_device *xe, u64 address);
 
 void xe_device_td_flush(struct xe_device *xe);
+void xe_device_l2_flush(struct xe_device *xe);
 
 static inline bool xe_device_wedged(struct xe_device *xe)
 {
diff --git a/drivers/gpu/drm/xe/xe_gt.c b/drivers/gpu/drm/xe/xe_gt.c
index 29e8ea94d05e..006d3594ba55 100644
--- a/drivers/gpu/drm/xe/xe_gt.c
+++ b/drivers/gpu/drm/xe/xe_gt.c
@@ -11,6 +11,8 @@
 #include <drm/xe_drm.h>
 #include <generated/xe_wa_oob.h>
 
+#include <generated/xe_wa_oob.h>
+
 #include "instructions/xe_gfxpipe_commands.h"
 #include "instructions/xe_mi_commands.h"
 #include "regs/xe_gt_regs.h"
@@ -95,6 +97,51 @@ void xe_gt_sanitize(struct xe_gt *gt)
 	gt->uc.guc.submission_state.enabled = false;
 }
 
+static void xe_gt_enable_host_l2_vram(struct xe_gt *gt)
+{
+	u32 reg;
+	int err;
+
+	if (!XE_WA(gt, 16023588340))
+		return;
+
+	err = xe_force_wake_get(gt_to_fw(gt), XE_FW_GT);
+	if (WARN_ON(err))
+		return;
+
+	if (!xe_gt_is_media_type(gt)) {
+		xe_mmio_write32(gt, SCRATCH1LPFC, EN_L3_RW_CCS_CACHE_FLUSH);
+		reg = xe_mmio_read32(gt, XE2_GAMREQSTRM_CTRL);
+		reg |= CG_DIS_CNTLBUS;
+		xe_mmio_write32(gt, XE2_GAMREQSTRM_CTRL, reg);
+	}
+
+	xe_gt_mcr_multicast_write(gt, XEHPC_L3CLOS_MASK(3), 0x3);
+	xe_force_wake_put(gt_to_fw(gt), XE_FW_GT);
+}
+
+static void xe_gt_disable_host_l2_vram(struct xe_gt *gt)
+{
+	u32 reg;
+	int err;
+
+	if (!XE_WA(gt, 16023588340))
+		return;
+
+	if (xe_gt_is_media_type(gt))
+		return;
+
+	err = xe_force_wake_get(gt_to_fw(gt), XE_FW_GT);
+	if (WARN_ON(err))
+		return;
+
+	reg = xe_mmio_read32(gt, XE2_GAMREQSTRM_CTRL);
+	reg &= ~CG_DIS_CNTLBUS;
+	xe_mmio_write32(gt, XE2_GAMREQSTRM_CTRL, reg);
+
+	xe_force_wake_put(gt_to_fw(gt), XE_FW_GT);
+}
+
 /**
  * xe_gt_remove() - Clean up the GT structures before driver removal
  * @gt: the GT object
@@ -111,6 +158,8 @@ void xe_gt_remove(struct xe_gt *gt)
 
 	for (i = 0; i < XE_ENGINE_CLASS_MAX; ++i)
 		xe_hw_fence_irq_finish(&gt->fence_irq[i]);
+
+	xe_gt_disable_host_l2_vram(gt);
 }
 
 static void gt_reset_worker(struct work_struct *w);
@@ -508,6 +557,7 @@ int xe_gt_init_hwconfig(struct xe_gt *gt)
 
 	xe_gt_mcr_init_early(gt);
 	xe_pat_init(gt);
+	xe_gt_enable_host_l2_vram(gt);
 
 	err = xe_uc_init(&gt->uc);
 	if (err)
@@ -643,6 +693,8 @@ static int do_gt_restart(struct xe_gt *gt)
 
 	xe_pat_init(gt);
 
+	xe_gt_enable_host_l2_vram(gt);
+
 	xe_gt_mcr_set_implicit_defaults(gt);
 	xe_reg_sr_apply_mmio(&gt->reg_sr, gt);
 
@@ -796,6 +848,8 @@ int xe_gt_suspend(struct xe_gt *gt)
 
 	xe_gt_idle_disable_pg(gt);
 
+	xe_gt_disable_host_l2_vram(gt);
+
 	XE_WARN_ON(xe_force_wake_put(gt_to_fw(gt), XE_FORCEWAKE_ALL));
 	xe_gt_dbg(gt, "suspended\n");
 
diff --git a/drivers/gpu/drm/xe/xe_pat.c b/drivers/gpu/drm/xe/xe_pat.c
index 4ee32ee1cc88..722278cc23fc 100644
--- a/drivers/gpu/drm/xe/xe_pat.c
+++ b/drivers/gpu/drm/xe/xe_pat.c
@@ -7,6 +7,8 @@
 
 #include <drm/xe_drm.h>
 
+#include <generated/xe_wa_oob.h>
+
 #include "regs/xe_reg_defs.h"
 #include "xe_assert.h"
 #include "xe_device.h"
@@ -15,6 +17,7 @@
 #include "xe_gt_mcr.h"
 #include "xe_mmio.h"
 #include "xe_sriov.h"
+#include "xe_wa.h"
 
 #define _PAT_ATS				0x47fc
 #define _PAT_INDEX(index)			_PICK_EVEN_2RANGES(index, 8, \
@@ -382,7 +385,13 @@ void xe_pat_init_early(struct xe_device *xe)
 	if (GRAPHICS_VER(xe) == 20) {
 		xe->pat.ops = &xe2_pat_ops;
 		xe->pat.table = xe2_pat_table;
-		xe->pat.n_entries = ARRAY_SIZE(xe2_pat_table);
+
+		/* Wa_16023588340. XXX: Should use XE_WA */
+		if (GRAPHICS_VERx100(xe) == 2001)
+			xe->pat.n_entries = 28; /* Disable CLOS3 */
+		else
+			xe->pat.n_entries = ARRAY_SIZE(xe2_pat_table);
+
 		xe->pat.idx[XE_CACHE_NONE] = 3;
 		xe->pat.idx[XE_CACHE_WT] = 15;
 		xe->pat.idx[XE_CACHE_WB] = 2;
diff --git a/drivers/gpu/drm/xe/xe_wa_oob.rules b/drivers/gpu/drm/xe/xe_wa_oob.rules
index a6b897030fde..c6d8941621c6 100644
--- a/drivers/gpu/drm/xe/xe_wa_oob.rules
+++ b/drivers/gpu/drm/xe/xe_wa_oob.rules
@@ -28,3 +28,4 @@
 		GRAPHICS_VERSION(2004)
 13011645652	GRAPHICS_VERSION(2004)
 22019338487	MEDIA_VERSION(2000)
+16023588340	GRAPHICS_VERSION(2001)
-- 
2.45.2

