Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 812DA95C566
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Aug 2024 08:24:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 464A310E150;
	Fri, 23 Aug 2024 06:24:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VG4ZeysC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CEF2E10E150;
 Fri, 23 Aug 2024 06:24:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724394293; x=1755930293;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=/NFzCoT1Jc/jxwAhCXd0xoFv9yzTxhsPSSXTpm8ag1w=;
 b=VG4ZeysCwGUHXOCQR6ddsfId10dGqPlWMprAO9JYnoWWdQXYi2iGcDui
 p+cPkZDwoQ7o+fYDQVBF2A6qweRxj5r8OQbg/RpRmeWet+0rr/EXaB2oR
 67C7fF2XgKwhzMWDKyp1gxw5GXwSWH5MuPHWFRyhpaowW2hknnHSxLfRi
 7KG1sMx1NsNX6gdAE5OTyUZ8xgJA3z0BU+WkME42Dc4Xg0tS+NNlVBgT/
 Pu1BRxIgRwAxeACUG1wgI7mn+6IfXVLnhCaVV8GgCmoChaK8aN3yuDfuQ
 Vvk8JzurBaex7DibDBkY9amUU/aj3nan6rIEs7Cvi9vnIriC0YA4xVswU A==;
X-CSE-ConnectionGUID: 7GjrXRvXQAGPhlWrQmqeNw==
X-CSE-MsgGUID: agZ2hMRuQmyRkKmm9cHhAg==
X-IronPort-AV: E=McAfee;i="6700,10204,11172"; a="26600177"
X-IronPort-AV: E=Sophos;i="6.10,169,1719903600"; d="scan'208";a="26600177"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2024 23:24:52 -0700
X-CSE-ConnectionGUID: 5njCHHRXQcuiwBt6IlATcQ==
X-CSE-MsgGUID: G4k+5airSzqsCb4Sa79YfA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,169,1719903600"; d="scan'208";a="66029253"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO vgovind2-mobl3..)
 ([10.245.244.198])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2024 23:24:49 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, vinod.govindapillai@intel.com,
 jani.nikula@intel.com, jani.saarinen@intel.com
Subject: [PATCH v2] drm/i915: Implement Dbuf overlap detection feature
 starting from LNL
Date: Fri, 23 Aug 2024 09:24:09 +0300
Message-Id: <20240823062409.274179-1-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

From LNL onwards there is a new hardware feature, which
allows to detect if the driver wrongly allocated DBuf
entries and they happen to overlap. If enabled this will
cause a specific interrupt to occur.
We now handle it in the driver, by writing correspondent
error message to kernel log.

v2: Initialize dbuf overlap flag in runtime_defaults (Jani Nikula)

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.c | 5 +++++
 drivers/gpu/drm/i915/display/intel_display_device.h | 2 ++
 drivers/gpu/drm/i915/display/intel_display_irq.c    | 7 +++++++
 drivers/gpu/drm/i915/i915_reg.h                     | 2 ++
 4 files changed, 16 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index b28d55fa0c3a..bd00db7d7b23 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -1089,6 +1089,7 @@ static const struct intel_display_device_info xe2_lpd_display = {
 	.__runtime_defaults.fbc_mask =
 		BIT(INTEL_FBC_A) | BIT(INTEL_FBC_B) |
 		BIT(INTEL_FBC_C) | BIT(INTEL_FBC_D),
+	.__runtime_defaults.has_dbuf_overlap_detection = true,
 };
 
 static const struct intel_display_device_info xe2_hpd_display = {
@@ -1457,6 +1458,10 @@ static void __intel_display_device_info_runtime_init(struct drm_i915_private *i9
 		if (IS_DISPLAY_VER(i915, 10, 12) &&
 		    (dfsm & GLK_DFSM_DISPLAY_DSC_DISABLE))
 			display_runtime->has_dsc = 0;
+
+		if (DISPLAY_VER(i915) >= 20 &&
+		    (dfsm & XE2LPD_DFSM_DBUF_OVERLAP_DISABLE))
+			display_runtime->has_dbuf_overlap_detection = false;
 	}
 
 	if (DISPLAY_VER(i915) >= 20) {
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index ad60c676c84d..cb3b0006dfef 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -122,6 +122,7 @@ enum intel_display_subplatform {
 #define HAS_CDCLK_SQUASH(i915)		(DISPLAY_INFO(i915)->has_cdclk_squash)
 #define HAS_CUR_FBC(i915)		(!HAS_GMCH(i915) && IS_DISPLAY_VER(i915, 7, 13))
 #define HAS_D12_PLANE_MINIMIZATION(i915) (IS_ROCKETLAKE(i915) || IS_ALDERLAKE_S(i915))
+#define HAS_DBUF_OVERLAP_DETECTION(__i915) (DISPLAY_RUNTIME_INFO(__i915)->has_dbuf_overlap_detection)
 #define HAS_DDI(i915)			(DISPLAY_INFO(i915)->has_ddi)
 #define HAS_DISPLAY(i915)		(DISPLAY_RUNTIME_INFO(i915)->pipe_mask != 0)
 #define HAS_DMC(i915)			(DISPLAY_RUNTIME_INFO(i915)->has_dmc)
@@ -218,6 +219,7 @@ struct intel_display_runtime_info {
 	bool has_hdcp;
 	bool has_dmc;
 	bool has_dsc;
+	bool has_dbuf_overlap_detection;
 };
 
 struct intel_display_device_info {
diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index afcd2af82942..6bb78fb6c62c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -904,6 +904,13 @@ gen8_de_misc_irq_handler(struct drm_i915_private *dev_priv, u32 iir)
 	struct intel_display *display = &dev_priv->display;
 	bool found = false;
 
+	if (HAS_DBUF_OVERLAP_DETECTION(dev_priv)) {
+		if (iir & XE2LPD_DBUF_OVERLAP_DETECTED) {
+			drm_warn(&dev_priv->drm,  "DBuf overlap detected\n");
+			found = true;
+		}
+	}
+
 	if (DISPLAY_VER(dev_priv) >= 14) {
 		if (iir & (XELPDP_PMDEMAND_RSP |
 			   XELPDP_PMDEMAND_RSPTOUT_ERR)) {
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 569b461022c5..45a2989746a4 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2580,6 +2580,7 @@
 #define  GEN8_DE_MISC_GSE		REG_BIT(27)
 #define  GEN8_DE_EDP_PSR		REG_BIT(19)
 #define  XELPDP_PMDEMAND_RSP		REG_BIT(3)
+#define  XE2LPD_DBUF_OVERLAP_DETECTED	REG_BIT(1)
 
 #define GEN8_PCU_ISR _MMIO(0x444e0)
 #define GEN8_PCU_IMR _MMIO(0x444e4)
@@ -2865,6 +2866,7 @@
 #define   SKL_DFSM_PIPE_C_DISABLE	(1 << 28)
 #define   TGL_DFSM_PIPE_D_DISABLE	(1 << 22)
 #define   GLK_DFSM_DISPLAY_DSC_DISABLE	(1 << 7)
+#define   XE2LPD_DFSM_DBUF_OVERLAP_DISABLE	(1 << 3)
 
 #define XE2LPD_DE_CAP			_MMIO(0x41100)
 #define   XE2LPD_DE_CAP_3DLUT_MASK	REG_GENMASK(31, 30)
-- 
2.34.1

