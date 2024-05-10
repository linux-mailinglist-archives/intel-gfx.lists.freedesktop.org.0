Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 309EA8C2322
	for <lists+intel-gfx@lfdr.de>; Fri, 10 May 2024 13:23:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 905C010E975;
	Fri, 10 May 2024 11:23:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kZvReGun";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9223C10E975
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 May 2024 11:23:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715340185; x=1746876185;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jloYEZB3w48aU492x/i7skY4g6XBc5NY5NTAMLjD2ds=;
 b=kZvReGunnKbQtZdiczFhjCC73ssBTQTPWEGt6bnEUH90itAiEQ5GvUrO
 sjyngsqHDwLX1ahQ47M03VvQY7d9ZhAfbQB46D8wSgxPvuenGy2wxYGQB
 AT9K8VTHaniJkLgJ77y14nXfcy7wflL7Szm1y3LzevvblMH8TF9q2vlRD
 Y9+AnPD4crh+3RLKTGHMCSU/hHj5ZGWtqguYb36JLTVvvefA9eYIZP4z+
 i/RS91qvOXCHBwh327V1AVCVnxKawqVlnga0tS5C8l57FwA5blFtZpdcJ
 VuCCPIhTGGWHhiyWx2HlTxrIwcyAEuDCY6hW5HqBbRZqmRZcslSXmBek+ g==;
X-CSE-ConnectionGUID: f3RZPXK4T2ONO0RMv1BK1Q==
X-CSE-MsgGUID: DtoLz6WgSn+4N+q2psM+Cw==
X-IronPort-AV: E=McAfee;i="6600,9927,11068"; a="11442692"
X-IronPort-AV: E=Sophos;i="6.08,150,1712646000"; d="scan'208";a="11442692"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 04:23:04 -0700
X-CSE-ConnectionGUID: mmiiR93jQzyt0i/jhYrw6Q==
X-CSE-MsgGUID: GldeMH7lTSSeALakbNvd6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,150,1712646000"; d="scan'208";a="34235062"
Received: from ettammin-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.180])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 04:23:03 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, Bjorn Helgaas <bhelgaas@google.com>,
 linux-pci@vger.kernel.org
Subject: [PATCH 7/8] drm/i915/pciids: remove 12 from INTEL_TGL_IDS()
Date: Fri, 10 May 2024 14:22:20 +0300
Message-Id: <044a5c553dc4564431bbef197d5e2dd085624fc2.1715340032.git.jani.nikula@intel.com>
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
for TGL.

Cc: Bjorn Helgaas <bhelgaas@google.com>
Cc: linux-pci@vger.kernel.org
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 arch/x86/kernel/early-quirks.c                      |  2 +-
 drivers/gpu/drm/i915/display/intel_display_device.c |  2 +-
 drivers/gpu/drm/i915/i915_pci.c                     |  2 +-
 drivers/gpu/drm/i915/intel_device_info.c            |  2 +-
 include/drm/i915_pciids.h                           | 10 +++++-----
 5 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/arch/x86/kernel/early-quirks.c b/arch/x86/kernel/early-quirks.c
index c150bb6f1a39..b2b9cc3b9545 100644
--- a/arch/x86/kernel/early-quirks.c
+++ b/arch/x86/kernel/early-quirks.c
@@ -550,7 +550,7 @@ static const struct pci_device_id intel_early_ids[] __initconst = {
 	INTEL_ICL_IDS(&gen11_early_ops),
 	INTEL_EHL_IDS(&gen11_early_ops),
 	INTEL_JSL_IDS(&gen11_early_ops),
-	INTEL_TGL_12_IDS(&gen11_early_ops),
+	INTEL_TGL_IDS(&gen11_early_ops),
 	INTEL_RKL_IDS(&gen11_early_ops),
 	INTEL_ADLS_IDS(&gen11_early_ops),
 	INTEL_ADLP_IDS(&gen11_early_ops),
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index e47896002c13..fb4c4054207e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -834,7 +834,7 @@ static const struct {
 	INTEL_ICL_IDS(&icl_display),
 	INTEL_EHL_IDS(&jsl_ehl_display),
 	INTEL_JSL_IDS(&jsl_ehl_display),
-	INTEL_TGL_12_IDS(&tgl_display),
+	INTEL_TGL_IDS(&tgl_display),
 	INTEL_DG1_IDS(&dg1_display),
 	INTEL_RKL_IDS(&rkl_display),
 	INTEL_ADLS_IDS(&adl_s_display),
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 06b1d50ae47c..fa56113ed1ce 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -860,7 +860,7 @@ static const struct pci_device_id pciidlist[] = {
 	INTEL_ICL_IDS(&icl_info),
 	INTEL_EHL_IDS(&ehl_info),
 	INTEL_JSL_IDS(&jsl_info),
-	INTEL_TGL_12_IDS(&tgl_info),
+	INTEL_TGL_IDS(&tgl_info),
 	INTEL_RKL_IDS(&rkl_info),
 	INTEL_ADLS_IDS(&adl_s_info),
 	INTEL_ADLP_IDS(&adl_p_info),
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index a0a43ea07f11..64651a54a245 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -173,7 +173,7 @@ static const u16 subplatform_portf_ids[] = {
 };
 
 static const u16 subplatform_uy_ids[] = {
-	INTEL_TGL_12_GT2_IDS(0),
+	INTEL_TGL_GT2_IDS(0),
 };
 
 static const u16 subplatform_n_ids[] = {
diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
index ecfd7f71e2e7..42913d2eb655 100644
--- a/include/drm/i915_pciids.h
+++ b/include/drm/i915_pciids.h
@@ -620,12 +620,12 @@
 	INTEL_VGA_DEVICE(0x4E71, info)
 
 /* TGL */
-#define INTEL_TGL_12_GT1_IDS(info) \
+#define INTEL_TGL_GT1_IDS(info) \
 	INTEL_VGA_DEVICE(0x9A60, info), \
 	INTEL_VGA_DEVICE(0x9A68, info), \
 	INTEL_VGA_DEVICE(0x9A70, info)
 
-#define INTEL_TGL_12_GT2_IDS(info) \
+#define INTEL_TGL_GT2_IDS(info) \
 	INTEL_VGA_DEVICE(0x9A40, info), \
 	INTEL_VGA_DEVICE(0x9A49, info), \
 	INTEL_VGA_DEVICE(0x9A59, info), \
@@ -635,9 +635,9 @@
 	INTEL_VGA_DEVICE(0x9AD9, info), \
 	INTEL_VGA_DEVICE(0x9AF8, info)
 
-#define INTEL_TGL_12_IDS(info) \
-	INTEL_TGL_12_GT1_IDS(info), \
-	INTEL_TGL_12_GT2_IDS(info)
+#define INTEL_TGL_IDS(info) \
+	INTEL_TGL_GT1_IDS(info), \
+	INTEL_TGL_GT2_IDS(info)
 
 /* RKL */
 #define INTEL_RKL_IDS(info) \
-- 
2.39.2

