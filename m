Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AE988C2326
	for <lists+intel-gfx@lfdr.de>; Fri, 10 May 2024 13:23:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4C7C10E976;
	Fri, 10 May 2024 11:23:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FXJMwgxA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A51E10E986
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 May 2024 11:23:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715340190; x=1746876190;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/UV9YT7dmBjUaJi6T69VthRsqm9/oktzq7hcrAQaTz8=;
 b=FXJMwgxAr9N9OL3085zm+UknQXz05Y9dl95siRbpBy2Ezc47Y1hTtsfP
 Tx7IR/IijGT14YbmTDq+MSjFZ9pG8G2ZG4t77l8jot9XaSlT6luV06M2a
 QwoHZnE/6LYQ2NyZ0mJdUjmhGtiNSo+KNhtMQqEcF2hFMNKYvRKWxICyz
 INVlJMnAj4FOnT7zPR68jPLBjwQwJpcw9VD3BiVsMoCwH0o0LZKP50dLO
 Vb5L83+YaykQ7Oj9sh+eSFKpbVnHcgGVSkiG/KQIAwDagPVmqsjBCPywc
 slURov3C05lmSN4lpap12womsSSJLgrNhXw4XUHcPEx4sdy+EnY6Ui4os A==;
X-CSE-ConnectionGUID: grotDDndQymdzBsAYQaayw==
X-CSE-MsgGUID: b21MRBWkQGGXyJTE4B0P8A==
X-IronPort-AV: E=McAfee;i="6600,9927,11068"; a="11442702"
X-IronPort-AV: E=Sophos;i="6.08,150,1712646000"; d="scan'208";a="11442702"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 04:23:10 -0700
X-CSE-ConnectionGUID: Sawz9nYRRSOBvVdP9+/HXA==
X-CSE-MsgGUID: 4YE6cHYUSnmOAkZ9blNQVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,150,1712646000"; d="scan'208";a="34235095"
Received: from ettammin-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.180])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 04:23:08 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, Bjorn Helgaas <bhelgaas@google.com>,
 linux-pci@vger.kernel.org, Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH 8/8] drm/i915/pciids: don't include RPL-U PCI IDs in RPL-P
Date: Fri, 10 May 2024 14:22:21 +0300
Message-Id: <28fe0910efb93a28c400728af14beff015667f42.1715340032.git.jani.nikula@intel.com>
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

It's confusing for INTEL_RPLP_IDS() to include INTEL_RPLU_IDS(). Even if
we treat them the same elsewhere, the lists of PCI IDs should not.

Cc: Bjorn Helgaas <bhelgaas@google.com>
Cc: linux-pci@vger.kernel.org
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 arch/x86/kernel/early-quirks.c                      | 1 +
 drivers/gpu/drm/i915/display/intel_display_device.c | 1 +
 drivers/gpu/drm/i915/i915_pci.c                     | 1 +
 drivers/gpu/drm/i915/intel_device_info.c            | 1 +
 include/drm/i915_pciids.h                           | 1 -
 5 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/arch/x86/kernel/early-quirks.c b/arch/x86/kernel/early-quirks.c
index b2b9cc3b9545..fd74d7f26f01 100644
--- a/arch/x86/kernel/early-quirks.c
+++ b/arch/x86/kernel/early-quirks.c
@@ -556,6 +556,7 @@ static const struct pci_device_id intel_early_ids[] __initconst = {
 	INTEL_ADLP_IDS(&gen11_early_ops),
 	INTEL_ADLN_IDS(&gen11_early_ops),
 	INTEL_RPLS_IDS(&gen11_early_ops),
+	INTEL_RPLU_IDS(&gen11_early_ops),
 	INTEL_RPLP_IDS(&gen11_early_ops),
 };
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index fb4c4054207e..89069cff06b4 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -841,6 +841,7 @@ static const struct {
 	INTEL_RPLS_IDS(&adl_s_display),
 	INTEL_ADLP_IDS(&xe_lpd_display),
 	INTEL_ADLN_IDS(&xe_lpd_display),
+	INTEL_RPLU_IDS(&xe_lpd_display),
 	INTEL_RPLP_IDS(&xe_lpd_display),
 	INTEL_DG2_IDS(&xe_hpd_display),
 
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index fa56113ed1ce..74202925d13f 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -867,6 +867,7 @@ static const struct pci_device_id pciidlist[] = {
 	INTEL_ADLN_IDS(&adl_p_info),
 	INTEL_DG1_IDS(&dg1_info),
 	INTEL_RPLS_IDS(&adl_s_info),
+	INTEL_RPLU_IDS(&adl_p_info),
 	INTEL_RPLP_IDS(&adl_p_info),
 	INTEL_DG2_IDS(&dg2_info),
 	INTEL_ATS_M_IDS(&ats_m_info),
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index 64651a54a245..a39497971994 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -182,6 +182,7 @@ static const u16 subplatform_n_ids[] = {
 
 static const u16 subplatform_rpl_ids[] = {
 	INTEL_RPLS_IDS(0),
+	INTEL_RPLU_IDS(0),
 	INTEL_RPLP_IDS(0),
 };
 
diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
index 42913d2eb655..04f6ca3dc5c1 100644
--- a/include/drm/i915_pciids.h
+++ b/include/drm/i915_pciids.h
@@ -717,7 +717,6 @@
 
 /* RPL-P */
 #define INTEL_RPLP_IDS(info) \
-	INTEL_RPLU_IDS(info), \
 	INTEL_VGA_DEVICE(0xA720, info), \
 	INTEL_VGA_DEVICE(0xA7A0, info), \
 	INTEL_VGA_DEVICE(0xA7A8, info), \
-- 
2.39.2

