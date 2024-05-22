Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BEA158CC59A
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2024 19:34:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7F3210E2A3;
	Wed, 22 May 2024 17:34:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cRQ42Xtw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98AE210E2C4;
 Wed, 22 May 2024 17:34:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716399256; x=1747935256;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=soFnXrWkTooFx8sgPjoH5RPRQWYmb9oeG5H/ggnP7kI=;
 b=cRQ42XtwrddAQXbr5aGCtDsEABH40QHMeopPYONah4sfnNNaZfcfSMNb
 3y4uYfWJoGCtuZlGJy3hWknmHSwgIRpQ1fTCeykFsQHLe/qEbsbxK2uSG
 Hkn0D+ze/aAy+odkZZs8OKwF78TxUGjygWPvEt21uxbAmW5KAxilNg4FK
 nyipqVVfR9YGxuJjiGbEM4gHX1Qhlbvs13z+V7hey8rRD/QL5oBeBlWB+
 9sDPm73o9f9fa5/HmUQ+XCWhyjslGHE3RiK2KRIQWDMJ83pJPKCR7Sx8o
 DPMnhLIEYymBcio+Pw8ZgdO8q3p9DRGAjN+ozosMNmbi8d20s1jFV+zia Q==;
X-CSE-ConnectionGUID: hTPftd+PTLiBSFUWs/6szg==
X-CSE-MsgGUID: FeJnA4+DQ26RoygHp07wxQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11080"; a="38053828"
X-IronPort-AV: E=Sophos;i="6.08,181,1712646000"; d="scan'208";a="38053828"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2024 10:34:15 -0700
X-CSE-ConnectionGUID: UL4rm7LwS5GGDLThRkzcEg==
X-CSE-MsgGUID: sTiKIMErSpaVi6DVdQaDow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,181,1712646000"; d="scan'208";a="33425219"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.230])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2024 10:34:13 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	rodrigo.vivi@intel.com,
	lucas.demarchi@intel.com
Subject: [PATCH 04/10] drm/i915/display: change GMD ID display ip ver
 propagation at probe
Date: Wed, 22 May 2024 20:33:41 +0300
Message-Id: <1610e9f5675b4d0d4f16ecd10a86486ce309a283.1716399081.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1716399081.git.jani.nikula@intel.com>
References: <cover.1716399081.git.jani.nikula@intel.com>
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

Add a name to the display ip version structure, and pass that around
instead of a triplet of u16's.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_device.c   | 40 ++++++++-----------
 .../drm/i915/display/intel_display_device.h   |  2 +-
 2 files changed, 17 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index f548a7b0ec23..56b27546d1b3 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -862,22 +862,14 @@ static const struct {
 };
 
 static const struct intel_display_device_info *
-probe_gmdid_display(struct drm_i915_private *i915, u16 *ver, u16 *rel, u16 *step)
+probe_gmdid_display(struct drm_i915_private *i915, struct intel_display_ip_ver *ip_ver)
 {
 	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
+	struct intel_display_ip_ver gmd_id;
 	void __iomem *addr;
 	u32 val;
 	int i;
 
-	/* The caller expects to ver, rel and step to be initialized
-	 * here, and there's no good way to check when there was a
-	 * failure and no_display was returned.  So initialize all these
-	 * values here zero, to be sure.
-	 */
-	*ver = 0;
-	*rel = 0;
-	*step = 0;
-
 	addr = pci_iomap_range(pdev, 0, i915_mmio_reg_offset(GMD_ID_DISPLAY), sizeof(u32));
 	if (!addr) {
 		drm_err(&i915->drm, "Cannot map MMIO BAR to read display GMD_ID\n");
@@ -892,17 +884,20 @@ probe_gmdid_display(struct drm_i915_private *i915, u16 *ver, u16 *rel, u16 *step
 		return NULL;
 	}
 
-	*ver = REG_FIELD_GET(GMD_ID_ARCH_MASK, val);
-	*rel = REG_FIELD_GET(GMD_ID_RELEASE_MASK, val);
-	*step = REG_FIELD_GET(GMD_ID_STEP, val);
+	gmd_id.ver = REG_FIELD_GET(GMD_ID_ARCH_MASK, val);
+	gmd_id.rel = REG_FIELD_GET(GMD_ID_RELEASE_MASK, val);
+	gmd_id.step = REG_FIELD_GET(GMD_ID_STEP, val);
 
-	for (i = 0; i < ARRAY_SIZE(gmdid_display_map); i++)
-		if (*ver == gmdid_display_map[i].ver &&
-		    *rel == gmdid_display_map[i].rel)
+	for (i = 0; i < ARRAY_SIZE(gmdid_display_map); i++) {
+		if (gmd_id.ver == gmdid_display_map[i].ver &&
+		    gmd_id.rel == gmdid_display_map[i].rel) {
+			*ip_ver = gmd_id;
 			return gmdid_display_map[i].display;
+		}
+	}
 
 	drm_err(&i915->drm, "Unrecognized display IP version %d.%02d; disabling display.\n",
-		*ver, *rel);
+		gmd_id.ver, gmd_id.rel);
 	return NULL;
 }
 
@@ -927,7 +922,7 @@ void intel_display_device_probe(struct drm_i915_private *i915)
 {
 	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
 	const struct intel_display_device_info *info;
-	u16 ver, rel, step;
+	struct intel_display_ip_ver ip_ver = {};
 
 	/* Add drm device backpointer as early as possible. */
 	i915->display.drm = &i915->drm;
@@ -940,7 +935,7 @@ void intel_display_device_probe(struct drm_i915_private *i915)
 	}
 
 	if (HAS_GMD_ID(i915))
-		info = probe_gmdid_display(i915, &ver, &rel, &step);
+		info = probe_gmdid_display(i915, &ip_ver);
 	else
 		info = probe_display(i915);
 
@@ -953,11 +948,8 @@ void intel_display_device_probe(struct drm_i915_private *i915)
 	       &DISPLAY_INFO(i915)->__runtime_defaults,
 	       sizeof(*DISPLAY_RUNTIME_INFO(i915)));
 
-	if (HAS_GMD_ID(i915)) {
-		DISPLAY_RUNTIME_INFO(i915)->ip.ver = ver;
-		DISPLAY_RUNTIME_INFO(i915)->ip.rel = rel;
-		DISPLAY_RUNTIME_INFO(i915)->ip.step = step;
-	}
+	if (ip_ver.ver || ip_ver.rel || ip_ver.step)
+		DISPLAY_RUNTIME_INFO(i915)->ip = ip_ver;
 
 	return;
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 17ddf82f0b6e..fd2d03bfe8a6 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -111,7 +111,7 @@ struct drm_printer;
 	(DISPLAY_VER(i915) >= (from) && DISPLAY_VER(i915) <= (until))
 
 struct intel_display_runtime_info {
-	struct {
+	struct intel_display_ip_ver {
 		u16 ver;
 		u16 rel;
 		u16 step;
-- 
2.39.2

