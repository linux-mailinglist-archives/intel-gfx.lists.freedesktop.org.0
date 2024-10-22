Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 444009A9EBE
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2024 11:42:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6F1010E643;
	Tue, 22 Oct 2024 09:42:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EfNxoNfT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0CB210E643;
 Tue, 22 Oct 2024 09:42:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729590138; x=1761126138;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QQ2sLPFR1bx4MC88cCD90RVSrPHrZaeQBxERN2ZgbQQ=;
 b=EfNxoNfTIKvSaDXFKzQ/GzlVg9xxqscZdOhVm4SECTRcoKQm2et+Kz10
 S+JrX3j9XzqvIGlPAWrmz/ZpaKpBs8nNgKAQM26hX9VvQ6QksdiSdCxoi
 yF9+aZJtrWYKk06stMBnL+z5ndScnFfKpHXxT1ePz13saFBGJTTPfwwTM
 kOjog/lcj3nJ9LjbZvg6m5mgDKy0vQoLXcROAYPJSV5tJ9dtY2WLPMCj3
 0e0ld7R/b4k60Cc59XkWWjOAzbjbnRrqwRv0+Xmrik21Ptzryt8Tk7L/D
 Q60s5DgOUDArv8pJKGeZD94729AAO0JwUHm7W1TWzl7h+D2U6ybW3+Uxy g==;
X-CSE-ConnectionGUID: 61PGWelyTouYesS/1mY6Qg==
X-CSE-MsgGUID: Fuy5cYh8T0mRKkifnYn5qA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="28892715"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="28892715"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 02:42:18 -0700
X-CSE-ConnectionGUID: sVTNOieJTpa9KM5PxVQqnQ==
X-CSE-MsgGUID: uTiVHwpOSBqNP1GGjuszOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,222,1725346800"; d="scan'208";a="80621109"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.4])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 02:42:14 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>
Subject: [PATCH v2 3/3] drm/xe: switch to common PCI ID macros
Date: Tue, 22 Oct 2024 12:41:51 +0300
Message-Id: <84e08172184bdc6409cf6dd13f6c52971c647dbb.1729590029.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1729590029.git.jani.nikula@intel.com>
References: <cover.1729590029.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Switch to the shared PCI ID macros in drm/intel/pciids.h. Remove
xe_pciids.h.

Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Cc: Tvrtko Ursulin <tursulin@ursulin.net>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/xe/xe_pci.c   |  53 ++++----
 include/drm/intel/xe_pciids.h | 234 ----------------------------------
 2 files changed, 23 insertions(+), 264 deletions(-)
 delete mode 100644 include/drm/intel/xe_pciids.h

diff --git a/drivers/gpu/drm/xe/xe_pci.c b/drivers/gpu/drm/xe/xe_pci.c
index 4085bb3b6550..8e24cb4fe1e7 100644
--- a/drivers/gpu/drm/xe/xe_pci.c
+++ b/drivers/gpu/drm/xe/xe_pci.c
@@ -13,7 +13,7 @@
 
 #include <drm/drm_color_mgmt.h>
 #include <drm/drm_drv.h>
-#include <drm/intel/xe_pciids.h>
+#include <drm/intel/pciids.h>
 
 #include "display/xe_display.h"
 #include "regs/xe_gt_regs.h"
@@ -233,7 +233,7 @@ static const struct xe_device_desc rkl_desc = {
 	.require_force_probe = true,
 };
 
-static const u16 adls_rpls_ids[] = { XE_RPLS_IDS(NOP), 0 };
+static const u16 adls_rpls_ids[] = { INTEL_RPLS_IDS(NOP), 0 };
 
 static const struct xe_device_desc adl_s_desc = {
 	.graphics = &graphics_xelp,
@@ -249,7 +249,7 @@ static const struct xe_device_desc adl_s_desc = {
 	},
 };
 
