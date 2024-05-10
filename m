Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 624148C231A
	for <lists+intel-gfx@lfdr.de>; Fri, 10 May 2024 13:22:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7F2D10E68D;
	Fri, 10 May 2024 11:22:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jSC1AEgU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D9DC10E8BB
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 May 2024 11:22:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715340164; x=1746876164;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oUD93JunRNJc19R+4rzQi/1dK3sVLJyG7ebgDtDSGSs=;
 b=jSC1AEgU0/uwIMMGUAZa1UxUna6plzjMiE2s9/f4piIFUnTM76io4Co1
 23oqMHDevfUrUfWm49iCU43MKKImM5YQNHg2HxCR5Trc+wcU54wCN9IDJ
 SGgKQm+6b0/8QQTFB8UNbD0e/cIlbdxauYTUW/+IPy+Ak9xRC2jUOzFxk
 ePcM+c84Fo1qoD1LG3uZsuhdGDfitk7ABL8QE0IZICWKTIb/7okWsAW7g
 Ireh2SNTFNOkFjMo0078r6L+9DaRPnr7g9MaEqtkEGuPyvvt/cLEQAbhx
 tRkSqhVZqJFvXloB392Pw3fIl9mpRSDNZ1mcvqCLgXX6imOyyFSsjh9y+ A==;
X-CSE-ConnectionGUID: NI1t4mWeR32s6s8/gUr8yg==
X-CSE-MsgGUID: YF1cyOGkTNitsxxqw45nqA==
X-IronPort-AV: E=McAfee;i="6600,9927,11068"; a="11442647"
X-IronPort-AV: E=Sophos;i="6.08,150,1712646000"; d="scan'208";a="11442647"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 04:22:44 -0700
X-CSE-ConnectionGUID: v9Lb1iqLT7SagVf1eXH/7g==
X-CSE-MsgGUID: hA+sWgX4Qp6zS0LIJy0USg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,150,1712646000"; d="scan'208";a="34234923"
Received: from ettammin-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.180])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 04:22:41 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, Bjorn Helgaas <bhelgaas@google.com>,
 linux-pci@vger.kernel.org
Subject: [PATCH 3/8] drm/i915/pciids: add INTEL_SNB_IDS()
Date: Fri, 10 May 2024 14:22:16 +0300
Message-Id: <ffcb2d954ad9bca78ccd39836dc0a3dc7c6c0253.1715340032.git.jani.nikula@intel.com>
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

Add INTEL_SNB_IDS() to identify all SNBs.

Cc: Bjorn Helgaas <bhelgaas@google.com>
Cc: linux-pci@vger.kernel.org
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 arch/x86/kernel/early-quirks.c                      | 3 +--
 drivers/gpu/drm/i915/display/intel_display_device.c | 3 +--
 include/drm/i915_pciids.h                           | 4 ++++
 3 files changed, 6 insertions(+), 4 deletions(-)

diff --git a/arch/x86/kernel/early-quirks.c b/arch/x86/kernel/early-quirks.c
index d8419d310091..23ded9260302 100644
--- a/arch/x86/kernel/early-quirks.c
+++ b/arch/x86/kernel/early-quirks.c
@@ -534,8 +534,7 @@ static const struct pci_device_id intel_early_ids[] __initconst = {
 	INTEL_GM45_IDS(&gen3_early_ops),
 	INTEL_G45_IDS(&gen3_early_ops),
 	INTEL_ILK_IDS(&gen3_early_ops),
-	INTEL_SNB_D_IDS(&gen6_early_ops),
-	INTEL_SNB_M_IDS(&gen6_early_ops),
+	INTEL_SNB_IDS(&gen6_early_ops),
 	INTEL_IVB_M_IDS(&gen6_early_ops),
 	INTEL_IVB_D_IDS(&gen6_early_ops),
 	INTEL_HSW_IDS(&gen6_early_ops),
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index 052fd1c290c3..c40d12ca386a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -818,8 +818,7 @@ static const struct {
 	INTEL_PNV_IDS(&pnv_display),
 	INTEL_ILK_D_IDS(&ilk_d_display),
 	INTEL_ILK_M_IDS(&ilk_m_display),
-	INTEL_SNB_D_IDS(&snb_display),
-	INTEL_SNB_M_IDS(&snb_display),
+	INTEL_SNB_IDS(&snb_display),
 	INTEL_IVB_M_IDS(&ivb_display),
 	INTEL_IVB_D_IDS(&ivb_display),
 	INTEL_HSW_IDS(&hsw_display),
diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
index 05f466ca8ce2..0d48c493dcce 100644
--- a/include/drm/i915_pciids.h
+++ b/include/drm/i915_pciids.h
@@ -151,6 +151,10 @@
 	INTEL_SNB_M_GT1_IDS(info), \
 	INTEL_SNB_M_GT2_IDS(info)
 
+#define INTEL_SNB_IDS(info) \
+	INTEL_SNB_D_IDS(info), \
+	INTEL_SNB_M_IDS(info)
+
 #define INTEL_IVB_M_GT1_IDS(info) \
 	INTEL_VGA_DEVICE(0x0156, info) /* GT1 mobile */
 
-- 
2.39.2

