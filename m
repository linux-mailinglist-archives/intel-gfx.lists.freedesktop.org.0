Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 919E08CC5A3
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2024 19:34:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85CAE10E31A;
	Wed, 22 May 2024 17:34:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="D7OMCJX1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7803910E427;
 Wed, 22 May 2024 17:34:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716399280; x=1747935280;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0IR2H8PeaFBYIIyBMbQx4UaMpDaA7ICbLIRO78BwJLk=;
 b=D7OMCJX13FMFCHMg695wU9dsutFobDfJ7r6brXvtLi0QfBJeOU0cEIqJ
 GNZHkPyUjmcGCg7px6pjg4Kz8WhbdRgKaTegupxEBLGgVstvrJFJaPOVB
 F0MDKgD3lrz8o5lUmyIddj3zkm6OTinIiU2g1gL+l0vbcRgWEza7Xkzg7
 dX/TGhkJg/f941VSepGTXvjnnC0tG0FMk8zMdf0ckb6R25Ftb7jPNjxhA
 LFZxTMReL38o9dcvm+zLsRStpMPJj9bV3wKhCh94o7KSbV7gwdDTdnt5i
 OJr6XfI3IGCTo1RBTOnrqlrDscjLSPtQA24W5NI/bxXLU47zGj2/YzvWD g==;
X-CSE-ConnectionGUID: h91l0Mt0SGaseqfXC5jQwg==
X-CSE-MsgGUID: TBZSpUObRlK8V9JWRFYITA==
X-IronPort-AV: E=McAfee;i="6600,9927,11080"; a="12611453"
X-IronPort-AV: E=Sophos;i="6.08,181,1712646000"; d="scan'208";a="12611453"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2024 10:34:40 -0700
X-CSE-ConnectionGUID: 5PQGM2v+Tz2G/28VVVwAmw==
X-CSE-MsgGUID: mSzLAbToTfK95UZcXdZyWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,181,1712646000"; d="scan'208";a="33475046"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.230])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2024 10:34:38 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	rodrigo.vivi@intel.com,
	lucas.demarchi@intel.com
Subject: [PATCH 09/10] drm/i915/display: add support for subplatforms
Date: Wed, 22 May 2024 20:33:46 +0300
Message-Id: <8c04e32648395c0b745bc31a1edd4ef6f574bb70.1716399081.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1716399081.git.jani.nikula@intel.com>
References: <cover.1716399081.git.jani.nikula@intel.com>
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

Add support for subplatforms. This is similar to what the xe driver is
doing. The subplatform is an enum and it's exclusive, i.e. only one
subplatform can match, and it completely identifies the platform and
subplatform. This is different from i915 core, and is notable in the
handling of ULT/ULX and RPL/RPL-U.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_device.c   | 204 ++++++++++++++++++
 .../drm/i915/display/intel_display_device.h   |  26 +++
 2 files changed, 230 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index 7c5cead1fe15..59b8ca174ef8 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -20,9 +20,16 @@
 __diag_push();
 __diag_ignore_all("-Woverride-init", "Allow field initialization overrides for display info");
 
+struct subplatform_desc {
+	enum intel_display_subplatform subplatform;
+	const char *name;
+	const u16 *pciidlist;
+};
+
 struct platform_desc {
 	enum intel_display_platform platform;
 	const char *name;
+	const struct subplatform_desc *subplatforms;
 	const struct intel_display_device_info *info; /* NULL for GMD ID */
 };
 
