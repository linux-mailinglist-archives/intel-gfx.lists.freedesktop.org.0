Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AFE448BE2B1
	for <lists+intel-gfx@lfdr.de>; Tue,  7 May 2024 14:57:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1446610F496;
	Tue,  7 May 2024 12:57:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ctjdsG0O";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E48FC10F442
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 May 2024 12:57:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715086630; x=1746622630;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tDLtaw9p935dhWpUjICAylppBv9rjk+cip7jHg552uA=;
 b=ctjdsG0OBRdiP32GF1ATZe28G3KfqsBwt1qP6iVLZA7rAFezgE7oEAVH
 F0XoxPYP6vCIxAmIe49xQnYK1G+xNawZsRzMdEHq9//jXkkoLcIkpljCK
 hiQvi0NIOqlhCxf7Bc5pSN6gNI+AEOMJN19aH8k1IGzg/Yaa91NX/3XX1
 IV4CW6NnTnzHNrL0vqWmxXXVqdP+vhgHYCmMg38AK042F1EQ717vsK29n
 iok41Ev5ko3f0SbE0LYsJESnQ+Uh7dvfIDJQbkgnMdLW0hIutQ3la7tai
 BpfDUxZMLb8tubyu4DD5WuluOynN7X5UvbsBXAFjuhHpWc7YJk/HtPipM Q==;
X-CSE-ConnectionGUID: /E9S7tYqRdybuzHwsOa4nQ==
X-CSE-MsgGUID: sv1NyuinRxGzz32VG3R7hA==
X-IronPort-AV: E=McAfee;i="6600,9927,11065"; a="11035216"
X-IronPort-AV: E=Sophos;i="6.08,261,1712646000"; d="scan'208";a="11035216"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2024 05:57:10 -0700
X-CSE-ConnectionGUID: OW300R5MRIy3UHZIPB6nLQ==
X-CSE-MsgGUID: fZ7ws3iHQUyGQhHssu9nsA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,261,1712646000"; d="scan'208";a="29038156"
Received: from mklonows-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.16])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2024 05:57:08 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, lucas.demarchi@intel.com, rodrigo.vivi@intel.com,
 Bjorn Helgaas <bhelgaas@google.com>, linux-pci@vger.kernel.org
Subject: [PATCH 2/5] drm/i915: don't include RPL-U PCI IDs in RPL-P
Date: Tue,  7 May 2024 15:56:49 +0300
Message-Id: <697b354c2f12f923867cea2ad8f6628737716949.1715086509.git.jani.nikula@intel.com>
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

It's confusing for INTEL_RPLP_IDS() to include INTEL_RPLU_IDS(). Even if
we treat them the same elsewhere, the lists of PCI IDs should not.

Cc: Bjorn Helgaas <bhelgaas@google.com>
Cc: linux-pci@vger.kernel.org
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 arch/x86/kernel/early-quirks.c                      | 1 +
 drivers/gpu/drm/i915/display/intel_display_device.c | 1 +
 drivers/gpu/drm/i915/i915_pci.c                     | 1 +
 drivers/gpu/drm/i915/intel_device_info.c            | 1 +
 include/drm/i915_pciids.h                           | 1 -
 5 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/arch/x86/kernel/early-quirks.c b/arch/x86/kernel/early-quirks.c
index 2e2d15be4025..549227d15691 100644
--- a/arch/x86/kernel/early-quirks.c
+++ b/arch/x86/kernel/early-quirks.c
@@ -559,6 +559,7 @@ static const struct pci_device_id intel_early_ids[] __initconst = {
 	INTEL_ADLP_IDS(&gen11_early_ops),
 	INTEL_ADLN_IDS(&gen11_early_ops),
 	INTEL_RPLS_IDS(&gen11_early_ops),
+	INTEL_RPLU_IDS(&gen11_early_ops),
 	INTEL_RPLP_IDS(&gen11_early_ops),
 };
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index 3aa7d1cdd228..342b439b0ee4 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -843,6 +843,7 @@ static const struct {
 	INTEL_RPLS_IDS(&adl_s_display),
 	INTEL_ADLP_IDS(&xe_lpd_display),
 	INTEL_ADLN_IDS(&xe_lpd_display),
+	INTEL_RPLU_IDS(&xe_lpd_display),
 	INTEL_RPLP_IDS(&xe_lpd_display),
 	INTEL_DG2_IDS(&xe_hpd_display),
 
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 405ca17a990b..a16fb09061e2 100644
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
index a0a43ea07f11..b119923f8be2 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -182,6 +182,7 @@ static const u16 subplatform_n_ids[] = {
 
 static const u16 subplatform_rpl_ids[] = {
 	INTEL_RPLS_IDS(0),
+	INTEL_RPLU_IDS(0),
 	INTEL_RPLP_IDS(0),
 };
 
diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
index 5f52c504ffde..1b9cb6195637 100644
--- a/include/drm/i915_pciids.h
+++ b/include/drm/i915_pciids.h
@@ -699,7 +699,6 @@
 
 /* RPL-P */
 #define INTEL_RPLP_IDS(info) \
-	INTEL_RPLU_IDS(info), \
 	INTEL_VGA_DEVICE(0xA720, info), \
 	INTEL_VGA_DEVICE(0xA7A0, info), \
 	INTEL_VGA_DEVICE(0xA7A8, info), \
-- 
2.39.2

