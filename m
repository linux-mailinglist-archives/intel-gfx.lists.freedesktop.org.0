Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E10B8BE2B0
	for <lists+intel-gfx@lfdr.de>; Tue,  7 May 2024 14:57:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3FC010F416;
	Tue,  7 May 2024 12:57:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NE73NO3J";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0905010F416
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 May 2024 12:57:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715086624; x=1746622624;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5BlVl6oNwrTI4Klf6jl3jFAqaIz2l9bqvOgykOiukqw=;
 b=NE73NO3JY+cNoHCtzZkgxPhm0I32Q6paZ3m92Sxg787M8IZMGUwKrtQ9
 y1008tEoNxO2HtkHqKCzMRMbt5VWyEF8STjg564W5aDFxr75f2U5YPbko
 a492/nUo0SMg+UxrZks4+2/WvwrqFpLE8FdjybTP6y3MQQ9RxgVFwh52e
 YvvBN/hzZIEJjE8y/HZ+ut1x/MmcBe+U8reU3hZMMFIuZtZvP0k1FGThF
 8IWcUW0oMoAsAFiudOKXv+yvk3Kx+ISV7/0Zaczg57v8NM6hHBROzeRxR
 Ydj0vTA4ImLjZmFIRQUZJ7f9UDymgU9krK6k99/5H0P53iC8f5oxw7EOL g==;
X-CSE-ConnectionGUID: UIZY7VRHSViN1rx97fJkQg==
X-CSE-MsgGUID: ovKQ7gy/Rq2C9+9UIqKkWA==
X-IronPort-AV: E=McAfee;i="6600,9927,11065"; a="11035189"
X-IronPort-AV: E=Sophos;i="6.08,261,1712646000"; d="scan'208";a="11035189"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2024 05:57:04 -0700
X-CSE-ConnectionGUID: 6TUsrUqsRxSlq2okIBAsUg==
X-CSE-MsgGUID: NaZkjtGPSZSi09zdWs8q8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,261,1712646000"; d="scan'208";a="29038149"
Received: from mklonows-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.16])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2024 05:57:02 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, lucas.demarchi@intel.com, rodrigo.vivi@intel.com,
 Bjorn Helgaas <bhelgaas@google.com>, linux-pci@vger.kernel.org
Subject: [PATCH 1/5] drm/i915: don't include CML PCI IDs in CFL
Date: Tue,  7 May 2024 15:56:48 +0300
Message-Id: <bebbdad2decb22f3db29e6bc66746b4a05e1387b.1715086509.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1715086509.git.jani.nikula@intel.com>
References: <cover.1715086509.git.jani.nikula@intel.com>
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

It's confusing for INTEL_CFL_IDS() to include all CML PCI IDs. Even if
we treat them the same in a lot of places, CML is a platform of its own,
and the lists of PCI IDs should not conflate them.

Cc: Bjorn Helgaas <bhelgaas@google.com>
Cc: linux-pci@vger.kernel.org
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 arch/x86/kernel/early-quirks.c                      |  1 +
 drivers/gpu/drm/i915/display/intel_display_device.c |  1 +
 include/drm/i915_pciids.h                           | 12 +++++++-----
 3 files changed, 9 insertions(+), 5 deletions(-)

diff --git a/arch/x86/kernel/early-quirks.c b/arch/x86/kernel/early-quirks.c
index 59f4aefc6bc1..2e2d15be4025 100644
--- a/arch/x86/kernel/early-quirks.c
+++ b/arch/x86/kernel/early-quirks.c
@@ -547,6 +547,7 @@ static const struct pci_device_id intel_early_ids[] __initconst = {
 	INTEL_BXT_IDS(&gen9_early_ops),
 	INTEL_KBL_IDS(&gen9_early_ops),
 	INTEL_CFL_IDS(&gen9_early_ops),
+	INTEL_CML_IDS(&gen9_early_ops),
 	INTEL_GLK_IDS(&gen9_early_ops),
 	INTEL_CNL_IDS(&gen9_early_ops),
 	INTEL_ICL_11_IDS(&gen11_early_ops),
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index 56a2e17d7d9e..3aa7d1cdd228 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -832,6 +832,7 @@ static const struct {
 	INTEL_GLK_IDS(&glk_display),
 	INTEL_KBL_IDS(&skl_display),
 	INTEL_CFL_IDS(&skl_display),
+	INTEL_CML_IDS(&skl_display),
 	INTEL_ICL_11_IDS(&icl_display),
 	INTEL_EHL_IDS(&jsl_ehl_display),
 	INTEL_JSL_IDS(&jsl_ehl_display),
diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
index 85ce33ad6e26..5f52c504ffde 100644
--- a/include/drm/i915_pciids.h
+++ b/include/drm/i915_pciids.h
@@ -472,6 +472,12 @@
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
@@ -535,11 +541,7 @@
 	INTEL_WHL_U_GT1_IDS(info), \
 	INTEL_WHL_U_GT2_IDS(info), \
 	INTEL_WHL_U_GT3_IDS(info), \
-	INTEL_AML_CFL_GT2_IDS(info), \
-	INTEL_CML_GT1_IDS(info), \
-	INTEL_CML_GT2_IDS(info), \
-	INTEL_CML_U_GT1_IDS(info), \
-	INTEL_CML_U_GT2_IDS(info)
+	INTEL_AML_CFL_GT2_IDS(info)
 
 /* CNL */
 #define INTEL_CNL_PORT_F_IDS(info) \
-- 
2.39.2

