Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F951959760
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2024 11:50:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F72D10E5BE;
	Wed, 21 Aug 2024 09:50:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Y2FLXk8H";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 127A410E57B;
 Wed, 21 Aug 2024 09:50:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724233847; x=1755769847;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=G1cGEQDi5WXPHoypHag7vmtI5z5e5icrdmni8E6V+L8=;
 b=Y2FLXk8HJy3/k6uG1K27sSIxn4E+xE/T9qwOzvcN2IS9GKbOsClqgWnW
 5xW5l6b3yqrfo+bSLnw+ZKm4GaV1cwDn9aBnu1ktD+HcaSG1+c/jnD7sF
 gPCuw8CFedYQQLSswb2NPvnHxPH6FZLykzQ9hAKgRywxbN8yJeIcPhl+L
 b17d1iAaC1OEhcULRFEV7lsiZpPi8sVrQbfWVE8l6sxHVWmLgIsUIILS/
 CoN3oH3RT5RSPbBx55wpMPmFXWgC5JFWvZ1cflIyfFdZ3ecA2bOtiVaYI
 f5g+4oVVZW0gB6BHiyG3VFEG4vgjZbfpq6xsvYYx9lPwSnovVYERqPVQb w==;
X-CSE-ConnectionGUID: vxa9pYGGS2CKNki+25gtFg==
X-CSE-MsgGUID: Gw03T8yjQCejZPJ0Wqr1VQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11170"; a="22769291"
X-IronPort-AV: E=Sophos;i="6.10,164,1719903600"; d="scan'208";a="22769291"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2024 02:50:47 -0700
X-CSE-ConnectionGUID: HorG7LC6S6WFZx3VDmhCJg==
X-CSE-MsgGUID: wZmY1J5SSN+YkNMdJS8WqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,164,1719903600"; d="scan'208";a="61574233"
Received: from sbutnari-mobl1.ti.intel.com (HELO localhost) ([10.245.246.20])
 by orviesa007-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Aug 2024 02:50:44 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: lucas.demarchi@intel.com, rodrigo.vivi@intel.com, matthew.d.roper@intel.com
Subject: [PATCH v2] drm/i915/display: identify display steppings in display
 probe
Date: Wed, 21 Aug 2024 12:50:36 +0300
Message-Id: <20240821095036.2044654-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <65e319048c369fbbd5018badfa24e457ca4e956e.1724180287.git.jani.nikula@intel.com>
References: <65e319048c369fbbd5018badfa24e457ca4e956e.1724180287.git.jani.nikula@intel.com>
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

Both i915 and xe have code to identify display steppings. Start
deduplicating this by, uh, adding a third copy in display code. This is
not yet used for anything other than debug logging. We'll switch over
later.

For platforms before GMD ID, attach the mapping from PCI revision to
stepping in the platform and subplatform descriptors. This is a
considerably cleaner approach than having it completely separate.

Also add a separate field for stepping in display runtime info,
preserving the value from GMD ID.

v2: Handle NULL subdesc (Matt)

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_device.c   | 225 +++++++++++++++++-
 .../drm/i915/display/intel_display_device.h   |   3 +-
 .../drm/xe/compat-i915-headers/intel_step.h   |   1 +
 3 files changed, 217 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index b28d55fa0c3a..dfa923672492 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -16,14 +16,25 @@
 #include "intel_display_power.h"
 #include "intel_display_reg_defs.h"
 #include "intel_fbc.h"
+#include "intel_step.h"
 
 __diag_push();
 __diag_ignore_all("-Woverride-init", "Allow field initialization overrides for display info");
 
