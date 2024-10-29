Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF8DF9B48A2
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2024 12:50:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E04B10E004;
	Tue, 29 Oct 2024 11:50:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OjQXQUam";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E869010E004
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2024 11:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730202654; x=1761738654;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=HOBD2iIaD+fvgV3LVStMpPbGGehR8KUM+AU+xWqMpRs=;
 b=OjQXQUam8H5GXercGQcm3AKi7zCY3poUzs4bp6MG2EMNORaCIp9Bbr7M
 PSXMhDZLSd96AK9PYWnpnE9p5HTqff1CnLRMsysWzrXhYR53fvKS1uwPt
 1UCeCyBs/NdM9gREe8yWJn+8n9rwV3/JsNurpRSdInFgRPsA07x4KmJji
 FvYOgHe2tnIdVho+Rz6lZY4sqc78sxMx8zFB9SI6odeshfO875jUXQqdE
 aviKCArG6REdMnldlAnAum8WGhpW1J9WwhnZPMxb3nDWHiGKa36mxH9yu
 VL46EWxJmVW0Loovos1RLT6MWHwXjUlZWNNqfSJ7GJ+mkqVJyd/3xUZ0A Q==;
X-CSE-ConnectionGUID: a+yqZhBrRveS7OuUeAth4w==
X-CSE-MsgGUID: J58FZl45Rk6qGJa6H/Vozg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="30028910"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="30028910"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 04:50:54 -0700
X-CSE-ConnectionGUID: 61MqlIhxQOmct7eFy3wZcg==
X-CSE-MsgGUID: IHdns6O1S8qUknvJjp/T4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,241,1725346800"; d="scan'208";a="85895727"
Received: from dneilan-mobl1.ger.corp.intel.com (HELO vgovind2-mobl3..)
 ([10.245.244.48])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 04:50:51 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, uma.shankar@intel.com, jani.nikula@intel.com
Subject: [PATCH v6] drm/i915: Implement Dbuf overlap detection feature
 starting from LNL
Date: Tue, 29 Oct 2024 13:50:40 +0200
Message-Id: <20241029115040.111855-1-vinod.govindapillai@intel.com>
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

v3: Unmask the overlap detection interrupt (Uma)

v4: use display over i915 (Jani Nikula)

v5: Use display instead of dev_priv (Jani Nikula)

Bspec: 69450, 69464
Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.c |  5 +++++
 drivers/gpu/drm/i915/display/intel_display_device.h |  2 ++
 drivers/gpu/drm/i915/display/intel_display_irq.c    | 10 ++++++++++
 drivers/gpu/drm/i915/i915_reg.h                     |  2 ++
 4 files changed, 19 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index aa22189e3853..16e048b83014 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -1227,6 +1227,7 @@ static const struct intel_display_device_info xe2_lpd_display = {
 	.__runtime_defaults.fbc_mask =
 		BIT(INTEL_FBC_A) | BIT(INTEL_FBC_B) |
 		BIT(INTEL_FBC_C) | BIT(INTEL_FBC_D),
+	.__runtime_defaults.has_dbuf_overlap_detection = true,
 };
 
 static const struct intel_display_device_info xe2_hpd_display = {
@@ -1668,6 +1669,10 @@ static void __intel_display_device_info_runtime_init(struct drm_i915_private *i9
 		if (IS_DISPLAY_VER(i915, 10, 12) &&
 		    (dfsm & GLK_DFSM_DISPLAY_DSC_DISABLE))
 			display_runtime->has_dsc = 0;
+
+		if (DISPLAY_VER(display) >= 20 &&
+		    (dfsm & XE2LPD_DFSM_DBUF_OVERLAP_DISABLE))
+			display_runtime->has_dbuf_overlap_detection = false;
 	}
 
 	if (DISPLAY_VER(i915) >= 20) {
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 071a36b51f79..6bf5672d874d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -125,6 +125,7 @@ enum intel_display_subplatform {
 #define HAS_CDCLK_SQUASH(i915)		(DISPLAY_INFO(i915)->has_cdclk_squash)
 #define HAS_CUR_FBC(i915)		(!HAS_GMCH(i915) && IS_DISPLAY_VER(i915, 7, 13))
 #define HAS_D12_PLANE_MINIMIZATION(i915) (IS_ROCKETLAKE(i915) || IS_ALDERLAKE_S(i915))
+#define HAS_DBUF_OVERLAP_DETECTION(__i915) (DISPLAY_RUNTIME_INFO(__i915)->has_dbuf_overlap_detection)
 #define HAS_DDI(i915)			(DISPLAY_INFO(i915)->has_ddi)
 #define HAS_DISPLAY(i915)		(DISPLAY_RUNTIME_INFO(i915)->pipe_mask != 0)
 #define HAS_DMC(i915)			(DISPLAY_RUNTIME_INFO(i915)->has_dmc)
@@ -232,6 +233,7 @@ struct intel_display_runtime_info {
 	bool has_hdcp;
 	bool has_dmc;
 	bool has_dsc;
+	bool has_dbuf_overlap_detection;
 };
 
 struct intel_display_device_info {
diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index a4f42ed3f21a..814b4c98412c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -902,6 +902,13 @@ gen8_de_misc_irq_handler(struct drm_i915_private *dev_priv, u32 iir)
 	struct intel_display *display = &dev_priv->display;
 	bool found = false;
 
+	if (HAS_DBUF_OVERLAP_DETECTION(display)) {
+		if (iir & XE2LPD_DBUF_OVERLAP_DETECTED) {
+			drm_warn(display->drm,  "DBuf overlap detected\n");
+			found = true;
+		}
+	}
+
 	if (DISPLAY_VER(dev_priv) >= 14) {
 		if (iir & (XELPDP_PMDEMAND_RSP |
 			   XELPDP_PMDEMAND_RSPTOUT_ERR)) {
@@ -1789,6 +1796,9 @@ void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
 			de_port_masked |= DSI0_TE | DSI1_TE;
 	}
 
+	if (HAS_DBUF_OVERLAP_DETECTION(display))
+		de_misc_masked |= XE2LPD_DBUF_OVERLAP_DETECTED;
+
 	if (HAS_DSB(dev_priv))
 		de_pipe_masked |= GEN12_DSB_INT(INTEL_DSB_0) |
 			GEN12_DSB_INT(INTEL_DSB_1) |
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 405f409e9761..327d1aa3f211 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2589,6 +2589,7 @@
 #define  GEN8_DE_MISC_GSE		REG_BIT(27)
 #define  GEN8_DE_EDP_PSR		REG_BIT(19)
 #define  XELPDP_PMDEMAND_RSP		REG_BIT(3)
+#define  XE2LPD_DBUF_OVERLAP_DETECTED	REG_BIT(1)
 
 #define GEN8_DE_MISC_IRQ_REGS		I915_IRQ_REGS(GEN8_DE_MISC_IMR, \
 						      GEN8_DE_MISC_IER, \
@@ -2894,6 +2895,7 @@
 #define   SKL_DFSM_PIPE_C_DISABLE	(1 << 28)
 #define   TGL_DFSM_PIPE_D_DISABLE	(1 << 22)
 #define   GLK_DFSM_DISPLAY_DSC_DISABLE	(1 << 7)
+#define   XE2LPD_DFSM_DBUF_OVERLAP_DISABLE	(1 << 3)
 
 #define XE2LPD_DE_CAP			_MMIO(0x41100)
 #define   XE2LPD_DE_CAP_3DLUT_MASK	REG_GENMASK(31, 30)
-- 
2.34.1

