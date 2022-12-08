Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 65E906476EB
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Dec 2022 21:01:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9869B10E4DE;
	Thu,  8 Dec 2022 20:01:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC08C10E4CC
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Dec 2022 20:01:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670529693; x=1702065693;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=frjF9F5Anr/9pF/Ckz7dH/+jsqW/dxIokDL61PykrPo=;
 b=cDirF5xxTTGOjiqPEooUBSiuDUnjJiBKjBSLTfN2vJWlsffyiJ/Zgxj9
 giYn9GE2IaxhMKCRVmbOTSwGArq4W8/i3/xbIah2FwpEimBqd0Db3FzaP
 RbDEfvEfdl2Ei/6Ksx3XHbbs4aAdkGgibLo3wNa96bST4bfj09ii18S9z
 xqgxy53QezUOe7b3C4rVwBmRJPhr6B6qj2uLw63PvYjETB+U1Kkqif10U
 iwCmOHR8Uz08nkb6xcbG3xCYPox//VbyQETwxdOuu77Z/NDpekLBC4xHV
 P7eeYfywPydkBaOpRlqzPNNsNtdlFZ+2pMm8KD5K9tFnUbfpTQD9IzFLV Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="317301821"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="317301821"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2022 12:01:14 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="597480191"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="597480191"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2022 12:01:14 -0800
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Dec 2022 12:05:19 -0800
Message-Id: <20221208200521.2928378-5-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221208200521.2928378-1-daniele.ceraolospurio@intel.com>
References: <20221208200521.2928378-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 4/6] drm/i915/gsc: Do a driver-FLR on unload if GSC
 was loaded
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

If the GSC was loaded, the only way to stop it during the driver unload
flow is to do a driver-FLR.
The driver-initiated FLR is not the same as PCI config space FLR in
that it doesn't reset the SGUnit and doesn't modify the PCI config
space. Thus, it doesn't require a re-enumeration of the PCI BARs.
However, the driver-FLR does cause a memory wipe of graphics memory
on all discrete GPU platforms or a wipe limited to stolen memory
on the integrated GPU platforms.

We perform the FLR as the last action before releasing the MMIO bar, so
that we don't have to care about the consequences of the reset on the
unload flow.

v2: rename FLR function, add comment to explain FLR impact (Rodrigo),
    better explain why GSC needs FLR (Alan)

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c | 23 ++++++++++
 drivers/gpu/drm/i915/i915_reg.h           |  3 ++
 drivers/gpu/drm/i915/intel_uncore.c       | 56 +++++++++++++++++++++++
 drivers/gpu/drm/i915/intel_uncore.h       | 13 ++++++
 4 files changed, 95 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c
index f88069ab71ab..e73d4440c5e8 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c
@@ -166,6 +166,29 @@ int intel_gsc_uc_fw_upload(struct intel_gsc_uc *gsc)
 	if (err)
 		goto fail;
 
+	/*
+	 * GSC is only killed by an FLR, so we need to trigger one on unload to
+	 * make sure we stop it. This is because we assign a chunk of memory to
+	 * the GSC as part of the FW load , so we need to make sure it stops
+	 * using it when we release it to the system on driver unload. Note that
+	 * this is not a problem of the unload per-se, because the GSC will not
+	 * touch that memory unless there are requests for it coming from the
+	 * driver; therefore, no accesses will happen while i915 is not loaded,
+	 * but if we re-load the driver then the GSC might wake up and try to
+	 * access that old memory location again.
+	 * Given that an FLR is a very disruptive action (see the FLR function
+	 * for details), we want to do it as the last action before releasing
+	 * the access to the MMIO bar, which means we need to do it as part of
+	 * the primary uncore cleanup.
+	 * An alternative approach to the FLR would be to use a memory location
+	 * that survives driver unload, like e.g. stolen memory, and keep the
+	 * GSC loaded across reloads. However, this requires us to make sure we
+	 * preserve that memory location on unload and then determine and
+	 * reserve its offset on each subsequent load, which is not trivial, so
+	 * it is easier to just kill everything and start fresh.
+	 */
+	intel_uncore_set_flr_on_fini(&gt->i915->uncore);
+
 	err = gsc_fw_load(gsc);
 	if (err)
 		goto fail;
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 0b90fe6a28f7..b95d533652a4 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -118,6 +118,9 @@
 
 #define GU_CNTL				_MMIO(0x101010)
 #define   LMEM_INIT			REG_BIT(7)
+#define   DRIVERFLR			REG_BIT(31)
+#define GU_DEBUG			_MMIO(0x101018)
+#define   DRIVERFLR_STATUS		REG_BIT(31)
 
 #define GEN6_STOLEN_RESERVED		_MMIO(0x1082C0)
 #define GEN6_STOLEN_RESERVED_ADDR_MASK	(0xFFF << 20)
diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
index 614013745fca..64685393f031 100644
--- a/drivers/gpu/drm/i915/intel_uncore.c
+++ b/drivers/gpu/drm/i915/intel_uncore.c
@@ -2703,6 +2703,59 @@ void intel_uncore_prune_engine_fw_domains(struct intel_uncore *uncore,
 	}
 }
 
+/*
+ * The driver-initiated FLR is the highest level of reset that we can trigger
+ * from within the driver. It is different from the PCI FLR in that it doesn't
+ * fully reset the SGUnit and doesn't modify the PCI config space and therefore
+ * it doesn't require a re-enumeration of the PCI BARs. However, the
+ * driver-initiated FLR does still cause a reset of both GT and display and a
+ * memory wipe of local and stolen memory, so recovery would require a full HW
+ * re-init and saving/restoring (or re-populating) the wiped memory. Since we
+ * perform the FLR as the very last action before releasing access to the HW
+ * during the driver release flow, we don't attempt recovery at all, because
+ * if/when a new instance of i915 is bound to the device it will do a full
+ * re-init anyway.
+ */
+static void driver_initiated_flr(struct intel_uncore *uncore)
+{
+	struct drm_i915_private *i915 = uncore->i915;
+	const unsigned int flr_timeout_ms = 3000; /* specs recommend a 3s wait */
+	int ret;
+
+	drm_dbg(&i915->drm, "Triggering Driver-FLR\n");
+
+	/*
+	 * Make sure any pending FLR requests have cleared by waiting for the
+	 * FLR trigger bit to go to zero. Also clear GU_DEBUG's DRIVERFLR_STATUS
+	 * to make sure it's not still set from a prior attempt (it's a write to
+	 * clear bit).
+	 * Note that we should never be in a situation where a previous attempt
+	 * is still pending (unless the HW is totally dead), but better to be
+	 * safe in case something unexpected happens
+	 */
+	ret = intel_wait_for_register_fw(uncore, GU_CNTL, DRIVERFLR, 0, flr_timeout_ms);
+	if (ret) {
+		drm_err(&i915->drm,
+			"Failed to wait for Driver-FLR bit to clear! %d\n",
+			ret);
+		return;
+	}
+	intel_uncore_write_fw(uncore, GU_DEBUG, DRIVERFLR_STATUS);
+
+	/* Trigger the actual Driver-FLR */
+	intel_uncore_rmw_fw(uncore, GU_CNTL, 0, DRIVERFLR);
+
+	ret = intel_wait_for_register_fw(uncore, GU_DEBUG,
+					 DRIVERFLR_STATUS, DRIVERFLR_STATUS,
+					 flr_timeout_ms);
+	if (ret) {
+		drm_err(&i915->drm, "wait for Driver-FLR completion failed! %d\n", ret);
+		return;
+	}
+
+	intel_uncore_write_fw(uncore, GU_DEBUG, DRIVERFLR_STATUS);
+}
+
 /* Called via drm-managed action */
 void intel_uncore_fini_mmio(struct drm_device *dev, void *data)
 {
@@ -2716,6 +2769,9 @@ void intel_uncore_fini_mmio(struct drm_device *dev, void *data)
 		intel_uncore_fw_domains_fini(uncore);
 		iosf_mbi_punit_release();
 	}
+
+	if (intel_uncore_needs_flr_on_fini(uncore))
+		driver_initiated_flr(uncore);
 }
 
 /**
diff --git a/drivers/gpu/drm/i915/intel_uncore.h b/drivers/gpu/drm/i915/intel_uncore.h
index e9e38490815d..9ea1f4864a3a 100644
--- a/drivers/gpu/drm/i915/intel_uncore.h
+++ b/drivers/gpu/drm/i915/intel_uncore.h
@@ -153,6 +153,7 @@ struct intel_uncore {
 #define UNCORE_HAS_FPGA_DBG_UNCLAIMED	BIT(1)
 #define UNCORE_HAS_DBG_UNCLAIMED	BIT(2)
 #define UNCORE_HAS_FIFO			BIT(3)
+#define UNCORE_NEEDS_FLR_ON_FINI	BIT(4)
 
 	const struct intel_forcewake_range *fw_domains_table;
 	unsigned int fw_domains_table_entries;
@@ -223,6 +224,18 @@ intel_uncore_has_fifo(const struct intel_uncore *uncore)
 	return uncore->flags & UNCORE_HAS_FIFO;
 }
 
+static inline bool
+intel_uncore_needs_flr_on_fini(const struct intel_uncore *uncore)
+{
+	return uncore->flags & UNCORE_NEEDS_FLR_ON_FINI;
+}
+
+static inline bool
+intel_uncore_set_flr_on_fini(struct intel_uncore *uncore)
+{
+	return uncore->flags |= UNCORE_NEEDS_FLR_ON_FINI;
+}
+
 void intel_uncore_mmio_debug_init_early(struct drm_i915_private *i915);
 void intel_uncore_init_early(struct intel_uncore *uncore,
 			     struct intel_gt *gt);
-- 
2.37.3

