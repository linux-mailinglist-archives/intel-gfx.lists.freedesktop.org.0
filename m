Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BC9EE4D8A71
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Mar 2022 18:07:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5D2C10E89D;
	Mon, 14 Mar 2022 17:07:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9D6E10E346
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Mar 2022 17:07:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647277648; x=1678813648;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sSxTJM1aIUr+6/pxn/dK4odCPTl7XDQLiIBhXT3+FLI=;
 b=M0s69K3MwxFURXXkYBUjvqDNiM9cJVSnrXMr1iXHbedfCAGqpriTfv27
 2eZf2Y4GHQM7MEBBjfZp9bTW1rNab6o3Q3YWmR4VsJqbdJs6hXDbq4dr/
 fvRVnXcCrvG5PchJ9kdMrivoPMH5/cd7s1KT7RrXAo0ZauQl8pxG7+FZr
 CTJM4lNG3m502MsXv9C662p4xc/5H7QcbvdhgfTCbHu77nLWnQ46cqij9
 iiLB7EK7xExAG4TEj9lhYhBQnbz/mnqBBccdTukoDaBopK49+byahoWAH
 tJtEHV/sg3JE4JtcKPKdRa02jlxDbpn2AuLCMpoe4QkEVy17AUhYYWZWp g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10285"; a="243536032"
X-IronPort-AV: E=Sophos;i="5.90,181,1643702400"; d="scan'208";a="243536032"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2022 10:07:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,181,1643702400"; d="scan'208";a="597977047"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by fmsmga008.fm.intel.com with ESMTP; 14 Mar 2022 10:07:27 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Mar 2022 10:09:43 -0700
Message-Id: <20220314170954.1537154-3-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220314170954.1537154-1-alan.previn.teres.alexis@intel.com>
References: <20220314170954.1537154-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v9 02/13] drm/i915/guc: Add XE_LP static
 registers for GuC error capture.
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

Add device specific tables and register lists to cover different engines
class types for GuC error state capture for XE_LP products.

Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
Reviewed-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 .../gpu/drm/i915/gt/uc/intel_guc_capture.c    | 116 ++++++++++++++----
 drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h   |   4 +-
 2 files changed, 97 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
index b8bbde01e5b1..a1a554efc642 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
@@ -19,43 +19,109 @@
 
 /*
  * Define all device tables of GuC error capture register lists
- * NOTE: For engine-registers, GuC only needs the register offsets
- *       from the engine-mmio-base
+ * NOTE1: For engine-registers, GuC only needs the register offsets
+ *        from the engine-mmio-base
  */
