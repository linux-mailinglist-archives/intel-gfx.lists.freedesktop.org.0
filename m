Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E787A643A94
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Dec 2022 02:15:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 878EE10E2EA;
	Tue,  6 Dec 2022 01:15:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56D0610E0E1;
 Tue,  6 Dec 2022 01:15:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670289323; x=1701825323;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=I/Y+cYjnaoXSl79lsR8w/XmF60xYusI1054NWyZ2YFY=;
 b=Sj0MCC0hu5zJxL4czQ4ECRFhotmjVujL6ePecWEdfrMx2W4jPxTKnvrG
 CNbh/YVVJE0Pj032Lnwa9FEqWJXLmB4jez4ynxTplTCWiwIPxjifC6sUV
 wYx+erIYbDsRID67Hq78SBQVmGJ3hGHs2eSf4Bum25I5V1gGrzq4j5BQv
 qoXWM/azJRd/TWVL4CDc6W/EYk8DLsd/Z87Hk2YjeB4CaWmVj9Ccx7f4A
 OG6uN1i3kCHa7EisAXa5vN+d9vlgUjWfLB4snyTPEDK4ohEsrJPHV3Gya
 h6qMGvPn47i4V1mWNsC4C3nfnw1FPhw8IPT9ntmtunijPgcPNvuip+4WL w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="317650468"
X-IronPort-AV: E=Sophos;i="5.96,220,1665471600"; d="scan'208";a="317650468"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2022 17:15:23 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="974890714"
X-IronPort-AV: E=Sophos;i="5.96,220,1665471600"; d="scan'208";a="974890714"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2022 17:15:22 -0800
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  5 Dec 2022 17:19:05 -0800
Message-Id: <20221206011908.2745508-4-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221206011908.2745508-1-daniele.ceraolospurio@intel.com>
References: <20221206011908.2745508-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 3/6] drm/i915/gsc: GSC firmware loading
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
 dri-devel@lists.freedesktop.org, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

GSC FW is loaded by submitting a dedicated command via the GSC engine.
The memory area used for loading the FW is then re-purposed as local
memory for the GSC itself, so we use a separate allocation instead of
using the one where we keep the firmware stored for reload.

The GSC is not reset as part of GT reset, so we only need to load it on
first boot and S3/S4 exit.

v2: use REG_* for register fields definitions (Rodrigo), move to WQ
    immediately

Bspec: 63347, 65346
Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
Cc: John Harrison <John.C.Harrison@Intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/Makefile                |   1 +
 drivers/gpu/drm/i915/gt/intel_engine.h       |   2 +
 drivers/gpu/drm/i915/gt/intel_gpu_commands.h |   7 +
 drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c    | 187 +++++++++++++++++++
 drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.h    |  15 ++
 drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.c    |  69 ++++++-
 drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.h    |  11 ++
 drivers/gpu/drm/i915/gt/uc/intel_uc.c        |   6 +
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c     |  20 +-
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h     |   1 +
 10 files changed, 313 insertions(+), 6 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c
 create mode 100644 drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 69f6e9af1b56..dfa211451a1d 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -189,6 +189,7 @@ i915-y += \
 
 # general-purpose microcontroller (GuC) support
 i915-y += \
+	  gt/uc/intel_gsc_fw.o \
 	  gt/uc/intel_gsc_uc.o \
 	  gt/uc/intel_guc.o \
 	  gt/uc/intel_guc_ads.o \
diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h b/drivers/gpu/drm/i915/gt/intel_engine.h
index cbc8b857d5f7..0e24af5efee9 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine.h
@@ -172,6 +172,8 @@ intel_write_status_page(struct intel_engine_cs *engine, int reg, u32 value)
 #define I915_GEM_HWS_MIGRATE		(0x42 * sizeof(u32))
 #define I915_GEM_HWS_PXP		0x60
 #define I915_GEM_HWS_PXP_ADDR		(I915_GEM_HWS_PXP * sizeof(u32))
+#define I915_GEM_HWS_GSC		0x62
+#define I915_GEM_HWS_GSC_ADDR		(I915_GEM_HWS_GSC * sizeof(u32))
 #define I915_GEM_HWS_SCRATCH		0x80
 
 #define I915_HWS_CSB_BUF0_INDEX		0x10
