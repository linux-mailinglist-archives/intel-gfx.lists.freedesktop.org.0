Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BB2584DA783
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Mar 2022 02:48:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BF0110E4EC;
	Wed, 16 Mar 2022 01:48:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46D2810E4DC
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Mar 2022 01:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647395279; x=1678931279;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=F0Z9Q/Axmb5WqRkdh0WZ9qeYG7WyxIfaC5xvTs/F+i8=;
 b=Ud3pOdHHHafoMugqh26L+feKQNTdWuGY3iSpQ/CBXR5YgcaXr6vOMOqG
 DMhYCY1ufOLS1Qh5252DqkCrmlsEIamwer1JfTplb1vOK7DIgRO5uZ5ak
 JG/0r9mmKw+9H9mT9NvgQTIh4/VVCSRaUODliXAJgfePyoIFIlPykwWfd
 9E2QCZ5jfPtfbUNz+xyTTO1l/sEMXdbU6kHm60CGy8puK4hy66Ub+u2yU
 n9zXph1o983jQxYHE2Ldl6VoqZJEj4nDM2B9+xm/C6KwRX3sr4qvGngU5
 VvTtzXlCnJ/WfE4scvun8MmuFbOC0y7C0Dy1EfiSEnv7uG74WhgOdC3RO Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="255294146"
X-IronPort-AV: E=Sophos;i="5.90,185,1643702400"; d="scan'208";a="255294146"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2022 18:47:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,185,1643702400"; d="scan'208";a="634804811"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by FMSMGA003.fm.intel.com with ESMTP; 15 Mar 2022 18:47:58 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Mar 2022 18:50:17 -0700
Message-Id: <20220316015025.1664860-6-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220316015025.1664860-1-alan.previn.teres.alexis@intel.com>
References: <20220316015025.1664860-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v10 05/13] drm/i915/guc: Add Gen9 registers for
 GuC error state capture.
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

Abstract out a Gen9 register list as the default for all other
platforms we don't yet formally support GuC submission on.

Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
Reviewed-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 .../gpu/drm/i915/gt/uc/intel_guc_capture.c    | 82 +++++++++++++------
 1 file changed, 59 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
index 15fc36203463..f9612e45def6 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
@@ -22,15 +22,24 @@
  * NOTE1: For engine-registers, GuC only needs the register offsets
  *        from the engine-mmio-base
  */
+#define COMMON_BASE_GLOBAL() \
+	{FORCEWAKE_MT,             0,      0, "FORCEWAKE"}
+
+#define COMMON_GEN9BASE_GLOBAL() \
+	{GEN8_FAULT_TLB_DATA0,     0,      0, "GEN8_FAULT_TLB_DATA0"}, \
+	{GEN8_FAULT_TLB_DATA1,     0,      0, "GEN8_FAULT_TLB_DATA1"}, \
+	{ERROR_GEN6,               0,      0, "ERROR_GEN6"}, \
+	{DONE_REG,                 0,      0, "DONE_REG"}, \
+	{HSW_GTT_CACHE_EN,         0,      0, "HSW_GTT_CACHE_EN"}
+
 #define COMMON_GEN12BASE_GLOBAL() \
 	{GEN12_FAULT_TLB_DATA0,    0,      0, "GEN12_FAULT_TLB_DATA0"}, \
 	{GEN12_FAULT_TLB_DATA1,    0,      0, "GEN12_FAULT_TLB_DATA1"}, \
-	{FORCEWAKE_MT,             0,      0, "FORCEWAKE"}, \
 	{GEN12_AUX_ERR_DBG,        0,      0, "AUX_ERR_DBG"}, \
 	{GEN12_GAM_DONE,           0,      0, "GAM_DONE"}, \
 	{GEN12_RING_FAULT_REG,     0,      0, "FAULT_REG"}
 
-#define COMMON_GEN12BASE_ENGINE_INSTANCE() \
+#define COMMON_BASE_ENGINE_INSTANCE() \
 	{RING_PSMI_CTL(0),         0,      0, "RC PSMI"}, \
 	{RING_ESR(0),              0,      0, "ESR"}, \
 	{RING_DMA_FADD(0),         0,      0, "RING_DMA_FADD_LDW"}, \
@@ -64,11 +73,13 @@
 	{GEN8_RING_PDP_LDW(0, 3),  0,      0, "PDP3_LDW"}, \
 	{GEN8_RING_PDP_UDW(0, 3),  0,      0, "PDP3_UDW"}
 
-#define COMMON_GEN12BASE_HAS_EU() \
+#define COMMON_BASE_HAS_EU() \
 	{EIR,                      0,      0, "EIR"}
 
+#define COMMON_BASE_RENDER() \
+	{GEN7_SC_INSTDONE,         0,      0, "GEN7_SC_INSTDONE"}
+
 #define COMMON_GEN12BASE_RENDER() \
-	{GEN7_SC_INSTDONE,         0,      0, "GEN7_SC_INSTDONE"}, \
 	{GEN12_SC_INSTDONE_EXTRA,  0,      0, "GEN12_SC_INSTDONE_EXTRA"}, \
 	{GEN12_SC_INSTDONE_EXTRA2, 0,      0, "GEN12_SC_INSTDONE_EXTRA2"}
 