-static const u16 adlp_rplu_ids[] = { XE_RPLU_IDS(NOP), 0 };
+static const u16 adlp_rplu_ids[] = { INTEL_RPLU_IDS(NOP), 0 };
 
 static const struct xe_device_desc adl_p_desc = {
 	.graphics = &graphics_xelp,
@@ -288,9 +288,9 @@ static const struct xe_device_desc dg1_desc = {
 	.require_force_probe = true,
 };
 
-static const u16 dg2_g10_ids[] = { XE_DG2_G10_IDS(NOP), XE_ATS_M150_IDS(NOP), 0 };
-static const u16 dg2_g11_ids[] = { XE_DG2_G11_IDS(NOP), XE_ATS_M75_IDS(NOP), 0 };
-static const u16 dg2_g12_ids[] = { XE_DG2_G12_IDS(NOP), 0 };
+static const u16 dg2_g10_ids[] = { INTEL_DG2_G10_IDS(NOP), INTEL_ATS_M150_IDS(NOP), 0 };
+static const u16 dg2_g11_ids[] = { INTEL_DG2_G11_IDS(NOP), INTEL_ATS_M75_IDS(NOP), 0 };
+static const u16 dg2_g12_ids[] = { INTEL_DG2_G12_IDS(NOP), 0 };
 
 #define DG2_FEATURES \
 	DGFX_FEATURES, \
@@ -378,11 +378,6 @@ static const struct gmdid_map media_ip_map[] = {
 	{ 3000, &media_xe2 },
 };
 
-#define INTEL_VGA_DEVICE(id, info) {			\
-	PCI_DEVICE(PCI_VENDOR_ID_INTEL, id),		\
-	PCI_BASE_CLASS_DISPLAY << 16, 0xff << 16,	\
-	(unsigned long) info }
-
 /*
  * Make sure any device matches here are from most specific to most
  * general.  For example, since the Quanta match is based on the subsystem
@@ -390,29 +385,27 @@ static const struct gmdid_map media_ip_map[] = {
  * PCI ID matches, otherwise we'll use the wrong info struct above.
  */
 static const struct pci_device_id pciidlist[] = {
-	XE_TGL_IDS(INTEL_VGA_DEVICE, &tgl_desc),
-	XE_RKL_IDS(INTEL_VGA_DEVICE, &rkl_desc),
-	XE_ADLS_IDS(INTEL_VGA_DEVICE, &adl_s_desc),
-	XE_ADLP_IDS(INTEL_VGA_DEVICE, &adl_p_desc),
-	XE_ADLN_IDS(INTEL_VGA_DEVICE, &adl_n_desc),
-	XE_RPLU_IDS(INTEL_VGA_DEVICE, &adl_p_desc),
-	XE_RPLP_IDS(INTEL_VGA_DEVICE, &adl_p_desc),
-	XE_RPLS_IDS(INTEL_VGA_DEVICE, &adl_s_desc),
-	XE_DG1_IDS(INTEL_VGA_DEVICE, &dg1_desc),
-	XE_ATS_M_IDS(INTEL_VGA_DEVICE, &ats_m_desc),
-	XE_ARL_IDS(INTEL_VGA_DEVICE, &mtl_desc),
-	XE_DG2_IDS(INTEL_VGA_DEVICE, &dg2_desc),
-	XE_PVC_IDS(INTEL_VGA_DEVICE, &pvc_desc),
-	XE_MTL_IDS(INTEL_VGA_DEVICE, &mtl_desc),
-	XE_LNL_IDS(INTEL_VGA_DEVICE, &lnl_desc),
-	XE_BMG_IDS(INTEL_VGA_DEVICE, &bmg_desc),
-	XE_PTL_IDS(INTEL_VGA_DEVICE, &ptl_desc),
+	INTEL_TGL_IDS(INTEL_VGA_DEVICE, &tgl_desc),
+	INTEL_RKL_IDS(INTEL_VGA_DEVICE, &rkl_desc),
+	INTEL_ADLS_IDS(INTEL_VGA_DEVICE, &adl_s_desc),
+	INTEL_ADLP_IDS(INTEL_VGA_DEVICE, &adl_p_desc),
+	INTEL_ADLN_IDS(INTEL_VGA_DEVICE, &adl_n_desc),
+	INTEL_RPLU_IDS(INTEL_VGA_DEVICE, &adl_p_desc),
+	INTEL_RPLP_IDS(INTEL_VGA_DEVICE, &adl_p_desc),
+	INTEL_RPLS_IDS(INTEL_VGA_DEVICE, &adl_s_desc),
+	INTEL_DG1_IDS(INTEL_VGA_DEVICE, &dg1_desc),
+	INTEL_ATS_M_IDS(INTEL_VGA_DEVICE, &ats_m_desc),
+	INTEL_ARL_IDS(INTEL_VGA_DEVICE, &mtl_desc),
+	INTEL_DG2_IDS(INTEL_VGA_DEVICE, &dg2_desc),
+	INTEL_PVC_IDS(INTEL_VGA_DEVICE, &pvc_desc),
+	INTEL_MTL_IDS(INTEL_VGA_DEVICE, &mtl_desc),
+	INTEL_LNL_IDS(INTEL_VGA_DEVICE, &lnl_desc),
+	INTEL_BMG_IDS(INTEL_VGA_DEVICE, &bmg_desc),
+	INTEL_PTL_IDS(INTEL_VGA_DEVICE, &ptl_desc),
 	{ }
 };
 MODULE_DEVICE_TABLE(pci, pciidlist);
 