diff --git a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
index f50ea92910d9..49ebda141266 100644
--- a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
+++ b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
@@ -21,6 +21,7 @@
 #define INSTR_CLIENT_SHIFT      29
 #define   INSTR_MI_CLIENT       0x0
 #define   INSTR_BC_CLIENT       0x2
+#define   INSTR_GSC_CLIENT      0x2 /* MTL+ */
 #define   INSTR_RC_CLIENT       0x3
 #define INSTR_SUBCLIENT_SHIFT   27
 #define INSTR_SUBCLIENT_MASK    0x18000000
@@ -432,6 +433,12 @@
 #define COLOR_BLT     ((0x2<<29)|(0x40<<22))
 #define SRC_COPY_BLT  ((0x2<<29)|(0x43<<22))
 
+#define GSC_INSTR(opcode, data, flags) \
+	(__INSTR(INSTR_GSC_CLIENT) | (opcode) << 22 | (data) << 9 | (flags))
+
+#define GSC_FW_LOAD GSC_INSTR(1, 0, 2)
+#define   HECI1_FW_LIMIT_VALID (1<<31)
+
 /*
  * Used to convert any address to canonical form.
  * Starting from gen8, some commands (e.g. STATE_BASE_ADDRESS,
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c
new file mode 100644
index 000000000000..f88069ab71ab
--- /dev/null
+++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c
@@ -0,0 +1,187 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2022 Intel Corporation
+ */
+
+#include "gt/intel_engine_pm.h"
+#include "gt/intel_gpu_commands.h"
+#include "gt/intel_gt.h"
+#include "gt/intel_ring.h"
+#include "intel_gsc_fw.h"
+
+#define GSC_FW_STATUS_REG			_MMIO(0x116C40)
+#define GSC_FW_CURRENT_STATE			REG_GENMASK(3, 0)
+#define   GSC_FW_CURRENT_STATE_RESET		0
+#define GSC_FW_INIT_COMPLETE_BIT		REG_BIT(9)
+
+static bool gsc_is_in_reset(struct intel_uncore *uncore)
+{
+	u32 fw_status = intel_uncore_read(uncore, GSC_FW_STATUS_REG);
+
+	return REG_FIELD_GET(GSC_FW_CURRENT_STATE, fw_status) ==
+	       GSC_FW_CURRENT_STATE_RESET;
+}
+
+bool intel_gsc_uc_fw_init_done(struct intel_gsc_uc *gsc)
+{
+	struct intel_uncore *uncore = gsc_uc_to_gt(gsc)->uncore;
+	u32 fw_status = intel_uncore_read(uncore, GSC_FW_STATUS_REG);
+
+	return fw_status & GSC_FW_INIT_COMPLETE_BIT;
+}
+
+static int emit_gsc_fw_load(struct i915_request *rq, struct intel_gsc_uc *gsc)
+{
+	u32 offset = i915_ggtt_offset(gsc->local);
+	u32 *cs;
+
+	cs = intel_ring_begin(rq, 4);
+	if (IS_ERR(cs))
+		return PTR_ERR(cs);
+
+	*cs++ = GSC_FW_LOAD;
+	*cs++ = lower_32_bits(offset);
+	*cs++ = upper_32_bits(offset);
+	*cs++ = (gsc->local->size / SZ_4K) | HECI1_FW_LIMIT_VALID;
+
+	intel_ring_advance(rq, cs);
+
+	return 0;
+}
+
+static int gsc_fw_load(struct intel_gsc_uc *gsc)
+{
+	struct intel_context *ce = gsc->ce;
+	struct i915_request *rq;
+	int err;
+
+	if (!ce)
+		return -ENODEV;
+
+	rq = i915_request_create(ce);
+	if (IS_ERR(rq))
+		return PTR_ERR(rq);
+
+	if (ce->engine->emit_init_breadcrumb) {
+		err = ce->engine->emit_init_breadcrumb(rq);
+		if (err)
+			goto out_rq;
+	}
+
+	err = emit_gsc_fw_load(rq, gsc);
+	if (err)
+		goto out_rq;
+
+	err = ce->engine->emit_flush(rq, 0);
+
+out_rq:
+	i915_request_get(rq);
+
+	if (unlikely(err))
+		i915_request_set_error_once(rq, err);
+
+	i915_request_add(rq);
+
+	if (!err && i915_request_wait(rq, 0, msecs_to_jiffies(500)) < 0)
+		err = -ETIME;
+
+	i915_request_put(rq);
+
+	if (err)
+		drm_err(&gsc_uc_to_gt(gsc)->i915->drm,
+			"Request submission for GSC load failed (%d)\n",
+			err);
+
+	return err;
+}
+
+static int gsc_fw_load_prepare(struct intel_gsc_uc *gsc)
+{
+	struct intel_gt *gt = gsc_uc_to_gt(gsc);
+	struct drm_i915_private *i915 = gt->i915;
+	struct drm_i915_gem_object *obj;
+	void *src, *dst;
+
+	if (!gsc->local)
+		return -ENODEV;
+
+	obj = gsc->local->obj;
+
+	if (obj->base.size < gsc->fw.size)
+		return -ENOSPC;
+
+	dst = i915_gem_object_pin_map_unlocked(obj,
+					       i915_coherent_map_type(i915, obj, true));
+	if (IS_ERR(dst))
+		return PTR_ERR(dst);
+
+	src = i915_gem_object_pin_map_unlocked(gsc->fw.obj,
+					       i915_coherent_map_type(i915, gsc->fw.obj, true));
+	if (IS_ERR(src)) {
+		i915_gem_object_unpin_map(obj);
+		return PTR_ERR(src);
+	}
+
+	memset(dst, 0, obj->base.size);
+	memcpy(dst, src, gsc->fw.size);
+
+	i915_gem_object_unpin_map(gsc->fw.obj);
+	i915_gem_object_unpin_map(obj);
+
+	return 0;
+}
+
+static int gsc_fw_wait(struct intel_gt *gt)
+{
+	return intel_wait_for_register(gt->uncore,
+				       GSC_FW_STATUS_REG,
+				       GSC_FW_INIT_COMPLETE_BIT,
+				       GSC_FW_INIT_COMPLETE_BIT,
+				       500);
+}
+
+int intel_gsc_uc_fw_upload(struct intel_gsc_uc *gsc)
+{
+	struct intel_gt *gt = gsc_uc_to_gt(gsc);
+	struct intel_uc_fw *gsc_fw = &gsc->fw;
+	int err;
+
+	/* check current fw status */
+	if (intel_gsc_uc_fw_init_done(gsc)) {
+		if (GEM_WARN_ON(!intel_uc_fw_is_loaded(gsc_fw)))
+			intel_uc_fw_change_status(gsc_fw, INTEL_UC_FIRMWARE_TRANSFERRED);
+		return -EEXIST;
+	}
+
+	if (!intel_uc_fw_is_loadable(gsc_fw))
+		return -ENOEXEC;
+
+	/* FW blob is ok, so clean the status */
+	intel_uc_fw_sanitize(&gsc->fw);
+
+	if (!gsc_is_in_reset(gt->uncore))
+		return -EIO;
+
+	err = gsc_fw_load_prepare(gsc);
+	if (err)
+		goto fail;
+
+	err = gsc_fw_load(gsc);
+	if (err)
+		goto fail;
+
+	err = gsc_fw_wait(gt);
+	if (err)
+		goto fail;
+
+	/* FW is not fully operational until we enable SW proxy */
+	intel_uc_fw_change_status(gsc_fw, INTEL_UC_FIRMWARE_TRANSFERRED);
+
+	drm_info(&gt->i915->drm, "Loaded GSC firmware %s\n",
+		 gsc_fw->file_selected.path);
+
+	return 0;
+
+fail:
+	return intel_uc_fw_mark_load_failed(gsc_fw, err);
+}
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.h b/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.h
new file mode 100644
index 000000000000..4b5dbb44afb4
--- /dev/null
+++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.h
@@ -0,0 +1,15 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2022 Intel Corporation
+ */
+
+#ifndef _INTEL_GSC_FW_H_
+#define _INTEL_GSC_FW_H_
+
+#include <linux/types.h>
+
+struct intel_gsc_uc;
+
+int intel_gsc_uc_fw_upload(struct intel_gsc_uc *gsc);
+bool intel_gsc_uc_fw_init_done(struct intel_gsc_uc *gsc);
+#endif
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.c
index 65cbf1ce9fa1..b1a2f15137b3 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.c
@@ -7,8 +7,19 @@
 
 #include "gt/intel_gt.h"
 #include "intel_gsc_uc.h"
