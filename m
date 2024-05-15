Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DA9E8C6B12
	for <lists+intel-gfx@lfdr.de>; Wed, 15 May 2024 18:57:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A43B910EB30;
	Wed, 15 May 2024 16:57:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Fxx2M7V0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EFC0210EB30
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 May 2024 16:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715792226; x=1747328226;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TOB+u5jEXO/15fZ1UIGfSMaUetmaGj29tHaY96q97TE=;
 b=Fxx2M7V0AbflFRQy/nqSKzGVLVy0shTDc4+GDxHCLuxUNp+v89axQaNN
 WAL5obYNsJjkZGNEV/HyV1jvG0bG4kzz9R8oK+rQ3NUptnc/7oHZlhHBT
 TIl82RYvnpWRe8WSwl5cUC5ozZZEQuPZnrK4AYpYyPhz7HI5vD7wnbFa/
 EUQ4yUwuRjRHtc3WhwDMpMCmTNxo/YwYHAhBMX1Sxqxlzd8XX/JssCIcr
 1uU+KW/CLe9IIQhBX4EA+tHJe25wPEi1Xpu2wrzuTLG0BeG5a6xkK7KzZ
 RkkLo8zsnGwzeyY3MkPLR7i/HWOXlSrNS41BnvwIBO3mzEftoKbGWTBZM A==;
X-CSE-ConnectionGUID: vrAcmqxPTDC+DiL14DNlow==
X-CSE-MsgGUID: wKEoNyc5Se6QMWBq1b3Yvw==
X-IronPort-AV: E=McAfee;i="6600,9927,11074"; a="22461281"
X-IronPort-AV: E=Sophos;i="6.08,162,1712646000"; d="scan'208";a="22461281"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2024 09:57:05 -0700
X-CSE-ConnectionGUID: QletJ7CvRSmJFvNCNDbFGg==
X-CSE-MsgGUID: ZuB6TSE8Q5GXylDotBZ1/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,162,1712646000"; d="scan'208";a="62317730"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.141])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2024 09:57:03 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, Lucas De Marchi <lucas.demarchi@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH 2/2] drm/i915: stop redefining INTEL_VGA_DEVICE
Date: Wed, 15 May 2024 19:56:51 +0300
Message-Id: <20240515165651.1230465-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240515165651.1230465-1-jani.nikula@intel.com>
References: <20240515165651.1230465-1-jani.nikula@intel.com>
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

Now that the PCI ID macros allow us to pass in the macro to use, stop
redefining INTEL_VGA_DEVICE.

Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_device.c   | 87 +++++++++---------
 drivers/gpu/drm/i915/intel_device_info.c      | 91 +++++++++----------
 2 files changed, 88 insertions(+), 90 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index 950e66cdba0a..cf093bc0cb28 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -795,55 +795,54 @@ static bool has_no_display(struct pci_dev *pdev)
 	return pci_match_id(ids, pdev);
 }
 
