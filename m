Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA9028C2314
	for <lists+intel-gfx@lfdr.de>; Fri, 10 May 2024 13:22:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06BD210E97C;
	Fri, 10 May 2024 11:22:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EzM3EXup";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BA8A10E933
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 May 2024 11:22:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715340152; x=1746876152;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=M0RJBU0+0YZopGgGuNZdMGbRGUnkUED7RdfCztZDzP4=;
 b=EzM3EXupzoApPXP3+V3saY3DZI8OGWx3jf3YqDiwuqfYs+wXHj7+6jkF
 P/7ZSopvR1WHDxqjFcpIMD7wB+zOi35RMh1PEnU16BIV7YfdnmzA2jDbA
 TCgo8FyRydmWgfKtCFiwJhZ5suTY2lFxlABFP0gh6Dup9FBGsgDgOfJ2Z
 YoANkFbhH3QrR3t1q4DZLgVa1k+7LoOCgkvWRKEiJn+RhXOJgIkc5oVVh
 Zlpl18t4+ImSLIBhqR2HeLrmb1NPbQGOp6G4U6yLyevrEmK04wBSMQbJJ
 qiGlqtZk5s6ACoJaYuPTmUIyPxDsha+CjD7skSC8V5V2W+fkxi0Nx0bT2 A==;
X-CSE-ConnectionGUID: AZAIFWcnSdW12iov31vpxw==
X-CSE-MsgGUID: 3HK9Cny5TlewnH1URGs3yw==
X-IronPort-AV: E=McAfee;i="6600,9927,11068"; a="21987637"
X-IronPort-AV: E=Sophos;i="6.08,150,1712646000"; d="scan'208";a="21987637"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 04:22:32 -0700
X-CSE-ConnectionGUID: Rns2IjHCRAymf2lXeyGNUQ==
X-CSE-MsgGUID: k4Bc7bftStC0sYqb0Yi9WQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,150,1712646000"; d="scan'208";a="29590329"
Received: from ettammin-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.180])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 04:22:31 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, Bjorn Helgaas <bhelgaas@google.com>,
 linux-pci@vger.kernel.org
Subject: [PATCH 1/8] drm/i915/pciids: add INTEL_PNV_IDS(), use acronym
Date: Fri, 10 May 2024 14:22:14 +0300
Message-Id: <5f9b34a2cd388244be03263a5147776bfe64d5ac.1715340032.git.jani.nikula@intel.com>
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

Most other PCI ID macros use platform acronyms. Follow suit for PNV. Add
INTEL_PNV_IDS() to identify all PNVs.

Cc: Bjorn Helgaas <bhelgaas@google.com>
Cc: linux-pci@vger.kernel.org
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 arch/x86/kernel/early-quirks.c                      | 3 +--
 drivers/gpu/drm/i915/display/intel_display_device.c | 3 +--
 drivers/gpu/drm/i915/i915_pci.c                     | 4 ++--
 include/drm/i915_pciids.h                           | 8 ++++++--
 4 files changed, 10 insertions(+), 8 deletions(-)

diff --git a/arch/x86/kernel/early-quirks.c b/arch/x86/kernel/early-quirks.c
index 59f4aefc6bc1..f50394a00fca 100644
--- a/arch/x86/kernel/early-quirks.c
+++ b/arch/x86/kernel/early-quirks.c
@@ -527,8 +527,7 @@ static const struct pci_device_id intel_early_ids[] __initconst = {
 	INTEL_I945G_IDS(&gen3_early_ops),
 	INTEL_I945GM_IDS(&gen3_early_ops),
 	INTEL_VLV_IDS(&gen6_early_ops),
-	INTEL_PINEVIEW_G_IDS(&gen3_early_ops),
-	INTEL_PINEVIEW_M_IDS(&gen3_early_ops),
+	INTEL_PNV_IDS(&gen3_early_ops),
 	INTEL_I965G_IDS(&gen3_early_ops),
 	INTEL_G33_IDS(&gen3_early_ops),
 	INTEL_I965GM_IDS(&gen3_early_ops),
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index 56a2e17d7d9e..0e0f5a36507d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -815,8 +815,7 @@ static const struct {
 	INTEL_I965GM_IDS(&i965gm_display),
 	INTEL_GM45_IDS(&gm45_display),
 	INTEL_G45_IDS(&g45_display),
-	INTEL_PINEVIEW_G_IDS(&pnv_display),
-	INTEL_PINEVIEW_M_IDS(&pnv_display),
+	INTEL_PNV_IDS(&pnv_display),
 	INTEL_IRONLAKE_D_IDS(&ilk_d_display),
 	INTEL_IRONLAKE_M_IDS(&ilk_m_display),
 	INTEL_SNB_D_IDS(&snb_display),
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index b5a056c9cb79..aa8593d73198 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -810,8 +810,8 @@ static const struct pci_device_id pciidlist[] = {
 	INTEL_I965GM_IDS(&i965gm_info),
 	INTEL_GM45_IDS(&gm45_info),
 	INTEL_G45_IDS(&g45_info),
-	INTEL_PINEVIEW_G_IDS(&pnv_g_info),
-	INTEL_PINEVIEW_M_IDS(&pnv_m_info),
+	INTEL_PNV_G_IDS(&pnv_g_info),
+	INTEL_PNV_M_IDS(&pnv_m_info),
 	INTEL_IRONLAKE_D_IDS(&ilk_d_info),
 	INTEL_IRONLAKE_M_IDS(&ilk_m_info),
 	INTEL_SNB_D_GT1_IDS(&snb_d_gt1_info),
diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
index 85ce33ad6e26..21942a3c823b 100644
--- a/include/drm/i915_pciids.h
+++ b/include/drm/i915_pciids.h
@@ -108,12 +108,16 @@
 	INTEL_VGA_DEVICE(0x2e42, info), /* B43_G */ \
 	INTEL_VGA_DEVICE(0x2e92, info)	/* B43_G.1 */
 
-#define INTEL_PINEVIEW_G_IDS(info) \
+#define INTEL_PNV_G_IDS(info) \
 	INTEL_VGA_DEVICE(0xa001, info)
 
-#define INTEL_PINEVIEW_M_IDS(info) \
+#define INTEL_PNV_M_IDS(info) \
 	INTEL_VGA_DEVICE(0xa011, info)
 
+#define INTEL_PNV_IDS(info) \
+	INTEL_PNV_G_IDS(info), \
+	INTEL_PNV_M_IDS(info)
+
 #define INTEL_IRONLAKE_D_IDS(info) \
 	INTEL_VGA_DEVICE(0x0042, info)
 
-- 
2.39.2