+#define COMMON_GEN12BASE_GLOBAL() \
+	{GEN12_FAULT_TLB_DATA0,    0,      0, "GEN12_FAULT_TLB_DATA0"}, \
+	{GEN12_FAULT_TLB_DATA1,    0,      0, "GEN12_FAULT_TLB_DATA1"}, \
+	{FORCEWAKE_MT,             0,      0, "FORCEWAKE"}, \
+	{GEN12_AUX_ERR_DBG,        0,      0, "AUX_ERR_DBG"}, \
+	{GEN12_GAM_DONE,           0,      0, "GAM_DONE"}, \
+	{GEN12_RING_FAULT_REG,     0,      0, "FAULT_REG"}
+
+#define COMMON_GEN12BASE_ENGINE_INSTANCE() \
+	{RING_PSMI_CTL(0),         0,      0, "RC PSMI"}, \
+	{RING_ESR(0),              0,      0, "ESR"}, \
+	{RING_DMA_FADD(0),         0,      0, "RING_DMA_FADD_LDW"}, \
+	{RING_DMA_FADD_UDW(0),     0,      0, "RING_DMA_FADD_UDW"}, \
+	{RING_IPEIR(0),            0,      0, "IPEIR"}, \
+	{RING_IPEHR(0),            0,      0, "IPEHR"}, \
+	{RING_INSTPS(0),           0,      0, "INSTPS"}, \
+	{RING_BBADDR(0),           0,      0, "RING_BBADDR_LOW32"}, \
+	{RING_BBADDR_UDW(0),       0,      0, "RING_BBADDR_UP32"}, \
+	{RING_BBSTATE(0),          0,      0, "BB_STATE"}, \
+	{CCID(0),                  0,      0, "CCID"}, \
+	{RING_ACTHD(0),            0,      0, "ACTHD_LDW"}, \
+	{RING_ACTHD_UDW(0),        0,      0, "ACTHD_UDW"}, \
+	{RING_INSTPM(0),           0,      0, "INSTPM"}, \
+	{RING_INSTDONE(0),         0,      0, "INSTDONE"}, \
+	{RING_NOPID(0),            0,      0, "RING_NOPID"}, \
+	{RING_START(0),            0,      0, "START"}, \
+	{RING_HEAD(0),             0,      0, "HEAD"}, \
+	{RING_TAIL(0),             0,      0, "TAIL"}, \
+	{RING_CTL(0),              0,      0, "CTL"}, \
+	{RING_MI_MODE(0),          0,      0, "MODE"}, \
+	{RING_CONTEXT_CONTROL(0),  0,      0, "RING_CONTEXT_CONTROL"}, \
+	{RING_HWS_PGA(0),          0,      0, "HWS"}, \
+	{RING_MODE_GEN7(0),        0,      0, "GFX_MODE"}, \
+	{GEN8_RING_PDP_LDW(0, 0),  0,      0, "PDP0_LDW"}, \
+	{GEN8_RING_PDP_UDW(0, 0),  0,      0, "PDP0_UDW"}, \
+	{GEN8_RING_PDP_LDW(0, 1),  0,      0, "PDP1_LDW"}, \
+	{GEN8_RING_PDP_UDW(0, 1),  0,      0, "PDP1_UDW"}, \
+	{GEN8_RING_PDP_LDW(0, 2),  0,      0, "PDP2_LDW"}, \
+	{GEN8_RING_PDP_UDW(0, 2),  0,      0, "PDP2_UDW"}, \
+	{GEN8_RING_PDP_LDW(0, 3),  0,      0, "PDP3_LDW"}, \
+	{GEN8_RING_PDP_UDW(0, 3),  0,      0, "PDP3_UDW"}
+
+#define COMMON_GEN12BASE_HAS_EU() \
+	{EIR,                      0,      0, "EIR"}
+
+#define COMMON_GEN12BASE_RENDER() \
+	{GEN7_SC_INSTDONE,         0,      0, "GEN7_SC_INSTDONE"}, \
+	{GEN12_SC_INSTDONE_EXTRA,  0,      0, "GEN12_SC_INSTDONE_EXTRA"}, \
+	{GEN12_SC_INSTDONE_EXTRA2, 0,      0, "GEN12_SC_INSTDONE_EXTRA2"}
+
+#define COMMON_GEN12BASE_VEC() \
+	{GEN12_SFC_DONE(0),        0,      0, "SFC_DONE[0]"}, \
+	{GEN12_SFC_DONE(1),        0,      0, "SFC_DONE[1]"}, \
+	{GEN12_SFC_DONE(2),        0,      0, "SFC_DONE[2]"}, \
+	{GEN12_SFC_DONE(3),        0,      0, "SFC_DONE[3]"}
+
 /* XE_LPD - Global */
 static const struct __guc_mmio_reg_descr xe_lpd_global_regs[] = {
-	{GEN12_RING_FAULT_REG,     0,      0, "GEN12_RING_FAULT_REG"}
+	COMMON_GEN12BASE_GLOBAL(),
 };
 
 /* XE_LPD - Render / Compute Per-Class */
 static const struct __guc_mmio_reg_descr xe_lpd_rc_class_regs[] = {
-	{EIR,                      0,      0, "EIR"}
+	COMMON_GEN12BASE_HAS_EU(),
+	COMMON_GEN12BASE_RENDER(),
 };
 
 /* XE_LPD - Render / Compute Per-Engine-Instance */
 static const struct __guc_mmio_reg_descr xe_lpd_rc_inst_regs[] = {
-	{RING_HEAD(0),             0,      0, "RING_HEAD"},
-	{RING_TAIL(0),             0,      0, "RING_TAIL"},
+	COMMON_GEN12BASE_ENGINE_INSTANCE(),
 };
 
 /* XE_LPD - Media Decode/Encode Per-Class */
 static const struct __guc_mmio_reg_descr xe_lpd_vd_class_regs[] = {
+	COMMON_GEN12BASE_ENGINE_INSTANCE(),
 };
 
 /* XE_LPD - Media Decode/Encode Per-Engine-Instance */
 static const struct __guc_mmio_reg_descr xe_lpd_vd_inst_regs[] = {
-	{RING_HEAD(0),             0,      0, "RING_HEAD"},
-	{RING_TAIL(0),             0,      0, "RING_TAIL"},
+	COMMON_GEN12BASE_ENGINE_INSTANCE(),
 };
 
 /* XE_LPD - Video Enhancement Per-Class */
 static const struct __guc_mmio_reg_descr xe_lpd_vec_class_regs[] = {
+	COMMON_GEN12BASE_VEC(),
 };
 
 /* XE_LPD - Video Enhancement Per-Engine-Instance */
 static const struct __guc_mmio_reg_descr xe_lpd_vec_inst_regs[] = {
-	{RING_HEAD(0),             0,      0, "RING_HEAD"},
-	{RING_TAIL(0),             0,      0, "RING_TAIL"},
+	COMMON_GEN12BASE_ENGINE_INSTANCE(),
+};
+
+/* XE_LPD - Blitter Per-Engine-Instance */
+static const struct __guc_mmio_reg_descr xe_lpd_blt_inst_regs[] = {
+	COMMON_GEN12BASE_ENGINE_INSTANCE(),
+};
+
+/* XE_LPD - Blitter Per-Class */
+/* XE_LPD - Media Decode/Encode Per-Class */
+static const struct __guc_mmio_reg_descr empty_regs_list[] = {
 };
 
 #define TO_GCAP_DEF_OWNER(x) (GUC_CAPTURE_LIST_INDEX_##x)