-#undef INTEL_VGA_DEVICE
-
 /* is device_id present in comma separated list of ids */
 static bool device_id_in_list(u16 device_id, const char *devices, bool negative)
 {
diff --git a/include/drm/intel/xe_pciids.h b/include/drm/intel/xe_pciids.h
deleted file mode 100644
index 6d8d013f74e0..000000000000
--- a/include/drm/intel/xe_pciids.h
+++ /dev/null
@@ -1,234 +0,0 @@
-/* SPDX-License-Identifier: MIT */
-/*
- * Copyright © 2022 Intel Corporation
- */
-
-#ifndef _XE_PCIIDS_H_
-#define _XE_PCIIDS_H_
-
-/*
- * Lists below can be turned into initializers for a struct pci_device_id
- * by defining INTEL_VGA_DEVICE:
- *
- * #define INTEL_VGA_DEVICE(id, info) { \
- *	0x8086, id,			\
- *	~0, ~0,				\
- *	0x030000, 0xff0000,		\
- *	(unsigned long) info }
- *
- * And then calling like:
- *
- * XE_TGL_12_GT1_IDS(INTEL_VGA_DEVICE, ## __VA_ARGS__)
- *
- * To turn them into something else, just provide a different macro passed as
- * first argument.
- */
-
-/* TGL */
-#define XE_TGL_GT1_IDS(MACRO__, ...)		\
-	MACRO__(0x9A60, ## __VA_ARGS__),	\
-	MACRO__(0x9A68, ## __VA_ARGS__),	\
-	MACRO__(0x9A70, ## __VA_ARGS__)
-
-#define XE_TGL_GT2_IDS(MACRO__, ...)		\
-	MACRO__(0x9A40, ## __VA_ARGS__),	\
-	MACRO__(0x9A49, ## __VA_ARGS__),	\
-	MACRO__(0x9A59, ## __VA_ARGS__),	\
-	MACRO__(0x9A78, ## __VA_ARGS__),	\
-	MACRO__(0x9AC0, ## __VA_ARGS__),	\
-	MACRO__(0x9AC9, ## __VA_ARGS__),	\
-	MACRO__(0x9AD9, ## __VA_ARGS__),	\
-	MACRO__(0x9AF8, ## __VA_ARGS__)
-
-#define XE_TGL_IDS(MACRO__, ...)		\
-	XE_TGL_GT1_IDS(MACRO__, ## __VA_ARGS__),\
-	XE_TGL_GT2_IDS(MACRO__, ## __VA_ARGS__)
-
-/* RKL */
-#define XE_RKL_IDS(MACRO__, ...)		\
-	MACRO__(0x4C80, ## __VA_ARGS__),	\
-	MACRO__(0x4C8A, ## __VA_ARGS__),	\
-	MACRO__(0x4C8B, ## __VA_ARGS__),	\
-	MACRO__(0x4C8C, ## __VA_ARGS__),	\
-	MACRO__(0x4C90, ## __VA_ARGS__),	\
-	MACRO__(0x4C9A, ## __VA_ARGS__)
-
-/* DG1 */
-#define XE_DG1_IDS(MACRO__, ...)		\
-	MACRO__(0x4905, ## __VA_ARGS__),	\
-	MACRO__(0x4906, ## __VA_ARGS__),	\
-	MACRO__(0x4907, ## __VA_ARGS__),	\
-	MACRO__(0x4908, ## __VA_ARGS__),	\
-	MACRO__(0x4909, ## __VA_ARGS__)
-
-/* ADL-S */
-#define XE_ADLS_IDS(MACRO__, ...)		\
-	MACRO__(0x4680, ## __VA_ARGS__),	\
-	MACRO__(0x4682, ## __VA_ARGS__),	\
-	MACRO__(0x4688, ## __VA_ARGS__),	\
-	MACRO__(0x468A, ## __VA_ARGS__),	\
-	MACRO__(0x468B, ## __VA_ARGS__),	\
-	MACRO__(0x4690, ## __VA_ARGS__),	\
-	MACRO__(0x4692, ## __VA_ARGS__),	\
-	MACRO__(0x4693, ## __VA_ARGS__)
-
-/* ADL-P */
-#define XE_ADLP_IDS(MACRO__, ...)		\
-	MACRO__(0x46A0, ## __VA_ARGS__),	\
-	MACRO__(0x46A1, ## __VA_ARGS__),	\
-	MACRO__(0x46A2, ## __VA_ARGS__),	\
-	MACRO__(0x46A3, ## __VA_ARGS__),	\
-	MACRO__(0x46A6, ## __VA_ARGS__),	\
-	MACRO__(0x46A8, ## __VA_ARGS__),	\
-	MACRO__(0x46AA, ## __VA_ARGS__),	\
-	MACRO__(0x462A, ## __VA_ARGS__),	\
-	MACRO__(0x4626, ## __VA_ARGS__),	\
-	MACRO__(0x4628, ## __VA_ARGS__),	\
-	MACRO__(0x46B0, ## __VA_ARGS__),	\
-	MACRO__(0x46B1, ## __VA_ARGS__),	\
-	MACRO__(0x46B2, ## __VA_ARGS__),	\
-	MACRO__(0x46B3, ## __VA_ARGS__),	\
-	MACRO__(0x46C0, ## __VA_ARGS__),	\
-	MACRO__(0x46C1, ## __VA_ARGS__),	\
-	MACRO__(0x46C2, ## __VA_ARGS__),	\
-	MACRO__(0x46C3, ## __VA_ARGS__)
-
-/* ADL-N */
-#define XE_ADLN_IDS(MACRO__, ...)		\
-	MACRO__(0x46D0, ## __VA_ARGS__),	\
-	MACRO__(0x46D1, ## __VA_ARGS__),	\
-	MACRO__(0x46D2, ## __VA_ARGS__),	\
-	MACRO__(0x46D3, ## __VA_ARGS__),	\
-	MACRO__(0x46D4, ## __VA_ARGS__)
-
-/* RPL-S */
-#define XE_RPLS_IDS(MACRO__, ...)		\
-	MACRO__(0xA780, ## __VA_ARGS__),	\
-	MACRO__(0xA781, ## __VA_ARGS__),	\
-	MACRO__(0xA782, ## __VA_ARGS__),	\
-	MACRO__(0xA783, ## __VA_ARGS__),	\
-	MACRO__(0xA788, ## __VA_ARGS__),	\
-	MACRO__(0xA789, ## __VA_ARGS__),	\
-	MACRO__(0xA78A, ## __VA_ARGS__),	\
-	MACRO__(0xA78B, ## __VA_ARGS__)
-
-/* RPL-U */
-#define XE_RPLU_IDS(MACRO__, ...)		\
-	MACRO__(0xA721, ## __VA_ARGS__),	\
-	MACRO__(0xA7A1, ## __VA_ARGS__),	\
-	MACRO__(0xA7A9, ## __VA_ARGS__),	\
-	MACRO__(0xA7AC, ## __VA_ARGS__),	\
-	MACRO__(0xA7AD, ## __VA_ARGS__)
-
-/* RPL-P */
-#define XE_RPLP_IDS(MACRO__, ...)		\
-	MACRO__(0xA720, ## __VA_ARGS__),	\
-	MACRO__(0xA7A0, ## __VA_ARGS__),	\
-	MACRO__(0xA7A8, ## __VA_ARGS__),	\
-	MACRO__(0xA7AA, ## __VA_ARGS__),	\
-	MACRO__(0xA7AB, ## __VA_ARGS__)
-
-/* DG2 */
-#define XE_DG2_G10_IDS(MACRO__, ...)		\
-	MACRO__(0x5690, ## __VA_ARGS__),	\
-	MACRO__(0x5691, ## __VA_ARGS__),	\
-	MACRO__(0x5692, ## __VA_ARGS__),	\
-	MACRO__(0x56A0, ## __VA_ARGS__),	\
-	MACRO__(0x56A1, ## __VA_ARGS__),	\
-	MACRO__(0x56A2, ## __VA_ARGS__),	\
-	MACRO__(0x56BE, ## __VA_ARGS__),	\
-	MACRO__(0x56BF, ## __VA_ARGS__)
-
-#define XE_DG2_G11_IDS(MACRO__, ...)		\
-	MACRO__(0x5693, ## __VA_ARGS__),	\
-	MACRO__(0x5694, ## __VA_ARGS__),	\
-	MACRO__(0x5695, ## __VA_ARGS__),	\
-	MACRO__(0x56A5, ## __VA_ARGS__),	\
-	MACRO__(0x56A6, ## __VA_ARGS__),	\
-	MACRO__(0x56B0, ## __VA_ARGS__),	\
-	MACRO__(0x56B1, ## __VA_ARGS__),	\
-	MACRO__(0x56BA, ## __VA_ARGS__),	\
-	MACRO__(0x56BB, ## __VA_ARGS__),	\
-	MACRO__(0x56BC, ## __VA_ARGS__),	\
-	MACRO__(0x56BD, ## __VA_ARGS__)
-
-#define XE_DG2_G12_IDS(MACRO__, ...)		\
-	MACRO__(0x5696, ## __VA_ARGS__),	\
-	MACRO__(0x5697, ## __VA_ARGS__),	\
-	MACRO__(0x56A3, ## __VA_ARGS__),	\
-	MACRO__(0x56A4, ## __VA_ARGS__),	\
-	MACRO__(0x56B2, ## __VA_ARGS__),	\
-	MACRO__(0x56B3, ## __VA_ARGS__)
-
-#define XE_DG2_IDS(MACRO__, ...)		\
-	XE_DG2_G10_IDS(MACRO__, ## __VA_ARGS__),\
-	XE_DG2_G11_IDS(MACRO__, ## __VA_ARGS__),\
-	XE_DG2_G12_IDS(MACRO__, ## __VA_ARGS__)
-
-#define XE_ATS_M150_IDS(MACRO__, ...)		\
-	MACRO__(0x56C0, ## __VA_ARGS__),	\
-	MACRO__(0x56C2, ## __VA_ARGS__)
-
-#define XE_ATS_M75_IDS(MACRO__, ...)		\
-	MACRO__(0x56C1, ## __VA_ARGS__)
-
-#define XE_ATS_M_IDS(MACRO__, ...)		\
-	XE_ATS_M150_IDS(MACRO__, ## __VA_ARGS__),\
-	XE_ATS_M75_IDS(MACRO__, ## __VA_ARGS__)
-
-/* ARL */
-#define XE_ARL_IDS(MACRO__, ...)		\
-	MACRO__(0x7D41, ## __VA_ARGS__),	\
-	MACRO__(0x7D51, ## __VA_ARGS__),        \
-	MACRO__(0x7D67, ## __VA_ARGS__),	\
-	MACRO__(0x7DD1, ## __VA_ARGS__),	\
-	MACRO__(0xB640, ## __VA_ARGS__)
-
-/* MTL */
-#define XE_MTL_IDS(MACRO__, ...)		\
-	MACRO__(0x7D40, ## __VA_ARGS__),	\
-	MACRO__(0x7D45, ## __VA_ARGS__),	\
-	MACRO__(0x7D55, ## __VA_ARGS__),	\
-	MACRO__(0x7D60, ## __VA_ARGS__),	\
-	MACRO__(0x7DD5, ## __VA_ARGS__)
-
-/* PVC */
-#define XE_PVC_IDS(MACRO__, ...)		\
-	MACRO__(0x0B69, ## __VA_ARGS__),	\
-	MACRO__(0x0B6E, ## __VA_ARGS__),	\
-	MACRO__(0x0BD4, ## __VA_ARGS__),	\
-	MACRO__(0x0BD5, ## __VA_ARGS__),	\
-	MACRO__(0x0BD6, ## __VA_ARGS__),	\
-	MACRO__(0x0BD7, ## __VA_ARGS__),	\
-	MACRO__(0x0BD8, ## __VA_ARGS__),	\
-	MACRO__(0x0BD9, ## __VA_ARGS__),	\
-	MACRO__(0x0BDA, ## __VA_ARGS__),	\
-	MACRO__(0x0BDB, ## __VA_ARGS__),	\
-	MACRO__(0x0BE0, ## __VA_ARGS__),	\
-	MACRO__(0x0BE1, ## __VA_ARGS__),	\
-	MACRO__(0x0BE5, ## __VA_ARGS__)
-
-#define XE_LNL_IDS(MACRO__, ...) \
-	MACRO__(0x6420, ## __VA_ARGS__), \
-	MACRO__(0x64A0, ## __VA_ARGS__), \
-	MACRO__(0x64B0, ## __VA_ARGS__)
-
-#define XE_BMG_IDS(MACRO__, ...) \
-	MACRO__(0xE202, ## __VA_ARGS__), \
-	MACRO__(0xE20B, ## __VA_ARGS__), \
-	MACRO__(0xE20C, ## __VA_ARGS__), \
-	MACRO__(0xE20D, ## __VA_ARGS__), \
-	MACRO__(0xE212, ## __VA_ARGS__)
-
-#define XE_PTL_IDS(MACRO__, ...) \
-	MACRO__(0xB080, ## __VA_ARGS__), \
-	MACRO__(0xB081, ## __VA_ARGS__), \
-	MACRO__(0xB082, ## __VA_ARGS__), \
-	MACRO__(0xB090, ## __VA_ARGS__), \
-	MACRO__(0xB091, ## __VA_ARGS__), \
-	MACRO__(0xB092, ## __VA_ARGS__), \
-	MACRO__(0xB0A0, ## __VA_ARGS__), \
-	MACRO__(0xB0A1, ## __VA_ARGS__), \
-	MACRO__(0xB0A2, ## __VA_ARGS__)
-
-#endif
-- 
2.39.5

