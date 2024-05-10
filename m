Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B18308C231D
	for <lists+intel-gfx@lfdr.de>; Fri, 10 May 2024 13:22:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03C4810E95A;
	Fri, 10 May 2024 11:22:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="l+5Qz9A1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DACD410E94F
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 May 2024 11:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715340174; x=1746876174;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gNthO8hrks93STnqKNOoHkVO7y8f0oXX7ICJ5gA5IVg=;
 b=l+5Qz9A1B5AfZF134Ug7ZjCIqbJMyEkT8Q9X/Jy35s0Tk3U4LKZo5xw+
 Snxib+ELS9pK8ku60t2nttUNWzsoh5DaqO5LWo7J45pLI8qJEEHKdnE7c
 mpVK6NDqF0tqvzLIMEmaRFOYlgPb++0QHsBKea94PQIsf2r3UjnnA3uWb
 BVJqbkvf6XZoNKSNHNg+mEtsaB7RaCEcQrQ2ipfygzpIxevM1860fKgZz
 SO/TYPLgXOE661oJpU6v2kvS4+jZNllFrfBxx81jGlfufrbghrQsS/CjH
 yp16potdI4+l6ozJGjuEo3GyDs02OFD+TAxFGyddMBbosKwejpcp0k35/ A==;
X-CSE-ConnectionGUID: /M/rOJ+lTpej8blFVi0SFg==
X-CSE-MsgGUID: NUz1f0kyTsqWLo7DA9VMVg==
X-IronPort-AV: E=McAfee;i="6600,9927,11068"; a="11442671"
X-IronPort-AV: E=Sophos;i="6.08,150,1712646000"; d="scan'208";a="11442671"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 04:22:54 -0700
X-CSE-ConnectionGUID: FO8a4JwzQnmTfMFiuB64iw==
X-CSE-MsgGUID: aE5Dcm/wSQ6VQaNZ+niy6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,150,1712646000"; d="scan'208";a="34234985"
Received: from ettammin-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.180])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 04:22:52 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, Bjorn Helgaas <bhelgaas@google.com>,
 linux-pci@vger.kernel.org
Subject: [PATCH 5/8] drm/i915/pciids: don't include WHL/CML PCI IDs in CFL
Date: Fri, 10 May 2024 14:22:18 +0300
Message-Id: <7cca91dc78ed2b5982f14e400f03a1704645e475.1715340032.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1715340032.git.jani.nikula@intel.com>
References: <cover.1715340032.git.jani.nikula@intel.com>
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

It's confusing for INTEL_CFL_IDS() to include all WHL and CML PCI
IDs. Even if we treat them the same in a lot of places, CML is a
platform of its own, and the lists of PCI IDs should not conflate them.

Largely go by the idea that if a platform has a name, group its PCI IDs
together.

That said, AML is special, having both KBL and CFL variants. Leave that
alone.

v2: Also split out WHL not just CML (Rodrigo)

Cc: Bjorn Helgaas <bhelgaas@google.com>
Cc: linux-pci@vger.kernel.org
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 arch/x86/kernel/early-quirks.c                |  2 ++
 .../drm/i915/display/intel_display_device.c   |  2 ++
 include/drm/i915_pciids.h                     | 30 +++++++++++--------
 3 files changed, 21 insertions(+), 13 deletions(-)