@@ -30,6 +37,8 @@ struct platform_desc {
 	.platform = (INTEL_DISPLAY_##_platform), \
 	.name = #_platform
 
+#define ID(id) (id)
+
 static const struct intel_display_device_info no_display = {};
 
 #define PIPE_A_OFFSET		0x70000
@@ -460,8 +469,26 @@ static const struct platform_desc vlv_desc = {
 	},
 };
 
+static const u16 hsw_ult_ids[] = {
+	INTEL_HSW_ULT_GT1_IDS(ID),
+	INTEL_HSW_ULT_GT2_IDS(ID),
+	INTEL_HSW_ULT_GT3_IDS(ID),
+	0
+};
+
+static const u16 hsw_ulx_ids[] = {
+	INTEL_HSW_ULX_GT1_IDS(ID),
+	INTEL_HSW_ULX_GT2_IDS(ID),
+	0
+};
+
 static const struct platform_desc hsw_desc = {
 	PLATFORM(HASWELL),
+	.subplatforms = (const struct subplatform_desc[]) {
+		{ INTEL_DISPLAY_HASWELL_ULT, "ULT", hsw_ult_ids },
+		{ INTEL_DISPLAY_HASWELL_ULX, "ULX", hsw_ulx_ids },
+		{},
+	},
 	.info = &(const struct intel_display_device_info) {
 		.has_ddi = 1,
 		.has_dp_mst = 1,
@@ -483,8 +510,29 @@ static const struct platform_desc hsw_desc = {
 	},
 };
 
+static const u16 bdw_ult_ids[] = {
+	INTEL_BDW_ULT_GT1_IDS(ID),
+	INTEL_BDW_ULT_GT2_IDS(ID),
+	INTEL_BDW_ULT_GT3_IDS(ID),
+	INTEL_BDW_ULT_RSVD_IDS(ID),
+	0
+};
+
+static const u16 bdw_ulx_ids[] = {
+	INTEL_BDW_ULX_GT1_IDS(ID),
+	INTEL_BDW_ULX_GT2_IDS(ID),
+	INTEL_BDW_ULX_GT3_IDS(ID),
+	INTEL_BDW_ULX_RSVD_IDS(ID),
+	0
+};
+
 static const struct platform_desc bdw_desc = {
 	PLATFORM(BROADWELL),
+	.subplatforms = (const struct subplatform_desc[]) {
+		{ INTEL_DISPLAY_BROADWELL_ULT, "ULT", bdw_ult_ids },
+		{ INTEL_DISPLAY_BROADWELL_ULX, "ULX", bdw_ulx_ids },
+		{},
+	},
 	.info = &(const struct intel_display_device_info) {
 		.has_ddi = 1,
 		.has_dp_mst = 1,
@@ -549,23 +597,89 @@ static const struct intel_display_device_info skl_display = {
 	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
 };
 
+static const u16 skl_ult_ids[] = {
+	INTEL_SKL_ULT_GT1_IDS(ID),
+	INTEL_SKL_ULT_GT2_IDS(ID),
+	INTEL_SKL_ULT_GT3_IDS(ID),
+	0
+};
+
+static const u16 skl_ulx_ids[] = {
+	INTEL_SKL_ULX_GT1_IDS(ID),
+	INTEL_SKL_ULX_GT2_IDS(ID),
+	0
+};
+
 static const struct platform_desc skl_desc = {
 	PLATFORM(SKYLAKE),
+	.subplatforms = (const struct subplatform_desc[]) {
+		{ INTEL_DISPLAY_SKYLAKE_ULT, "ULT", skl_ult_ids },
+		{ INTEL_DISPLAY_SKYLAKE_ULX, "ULX", skl_ulx_ids },
+		{},
+	},
 	.info = &skl_display,
 };
 
+static const u16 kbl_ult_ids[] = {
+	INTEL_KBL_ULT_GT1_IDS(ID),
+	INTEL_KBL_ULT_GT2_IDS(ID),
+	INTEL_KBL_ULT_GT3_IDS(ID),
+	0
+};
+
+static const u16 kbl_ulx_ids[] = {
+	INTEL_KBL_ULX_GT1_IDS(ID),
+	INTEL_KBL_ULX_GT2_IDS(ID),
+	INTEL_AML_KBL_GT2_IDS(ID),
+	0
+};
+
 static const struct platform_desc kbl_desc = {
 	PLATFORM(KABYLAKE),
+	.subplatforms = (const struct subplatform_desc[]) {
+		{ INTEL_DISPLAY_KABYLAKE_ULT, "ULT", kbl_ult_ids },
+		{ INTEL_DISPLAY_KABYLAKE_ULX, "ULX", kbl_ulx_ids },
+		{},
+	},
 	.info = &skl_display,
 };
 
+static const u16 cfl_ult_ids[] = {
+	INTEL_CFL_U_GT2_IDS(ID),
+	INTEL_CFL_U_GT3_IDS(ID),
+	INTEL_WHL_U_GT1_IDS(ID),
+	INTEL_WHL_U_GT2_IDS(ID),
+	INTEL_WHL_U_GT3_IDS(ID),
+	0
+};
+
+static const u16 cfl_ulx_ids[] = {
+	INTEL_AML_CFL_GT2_IDS(ID),
+	0
+};
+
 static const struct platform_desc cfl_desc = {
 	PLATFORM(COFFEELAKE),
+	.subplatforms = (const struct subplatform_desc[]) {
+		{ INTEL_DISPLAY_COFFEELAKE_ULT, "ULT", cfl_ult_ids },
+		{ INTEL_DISPLAY_COFFEELAKE_ULX, "ULX", cfl_ulx_ids },
+		{},
+	},
 	.info = &skl_display,
 };
 
+static const u16 cml_ult_ids[] = {
+	INTEL_CML_U_GT1_IDS(ID),
+	INTEL_CML_U_GT2_IDS(ID),
+	0
+};
+
 static const struct platform_desc cml_desc = {
 	PLATFORM(COMETLAKE),
+	.subplatforms = (const struct subplatform_desc[]) {
+		{ INTEL_DISPLAY_COMETLAKE_ULT, "ULT", cml_ult_ids },
+		{},
+	},
 	.info = &skl_display,
 };
 
@@ -654,8 +768,17 @@ static const struct platform_desc glk_desc = {
 		BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1), \
 	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A)
 
+static const u16 icl_port_f_ids[] = {
+	INTEL_ICL_PORT_F_IDS(ID),
+	0
+};
+
 static const struct platform_desc icl_desc = {
 	PLATFORM(ICELAKE),
+	.subplatforms = (const struct subplatform_desc[]) {
+		{ INTEL_DISPLAY_ICELAKE_PORT_F, "Port F", icl_port_f_ids },
+		{},
+	},
 	.info = &(const struct intel_display_device_info) {
 		ICL_DISPLAY,
 
@@ -722,8 +845,17 @@ static const struct platform_desc ehl_desc = {
 		BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1), \
 	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A)
 
+static const u16 tgl_uy_ids[] = {
+	INTEL_TGL_GT2_IDS(ID),
+	0
+};
+
 static const struct platform_desc tgl_desc = {
 	PLATFORM(TIGERLAKE),
+	.subplatforms = (const struct subplatform_desc[]) {
+		{ INTEL_DISPLAY_TIGERLAKE_UY, "UY", tgl_uy_ids },
+		{},
+	},
 	.info = &(const struct intel_display_device_info) {
 		XE_D_DISPLAY,
 
@@ -762,8 +894,17 @@ static const struct platform_desc rkl_desc = {
 	},
 };
 
+static const u16 adls_rpls_ids[] = {
+	INTEL_RPLS_IDS(ID),
+	0
+};
+
 static const struct platform_desc adl_s_desc = {
 	PLATFORM(ALDERLAKE_S),
+	.subplatforms = (const struct subplatform_desc[]) {
+		{ INTEL_DISPLAY_ALDERLAKE_S_RAPTORLAKE_S, "RPL-S", adls_rpls_ids },
+		{},
+	},
 	.info = &(const struct intel_display_device_info) {
 		XE_D_DISPLAY,
 		.has_hti = 1,
@@ -830,8 +971,29 @@ static const struct intel_display_device_info xe_lpd_display = {
 		BIT(PORT_TC1) | BIT(PORT_TC2) | BIT(PORT_TC3) | BIT(PORT_TC4),
 };
 
+static const u16 adlp_adln_ids[] = {
+	INTEL_ADLN_IDS(ID),
+	0
+};
+
+static const u16 adlp_rplu_ids[] = {
+	INTEL_RPLU_IDS(ID),
+	0
+};
+
+static const u16 adlp_rplp_ids[] = {
+	INTEL_RPLP_IDS(ID),
+	0
+};
+
 static const struct platform_desc adl_p_desc = {
 	PLATFORM(ALDERLAKE_P),
+	.subplatforms = (const struct subplatform_desc[]) {
+		{ INTEL_DISPLAY_ALDERLAKE_P_ALDERLAKE_N, "ADL-N", adlp_adln_ids },
+		{ INTEL_DISPLAY_ALDERLAKE_P_RAPTORLAKE_U, "RPL-U", adlp_rplu_ids },
+		{ INTEL_DISPLAY_ALDERLAKE_P_RAPTORLAKE_P, "RPL-P", adlp_rplp_ids },
+		{},
+	},
 	.info = &xe_lpd_display,
 };
 
@@ -846,8 +1008,29 @@ static const struct intel_display_device_info xe_hpd_display = {
 		BIT(PORT_TC1),
 };
 
+static const u16 dg2_g10_ids[] = {
+	INTEL_DG2_G10_IDS(ID),
+	0
+};
+
+static const u16 dg2_g11_ids[] = {
+	INTEL_DG2_G11_IDS(ID),
+	0
+};
+
+static const u16 dg2_g12_ids[] = {
+	INTEL_DG2_G12_IDS(ID),
+	0
+};
+
 static const struct platform_desc dg2_desc = {
 	PLATFORM(DG2),
+	.subplatforms = (const struct subplatform_desc[]) {
+		{ INTEL_DISPLAY_DG2_G10, "G10", dg2_g10_ids },
+		{ INTEL_DISPLAY_DG2_G11, "G11", dg2_g11_ids },
+		{ INTEL_DISPLAY_DG2_G12, "G12", dg2_g12_ids },
+		{},
+	},
 	.info = &xe_hpd_display,
 };
 
@@ -1059,12 +1242,27 @@ static const struct platform_desc *find_platform_desc(struct pci_dev *pdev)
 	return NULL;
 }
 
+static const struct subplatform_desc *
+find_subplatform_desc(struct pci_dev *pdev, const struct platform_desc *desc)
+{
+	const struct subplatform_desc *sp;
+	const u16 *id;
+
+	for (sp = desc->subplatforms; sp && sp->subplatform; sp++)
+		for (id = sp->pciidlist; *id; id++)
+			if (*id == pdev->device)
+				return sp;
+
+	return NULL;
+}
+
 void intel_display_device_probe(struct drm_i915_private *i915)
 {
 	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
 	const struct intel_display_device_info *info;
 	struct intel_display_ip_ver ip_ver = {};
 	const struct platform_desc *desc;
+	const struct subplatform_desc *subdesc;
 
 	/* Add drm device backpointer as early as possible. */
 	i915->display.drm = &i915->drm;
@@ -1098,6 +1296,12 @@ void intel_display_device_probe(struct drm_i915_private *i915)
 	drm_WARN_ON(&i915->drm, !desc->platform || !desc->name);
 	DISPLAY_RUNTIME_INFO(i915)->platform = desc->platform;
 
+	subdesc = find_subplatform_desc(pdev, desc);
+	if (subdesc) {
+		drm_WARN_ON(&i915->drm, !subdesc->subplatform || !subdesc->name);
+		DISPLAY_RUNTIME_INFO(i915)->subplatform = subdesc->subplatform;
+	}
+
 	if (ip_ver.ver || ip_ver.rel || ip_ver.step)
 		DISPLAY_RUNTIME_INFO(i915)->ip = ip_ver;
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 8accd680a61e..e1d9947394dc 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -70,6 +70,31 @@ enum intel_display_platform {
 	INTEL_DISPLAY_LUNARLAKE,
 };
 
+enum intel_display_subplatform {
+	INTEL_DISPLAY_SUBPLATFORM_UNINITIALIZED = 0,
+	INTEL_DISPLAY_HASWELL_ULT,
+	INTEL_DISPLAY_HASWELL_ULX,
+	INTEL_DISPLAY_BROADWELL_ULT,
+	INTEL_DISPLAY_BROADWELL_ULX,
+	INTEL_DISPLAY_SKYLAKE_ULT,
+	INTEL_DISPLAY_SKYLAKE_ULX,
+	INTEL_DISPLAY_KABYLAKE_ULT,
+	INTEL_DISPLAY_KABYLAKE_ULX,
+	INTEL_DISPLAY_COFFEELAKE_ULT,
+	INTEL_DISPLAY_COFFEELAKE_ULX,
+	INTEL_DISPLAY_COMETLAKE_ULT,
+	INTEL_DISPLAY_COMETLAKE_ULX,
+	INTEL_DISPLAY_ICELAKE_PORT_F,
+	INTEL_DISPLAY_TIGERLAKE_UY,
+	INTEL_DISPLAY_ALDERLAKE_S_RAPTORLAKE_S,
+	INTEL_DISPLAY_ALDERLAKE_P_ALDERLAKE_N,
+	INTEL_DISPLAY_ALDERLAKE_P_RAPTORLAKE_P,
+	INTEL_DISPLAY_ALDERLAKE_P_RAPTORLAKE_U,
+	INTEL_DISPLAY_DG2_G10,
+	INTEL_DISPLAY_DG2_G11,
+	INTEL_DISPLAY_DG2_G12,
+};
+
 #define DEV_INFO_DISPLAY_FOR_EACH_FLAG(func) \
 	/* Keep in alphabetical order */ \
 	func(cursor_needs_physical); \
@@ -168,6 +193,7 @@ enum intel_display_platform {
 
 struct intel_display_runtime_info {
 	enum intel_display_platform platform;
+	enum intel_display_subplatform subplatform;
 
 	struct intel_display_ip_ver {
 		u16 ver;
-- 
2.39.2

