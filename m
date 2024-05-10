Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77AE08C2318
	for <lists+intel-gfx@lfdr.de>; Fri, 10 May 2024 13:22:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8F3810E905;
	Fri, 10 May 2024 11:22:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OhFYWZ5L";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A09D410E95A
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 May 2024 11:22:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715340158; x=1746876158;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8CYrtseSXDwGPEvOM19TLzH04Vyyl9/8hqNONUh6OaA=;
 b=OhFYWZ5LG7MjDtTVHCQu4a5GYhtHxSQD6vYeYBDRdKVK/hyxK6fP1Dy5
 lOHJcSFxegHGbbBHXGVEKxne1xFxZDbCVbXupFkhIl+Z0qYmKJniSM/11
 uW1kQKUL4r35m/jo9Dp+VEBL0yInwL6zJgbAbW7vvzJ/UNeLxw7a8F8KD
 vjtVBfKxg/w3Vf8JC8h5HZyXdKNgBUru42RElLwrFs/tHs2jfUvUPkooV
 8fRdIhESO9NMu/O7hx4xlvyiFrv0g2/TOiHHHJ5mjxLp7H49cfEZ9uGwq
 ztktB2UXUVOaFIc0yB/2cs3+EPVf5ELH+cWecdW7SDebNf1BZ52M4OIxw Q==;
X-CSE-ConnectionGUID: zD1ZRxkUSwCWPtioSjPhXA==
X-CSE-MsgGUID: 7gb4nx/MT2e+zzONVaT11w==
X-IronPort-AV: E=McAfee;i="6600,9927,11068"; a="21987662"
X-IronPort-AV: E=Sophos;i="6.08,150,1712646000"; d="scan'208";a="21987662"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 04:22:37 -0700
X-CSE-ConnectionGUID: QfWXW0JGTjG2cFM3gXW6Hw==
X-CSE-MsgGUID: 48ZWhdQ0TMWDmi86C+mA3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,150,1712646000"; d="scan'208";a="29590343"
Received: from ettammin-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.180])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 04:22:36 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, Bjorn Helgaas <bhelgaas@google.com>,
 linux-pci@vger.kernel.org
Subject: [PATCH 2/8] drm/i915/pciids: add INTEL_ILK_IDS(), use acronym
Date: Fri, 10 May 2024 14:22:15 +0300
Message-Id: <27ada56363cfa6a5b093cb31908a4b89aa912621.1715340032.git.jani.nikula@intel.com>
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

Most other PCI ID macros use platform acronyms. Follow suit for ILK. Add
INTEL_ILK_IDS() to identify all ILKs.

Cc: Bjorn Helgaas <bhelgaas@google.com>
Cc: linux-pci@vger.kernel.org
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 arch/x86/kernel/early-quirks.c                      | 3 +--
 drivers/gpu/drm/i915/display/intel_display_device.c | 4 ++--
 drivers/gpu/drm/i915/i915_pci.c                     | 4 ++--
 include/drm/i915_pciids.h                           | 8 ++++++--
 4 files changed, 11 insertions(+), 8 deletions(-)

diff --git a/arch/x86/kernel/early-quirks.c b/arch/x86/kernel/early-quirks.c
index f50394a00fca..d8419d310091 100644
--- a/arch/x86/kernel/early-quirks.c
+++ b/arch/x86/kernel/early-quirks.c
@@ -533,8 +533,7 @@ static const struct pci_device_id intel_early_ids[] __initconst = {
 	INTEL_I965GM_IDS(&gen3_early_ops),
 	INTEL_GM45_IDS(&gen3_early_ops),
 	INTEL_G45_IDS(&gen3_early_ops),
-	INTEL_IRONLAKE_D_IDS(&gen3_early_ops),
-	INTEL_IRONLAKE_M_IDS(&gen3_early_ops),
+	INTEL_ILK_IDS(&gen3_early_ops),
 	INTEL_SNB_D_IDS(&gen6_early_ops),
 	INTEL_SNB_M_IDS(&gen6_early_ops),
 	INTEL_IVB_M_IDS(&gen6_early_ops),
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index 0e0f5a36507d..052fd1c290c3 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -816,8 +816,8 @@ static const struct {
 	INTEL_GM45_IDS(&gm45_display),
 	INTEL_G45_IDS(&g45_display),
 	INTEL_PNV_IDS(&pnv_display),
-	INTEL_IRONLAKE_D_IDS(&ilk_d_display),
-	INTEL_IRONLAKE_M_IDS(&ilk_m_display),
+	INTEL_ILK_D_IDS(&ilk_d_display),
+	INTEL_ILK_M_IDS(&ilk_m_display),
 	INTEL_SNB_D_IDS(&snb_display),
 	INTEL_SNB_M_IDS(&snb_display),
 	INTEL_IVB_M_IDS(&ivb_display),
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index aa8593d73198..d85f023afebe 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -812,8 +812,8 @@ static const struct pci_device_id pciidlist[] = {
 	INTEL_G45_IDS(&g45_info),
 	INTEL_PNV_G_IDS(&pnv_g_info),
 	INTEL_PNV_M_IDS(&pnv_m_info),
-	INTEL_IRONLAKE_D_IDS(&ilk_d_info),
-	INTEL_IRONLAKE_M_IDS(&ilk_m_info),
+	INTEL_ILK_D_IDS(&ilk_d_info),
+	INTEL_ILK_M_IDS(&ilk_m_info),
 	INTEL_SNB_D_GT1_IDS(&snb_d_gt1_info),
 	INTEL_SNB_D_GT2_IDS(&snb_d_gt2_info),
 	INTEL_SNB_M_GT1_IDS(&snb_m_gt1_info),
diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
index 21942a3c823b..05f466ca8ce2 100644
--- a/include/drm/i915_pciids.h
+++ b/include/drm/i915_pciids.h
@@ -118,12 +118,16 @@
 	INTEL_PNV_G_IDS(info), \
 	INTEL_PNV_M_IDS(info)
 
-#define INTEL_IRONLAKE_D_IDS(info) \
+#define INTEL_ILK_D_IDS(info) \
 	INTEL_VGA_DEVICE(0x0042, info)
 
-#define INTEL_IRONLAKE_M_IDS(info) \
+#define INTEL_ILK_M_IDS(info) \
 	INTEL_VGA_DEVICE(0x0046, info)
 
+#define INTEL_ILK_IDS(info) \
+	INTEL_ILK_D_IDS(info), \
+	INTEL_ILK_M_IDS(info)
+
 #define INTEL_SNB_D_GT1_IDS(info) \
 	INTEL_VGA_DEVICE(0x0102, info), \
 	INTEL_VGA_DEVICE(0x010A, info)
-- 
2.39.2