diff --git a/arch/x86/kernel/early-quirks.c b/arch/x86/kernel/early-quirks.c
index 6549507003ec..2b698a3f56ef 100644
--- a/arch/x86/kernel/early-quirks.c
+++ b/arch/x86/kernel/early-quirks.c
@@ -543,6 +543,8 @@ static const struct pci_device_id intel_early_ids[] __initconst = {
 	INTEL_BXT_IDS(&gen9_early_ops),
 	INTEL_KBL_IDS(&gen9_early_ops),
 	INTEL_CFL_IDS(&gen9_early_ops),
+	INTEL_WHL_IDS(&gen9_early_ops),
+	INTEL_CML_IDS(&gen9_early_ops),
 	INTEL_GLK_IDS(&gen9_early_ops),
 	INTEL_CNL_IDS(&gen9_early_ops),
 	INTEL_ICL_11_IDS(&gen11_early_ops),
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index bb681c8ed8a0..23909a8e2dc8 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -829,6 +829,8 @@ static const struct {
 	INTEL_GLK_IDS(&glk_display),
 	INTEL_KBL_IDS(&skl_display),
 	INTEL_CFL_IDS(&skl_display),
+	INTEL_WHL_IDS(&skl_display),
+	INTEL_CML_IDS(&skl_display),
 	INTEL_ICL_11_IDS(&icl_display),
 	INTEL_EHL_IDS(&jsl_ehl_display),
 	INTEL_JSL_IDS(&jsl_ehl_display),
diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
index 16778d92346b..0c5a20d59801 100644
--- a/include/drm/i915_pciids.h
+++ b/include/drm/i915_pciids.h
@@ -488,6 +488,12 @@
 	INTEL_VGA_DEVICE(0x9BCA, info), \
 	INTEL_VGA_DEVICE(0x9BCC, info)
 
+#define INTEL_CML_IDS(info) \
+	INTEL_CML_GT1_IDS(info), \
+	INTEL_CML_GT2_IDS(info), \
+	INTEL_CML_U_GT1_IDS(info), \
+	INTEL_CML_U_GT2_IDS(info)
+
 #define INTEL_KBL_IDS(info) \
 	INTEL_KBL_GT1_IDS(info), \
 	INTEL_KBL_GT2_IDS(info), \
@@ -527,6 +533,15 @@
 	INTEL_VGA_DEVICE(0x3EA7, info), /* ULT GT3 */ \
 	INTEL_VGA_DEVICE(0x3EA8, info)  /* ULT GT3 */
 
+#define INTEL_CFL_IDS(info)	   \
+	INTEL_CFL_S_GT1_IDS(info), \
+	INTEL_CFL_S_GT2_IDS(info), \
+	INTEL_CFL_H_GT1_IDS(info), \
+	INTEL_CFL_H_GT2_IDS(info), \
+	INTEL_CFL_U_GT2_IDS(info), \
+	INTEL_CFL_U_GT3_IDS(info), \
+	INTEL_AML_CFL_GT2_IDS(info)
+
 /* WHL/CFL U GT1 */
 #define INTEL_WHL_U_GT1_IDS(info) \
 	INTEL_VGA_DEVICE(0x3EA1, info), \
@@ -541,21 +556,10 @@
 #define INTEL_WHL_U_GT3_IDS(info) \
 	INTEL_VGA_DEVICE(0x3EA2, info)
 
-#define INTEL_CFL_IDS(info)	   \
-	INTEL_CFL_S_GT1_IDS(info), \
-	INTEL_CFL_S_GT2_IDS(info), \
-	INTEL_CFL_H_GT1_IDS(info), \
-	INTEL_CFL_H_GT2_IDS(info), \
-	INTEL_CFL_U_GT2_IDS(info), \
-	INTEL_CFL_U_GT3_IDS(info), \
+#define INTEL_WHL_IDS(info) \
 	INTEL_WHL_U_GT1_IDS(info), \
 	INTEL_WHL_U_GT2_IDS(info), \
-	INTEL_WHL_U_GT3_IDS(info), \
-	INTEL_AML_CFL_GT2_IDS(info), \
-	INTEL_CML_GT1_IDS(info), \
-	INTEL_CML_GT2_IDS(info), \
-	INTEL_CML_U_GT1_IDS(info), \
-	INTEL_CML_U_GT2_IDS(info)
+	INTEL_WHL_U_GT3_IDS(info)
 
 /* CNL */
 #define INTEL_CNL_PORT_F_IDS(info) \
-- 
2.39.2