-#undef INTEL_VGA_DEVICE
-#define INTEL_VGA_DEVICE(id, info) { id, info }
+#define INTEL_DISPLAY_DEVICE(_id, _info) { .devid = (_id), .info = (_info) }
 
 static const struct {
 	u32 devid;
 	const struct intel_display_device_info *info;
 } intel_display_ids[] = {
-	INTEL_I830_IDS(INTEL_VGA_DEVICE, &i830_display),
-	INTEL_I845G_IDS(INTEL_VGA_DEVICE, &i845_display),
-	INTEL_I85X_IDS(INTEL_VGA_DEVICE, &i85x_display),
-	INTEL_I865G_IDS(INTEL_VGA_DEVICE, &i865g_display),
-	INTEL_I915G_IDS(INTEL_VGA_DEVICE, &i915g_display),
-	INTEL_I915GM_IDS(INTEL_VGA_DEVICE, &i915gm_display),
-	INTEL_I945G_IDS(INTEL_VGA_DEVICE, &i945g_display),
-	INTEL_I945GM_IDS(INTEL_VGA_DEVICE, &i945gm_display),
-	INTEL_I965G_IDS(INTEL_VGA_DEVICE, &i965g_display),
-	INTEL_G33_IDS(INTEL_VGA_DEVICE, &g33_display),
-	INTEL_I965GM_IDS(INTEL_VGA_DEVICE, &i965gm_display),
-	INTEL_GM45_IDS(INTEL_VGA_DEVICE, &gm45_display),
-	INTEL_G45_IDS(INTEL_VGA_DEVICE, &g45_display),
-	INTEL_PNV_IDS(INTEL_VGA_DEVICE, &pnv_display),
-	INTEL_ILK_D_IDS(INTEL_VGA_DEVICE, &ilk_d_display),
-	INTEL_ILK_M_IDS(INTEL_VGA_DEVICE, &ilk_m_display),
-	INTEL_SNB_IDS(INTEL_VGA_DEVICE, &snb_display),
-	INTEL_IVB_IDS(INTEL_VGA_DEVICE, &ivb_display),
-	INTEL_HSW_IDS(INTEL_VGA_DEVICE, &hsw_display),
-	INTEL_VLV_IDS(INTEL_VGA_DEVICE, &vlv_display),
-	INTEL_BDW_IDS(INTEL_VGA_DEVICE, &bdw_display),
-	INTEL_CHV_IDS(INTEL_VGA_DEVICE, &chv_display),
-	INTEL_SKL_IDS(INTEL_VGA_DEVICE, &skl_display),
-	INTEL_BXT_IDS(INTEL_VGA_DEVICE, &bxt_display),
-	INTEL_GLK_IDS(INTEL_VGA_DEVICE, &glk_display),
-	INTEL_KBL_IDS(INTEL_VGA_DEVICE, &skl_display),
-	INTEL_CFL_IDS(INTEL_VGA_DEVICE, &skl_display),
-	INTEL_WHL_IDS(INTEL_VGA_DEVICE, &skl_display),
-	INTEL_CML_IDS(INTEL_VGA_DEVICE, &skl_display),
-	INTEL_ICL_IDS(INTEL_VGA_DEVICE, &icl_display),
-	INTEL_EHL_IDS(INTEL_VGA_DEVICE, &jsl_ehl_display),
-	INTEL_JSL_IDS(INTEL_VGA_DEVICE, &jsl_ehl_display),
-	INTEL_TGL_IDS(INTEL_VGA_DEVICE, &tgl_display),
-	INTEL_DG1_IDS(INTEL_VGA_DEVICE, &dg1_display),
-	INTEL_RKL_IDS(INTEL_VGA_DEVICE, &rkl_display),
-	INTEL_ADLS_IDS(INTEL_VGA_DEVICE, &adl_s_display),
-	INTEL_RPLS_IDS(INTEL_VGA_DEVICE, &adl_s_display),
-	INTEL_ADLP_IDS(INTEL_VGA_DEVICE, &xe_lpd_display),
-	INTEL_ADLN_IDS(INTEL_VGA_DEVICE, &xe_lpd_display),
-	INTEL_RPLU_IDS(INTEL_VGA_DEVICE, &xe_lpd_display),
-	INTEL_RPLP_IDS(INTEL_VGA_DEVICE, &xe_lpd_display),
-	INTEL_DG2_IDS(INTEL_VGA_DEVICE, &xe_hpd_display),
+	INTEL_I830_IDS(INTEL_DISPLAY_DEVICE, &i830_display),
+	INTEL_I845G_IDS(INTEL_DISPLAY_DEVICE, &i845_display),
+	INTEL_I85X_IDS(INTEL_DISPLAY_DEVICE, &i85x_display),
+	INTEL_I865G_IDS(INTEL_DISPLAY_DEVICE, &i865g_display),
+	INTEL_I915G_IDS(INTEL_DISPLAY_DEVICE, &i915g_display),
+	INTEL_I915GM_IDS(INTEL_DISPLAY_DEVICE, &i915gm_display),
+	INTEL_I945G_IDS(INTEL_DISPLAY_DEVICE, &i945g_display),
+	INTEL_I945GM_IDS(INTEL_DISPLAY_DEVICE, &i945gm_display),
+	INTEL_I965G_IDS(INTEL_DISPLAY_DEVICE, &i965g_display),
+	INTEL_G33_IDS(INTEL_DISPLAY_DEVICE, &g33_display),
+	INTEL_I965GM_IDS(INTEL_DISPLAY_DEVICE, &i965gm_display),
+	INTEL_GM45_IDS(INTEL_DISPLAY_DEVICE, &gm45_display),
+	INTEL_G45_IDS(INTEL_DISPLAY_DEVICE, &g45_display),
+	INTEL_PNV_IDS(INTEL_DISPLAY_DEVICE, &pnv_display),
+	INTEL_ILK_D_IDS(INTEL_DISPLAY_DEVICE, &ilk_d_display),
+	INTEL_ILK_M_IDS(INTEL_DISPLAY_DEVICE, &ilk_m_display),
+	INTEL_SNB_IDS(INTEL_DISPLAY_DEVICE, &snb_display),
+	INTEL_IVB_IDS(INTEL_DISPLAY_DEVICE, &ivb_display),
+	INTEL_HSW_IDS(INTEL_DISPLAY_DEVICE, &hsw_display),
+	INTEL_VLV_IDS(INTEL_DISPLAY_DEVICE, &vlv_display),
+	INTEL_BDW_IDS(INTEL_DISPLAY_DEVICE, &bdw_display),
+	INTEL_CHV_IDS(INTEL_DISPLAY_DEVICE, &chv_display),
+	INTEL_SKL_IDS(INTEL_DISPLAY_DEVICE, &skl_display),
+	INTEL_BXT_IDS(INTEL_DISPLAY_DEVICE, &bxt_display),
+	INTEL_GLK_IDS(INTEL_DISPLAY_DEVICE, &glk_display),
+	INTEL_KBL_IDS(INTEL_DISPLAY_DEVICE, &skl_display),
+	INTEL_CFL_IDS(INTEL_DISPLAY_DEVICE, &skl_display),
+	INTEL_WHL_IDS(INTEL_DISPLAY_DEVICE, &skl_display),
+	INTEL_CML_IDS(INTEL_DISPLAY_DEVICE, &skl_display),
+	INTEL_ICL_IDS(INTEL_DISPLAY_DEVICE, &icl_display),
+	INTEL_EHL_IDS(INTEL_DISPLAY_DEVICE, &jsl_ehl_display),
+	INTEL_JSL_IDS(INTEL_DISPLAY_DEVICE, &jsl_ehl_display),
+	INTEL_TGL_IDS(INTEL_DISPLAY_DEVICE, &tgl_display),
+	INTEL_DG1_IDS(INTEL_DISPLAY_DEVICE, &dg1_display),
+	INTEL_RKL_IDS(INTEL_DISPLAY_DEVICE, &rkl_display),
+	INTEL_ADLS_IDS(INTEL_DISPLAY_DEVICE, &adl_s_display),
+	INTEL_RPLS_IDS(INTEL_DISPLAY_DEVICE, &adl_s_display),
+	INTEL_ADLP_IDS(INTEL_DISPLAY_DEVICE, &xe_lpd_display),
+	INTEL_ADLN_IDS(INTEL_DISPLAY_DEVICE, &xe_lpd_display),
+	INTEL_RPLU_IDS(INTEL_DISPLAY_DEVICE, &xe_lpd_display),
+	INTEL_RPLP_IDS(INTEL_DISPLAY_DEVICE, &xe_lpd_display),
+	INTEL_DG2_IDS(INTEL_DISPLAY_DEVICE, &xe_hpd_display),
 
 	/*
 	 * Do not add any GMD_ID-based platforms to this list.  They will
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index 82bb34416fb1..862f4b705227 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -127,81 +127,80 @@ void intel_device_info_print(const struct intel_device_info *info,
 	drm_printf(p, "rawclk rate: %u kHz\n", runtime->rawclk_freq);
 }
 
-#undef INTEL_VGA_DEVICE
-#define INTEL_VGA_DEVICE(id, info) (id)
+#define ID(id) (id)
 
 static const u16 subplatform_ult_ids[] = {
-	INTEL_HSW_ULT_GT1_IDS(INTEL_VGA_DEVICE, 0),
-	INTEL_HSW_ULT_GT2_IDS(INTEL_VGA_DEVICE, 0),
-	INTEL_HSW_ULT_GT3_IDS(INTEL_VGA_DEVICE, 0),
-	INTEL_BDW_ULT_GT1_IDS(INTEL_VGA_DEVICE, 0),
-	INTEL_BDW_ULT_GT2_IDS(INTEL_VGA_DEVICE, 0),
-	INTEL_BDW_ULT_GT3_IDS(INTEL_VGA_DEVICE, 0),
-	INTEL_BDW_ULT_RSVD_IDS(INTEL_VGA_DEVICE, 0),
-	INTEL_SKL_ULT_GT1_IDS(INTEL_VGA_DEVICE, 0),
-	INTEL_SKL_ULT_GT2_IDS(INTEL_VGA_DEVICE, 0),
-	INTEL_SKL_ULT_GT3_IDS(INTEL_VGA_DEVICE, 0),
-	INTEL_KBL_ULT_GT1_IDS(INTEL_VGA_DEVICE, 0),
-	INTEL_KBL_ULT_GT2_IDS(INTEL_VGA_DEVICE, 0),
-	INTEL_KBL_ULT_GT3_IDS(INTEL_VGA_DEVICE, 0),
-	INTEL_CFL_U_GT2_IDS(INTEL_VGA_DEVICE, 0),
-	INTEL_CFL_U_GT3_IDS(INTEL_VGA_DEVICE, 0),
-	INTEL_WHL_U_GT1_IDS(INTEL_VGA_DEVICE, 0),
-	INTEL_WHL_U_GT2_IDS(INTEL_VGA_DEVICE, 0),
-	INTEL_WHL_U_GT3_IDS(INTEL_VGA_DEVICE, 0),
-	INTEL_CML_U_GT1_IDS(INTEL_VGA_DEVICE, 0),
-	INTEL_CML_U_GT2_IDS(INTEL_VGA_DEVICE, 0),
+	INTEL_HSW_ULT_GT1_IDS(ID),
+	INTEL_HSW_ULT_GT2_IDS(ID),
+	INTEL_HSW_ULT_GT3_IDS(ID),
+	INTEL_BDW_ULT_GT1_IDS(ID),
+	INTEL_BDW_ULT_GT2_IDS(ID),
+	INTEL_BDW_ULT_GT3_IDS(ID),
+	INTEL_BDW_ULT_RSVD_IDS(ID),
+	INTEL_SKL_ULT_GT1_IDS(ID),
+	INTEL_SKL_ULT_GT2_IDS(ID),
+	INTEL_SKL_ULT_GT3_IDS(ID),
+	INTEL_KBL_ULT_GT1_IDS(ID),
+	INTEL_KBL_ULT_GT2_IDS(ID),
+	INTEL_KBL_ULT_GT3_IDS(ID),
+	INTEL_CFL_U_GT2_IDS(ID),
+	INTEL_CFL_U_GT3_IDS(ID),
+	INTEL_WHL_U_GT1_IDS(ID),
+	INTEL_WHL_U_GT2_IDS(ID),
+	INTEL_WHL_U_GT3_IDS(ID),
+	INTEL_CML_U_GT1_IDS(ID),
+	INTEL_CML_U_GT2_IDS(ID),
 };
 
 static const u16 subplatform_ulx_ids[] = {
-	INTEL_HSW_ULX_GT1_IDS(INTEL_VGA_DEVICE, 0),
-	INTEL_HSW_ULX_GT2_IDS(INTEL_VGA_DEVICE, 0),
-	INTEL_BDW_ULX_GT1_IDS(INTEL_VGA_DEVICE, 0),
-	INTEL_BDW_ULX_GT2_IDS(INTEL_VGA_DEVICE, 0),
-	INTEL_BDW_ULX_GT3_IDS(INTEL_VGA_DEVICE, 0),
-	INTEL_BDW_ULX_RSVD_IDS(INTEL_VGA_DEVICE, 0),
-	INTEL_SKL_ULX_GT1_IDS(INTEL_VGA_DEVICE, 0),
-	INTEL_SKL_ULX_GT2_IDS(INTEL_VGA_DEVICE, 0),
-	INTEL_KBL_ULX_GT1_IDS(INTEL_VGA_DEVICE, 0),
-	INTEL_KBL_ULX_GT2_IDS(INTEL_VGA_DEVICE, 0),
-	INTEL_AML_KBL_GT2_IDS(INTEL_VGA_DEVICE, 0),
-	INTEL_AML_CFL_GT2_IDS(INTEL_VGA_DEVICE, 0),
+	INTEL_HSW_ULX_GT1_IDS(ID),
+	INTEL_HSW_ULX_GT2_IDS(ID),
+	INTEL_BDW_ULX_GT1_IDS(ID),
+	INTEL_BDW_ULX_GT2_IDS(ID),
+	INTEL_BDW_ULX_GT3_IDS(ID),
+	INTEL_BDW_ULX_RSVD_IDS(ID),
+	INTEL_SKL_ULX_GT1_IDS(ID),
+	INTEL_SKL_ULX_GT2_IDS(ID),
+	INTEL_KBL_ULX_GT1_IDS(ID),
+	INTEL_KBL_ULX_GT2_IDS(ID),
+	INTEL_AML_KBL_GT2_IDS(ID),
+	INTEL_AML_CFL_GT2_IDS(ID),
 };
 
 static const u16 subplatform_portf_ids[] = {
-	INTEL_ICL_PORT_F_IDS(INTEL_VGA_DEVICE, 0),
+	INTEL_ICL_PORT_F_IDS(ID),
 };
 
 static const u16 subplatform_uy_ids[] = {
-	INTEL_TGL_GT2_IDS(INTEL_VGA_DEVICE, 0),
+	INTEL_TGL_GT2_IDS(ID),
 };
 
 static const u16 subplatform_n_ids[] = {
-	INTEL_ADLN_IDS(INTEL_VGA_DEVICE, 0),
+	INTEL_ADLN_IDS(ID),
 };
 
 static const u16 subplatform_rpl_ids[] = {
-	INTEL_RPLS_IDS(INTEL_VGA_DEVICE, 0),
-	INTEL_RPLU_IDS(INTEL_VGA_DEVICE, 0),
-	INTEL_RPLP_IDS(INTEL_VGA_DEVICE, 0),
+	INTEL_RPLS_IDS(ID),
+	INTEL_RPLU_IDS(ID),
+	INTEL_RPLP_IDS(ID),
 };
 
 static const u16 subplatform_rplu_ids[] = {
-	INTEL_RPLU_IDS(INTEL_VGA_DEVICE, 0),
+	INTEL_RPLU_IDS(ID),
 };
 
 static const u16 subplatform_g10_ids[] = {
-	INTEL_DG2_G10_IDS(INTEL_VGA_DEVICE, 0),
-	INTEL_ATS_M150_IDS(INTEL_VGA_DEVICE, 0),
+	INTEL_DG2_G10_IDS(ID),
+	INTEL_ATS_M150_IDS(ID),
 };
 
 static const u16 subplatform_g11_ids[] = {
-	INTEL_DG2_G11_IDS(INTEL_VGA_DEVICE, 0),
-	INTEL_ATS_M75_IDS(INTEL_VGA_DEVICE, 0),
+	INTEL_DG2_G11_IDS(ID),
+	INTEL_ATS_M75_IDS(ID),
 };
 
 static const u16 subplatform_g12_ids[] = {
-	INTEL_DG2_G12_IDS(INTEL_VGA_DEVICE, 0),
+	INTEL_DG2_G12_IDS(ID),
 };
 
 static bool find_devid(u16 id, const u16 *p, unsigned int num)
-- 
2.39.2

