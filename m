Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1D3C8CC5A0
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2024 19:34:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDDCB10E3A1;
	Wed, 22 May 2024 17:34:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="N8euzcq1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16EF310E1C7;
 Wed, 22 May 2024 17:34:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716399271; x=1747935271;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RHnFvv0CK6gRd+D5iWu/Ot1vTgYVq94Y5H7BGx3wr4k=;
 b=N8euzcq1zSOfRWuHcsZY6HTqkMu3LqezYD9WxgOExaWvrZetMpPupjdP
 R4D7lF5azD0EknYbchMd73nwvQXn3POSHm4gcDX2fdBPOcKzzItnvbBug
 28zZuZ7yfnGlQ/8/AY9WrnZk8jcpjcIZLDcFYX1Euo5Uv+7V9nDioNXdU
 WoLPf7AR4I6f5AXh+ZJRxdg+34AFFYHovpVo5IByU8HZi2Z+f35Lvbp6V
 yejemOdboxg4K8OCZD1IzHVEb5cD9pqqnM8v896Kfh8Tk677mOmPEKHIY
 394Hi0qaP3qqHO35KQ8LW8AO7jPowIRr4DWu9grmQXtF5El0WTYX8mURD Q==;
X-CSE-ConnectionGUID: eRal80QoQPiRK0xo8soTNQ==
X-CSE-MsgGUID: ujyCP71TRMOF/UHrirhOOw==
X-IronPort-AV: E=McAfee;i="6600,9927,11080"; a="12611432"
X-IronPort-AV: E=Sophos;i="6.08,181,1712646000"; d="scan'208";a="12611432"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2024 10:34:31 -0700
X-CSE-ConnectionGUID: fPdbXEmjTgC0Oj0d52HacQ==
X-CSE-MsgGUID: pL3aChGFT5G+t0iQKiuGhg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,181,1712646000"; d="scan'208";a="33474986"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.230])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2024 10:34:28 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	rodrigo.vivi@intel.com,
	lucas.demarchi@intel.com
Subject: [PATCH 07/10] drm/i915/display: change display probe to identify GMD
 ID based platforms
Date: Wed, 22 May 2024 20:33:44 +0300
Message-Id: <e26f6a1a0aa2b051f49d76242194f819be3d83fd.1716399081.git.jani.nikula@intel.com>
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

We'll need to identify all platforms, including the ones that have
display defined by GMD ID. Add MTL and LNL. Their display info will
still be probed via GMD ID.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_device.c   | 44 +++++++++++--------
 1 file changed, 26 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index d1e03437abb3..416853ed50df 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -21,7 +21,7 @@ __diag_push();
 __diag_ignore_all("-Woverride-init", "Allow field initialization overrides for display info");
 
 struct platform_desc {
-	const struct intel_display_device_info *info;
+	const struct intel_display_device_info *info; /* NULL for GMD ID */
 };
 
 static const struct intel_display_device_info no_display = {};
@@ -871,6 +871,17 @@ static const struct intel_display_device_info xe2_hpd_display = {
 		BIT(PORT_TC1) | BIT(PORT_TC2) | BIT(PORT_TC3) | BIT(PORT_TC4),
 };
 
+/*
+ * Do not initialize the .info member of the platform desc for GMD ID based
+ * platforms. Their display will be probed automatically based on the IP version
+ * reported by the hardware.
+ */
+static const struct platform_desc mtl_desc = {
+};
+
+static const struct platform_desc lnl_desc = {
+};
+
 __diag_pop();
 
 /*
@@ -937,12 +948,8 @@ static const struct {
 	INTEL_RPLU_IDS(INTEL_DISPLAY_DEVICE, &adl_p_desc),
 	INTEL_RPLP_IDS(INTEL_DISPLAY_DEVICE, &adl_p_desc),
 	INTEL_DG2_IDS(INTEL_DISPLAY_DEVICE, &dg2_desc),
-
-	/*
-	 * Do not add any GMD_ID-based platforms to this list.  They will
-	 * be probed automatically based on the IP version reported by
-	 * the hardware.
-	 */
+	INTEL_MTL_IDS(INTEL_DISPLAY_DEVICE, &mtl_desc),
+	INTEL_LNL_IDS(INTEL_DISPLAY_DEVICE, &lnl_desc),
 };
 
 static const struct {
@@ -995,20 +1002,15 @@ probe_gmdid_display(struct drm_i915_private *i915, struct intel_display_ip_ver *
 	return NULL;
 }
 
-static const struct intel_display_device_info *
-probe_display(struct drm_i915_private *i915)
+static const struct platform_desc *find_platform_desc(struct pci_dev *pdev)
 {
-	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
 	int i;
 
 	for (i = 0; i < ARRAY_SIZE(intel_display_ids); i++) {
 		if (intel_display_ids[i].devid == pdev->device)
-			return intel_display_ids[i].desc->info;
+			return intel_display_ids[i].desc;
 	}
 
-	drm_dbg(&i915->drm, "No display ID found for device ID %04x; disabling display.\n",
-		pdev->device);
-
 	return NULL;
 }
 
@@ -1017,6 +1019,7 @@ void intel_display_device_probe(struct drm_i915_private *i915)
 	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
 	const struct intel_display_device_info *info;
 	struct intel_display_ip_ver ip_ver = {};
+	const struct platform_desc *desc;
 
 	/* Add drm device backpointer as early as possible. */
 	i915->display.drm = &i915->drm;
@@ -1028,12 +1031,17 @@ void intel_display_device_probe(struct drm_i915_private *i915)
 		goto no_display;
 	}
 
-	if (HAS_GMD_ID(i915))
-		info = probe_gmdid_display(i915, &ip_ver);
-	else
-		info = probe_display(i915);
+	desc = find_platform_desc(pdev);
+	if (!desc) {
+		drm_dbg_kms(&i915->drm, "Unknown device ID %04x; disabling display.\n",
+			    pdev->device);
+		goto no_display;
+	}
 
+	info = desc->info;
 	if (!info)
+		info = probe_gmdid_display(i915, &ip_ver);
+        if (!info)
 		goto no_display;
 
 	DISPLAY_INFO(i915) = info;
-- 
2.39.2

