Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 33C668C2320
	for <lists+intel-gfx@lfdr.de>; Fri, 10 May 2024 13:23:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9E6010E94F;
	Fri, 10 May 2024 11:23:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JjzufBYt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9EB6E10E94F
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 May 2024 11:23:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715340181; x=1746876181;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vUJHiaB9/vEc2ZeRjL63KHR9KGQgJcrnfwPBPpCG5As=;
 b=JjzufBYtez6CszXijmr7C0xyFpT4m4hb6pur7/kpt02tWLwj2wnQG3wA
 4W3/UloXetGcskmITeRK469U3uaMRbRzWTWb+fUGsv53c999FPmtAq5rT
 rwsKPcs8x0K7Gam4ywUuorIz8aIzQTCPcZzPpU1vjFHa/m9NzXJcCifop
 bqK5pwCF0asDSRQWxGeAWiXnxUygKJDNRy1PkCYlisOu/3o4UxY2u8xUI
 QhRzWM5jC67+66XyttfgeScguifKSLbqRII0SRVUq9uFHRqKdOlZpv/MA
 8LDseD/gEXxgiMeDF7gPeuUggwJV7Yos4W7vzpHGrqTyF8v/lpW6Etjhj A==;
X-CSE-ConnectionGUID: S93FpNrMQM+5VtjH1NhViQ==
X-CSE-MsgGUID: 1MdQNQPdReCs+lvaxdluCA==
X-IronPort-AV: E=McAfee;i="6600,9927,11068"; a="11442679"
X-IronPort-AV: E=Sophos;i="6.08,150,1712646000"; d="scan'208";a="11442679"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 04:22:59 -0700
X-CSE-ConnectionGUID: Bx6xLqL3TkSYlMWNSINPGw==
X-CSE-MsgGUID: C+3L1/UWSGeoY1t8LWhAsw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,150,1712646000"; d="scan'208";a="34235016"
Received: from ettammin-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.180])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 04:22:58 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, Bjorn Helgaas <bhelgaas@google.com>,
 linux-pci@vger.kernel.org
Subject: [PATCH 6/8] drm/i915/pciids: remove 11 from INTEL_ICL_IDS()
Date: Fri, 10 May 2024 14:22:19 +0300
Message-Id: <36973674bf333dfdd7cd32ae656754bfa150022b.1715340032.git.jani.nikula@intel.com>
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

Most other PCI ID macros do not encode the gen in the name. Follow suit
for ICL.

Cc: Bjorn Helgaas <bhelgaas@google.com>
Cc: linux-pci@vger.kernel.org
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 arch/x86/kernel/early-quirks.c                      | 2 +-
 drivers/gpu/drm/i915/display/intel_display_device.c | 2 +-
 drivers/gpu/drm/i915/i915_pci.c                     | 2 +-
 include/drm/i915_pciids.h                           | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/x86/kernel/early-quirks.c b/arch/x86/kernel/early-quirks.c
index 2b698a3f56ef..c150bb6f1a39 100644
--- a/arch/x86/kernel/early-quirks.c
+++ b/arch/x86/kernel/early-quirks.c
@@ -547,7 +547,7 @@ static const struct pci_device_id intel_early_ids[] __initconst = {
 	INTEL_CML_IDS(&gen9_early_ops),
 	INTEL_GLK_IDS(&gen9_early_ops),
 	INTEL_CNL_IDS(&gen9_early_ops),
-	INTEL_ICL_11_IDS(&gen11_early_ops),
+	INTEL_ICL_IDS(&gen11_early_ops),
 	INTEL_EHL_IDS(&gen11_early_ops),
 	INTEL_JSL_IDS(&gen11_early_ops),
 	INTEL_TGL_12_IDS(&gen11_early_ops),
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index 23909a8e2dc8..e47896002c13 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -831,7 +831,7 @@ static const struct {
 	INTEL_CFL_IDS(&skl_display),
 	INTEL_WHL_IDS(&skl_display),
 	INTEL_CML_IDS(&skl_display),
-	INTEL_ICL_11_IDS(&icl_display),
+	INTEL_ICL_IDS(&icl_display),
 	INTEL_EHL_IDS(&jsl_ehl_display),
 	INTEL_JSL_IDS(&jsl_ehl_display),
 	INTEL_TGL_12_IDS(&tgl_display),
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index d85f023afebe..06b1d50ae47c 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -857,7 +857,7 @@ static const struct pci_device_id pciidlist[] = {
 	INTEL_CML_GT2_IDS(&cml_gt2_info),
 	INTEL_CML_U_GT1_IDS(&cml_gt1_info),
 	INTEL_CML_U_GT2_IDS(&cml_gt2_info),
-	INTEL_ICL_11_IDS(&icl_info),
+	INTEL_ICL_IDS(&icl_info),
 	INTEL_EHL_IDS(&ehl_info),
 	INTEL_JSL_IDS(&jsl_info),
 	INTEL_TGL_12_IDS(&tgl_info),
diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
index 0c5a20d59801..ecfd7f71e2e7 100644
--- a/include/drm/i915_pciids.h
+++ b/include/drm/i915_pciids.h
@@ -597,7 +597,7 @@
 	INTEL_VGA_DEVICE(0x8A70, info), \
 	INTEL_VGA_DEVICE(0x8A71, info)
 
-#define INTEL_ICL_11_IDS(info) \
+#define INTEL_ICL_IDS(info) \
 	INTEL_ICL_PORT_F_IDS(info), \
 	INTEL_VGA_DEVICE(0x8A51, info), \
 	INTEL_VGA_DEVICE(0x8A5D, info)
-- 
2.39.2

