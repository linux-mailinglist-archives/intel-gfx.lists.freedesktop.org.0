Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ADDABDC4AD
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 05:16:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2ECC489321;
	Wed, 15 Oct 2025 03:16:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZZ9o73uJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 403C710E6E0;
 Wed, 15 Oct 2025 03:16:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760498209; x=1792034209;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=yfVbx+v4Q51/kZikV0arvbBiCpBvn2YfBrTGQHI45R0=;
 b=ZZ9o73uJS4HGvcYB4GkNm+PjrKIzroOwCvNHhDE6YIsZHpJXreh67/FD
 PWYIDOtUlF4RSiPHCbqDZiEuGoc+D90GbQhwB6PnxIAbAYi6wsIQZw1qL
 01M8l4oKc8EUwtqTtgBDLP/c9k8Q7xBdW3RbqthRYd1X9kdgGtGAVmgyG
 OJ6Nkv2Su7HbxfgV0KsEQI9HmKiGCrIUDml9lA99hcxWJw9XXGjb8MpBF
 LvSnZlo8GkQ1ff5PPRORklBS0Gc9vBQC6Npqurhx1UTP/syEDy8C9UsJd
 /PG/ukzvj00btd/MvZcy4FWQxFYlJqOryq2Mw9Gsd6h0XiRW6qN9yQvzL A==;
X-CSE-ConnectionGUID: QZqSjKXlQKimuzeO+BWa6Q==
X-CSE-MsgGUID: SFFt1qthSi2fJALmHCY4bA==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="62577130"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="62577130"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 20:16:49 -0700
X-CSE-ConnectionGUID: oYJagpixTOyYhi9/sxzyQg==
X-CSE-MsgGUID: NlGT9DYmTZOK+qzMyT1/Yw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="186302323"
Received: from smoehrl-linux.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.222.185])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 20:16:44 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Wed, 15 Oct 2025 00:15:01 -0300
Subject: [PATCH 01/32] drm/xe/nvl: Define NVL-S platform
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251015-xe3p_lpd-basic-enabling-v1-1-d2d1e26520aa@intel.com>
References: <20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com>
In-Reply-To: <20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com>
To: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>, 
 Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>, 
 Gustavo Sousa <gustavo.sousa@intel.com>, 
 =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>, 
 Juha-pekka Heikkila <juha-pekka.heikkila@intel.com>, 
 Luca Coelho <luciano.coelho@intel.com>, 
 Lucas De Marchi <lucas.demarchi@intel.com>, 
 Matt Atwood <matthew.s.atwood@intel.com>, 
 Matt Roper <matthew.d.roper@intel.com>, 
 Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>, 
 Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>, 
 Shekhar Chauhan <shekhar.chauhan@intel.com>, 
 Vinod Govindapillai <vinod.govindapillai@intel.com>
X-Mailer: b4 0.15-dev
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

From: Matt Roper <matthew.d.roper@intel.com>

Provide the basic platform definitions and PCI IDs for NVL-S.

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
This is brought as a dependency from the series for Xe,
https://patchwork.freedesktop.org/series/155866/, so the display side
can be reviewed independently.
---
 drivers/gpu/drm/xe/xe_pci.c            | 9 +++++++++
 drivers/gpu/drm/xe/xe_platform_types.h | 1 +
 include/drm/intel/pciids.h             | 9 +++++++++
 3 files changed, 19 insertions(+)

diff --git a/drivers/gpu/drm/xe/xe_pci.c b/drivers/gpu/drm/xe/xe_pci.c
index 24a38904bb50..cc29678be1fa 100644
--- a/drivers/gpu/drm/xe/xe_pci.c
+++ b/drivers/gpu/drm/xe/xe_pci.c
@@ -373,6 +373,14 @@ static const struct xe_device_desc ptl_desc = {
 	.vm_max_level = 4,
 };
 
+static const struct xe_device_desc nvls_desc = {
+	PLATFORM(NOVALAKE_S),
+	.dma_mask_size = 46,
+	.has_display = true,
+	.max_gt_per_tile = 2,
+	.require_force_probe = true,
+};
+
 #undef PLATFORM
 __diag_pop();
 
@@ -401,6 +409,7 @@ static const struct pci_device_id pciidlist[] = {
 	INTEL_BMG_IDS(INTEL_VGA_DEVICE, &bmg_desc),
 	INTEL_PTL_IDS(INTEL_VGA_DEVICE, &ptl_desc),
 	INTEL_WCL_IDS(INTEL_VGA_DEVICE, &ptl_desc),
+	INTEL_NVLS_IDS(INTEL_VGA_DEVICE, &nvls_desc),
 	{ }
 };
 MODULE_DEVICE_TABLE(pci, pciidlist);
diff --git a/drivers/gpu/drm/xe/xe_platform_types.h b/drivers/gpu/drm/xe/xe_platform_types.h
index 3e332214c7bb..78286285c249 100644
--- a/drivers/gpu/drm/xe/xe_platform_types.h
+++ b/drivers/gpu/drm/xe/xe_platform_types.h
@@ -24,6 +24,7 @@ enum xe_platform {
 	XE_LUNARLAKE,
 	XE_BATTLEMAGE,
 	XE_PANTHERLAKE,
+	XE_NOVALAKE_S,
 };
 
 enum xe_subplatform {
diff --git a/include/drm/intel/pciids.h b/include/drm/intel/pciids.h
index 452c1de606ff..13c592e1a28c 100644
--- a/include/drm/intel/pciids.h
+++ b/include/drm/intel/pciids.h
@@ -887,4 +887,13 @@
 	MACRO__(0xFD80, ## __VA_ARGS__), \
 	MACRO__(0xFD81, ## __VA_ARGS__)
 
+/* NVL-S */
+#define INTEL_NVLS_IDS(MACRO__, ...) \
+	MACRO__(0xD740, ## __VA_ARGS__), \
+	MACRO__(0xD741, ## __VA_ARGS__), \
+	MACRO__(0xD742, ## __VA_ARGS__), \
+	MACRO__(0xD743, ## __VA_ARGS__), \
+	MACRO__(0xD744, ## __VA_ARGS__), \
+	MACRO__(0xD745, ## __VA_ARGS__)
+
 #endif /* __PCIIDS_H__ */

-- 
2.51.0