@@ -74,10 +140,12 @@ static const struct __guc_mmio_reg_descr_group xe_lpd_lists[] = {
 	MAKE_REGLIST(xe_lpd_global_regs, PF, GLOBAL, 0),
 	MAKE_REGLIST(xe_lpd_rc_class_regs, PF, ENGINE_CLASS, GUC_RENDER_CLASS),
 	MAKE_REGLIST(xe_lpd_rc_inst_regs, PF, ENGINE_INSTANCE, GUC_RENDER_CLASS),
-	MAKE_REGLIST(xe_lpd_vd_class_regs, PF, ENGINE_CLASS, GUC_VIDEO_CLASS),
+	MAKE_REGLIST(empty_regs_list, PF, ENGINE_CLASS, GUC_VIDEO_CLASS),
 	MAKE_REGLIST(xe_lpd_vd_inst_regs, PF, ENGINE_INSTANCE, GUC_VIDEO_CLASS),
 	MAKE_REGLIST(xe_lpd_vec_class_regs, PF, ENGINE_CLASS, GUC_VIDEOENHANCE_CLASS),
 	MAKE_REGLIST(xe_lpd_vec_inst_regs, PF, ENGINE_INSTANCE, GUC_VIDEOENHANCE_CLASS),
+	MAKE_REGLIST(empty_regs_list, PF, ENGINE_CLASS, GUC_BLITTER_CLASS),
+	MAKE_REGLIST(xe_lpd_blt_inst_regs, PF, ENGINE_INSTANCE, GUC_BLITTER_CLASS),
 	{}
 };
 
@@ -191,20 +259,24 @@ guc_capture_list_init(struct intel_guc *guc, u32 owner, u32 type, u32 classid,
 		return -ENODEV;
 
 	match = guc_capture_get_one_list(reglists, owner, type, classid);
-	if (match) {
-		for (i = 0; i < num_entries && i < match->num_regs; ++i) {
-			ptr[i].offset = match->list[i].reg.reg;
-			ptr[i].value = 0xDEADF00D;
-			ptr[i].flags = match->list[i].flags;
-			ptr[i].mask = match->list[i].mask;
-		}
-		return 0;
+	if (!match) {
+		guc_capture_warn_with_list_info(i915, "Missing register list init", owner, type,
+						classid);
+		return -ENODATA;
+	}
+
+	for (i = 0; i < num_entries && i < match->num_regs; ++i) {
+		ptr[i].offset = match->list[i].reg.reg;
+		ptr[i].value = 0xDEADF00D;
+		ptr[i].flags = match->list[i].flags;
+		ptr[i].mask = match->list[i].mask;
 	}
 
-	guc_capture_warn_with_list_info(i915, "Missing register list init", owner, type,
-					classid);
+	if (i < num_entries)
+		drm_dbg(&i915->drm, "GuC-capture: Init reglist short %d out %d.\n",
+			(int)i, (int)num_entries);
 
-	return -ENODATA;
+	return 0;
 }
 
 static int
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
index a1fe4231bb58..b010093b4f3b 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
@@ -285,10 +285,12 @@ struct guc_mmio_reg {
 	u32 offset;
 	u32 value;
 	u32 flags;
-	u32 mask;
 #define GUC_REGSET_MASKED		BIT(0)
 #define GUC_REGSET_MASKED_WITH_VALUE	BIT(2)
 #define GUC_REGSET_RESTORE_ONLY		BIT(3)
+#define GUC_REGSET_STEERING_GROUP       GENMASK(15, 12)
+#define GUC_REGSET_STEERING_INSTANCE    GENMASK(23, 20)
+	u32 mask;
 } __packed;
 
 /* GuC register sets */
-- 
2.25.1