+struct stepping_desc {
+	const enum intel_step *map; /* revid to step map */
+	size_t size; /* map size */
+};
+
+#define STEP_INFO(_map)				\
+	.step_info.map = _map,			\
+	.step_info.size = ARRAY_SIZE(_map)
+
 struct subplatform_desc {
 	enum intel_display_subplatform subplatform;
 	const char *name;
 	const u16 *pciidlist;
+	struct stepping_desc step_info;
 };
 
 struct platform_desc {
@@ -31,6 +42,7 @@ struct platform_desc {
 	const char *name;
 	const struct subplatform_desc *subplatforms;
 	const struct intel_display_device_info *info; /* NULL for GMD ID */
+	struct stepping_desc step_info;
 };
 
 #define PLATFORM(_platform)			 \
@@ -610,6 +622,13 @@ static const u16 skl_ulx_ids[] = {
 	0
 };
 
+static const enum intel_step skl_steppings[] = {
+	[0x6] = STEP_G0,
+	[0x7] = STEP_H0,
+	[0x9] = STEP_J0,
+	[0xA] = STEP_I1,
+};
+
 static const struct platform_desc skl_desc = {
 	PLATFORM(SKYLAKE),
 	.subplatforms = (const struct subplatform_desc[]) {
@@ -618,6 +637,7 @@ static const struct platform_desc skl_desc = {
 		{},
 	},
 	.info = &skl_display,
+	STEP_INFO(skl_steppings),
 };
 
 static const u16 kbl_ult_ids[] = {
@@ -634,6 +654,16 @@ static const u16 kbl_ulx_ids[] = {
 	0
 };
 
+static const enum intel_step kbl_steppings[] = {
+	[1] = STEP_B0,
+	[2] = STEP_B0,
+	[3] = STEP_B0,
+	[4] = STEP_C0,
+	[5] = STEP_B1,
+	[6] = STEP_B1,
+	[7] = STEP_C0,
+};
+
 static const struct platform_desc kbl_desc = {
 	PLATFORM(KABYLAKE),
 	.subplatforms = (const struct subplatform_desc[]) {
@@ -642,6 +672,7 @@ static const struct platform_desc kbl_desc = {
 		{},
 	},
 	.info = &skl_display,
+	STEP_INFO(kbl_steppings),
 };
 
 static const u16 cfl_ult_ids[] = {
@@ -706,6 +737,13 @@ static const struct platform_desc cml_desc = {
 		BIT(TRANSCODER_DSI_A) | BIT(TRANSCODER_DSI_C), \
 	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C)
 
+static const enum intel_step bxt_steppings[] = {
+	[0xA] = STEP_C0,
+	[0xB] = STEP_C0,
+	[0xC] = STEP_D0,
+	[0xD] = STEP_E0,
+};
+
 static const struct platform_desc bxt_desc = {
 	PLATFORM(BROXTON),
 	.info = &(const struct intel_display_device_info) {
@@ -714,6 +752,11 @@ static const struct platform_desc bxt_desc = {
 
 		.__runtime_defaults.ip.ver = 9,
 	},
+	STEP_INFO(bxt_steppings),
+};
+
+static const enum intel_step glk_steppings[] = {
+	[3] = STEP_B0,
 };
 
 static const struct platform_desc glk_desc = {
@@ -725,6 +768,7 @@ static const struct platform_desc glk_desc = {
 
 		.__runtime_defaults.ip.ver = 10,
 	},
+	STEP_INFO(glk_steppings),
 };
 
 #define ICL_DISPLAY \
@@ -773,6 +817,10 @@ static const u16 icl_port_f_ids[] = {
 	0
 };
 
+static const enum intel_step icl_steppings[] = {
+	[7] = STEP_D0,
+};
+
 static const struct platform_desc icl_desc = {
 	PLATFORM(ICELAKE),
 	.subplatforms = (const struct subplatform_desc[]) {
@@ -784,6 +832,7 @@ static const struct platform_desc icl_desc = {
 
 		.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D) | BIT(PORT_E),
 	},
+	STEP_INFO(icl_steppings),
 };
 
 static const struct intel_display_device_info jsl_ehl_display = {
@@ -792,14 +841,21 @@ static const struct intel_display_device_info jsl_ehl_display = {
 	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D),
 };
 
+static const enum intel_step jsl_ehl_steppings[] = {
+	[0] = STEP_A0,
+	[1] = STEP_B0,
+};
+
 static const struct platform_desc jsl_desc = {
 	PLATFORM(JASPERLAKE),
 	.info = &jsl_ehl_display,
+	STEP_INFO(jsl_ehl_steppings),
 };
 
 static const struct platform_desc ehl_desc = {
 	PLATFORM(ELKHARTLAKE),
 	.info = &jsl_ehl_display,
+	STEP_INFO(jsl_ehl_steppings),
 };
 
 #define XE_D_DISPLAY \
@@ -850,10 +906,23 @@ static const u16 tgl_uy_ids[] = {
 	0
 };
 
+static const enum intel_step tgl_steppings[] = {
+	[0] = STEP_B0,
+	[1] = STEP_D0,
+};
+
+static const enum intel_step tgl_uy_steppings[] = {
+	[0] = STEP_A0,
+	[1] = STEP_C0,
+	[2] = STEP_C0,
+	[3] = STEP_D0,
+};
+
 static const struct platform_desc tgl_desc = {
 	PLATFORM(TIGERLAKE),
 	.subplatforms = (const struct subplatform_desc[]) {
-		{ INTEL_DISPLAY_TIGERLAKE_UY, "UY", tgl_uy_ids },
+		{ INTEL_DISPLAY_TIGERLAKE_UY, "UY", tgl_uy_ids,
+		  STEP_INFO(tgl_uy_steppings) },
 		{},
 	},
 	.info = &(const struct intel_display_device_info) {
@@ -866,6 +935,12 @@ static const struct platform_desc tgl_desc = {
 		.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) |
 		BIT(PORT_TC1) | BIT(PORT_TC2) | BIT(PORT_TC3) | BIT(PORT_TC4) | BIT(PORT_TC5) | BIT(PORT_TC6),
 	},
+	STEP_INFO(tgl_steppings),
+};
+
+static const enum intel_step dg1_steppings[] = {
+	[0] = STEP_A0,
+	[1] = STEP_B0,
 };
 
 static const struct platform_desc dg1_desc = {
@@ -876,6 +951,13 @@ static const struct platform_desc dg1_desc = {
 		.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) |
 		BIT(PORT_TC1) | BIT(PORT_TC2),
 	},
+	STEP_INFO(dg1_steppings),
+};
+
+static const enum intel_step rkl_steppings[] = {
+	[0] = STEP_A0,
+	[1] = STEP_B0,
+	[4] = STEP_C0,
 };
 
 static const struct platform_desc rkl_desc = {
@@ -892,6 +974,7 @@ static const struct platform_desc rkl_desc = {
 		.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) |
 		BIT(PORT_TC1) | BIT(PORT_TC2),
 	},
+	STEP_INFO(rkl_steppings),
 };
 
 static const u16 adls_rpls_ids[] = {
@@ -899,10 +982,24 @@ static const u16 adls_rpls_ids[] = {
 	0
 };
 
+static const enum intel_step adl_s_steppings[] = {
+	[0x0] = STEP_A0,
+	[0x1] = STEP_A2,
+	[0x4] = STEP_B0,
+	[0x8] = STEP_B0,
+	[0xC] = STEP_C0,
+};
+
+static const enum intel_step adl_s_rpl_s_steppings[] = {
+	[0x4] = STEP_D0,
+	[0xC] = STEP_C0,
+};
+
 static const struct platform_desc adl_s_desc = {
 	PLATFORM(ALDERLAKE_S),
 	.subplatforms = (const struct subplatform_desc[]) {
-		{ INTEL_DISPLAY_ALDERLAKE_S_RAPTORLAKE_S, "RPL-S", adls_rpls_ids },
+		{ INTEL_DISPLAY_ALDERLAKE_S_RAPTORLAKE_S, "RPL-S", adls_rpls_ids,
+		  STEP_INFO(adl_s_rpl_s_steppings) },
 		{},
 	},
 	.info = &(const struct intel_display_device_info) {
@@ -913,6 +1010,7 @@ static const struct platform_desc adl_s_desc = {
 		.__runtime_defaults.port_mask = BIT(PORT_A) |
 		BIT(PORT_TC1) | BIT(PORT_TC2) | BIT(PORT_TC3) | BIT(PORT_TC4),
 	},
+	STEP_INFO(adl_s_steppings),
 };
 
 #define XE_LPD_FEATURES \
@@ -986,15 +1084,34 @@ static const u16 adlp_rplp_ids[] = {
 	0
 };
 
+static const enum intel_step adl_p_steppings[] = {
+	[0x0] = STEP_A0,
+	[0x4] = STEP_B0,
+	[0x8] = STEP_C0,
+	[0xC] = STEP_D0,
+};
+
+static const enum intel_step adl_p_adl_n_steppings[] = {
+	[0x0] = STEP_D0,
+};
+
+static const enum intel_step adl_p_rpl_pu_steppings[] = {
+	[0x4] = STEP_E0,
+};
+
 static const struct platform_desc adl_p_desc = {
 	PLATFORM(ALDERLAKE_P),
 	.subplatforms = (const struct subplatform_desc[]) {
-		{ INTEL_DISPLAY_ALDERLAKE_P_ALDERLAKE_N, "ADL-N", adlp_adln_ids },
-		{ INTEL_DISPLAY_ALDERLAKE_P_RAPTORLAKE_U, "RPL-U", adlp_rplu_ids },
-		{ INTEL_DISPLAY_ALDERLAKE_P_RAPTORLAKE_P, "RPL-P", adlp_rplp_ids },
+		{ INTEL_DISPLAY_ALDERLAKE_P_ALDERLAKE_N, "ADL-N", adlp_adln_ids,
+		  STEP_INFO(adl_p_adl_n_steppings) },
+		{ INTEL_DISPLAY_ALDERLAKE_P_RAPTORLAKE_P, "RPL-P", adlp_rplp_ids,
+		  STEP_INFO(adl_p_rpl_pu_steppings) },
+		{ INTEL_DISPLAY_ALDERLAKE_P_RAPTORLAKE_U, "RPL-U", adlp_rplu_ids,
+		  STEP_INFO(adl_p_rpl_pu_steppings) },
 		{},
 	},
 	.info = &xe_lpd_display,
+	STEP_INFO(adl_p_steppings),
 };
 
 static const struct intel_display_device_info xe_hpd_display = {
@@ -1023,12 +1140,33 @@ static const u16 dg2_g12_ids[] = {
 	0
 };
 
+static const enum intel_step dg2_g10_steppings[] = {
+	[0x0] = STEP_A0,
+	[0x1] = STEP_A0,
+	[0x4] = STEP_B0,
+	[0x8] = STEP_C0,
+};
+
+static const enum intel_step dg2_g11_steppings[] = {
+	[0x0] = STEP_B0,
+	[0x4] = STEP_C0,
+	[0x5] = STEP_C0,
+};
+
+static const enum intel_step dg2_g12_steppings[] = {
+	[0x0] = STEP_C0,
+	[0x1] = STEP_C0,
+};
+
 static const struct platform_desc dg2_desc = {
 	PLATFORM(DG2),
 	.subplatforms = (const struct subplatform_desc[]) {
-		{ INTEL_DISPLAY_DG2_G10, "G10", dg2_g10_ids },
-		{ INTEL_DISPLAY_DG2_G11, "G11", dg2_g11_ids },
-		{ INTEL_DISPLAY_DG2_G12, "G12", dg2_g12_ids },
+		{ INTEL_DISPLAY_DG2_G10, "G10", dg2_g10_ids,
+		  STEP_INFO(dg2_g10_steppings) },
+		{ INTEL_DISPLAY_DG2_G11, "G11", dg2_g11_ids,
+		  STEP_INFO(dg2_g11_steppings) },
+		{ INTEL_DISPLAY_DG2_G12, "G12", dg2_g12_ids,
+		  STEP_INFO(dg2_g12_steppings) },
 		{},
 	},
 	.info = &xe_hpd_display,
@@ -1261,13 +1399,66 @@ find_subplatform_desc(struct pci_dev *pdev, const struct platform_desc *desc)
 	return NULL;
 }
 
+static enum intel_step get_pre_gmdid_step(struct intel_display *display,
+					  const struct stepping_desc *main,
+					  const struct stepping_desc *sub)
+{
+	struct pci_dev *pdev = to_pci_dev(display->drm->dev);
+	const enum intel_step *map = main->map;
+	int size = main->size;
+	int revision = pdev->revision;
+	enum intel_step step;
+
+	/* subplatform stepping info trumps main platform info */
+	if (sub && sub->map && sub->size) {
+		map = sub->map;
+		size = sub->size;
+	}
+
+	/* not all platforms define steppings, and it's fine */
+	if (!map || !size)
+		return STEP_NONE;
+
+	if (revision < size && map[revision] != STEP_NONE) {
+		step = map[revision];
+	} else {
+		drm_warn(display->drm, "Unknown revision 0x%02x\n", revision);
+
+		/*
+		 * If we hit a gap in the revision to step map, use the information
+		 * for the next revision.
+		 *
+		 * This may be wrong in all sorts of ways, especially if the
+		 * steppings in the array are not monotonically increasing, but
+		 * it's better than defaulting to 0.
+		 */
+		while (revision < size && map[revision] == STEP_NONE)
+			revision++;
+
+		if (revision < size) {
+			drm_dbg_kms(display->drm, "Using display stepping for revision 0x%02x\n",
+				    revision);
+			step = map[revision];
+		} else {
+			drm_dbg_kms(display->drm, "Using future display stepping\n");
+			step = STEP_FUTURE;
+		}
+	}
+
+	drm_WARN_ON(display->drm, step == STEP_NONE);
+
+	return step;
+}
+
 void intel_display_device_probe(struct drm_i915_private *i915)
 {
+	struct intel_display *display = &i915->display;
 	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
 	const struct intel_display_device_info *info;
 	struct intel_display_ip_ver ip_ver = {};
 	const struct platform_desc *desc;
 	const struct subplatform_desc *subdesc;
+	enum intel_step step;
 
 	/* Add drm device backpointer as early as possible. */
 	i915->display.drm = &i915->drm;
@@ -1307,13 +1498,25 @@ void intel_display_device_probe(struct drm_i915_private *i915)
 		DISPLAY_RUNTIME_INFO(i915)->subplatform = subdesc->subplatform;
 	}
 
-	if (ip_ver.ver || ip_ver.rel || ip_ver.step)
+	if (ip_ver.ver || ip_ver.rel || ip_ver.step) {
 		DISPLAY_RUNTIME_INFO(i915)->ip = ip_ver;
+		step = STEP_A0 + ip_ver.step;
+		if (step > STEP_FUTURE) {
+			drm_dbg_kms(display->drm, "Using future display stepping\n");
+			step = STEP_FUTURE;
+		}
+	} else {
+		step = get_pre_gmdid_step(display, &desc->step_info,
+					  subdesc ? &subdesc->step_info : NULL);
+	}
+
+	DISPLAY_RUNTIME_INFO(i915)->step = step;
 
-	drm_info(&i915->drm, "Found %s%s%s (device ID %04x) display version %u.%02u\n",
+	drm_info(&i915->drm, "Found %s%s%s (device ID %04x) display version %u.%02u stepping %s\n",
 		 desc->name, subdesc ? "/" : "", subdesc ? subdesc->name : "",
 		 pdev->device, DISPLAY_RUNTIME_INFO(i915)->ip.ver,
-		 DISPLAY_RUNTIME_INFO(i915)->ip.rel);
+		 DISPLAY_RUNTIME_INFO(i915)->ip.rel,
+		 step != STEP_NONE ? intel_step_name(step) : "N/A");
 
 	return;
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index ccf1710cb9df..4615c3ba60aa 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -201,8 +201,9 @@ struct intel_display_runtime_info {
 	struct intel_display_ip_ver {
 		u16 ver;
 		u16 rel;
-		u16 step;
+		u16 step; /* hardware */
 	} ip;
+	int step; /* symbolic */
 
 	u32 rawclk_freq;
 
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/intel_step.h b/drivers/gpu/drm/xe/compat-i915-headers/intel_step.h
index ee3f45b668b9..2cf13a572ab0 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/intel_step.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/intel_step.h
@@ -8,6 +8,7 @@
 
 #include "xe_step.h"
 
+#define intel_step xe_step
 #define intel_step_name xe_step_name
 
 #endif /* __INTEL_STEP_H__ */
-- 
2.39.2