+#include "intel_gsc_fw.h"
 #include "i915_drv.h"
 
+void gsc_work(struct work_struct *work)
+{
+	struct intel_gsc_uc *gsc = container_of(work, typeof(*gsc), work);
+	struct intel_gt *gt = gsc_uc_to_gt(gsc);
+	intel_wakeref_t wakeref;
+
+	with_intel_runtime_pm(gt->uncore->rpm, wakeref)
+		intel_gsc_uc_fw_upload(gsc);
+}
+
 static bool gsc_engine_supported(struct intel_gt *gt)
 {
 	intel_engine_mask_t mask;
@@ -32,6 +43,7 @@ static bool gsc_engine_supported(struct intel_gt *gt)
 void intel_gsc_uc_init_early(struct intel_gsc_uc *gsc)
 {
 	intel_uc_fw_init_early(&gsc->fw, INTEL_UC_FW_TYPE_GSC);
+	INIT_WORK(&gsc->work, gsc_work);
 
 	/* we can arrive here from i915_driver_early_probe for primary
 	 * GT with it being not fully setup hence check device info's
@@ -45,17 +57,46 @@ void intel_gsc_uc_init_early(struct intel_gsc_uc *gsc)
 
 int intel_gsc_uc_init(struct intel_gsc_uc *gsc)
 {
-	struct drm_i915_private *i915 = gsc_uc_to_gt(gsc)->i915;
+	static struct lock_class_key gsc_lock;
+	struct intel_gt *gt = gsc_uc_to_gt(gsc);
+	struct drm_i915_private *i915 = gt->i915;
+	struct intel_engine_cs *engine = gt->engine[GSC0];
+	struct intel_context *ce;
+	struct i915_vma *vma;
 	int err;
 
 	err = intel_uc_fw_init(&gsc->fw);
 	if (err)
 		goto out;
 
+	vma = intel_guc_allocate_vma(&gt->uc.guc, SZ_8M);
+	if (IS_ERR(vma)) {
+		err = PTR_ERR(vma);
+		goto out_fw;
+	}
+
+	gsc->local = vma;
+
+	ce = intel_engine_create_pinned_context(engine, engine->gt->vm, SZ_4K,
+						I915_GEM_HWS_GSC_ADDR,
+						&gsc_lock, "gsc_context");
+	if (IS_ERR(ce)) {
+		drm_err(&gt->i915->drm,
+			"failed to create GSC CS ctx for FW communication\n");
+		err =  PTR_ERR(ce);
+		goto out_vma;
+	}
+
+	gsc->ce = ce;
+
 	intel_uc_fw_change_status(&gsc->fw, INTEL_UC_FIRMWARE_LOADABLE);
 
 	return 0;
 
+out_vma:
+	i915_vma_unpin_and_release(&gsc->local, 0);
+out_fw:
+	intel_uc_fw_fini(&gsc->fw);
 out:
 	i915_probe_error(i915, "failed with %d\n", err);
 	return err;
@@ -66,5 +107,31 @@ void intel_gsc_uc_fini(struct intel_gsc_uc *gsc)
 	if (!intel_uc_fw_is_loadable(&gsc->fw))
 		return;
 
+	flush_work(&gsc->work);
+
+	if (gsc->ce)
+		intel_engine_destroy_pinned_context(fetch_and_zero(&gsc->ce));
+
+	i915_vma_unpin_and_release(&gsc->local, 0);
+
 	intel_uc_fw_fini(&gsc->fw);
 }
+
+void intel_gsc_uc_suspend(struct intel_gsc_uc *gsc)
+{
+	if (!intel_uc_fw_is_loadable(&gsc->fw))
+		return;
+
+	flush_work(&gsc->work);
+}
+
+void intel_gsc_uc_load_start(struct intel_gsc_uc *gsc)
+{
+	if (!intel_uc_fw_is_loadable(&gsc->fw))
+		return;
+
+	if (intel_gsc_uc_fw_init_done(gsc))
+		return;
+
+	queue_work(system_unbound_wq, &gsc->work);
+}
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.h b/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.h
index ea2b1c0713b8..03fd0a8e8db1 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.h
@@ -8,14 +8,25 @@
 
 #include "intel_uc_fw.h"
 
+struct i915_vma;
+struct intel_context;
+
 struct intel_gsc_uc {
 	/* Generic uC firmware management */
 	struct intel_uc_fw fw;
+
+	/* GSC-specific additions */
+	struct i915_vma *local; /* private memory for GSC usage */
+	struct intel_context *ce; /* for submission to GSC FW via GSC engine */
+
+	struct work_struct work; /* for delayed load */
 };
 
 void intel_gsc_uc_init_early(struct intel_gsc_uc *gsc);
 int intel_gsc_uc_init(struct intel_gsc_uc *gsc);
 void intel_gsc_uc_fini(struct intel_gsc_uc *gsc);
+void intel_gsc_uc_suspend(struct intel_gsc_uc *gsc);
+void intel_gsc_uc_load_start(struct intel_gsc_uc *gsc);
 
 static inline bool intel_gsc_uc_is_supported(struct intel_gsc_uc *gsc)
 {
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
index 6f74586f87d8..9a8a1abf71d7 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
@@ -7,6 +7,7 @@
 
 #include "gt/intel_gt.h"
 #include "gt/intel_reset.h"
+#include "intel_gsc_fw.h"
 #include "intel_gsc_uc.h"
 #include "intel_guc.h"
 #include "intel_guc_ads.h"
@@ -548,6 +549,8 @@ static int __uc_init_hw(struct intel_uc *uc)
 		intel_rps_lower_unslice(&uc_to_gt(uc)->rps);
 	}
 
+	intel_gsc_uc_load_start(&uc->gsc);
+
 	drm_info(&i915->drm, "GuC submission %s\n",
 		 str_enabled_disabled(intel_uc_uses_guc_submission(uc)));
 	drm_info(&i915->drm, "GuC SLPC %s\n",
@@ -676,6 +679,9 @@ void intel_uc_suspend(struct intel_uc *uc)
 	intel_wakeref_t wakeref;
 	int err;
 
+	/* flush the GSC worker */
+	intel_gsc_uc_suspend(&uc->gsc);
+
 	if (!intel_guc_is_ready(guc)) {
 		guc->interrupts.enabled = false;
 		return;
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
index 78ab60c07a2b..d6ff6c584c1e 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
@@ -930,6 +930,20 @@ static int uc_fw_xfer(struct intel_uc_fw *uc_fw, u32 dst_offset, u32 dma_flags)
 	return ret;
 }
 
+int intel_uc_fw_mark_load_failed(struct intel_uc_fw *uc_fw, int err)
+{
+	struct intel_gt *gt = __uc_fw_to_gt(uc_fw);
+
+	GEM_BUG_ON(!intel_uc_fw_is_loadable(uc_fw));
+
+	i915_probe_error(gt->i915, "Failed to load %s firmware %s (%d)\n",
+			 intel_uc_fw_type_repr(uc_fw->type), uc_fw->file_selected.path,
+			 err);
+	intel_uc_fw_change_status(uc_fw, INTEL_UC_FIRMWARE_LOAD_FAIL);
+
+	return err;
+}
+
 /**
  * intel_uc_fw_upload - load uC firmware using custom loader
  * @uc_fw: uC firmware
@@ -966,11 +980,7 @@ int intel_uc_fw_upload(struct intel_uc_fw *uc_fw, u32 dst_offset, u32 dma_flags)
 	return 0;
 
 fail:
-	i915_probe_error(gt->i915, "Failed to load %s firmware %s (%d)\n",
-			 intel_uc_fw_type_repr(uc_fw->type), uc_fw->file_selected.path,
-			 err);
-	intel_uc_fw_change_status(uc_fw, INTEL_UC_FIRMWARE_LOAD_FAIL);
-	return err;
+	return intel_uc_fw_mark_load_failed(uc_fw, err);
 }
 
 static inline bool uc_fw_need_rsa_in_memory(struct intel_uc_fw *uc_fw)
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h
index f4310516b3e6..6ba00e6b3975 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h
@@ -289,6 +289,7 @@ int intel_uc_fw_upload(struct intel_uc_fw *uc_fw, u32 offset, u32 dma_flags);
 int intel_uc_fw_init(struct intel_uc_fw *uc_fw);
 void intel_uc_fw_fini(struct intel_uc_fw *uc_fw);
 size_t intel_uc_fw_copy_rsa(struct intel_uc_fw *uc_fw, void *dst, u32 max_len);
+int intel_uc_fw_mark_load_failed(struct intel_uc_fw *uc_fw, int err);
 void intel_uc_fw_dump(const struct intel_uc_fw *uc_fw, struct drm_printer *p);
 
 #endif
-- 
2.37.3