@@ -80,28 +91,26 @@
 
 /* XE_LPD - Global */
 static const struct __guc_mmio_reg_descr xe_lpd_global_regs[] = {
+	COMMON_BASE_GLOBAL(),
+	COMMON_GEN9BASE_GLOBAL(),
 	COMMON_GEN12BASE_GLOBAL(),
 };
 
 /* XE_LPD - Render / Compute Per-Class */
 static const struct __guc_mmio_reg_descr xe_lpd_rc_class_regs[] = {
-	COMMON_GEN12BASE_HAS_EU(),
+	COMMON_BASE_HAS_EU(),
+	COMMON_BASE_RENDER(),
 	COMMON_GEN12BASE_RENDER(),
 };
 
-/* XE_LPD - Render / Compute Per-Engine-Instance */
+/* GEN9/XE_LPD - Render / Compute Per-Engine-Instance */
 static const struct __guc_mmio_reg_descr xe_lpd_rc_inst_regs[] = {
-	COMMON_GEN12BASE_ENGINE_INSTANCE(),
+	COMMON_BASE_ENGINE_INSTANCE(),
 };
 
-/* XE_LPD - Media Decode/Encode Per-Class */
-static const struct __guc_mmio_reg_descr xe_lpd_vd_class_regs[] = {
-	COMMON_GEN12BASE_ENGINE_INSTANCE(),
-};
-
-/* XE_LPD - Media Decode/Encode Per-Engine-Instance */
+/* GEN9/XE_LPD - Media Decode/Encode Per-Engine-Instance */
 static const struct __guc_mmio_reg_descr xe_lpd_vd_inst_regs[] = {
-	COMMON_GEN12BASE_ENGINE_INSTANCE(),
+	COMMON_BASE_ENGINE_INSTANCE(),
 };
 
 /* XE_LPD - Video Enhancement Per-Class */
@@ -109,18 +118,33 @@ static const struct __guc_mmio_reg_descr xe_lpd_vec_class_regs[] = {
 	COMMON_GEN12BASE_VEC(),
 };
 
-/* XE_LPD - Video Enhancement Per-Engine-Instance */
+/* GEN9/XE_LPD - Video Enhancement Per-Engine-Instance */
 static const struct __guc_mmio_reg_descr xe_lpd_vec_inst_regs[] = {
-	COMMON_GEN12BASE_ENGINE_INSTANCE(),
+	COMMON_BASE_ENGINE_INSTANCE(),
 };
 
-/* XE_LPD - Blitter Per-Engine-Instance */
+/* GEN9/XE_LPD - Blitter Per-Engine-Instance */
 static const struct __guc_mmio_reg_descr xe_lpd_blt_inst_regs[] = {
-	COMMON_GEN12BASE_ENGINE_INSTANCE(),
+	COMMON_BASE_ENGINE_INSTANCE(),
 };
 
-/* XE_LPD - Blitter Per-Class */
-/* XE_LPD - Media Decode/Encode Per-Class */
+/* GEN9 - Global */
+static const struct __guc_mmio_reg_descr default_global_regs[] = {
+	COMMON_BASE_GLOBAL(),
+	COMMON_GEN9BASE_GLOBAL(),
+};
+
+static const struct __guc_mmio_reg_descr default_rc_class_regs[] = {
+	COMMON_BASE_HAS_EU(),
+	COMMON_BASE_RENDER(),
+};
+
+/*
+ * Empty lists:
+ * GEN9/XE_LPD - Blitter Per-Class
+ * GEN9/XE_LPD - Media Decode/Encode Per-Class
+ * GEN9 - VEC Class
+ */
 static const struct __guc_mmio_reg_descr empty_regs_list[] = {
 };
 
@@ -137,6 +161,19 @@ static const struct __guc_mmio_reg_descr empty_regs_list[] = {
 	}
 
 /* List of lists */
+static struct __guc_mmio_reg_descr_group default_lists[] = {
+	MAKE_REGLIST(default_global_regs, PF, GLOBAL, 0),
+	MAKE_REGLIST(default_rc_class_regs, PF, ENGINE_CLASS, GUC_RENDER_CLASS),
+	MAKE_REGLIST(xe_lpd_rc_inst_regs, PF, ENGINE_INSTANCE, GUC_RENDER_CLASS),
+	MAKE_REGLIST(empty_regs_list, PF, ENGINE_CLASS, GUC_VIDEO_CLASS),
+	MAKE_REGLIST(xe_lpd_vd_inst_regs, PF, ENGINE_INSTANCE, GUC_VIDEO_CLASS),
+	MAKE_REGLIST(empty_regs_list, PF, ENGINE_CLASS, GUC_VIDEOENHANCE_CLASS),
+	MAKE_REGLIST(xe_lpd_vec_inst_regs, PF, ENGINE_INSTANCE, GUC_VIDEOENHANCE_CLASS),
+	MAKE_REGLIST(empty_regs_list, PF, ENGINE_CLASS, GUC_BLITTER_CLASS),
+	MAKE_REGLIST(xe_lpd_blt_inst_regs, PF, ENGINE_INSTANCE, GUC_BLITTER_CLASS),
+	{}
+};
+
 static const struct __guc_mmio_reg_descr_group xe_lpd_lists[] = {
 	MAKE_REGLIST(xe_lpd_global_regs, PF, GLOBAL, 0),
 	MAKE_REGLIST(xe_lpd_rc_class_regs, PF, ENGINE_CLASS, GUC_RENDER_CLASS),
@@ -376,9 +413,8 @@ guc_capture_get_device_reglist(struct intel_guc *guc)
 		return xe_lpd_lists;
 	}
 
-	drm_warn(&i915->drm, "No GuC-capture register lists\n");
-
-	return NULL;
+	/* if GuC submission is enabled on a non-POR platform, just use a common baseline */
+	return default_lists;
 }
 
 static const char *
-- 
2.25.1

