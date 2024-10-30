Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF6949B6035
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2024 11:33:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E98610E77E;
	Wed, 30 Oct 2024 10:33:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KmRwFIxH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9C8510E77E
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Oct 2024 10:33:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730284415; x=1761820415;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=0bAmBhPm9XwKYT4DyNe3cPjhGTfl19r2JfaCDuU0pfQ=;
 b=KmRwFIxHUM8sKPGaXrYjXZQWSUBAbsjnP+5DIfS/i8xNC1xY4jWl5ENl
 JIHksK/CzAItKAYxmYvcC3Mhv6diXFVdfyM6IUBkV15hjnJqZUCaRp/Tj
 l7TUzmfN5HZbhiMWbiXdL8wQIitqgvngV2LAvrqBo9emQMpcOx28Ao33L
 +WMqmc9QFWYt1xl5UOlVAViNbWvONcmGWlI6q1IFrnJLtQQWeQv8/ZtvI
 hB1GUsnryDH8ZNBrJujD+qxFVBCe/wZwvq/UyXXM72yY+567q3d3PQDbZ
 rhHrE7XVGQTLO/YZahbm+DmRf2C+0F6IUII6nv3Q1T5N9N4DyhXcoyTwQ g==;
X-CSE-ConnectionGUID: vvaeJmnNQsOKk7GlsjC+tg==
X-CSE-MsgGUID: MFYogvBfS9qHI1nonWhuyg==
X-IronPort-AV: E=McAfee;i="6700,10204,11240"; a="33905771"
X-IronPort-AV: E=Sophos;i="6.11,244,1725346800"; d="scan'208";a="33905771"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 03:33:35 -0700
X-CSE-ConnectionGUID: BTe9Qn9ARiiz62920tp0mQ==
X-CSE-MsgGUID: huRn6GBjSHeI/cyYpzJf6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,244,1725346800"; d="scan'208";a="113071473"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO vgovind2-mobl3..)
 ([10.245.244.226])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 03:33:33 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, uma.shankar@intel.com, jani.nikula@intel.com
Subject: [PATCH v7] drm/i915: Implement Dbuf overlap detection feature
 starting from LNL
Date: Wed, 30 Oct 2024 12:33:19 +0200
Message-Id: <20241030103319.207235-1-vinod.govindapillai@intel.com>
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

v6: rebased to resolve merge conflicts

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
index 9031b85bb000..6bb6f8c82ac6 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -1228,6 +1228,7 @@ static const struct intel_display_device_info xe2_lpd_display = {
 	.__runtime_defaults.fbc_mask =
 		BIT(INTEL_FBC_A) | BIT(INTEL_FBC_B) |
 		BIT(INTEL_FBC_C) | BIT(INTEL_FBC_D),
+	.__runtime_defaults.has_dbuf_overlap_detection = true,
 };
 
 static const struct intel_display_device_info xe2_hpd_display = {
@@ -1669,6 +1670,10 @@ static void __intel_display_device_info_runtime_init(struct drm_i915_private *i9
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
index 410f8b33a8a1..11735a060992 100644
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
@@ -233,6 +234,7 @@ struct intel_display_runtime_info {
 	bool has_dmc;
 	bool has_dsc;
 	bool edp_typec_support;
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
index 89e4381f8baa..22be4a731d27 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2589,6 +2589,7 @@
 #define  GEN8_DE_MISC_GSE		REG_BIT(27)
 #define  GEN8_DE_EDP_PSR		REG_BIT(19)
 #define  XELPDP_PMDEMAND_RSP		REG_BIT(3)
+#define  XE2LPD_DBUF_OVERLAP_DETECTED	REG_BIT(1)
 
 #define GEN8_DE_MISC_IRQ_REGS		I915_IRQ_REGS(GEN8_DE_MISC_IMR, \
 						      GEN8_DE_MISC_IER, \
@@ -2895,6 +2896,7 @@
 #define   SKL_DFSM_PIPE_C_DISABLE	(1 << 28)
 #define   TGL_DFSM_PIPE_D_DISABLE	(1 << 22)
 #define   GLK_DFSM_DISPLAY_DSC_DISABLE	(1 << 7)
+#define   XE2LPD_DFSM_DBUF_OVERLAP_DISABLE	(1 << 3)
 
 #define XE2LPD_DE_CAP			_MMIO(0x41100)
 #define   XE2LPD_DE_CAP_3DLUT_MASK	REG_GENMASK(31, 30)
-- 
2.34.1

