Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A23FA947ACA
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Aug 2024 14:00:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31FF410E1C9;
	Mon,  5 Aug 2024 12:00:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j/eydY7V";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B15310E1AB
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Aug 2024 12:00:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722859235; x=1754395235;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Js5VzQ8inaV0Kh40dCvcMbjOwF69AtlIWWkAPF0w910=;
 b=j/eydY7VAft8jeEBYqGiZUvYMNcLFn9i5JY6CqQXisMr/f6lkBoBVvT6
 669Z9t+mXw8r9ntHkCFWM0XDgxmsI/NLspyaWDR/TLaJtztCeL3i0Xxjx
 eHIFIqDVF9KsMSlAFweYD2pxrJFjcS6XsAzbwNkPqgiSee7Xua2Q0DQuO
 CcyHnS4QfvGOmh30qRuU5WWwwRWIz0JBEO1u1T0sd8Sv+oZfXWfOzoioD
 XW7StognW8ROMwWNI57v+YEAVF+hOg3HrshRmA3+JmBy2mQO6TWFcu7lx
 qU7OSldIVKYfcCzJ5OA9MHeqkmeGsSfzJyMoFExqVbCflwHJej2RWXFkE w==;
X-CSE-ConnectionGUID: 83MTGEccT+eZmMrJ2NEuKw==
X-CSE-MsgGUID: g7TdAbx0RyiZKwwvvKW27w==
X-IronPort-AV: E=McAfee;i="6700,10204,11155"; a="20776423"
X-IronPort-AV: E=Sophos;i="6.09,264,1716274800"; d="scan'208,223";a="20776423"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2024 05:00:34 -0700
X-CSE-ConnectionGUID: 7sABTq5CRayRuYEOyR9sqw==
X-CSE-MsgGUID: UOhVMXf8SNe45MOyUz3ZvQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,264,1716274800"; d="scan'208,223";a="56704099"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by orviesa007.jf.intel.com with ESMTP; 05 Aug 2024 05:00:33 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.saarinen@intel.com,
	Stanislav.Lisovskiy@intel.com
Subject: [PATCH] drm/i915: Implement Dbuf overlap detection feature starting
 from LNL
Date: Mon,  5 Aug 2024 15:00:31 +0300
Message-Id: <20240805120031.1265-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
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

From LNL onwards there is a new hardware feature, which
allows to detect if the driver wrongly allocated DBuf
entries and they happen to overlap. If enabled this will
cause a specific interrupt to occur.
We now handle it in the driver, by writing correspondent
error message to kernel log.

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.c | 6 ++++++
 drivers/gpu/drm/i915/display/intel_display_device.h | 2 ++
 drivers/gpu/drm/i915/display/intel_display_irq.c    | 7 +++++++
 drivers/gpu/drm/i915/i915_reg.h                     | 2 ++
 4 files changed, 17 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index dd7dce4b0e7a..b4f979bc59cf 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -1457,6 +1457,12 @@ static void __intel_display_device_info_runtime_init(struct drm_i915_private *i9
 		if (IS_DISPLAY_VER(i915, 10, 12) &&
 		    (dfsm & GLK_DFSM_DISPLAY_DSC_DISABLE))
 			display_runtime->has_dsc = 0;
+
+		if (DISPLAY_VER(i915) >= 20 &&
+		    !(dfsm & XE2LPD_DFSM_DBUF_OVERLAP_DISABLE))
+			display_runtime->has_dbuf_overlap_detection = 1;
+		else
+			display_runtime->has_dbuf_overlap_detection = 0;
 	}
 
 	if (DISPLAY_VER(i915) >= 20) {
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 13453ea4daea..6b94ccd381bc 100644
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
@@ -216,6 +217,7 @@ struct intel_display_runtime_info {
 	bool has_hdcp;
 	bool has_dmc;
 	bool has_dsc;
+	bool has_dbuf_overlap_detection;
 };
 
 struct intel_display_device_info {
diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index 5219ba295c74..e0f1b54d9175 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -896,6 +896,13 @@ gen8_de_misc_irq_handler(struct drm_i915_private *dev_priv, u32 iir)
 {
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
index 0e3d79227e3c..1e8b04d2f728 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2578,6 +2578,7 @@
 #define  GEN8_DE_MISC_GSE		REG_BIT(27)
 #define  GEN8_DE_EDP_PSR		REG_BIT(19)
 #define  XELPDP_PMDEMAND_RSP		REG_BIT(3)
+#define  XE2LPD_DBUF_OVERLAP_DETECTED	REG_BIT(1)
 
 #define GEN8_PCU_ISR _MMIO(0x444e0)
 #define GEN8_PCU_IMR _MMIO(0x444e4)
@@ -2863,6 +2864,7 @@
 #define   SKL_DFSM_PIPE_C_DISABLE	(1 << 28)
 #define   TGL_DFSM_PIPE_D_DISABLE	(1 << 22)
 #define   GLK_DFSM_DISPLAY_DSC_DISABLE	(1 << 7)
+#define   XE2LPD_DFSM_DBUF_OVERLAP_DISABLE	(1 << 3)
 
 #define XE2LPD_DE_CAP			_MMIO(0x41100)
 #define   XE2LPD_DE_CAP_3DLUT_MASK	REG_GENMASK(31, 30)
-- 
2.37.3

