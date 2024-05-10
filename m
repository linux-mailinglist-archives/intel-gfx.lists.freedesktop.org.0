Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4902F8C231B
	for <lists+intel-gfx@lfdr.de>; Fri, 10 May 2024 13:22:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B731F10E8BB;
	Fri, 10 May 2024 11:22:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XpFIhVsN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BFA410E8BB
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 May 2024 11:22:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715340168; x=1746876168;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EmISR6cK/K/g8lUwbQi3gdogGyK78b/kkEnZ1pzAuY8=;
 b=XpFIhVsN/WZkjE4go5EJxuOGhVUeS5h79EYIAfI10nJv+/9heq4dIPEO
 vD/H6zymudTJJYXtjJNBK5CksHn4VRTVSCQuEzkynFgP5UnzlZZ85shsN
 SdrxlB2my0dIqsjVDpBmJKaFsKtg3X6I6rnfChQc57MI7fzicuZelqjoD
 0aUdQHRjmoktdiOUXxsITjgqkFVPF1dAhi3QOo5m7UL24Kgs6EOIPvdxl
 yOlzlY+QPvMmRYmk6B/v8+X9Qs7/vKaNPVIa8+tTIJB8FMF/elDYehJYd
 CKuBWJVs4aaTa81tcIiZoY5ISgTKcYgcgdwTdCtY7lY0a0lG45O4wLw9k A==;
X-CSE-ConnectionGUID: c+K6mNK5S3ysZp8HqkPDLg==
X-CSE-MsgGUID: 7dMZ1ourSTGiioA8lgZ0nA==
X-IronPort-AV: E=McAfee;i="6600,9927,11068"; a="11442661"
X-IronPort-AV: E=Sophos;i="6.08,150,1712646000"; d="scan'208";a="11442661"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 04:22:48 -0700
X-CSE-ConnectionGUID: dOc+XxiBQu2ilvMy+psdGw==
X-CSE-MsgGUID: u4/KWnT2TJqxHiXE+AvaJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,150,1712646000"; d="scan'208";a="34234955"
Received: from ettammin-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.180])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 04:22:46 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, Bjorn Helgaas <bhelgaas@google.com>,
 linux-pci@vger.kernel.org
Subject: [PATCH 4/8] drm/i915/pciids: add INTEL_IVB_IDS()
Date: Fri, 10 May 2024 14:22:17 +0300
Message-Id: <ed89a25b2c6bce318fe59e883d18b62d9453196b.1715340032.git.jani.nikula@intel.com>
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

Add INTEL_IVB_IDS() to identify all IVBs except IVB Q transcode.

Cc: Bjorn Helgaas <bhelgaas@google.com>
Cc: linux-pci@vger.kernel.org
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 arch/x86/kernel/early-quirks.c                      | 3 +--
 drivers/gpu/drm/i915/display/intel_display_device.c | 3 +--
 include/drm/i915_pciids.h                           | 4 ++++
 3 files changed, 6 insertions(+), 4 deletions(-)

diff --git a/arch/x86/kernel/early-quirks.c b/arch/x86/kernel/early-quirks.c
index 23ded9260302..6549507003ec 100644
--- a/arch/x86/kernel/early-quirks.c
+++ b/arch/x86/kernel/early-quirks.c
@@ -535,8 +535,7 @@ static const struct pci_device_id intel_early_ids[] __initconst = {
 	INTEL_G45_IDS(&gen3_early_ops),
 	INTEL_ILK_IDS(&gen3_early_ops),
 	INTEL_SNB_IDS(&gen6_early_ops),
-	INTEL_IVB_M_IDS(&gen6_early_ops),
-	INTEL_IVB_D_IDS(&gen6_early_ops),
+	INTEL_IVB_IDS(&gen6_early_ops),
 	INTEL_HSW_IDS(&gen6_early_ops),
 	INTEL_BDW_IDS(&gen8_early_ops),
 	INTEL_CHV_IDS(&chv_early_ops),
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index c40d12ca386a..bb681c8ed8a0 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -819,8 +819,7 @@ static const struct {
 	INTEL_ILK_D_IDS(&ilk_d_display),
 	INTEL_ILK_M_IDS(&ilk_m_display),
 	INTEL_SNB_IDS(&snb_display),
-	INTEL_IVB_M_IDS(&ivb_display),
-	INTEL_IVB_D_IDS(&ivb_display),
+	INTEL_IVB_IDS(&ivb_display),
 	INTEL_HSW_IDS(&hsw_display),
 	INTEL_VLV_IDS(&vlv_display),
 	INTEL_BDW_IDS(&bdw_display),
diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
index 0d48c493dcce..16778d92346b 100644
--- a/include/drm/i915_pciids.h
+++ b/include/drm/i915_pciids.h
@@ -177,6 +177,10 @@
 	INTEL_IVB_D_GT1_IDS(info), \
 	INTEL_IVB_D_GT2_IDS(info)
 
+#define INTEL_IVB_IDS(info) \
+	INTEL_IVB_M_IDS(info), \
+	INTEL_IVB_D_IDS(info)
+
 #define INTEL_IVB_Q_IDS(info) \
 	INTEL_QUANTA_VGA_DEVICE(info) /* Quanta transcode */
 
-- 
2.39.2

