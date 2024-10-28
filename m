Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B3E069B3AB4
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2024 20:49:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3412F10E551;
	Mon, 28 Oct 2024 19:49:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cbdvOeRf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1268D10E551;
 Mon, 28 Oct 2024 19:49:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730144965; x=1761680965;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UhHmJJMojca9VbjvlKsRAWYKXp2Dc8C489eU0vfOi+4=;
 b=cbdvOeRf+jDKnE/YvcQ67kwzaOq6qrGJGJwc4YqV6paf7C0KM7zZtrkn
 Yg8x02Yr64nyzQOVsh2Qtq/xmTRK101WS6jMJtLDbe0kOp+KYJvKMTncy
 Myu9OKZJfmaJikWlumB0tPyTuiaEN15GjxoyqyzdiNn84BqOUD1PSSraw
 aqkX8Eh2lpMIXbNJTHTAGpIZRzHlv40farop0mg5BBQnQJdV0wmzav3fQ
 fl+wqsdNEIB3nBMKV5SaSMwCHS8qFGnavkXRIaruGKl+ZBJ9Vappzz8qd
 jNL7i8wbXosDezjuyuOSSDJ7sh7hXybRlMzCVtVrLhkq+L6x5bQABVL60 w==;
X-CSE-ConnectionGUID: 8K6H8aU0TQWxNWanECNTiw==
X-CSE-MsgGUID: cP7jZLC7RXee4DTc2D9Wgw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="40857848"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="40857848"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 12:49:24 -0700
X-CSE-ConnectionGUID: JM+ScokGR7KJc5NOU4MCWw==
X-CSE-MsgGUID: uIGqwZ0lRduhEM3o+XDNqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="81780263"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.21])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 12:49:21 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 maarten.lankhorst@linux.intel.com
Subject: [CI RESEND v4 v4 05/16] drm/i915/display: convert display platforms
 to lower case
Date: Mon, 28 Oct 2024 21:48:38 +0200
Message-Id: <8eab1be56093f33a7573e3caa78a4933bbf1ee76.1730144869.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1730144869.git.jani.nikula@intel.com>
References: <cover.1730144869.git.jani.nikula@intel.com>
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

This will be helpful for follow-up, where the names here become struct
member names.

This does impact debug logs as well, making everything lower case.

v2: Rebase to adapt to PTL

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_device.c   | 122 +++++++++---------
 .../drm/i915/display/intel_display_device.h   | 122 +++++++++---------
 2 files changed, 122 insertions(+), 122 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index 787f231926ca..c51efc3a97d6 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -236,7 +236,7 @@ static const struct intel_display_device_info no_display = {};
 	.__runtime_defaults.cpu_transcoder_mask = BIT(TRANSCODER_A)
 
 static const struct platform_desc i830_desc = {
-	PLATFORM(I830),
+	PLATFORM(i830),
 	.info = &(const struct intel_display_device_info) {
 		I830_DISPLAY,
 
@@ -245,7 +245,7 @@ static const struct platform_desc i830_desc = {
 };
 
 static const struct platform_desc i845_desc = {
-	PLATFORM(I845G),
+	PLATFORM(i845g),
 	.info = &(const struct intel_display_device_info) {
 		I845_DISPLAY,
 
@@ -254,7 +254,7 @@ static const struct platform_desc i845_desc = {
 };
 
 static const struct platform_desc i85x_desc = {
-	PLATFORM(I85X),
+	PLATFORM(i85x),
 	.info = &(const struct intel_display_device_info) {
 		I830_DISPLAY,
 
@@ -264,7 +264,7 @@ static const struct platform_desc i85x_desc = {
 };
 
 static const struct platform_desc i865g_desc = {
-	PLATFORM(I865G),
+	PLATFORM(i865g),
 	.info = &(const struct intel_display_device_info) {
 		I845_DISPLAY,
 
@@ -286,7 +286,7 @@ static const struct platform_desc i865g_desc = {
 	.__runtime_defaults.port_mask = BIT(PORT_B) | BIT(PORT_C) /* SDVO B/C */
 
 static const struct platform_desc i915g_desc = {
-	PLATFORM(I915G),
+	PLATFORM(i915g),
 	.info = &(const struct intel_display_device_info) {
 		GEN3_DISPLAY,
 		I845_COLORS,
@@ -296,7 +296,7 @@ static const struct platform_desc i915g_desc = {
 };
 
 static const struct platform_desc i915gm_desc = {
-	PLATFORM(I915GM),
+	PLATFORM(i915gm),
 	.info = &(const struct intel_display_device_info) {
 		GEN3_DISPLAY,
 		I9XX_COLORS,
@@ -309,7 +309,7 @@ static const struct platform_desc i915gm_desc = {
 };
 
 static const struct platform_desc i945g_desc = {
-	PLATFORM(I945G),
+	PLATFORM(i945g),
 	.info = &(const struct intel_display_device_info) {
 		GEN3_DISPLAY,
 		I845_COLORS,
@@ -320,7 +320,7 @@ static const struct platform_desc i945g_desc = {
 };
 
 static const struct platform_desc i945gm_desc = {
-	PLATFORM(I915GM),
+	PLATFORM(i915gm),
 	.info = &(const struct intel_display_device_info) {
 		GEN3_DISPLAY,
 		I9XX_COLORS,
@@ -334,7 +334,7 @@ static const struct platform_desc i945gm_desc = {
 };
 
 static const struct platform_desc g33_desc = {
-	PLATFORM(G33),
+	PLATFORM(g33),
 	.info = &(const struct intel_display_device_info) {
 		GEN3_DISPLAY,
 		I845_COLORS,
@@ -343,7 +343,7 @@ static const struct platform_desc g33_desc = {
 };
 
 static const struct platform_desc pnv_desc = {
-	PLATFORM(PINEVIEW),
+	PLATFORM(pineview),
 	.info = &(const struct intel_display_device_info) {
 		GEN3_DISPLAY,
 		I9XX_COLORS,
@@ -364,7 +364,7 @@ static const struct platform_desc pnv_desc = {
 		BIT(TRANSCODER_A) | BIT(TRANSCODER_B)
 
 static const struct platform_desc i965g_desc = {
-	PLATFORM(I965G),
+	PLATFORM(i965g),
 	.info = &(const struct intel_display_device_info) {
 		GEN4_DISPLAY,
 		.has_overlay = 1,
@@ -374,7 +374,7 @@ static const struct platform_desc i965g_desc = {
 };
 
 static const struct platform_desc i965gm_desc = {
-	PLATFORM(I965GM),
+	PLATFORM(i965gm),
 	.info = &(const struct intel_display_device_info) {
 		GEN4_DISPLAY,
 		.has_overlay = 1,
@@ -386,7 +386,7 @@ static const struct platform_desc i965gm_desc = {
 };
 
 static const struct platform_desc g45_desc = {
-	PLATFORM(G45),
+	PLATFORM(g45),
 	.info = &(const struct intel_display_device_info) {
 		GEN4_DISPLAY,
 
@@ -395,7 +395,7 @@ static const struct platform_desc g45_desc = {
 };
 
 static const struct platform_desc gm45_desc = {
-	PLATFORM(GM45),
+	PLATFORM(gm45),
 	.info = &(const struct intel_display_device_info) {
 		GEN4_DISPLAY,
 		.supports_tv = 1,
@@ -418,14 +418,14 @@ static const struct platform_desc gm45_desc = {
 	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D) /* DP A, SDVO/HDMI/DP B, HDMI/DP C/D */
 
 static const struct platform_desc ilk_d_desc = {
-	PLATFORM(IRONLAKE),
+	PLATFORM(ironlake),
 	.info = &(const struct intel_display_device_info) {
 		ILK_DISPLAY,
 	},
 };
 
 static const struct platform_desc ilk_m_desc = {
-	PLATFORM(IRONLAKE),
+	PLATFORM(ironlake),
 	.info = &(const struct intel_display_device_info) {
 		ILK_DISPLAY,
 
@@ -434,7 +434,7 @@ static const struct platform_desc ilk_m_desc = {
 };
 
 static const struct platform_desc snb_desc = {
-	PLATFORM(SANDYBRIDGE),
+	PLATFORM(sandybridge),
 	.info = &(const struct intel_display_device_info) {
 		.has_hotplug = 1,
 		I9XX_PIPE_OFFSETS,
@@ -451,7 +451,7 @@ static const struct platform_desc snb_desc = {
 };
 
 static const struct platform_desc ivb_desc = {
-	PLATFORM(IVYBRIDGE),
+	PLATFORM(ivybridge),
 	.info = &(const struct intel_display_device_info) {
 		.has_hotplug = 1,
 		IVB_PIPE_OFFSETS,
@@ -468,7 +468,7 @@ static const struct platform_desc ivb_desc = {
 };
 
 static const struct platform_desc vlv_desc = {
-	PLATFORM(VALLEYVIEW),
+	PLATFORM(valleyview),
 	.info = &(const struct intel_display_device_info) {
 		.has_gmch = 1,
 		.has_hotplug = 1,
@@ -499,14 +499,14 @@ static const u16 hsw_ulx_ids[] = {
 };
 
 static const struct platform_desc hsw_desc = {
-	PLATFORM(HASWELL),
+	PLATFORM(haswell),
 	.subplatforms = (const struct subplatform_desc[]) {
 		{
-			SUBPLATFORM(HASWELL, ULT),
+			SUBPLATFORM(haswell, ult),
 			.pciidlist = hsw_ult_ids,
 		},
 		{
-			SUBPLATFORM(HASWELL, ULX),
+			SUBPLATFORM(haswell, ulx),
 			.pciidlist = hsw_ulx_ids,
 		},
 		{},
@@ -549,14 +549,14 @@ static const u16 bdw_ulx_ids[] = {
 };
 
 static const struct platform_desc bdw_desc = {
-	PLATFORM(BROADWELL),
+	PLATFORM(broadwell),
 	.subplatforms = (const struct subplatform_desc[]) {
 		{
-			SUBPLATFORM(BROADWELL, ULT),
+			SUBPLATFORM(broadwell, ult),
 			.pciidlist = bdw_ult_ids,
 		},
 		{
-			SUBPLATFORM(BROADWELL, ULX),
+			SUBPLATFORM(broadwell, ulx),
 			.pciidlist = bdw_ulx_ids,
 		},
 		{},
@@ -583,7 +583,7 @@ static const struct platform_desc bdw_desc = {
 };
 
 static const struct platform_desc chv_desc = {
-	PLATFORM(CHERRYVIEW),
+	PLATFORM(cherryview),
 	.info = &(const struct intel_display_device_info) {
 		.has_hotplug = 1,
 		.has_gmch = 1,
@@ -646,14 +646,14 @@ static const enum intel_step skl_steppings[] = {
 };
 
 static const struct platform_desc skl_desc = {
-	PLATFORM(SKYLAKE),
+	PLATFORM(skylake),
 	.subplatforms = (const struct subplatform_desc[]) {
 		{
-			SUBPLATFORM(SKYLAKE, ULT),
+			SUBPLATFORM(skylake, ult),
 			.pciidlist = skl_ult_ids,
 		},
 		{
-			SUBPLATFORM(SKYLAKE, ULX),
+			SUBPLATFORM(skylake, ulx),
 			.pciidlist = skl_ulx_ids,
 		},
 		{},
@@ -687,14 +687,14 @@ static const enum intel_step kbl_steppings[] = {
 };
 
 static const struct platform_desc kbl_desc = {
-	PLATFORM(KABYLAKE),
+	PLATFORM(kabylake),
 	.subplatforms = (const struct subplatform_desc[]) {
 		{
-			SUBPLATFORM(KABYLAKE, ULT),
+			SUBPLATFORM(kabylake, ult),
 			.pciidlist = kbl_ult_ids,
 		},
 		{
-			SUBPLATFORM(KABYLAKE, ULX),
+			SUBPLATFORM(kabylake, ulx),
 			.pciidlist = kbl_ulx_ids,
 		},
 		{},
@@ -718,14 +718,14 @@ static const u16 cfl_ulx_ids[] = {
 };
 
 static const struct platform_desc cfl_desc = {
-	PLATFORM(COFFEELAKE),
+	PLATFORM(coffeelake),
 	.subplatforms = (const struct subplatform_desc[]) {
 		{
-			SUBPLATFORM(COFFEELAKE, ULT),
+			SUBPLATFORM(coffeelake, ult),
 			.pciidlist = cfl_ult_ids,
 		},
 		{
-			SUBPLATFORM(COFFEELAKE, ULX),
+			SUBPLATFORM(coffeelake, ulx),
 			.pciidlist = cfl_ulx_ids,
 		},
 		{},
@@ -740,10 +740,10 @@ static const u16 cml_ult_ids[] = {
 };
 
 static const struct platform_desc cml_desc = {
-	PLATFORM(COMETLAKE),
+	PLATFORM(cometlake),
 	.subplatforms = (const struct subplatform_desc[]) {
 		{
-			SUBPLATFORM(COMETLAKE, ULT),
+			SUBPLATFORM(cometlake, ult),
 			.pciidlist = cml_ult_ids,
 		},
 		{},
@@ -782,7 +782,7 @@ static const enum intel_step bxt_steppings[] = {
 };
 
 static const struct platform_desc bxt_desc = {
-	PLATFORM(BROXTON),
+	PLATFORM(broxton),
 	.info = &(const struct intel_display_device_info) {
 		GEN9_LP_DISPLAY,
 		.dbuf.size = 512 - 4, /* 4 blocks for bypass path allocation */
@@ -797,7 +797,7 @@ static const enum intel_step glk_steppings[] = {
 };
 
 static const struct platform_desc glk_desc = {
-	PLATFORM(GEMINILAKE),
+	PLATFORM(geminilake),
 	.info = &(const struct intel_display_device_info) {
 		GEN9_LP_DISPLAY,
 		.dbuf.size = 1024 - 4, /* 4 blocks for bypass path allocation */
@@ -859,10 +859,10 @@ static const enum intel_step icl_steppings[] = {
 };
 
 static const struct platform_desc icl_desc = {
-	PLATFORM(ICELAKE),
+	PLATFORM(icelake),
 	.subplatforms = (const struct subplatform_desc[]) {
 		{
-			SUBPLATFORM(ICELAKE, PORT_F),
+			SUBPLATFORM(icelake, port_f),
 			.pciidlist = icl_port_f_ids,
 		},
 		{},
@@ -887,13 +887,13 @@ static const enum intel_step jsl_ehl_steppings[] = {
 };
 
 static const struct platform_desc jsl_desc = {
-	PLATFORM(JASPERLAKE),
+	PLATFORM(jasperlake),
 	.info = &jsl_ehl_display,
 	STEP_INFO(jsl_ehl_steppings),
 };
 
 static const struct platform_desc ehl_desc = {
-	PLATFORM(ELKHARTLAKE),
+	PLATFORM(elkhartlake),
 	.info = &jsl_ehl_display,
 	STEP_INFO(jsl_ehl_steppings),
 };
@@ -959,10 +959,10 @@ static const enum intel_step tgl_uy_steppings[] = {
 };
 
 static const struct platform_desc tgl_desc = {
-	PLATFORM(TIGERLAKE),
+	PLATFORM(tigerlake),
 	.subplatforms = (const struct subplatform_desc[]) {
 		{
-			SUBPLATFORM(TIGERLAKE, UY),
+			SUBPLATFORM(tigerlake, uy),
 			.pciidlist = tgl_uy_ids,
 			STEP_INFO(tgl_uy_steppings),
 		},
@@ -987,7 +987,7 @@ static const enum intel_step dg1_steppings[] = {
 };
 
 static const struct platform_desc dg1_desc = {
-	PLATFORM(DG1),
+	PLATFORM(dg1),
 	.info = &(const struct intel_display_device_info) {
 		XE_D_DISPLAY,
 
@@ -1004,7 +1004,7 @@ static const enum intel_step rkl_steppings[] = {
 };
 
 static const struct platform_desc rkl_desc = {
-	PLATFORM(ROCKETLAKE),
+	PLATFORM(rocketlake),
 	.info = &(const struct intel_display_device_info) {
 		XE_D_DISPLAY,
 		.abox_mask = BIT(0),
@@ -1039,10 +1039,10 @@ static const enum intel_step adl_s_rpl_s_steppings[] = {
 };
 
 static const struct platform_desc adl_s_desc = {
-	PLATFORM(ALDERLAKE_S),
+	PLATFORM(alderlake_s),
 	.subplatforms = (const struct subplatform_desc[]) {
 		{
-			SUBPLATFORM(ALDERLAKE_S, RAPTORLAKE_S),
+			SUBPLATFORM(alderlake_s, raptorlake_s),
 			.pciidlist = adls_rpls_ids,
 			STEP_INFO(adl_s_rpl_s_steppings),
 		},
@@ -1146,20 +1146,20 @@ static const enum intel_step adl_p_rpl_pu_steppings[] = {
 };
 
 static const struct platform_desc adl_p_desc = {
-	PLATFORM(ALDERLAKE_P),
+	PLATFORM(alderlake_p),
 	.subplatforms = (const struct subplatform_desc[]) {
 		{
-			SUBPLATFORM(ALDERLAKE_P, ALDERLAKE_N),
+			SUBPLATFORM(alderlake_p, alderlake_n),
 			.pciidlist = adlp_adln_ids,
 			STEP_INFO(adl_p_adl_n_steppings),
 		},
 		{
-			SUBPLATFORM(ALDERLAKE_P, RAPTORLAKE_P),
+			SUBPLATFORM(alderlake_p, raptorlake_p),
 			.pciidlist = adlp_rplp_ids,
 			STEP_INFO(adl_p_rpl_pu_steppings),
 		},
 		{
-			SUBPLATFORM(ALDERLAKE_P, RAPTORLAKE_U),
+			SUBPLATFORM(alderlake_p, raptorlake_u),
 			.pciidlist = adlp_rplu_ids,
 			STEP_INFO(adl_p_rpl_pu_steppings),
 		},
@@ -1214,20 +1214,20 @@ static const enum intel_step dg2_g12_steppings[] = {
 };
 
 static const struct platform_desc dg2_desc = {
-	PLATFORM(DG2),
+	PLATFORM(dg2),
 	.subplatforms = (const struct subplatform_desc[]) {
 		{
-			SUBPLATFORM(DG2, G10),
+			SUBPLATFORM(dg2, g10),
 			.pciidlist = dg2_g10_ids,
 			STEP_INFO(dg2_g10_steppings),
 		},
 		{
-			SUBPLATFORM(DG2, G11),
+			SUBPLATFORM(dg2, g11),
 			.pciidlist = dg2_g11_ids,
 			STEP_INFO(dg2_g11_steppings),
 		},
 		{
-			SUBPLATFORM(DG2, G12),
+			SUBPLATFORM(dg2, g12),
 			.pciidlist = dg2_g12_ids,
 			STEP_INFO(dg2_g12_steppings),
 		},
@@ -1305,19 +1305,19 @@ static const struct intel_display_device_info xe2_hpd_display = {
  * reported by the hardware.
  */
 static const struct platform_desc mtl_desc = {
-	PLATFORM(METEORLAKE),
+	PLATFORM(meteorlake),
 };
 
 static const struct platform_desc lnl_desc = {
-	PLATFORM(LUNARLAKE),
+	PLATFORM(lunarlake),
 };
 
 static const struct platform_desc bmg_desc = {
-	PLATFORM(BATTLEMAGE),
+	PLATFORM(battlemage),
 };
 
 static const struct platform_desc ptl_desc = {
-	PLATFORM(PANTHERLAKE),
+	PLATFORM(pantherlake),
 };
 
 __diag_pop();
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 479f0705f2f4..cef10babce30 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -22,81 +22,81 @@ struct drm_printer;
 #define INTEL_DISPLAY_PLATFORMS(func) \
 	func(PLATFORM_UNINITIALIZED) \
 	/* Display ver 2 */ \
-	func(I830) \
-	func(I845G) \
-	func(I85X) \
-	func(I865G) \
+	func(i830) \
+	func(i845g) \
+	func(i85x) \
+	func(i865g) \
 	/* Display ver 3 */ \
-	func(I915G) \
-	func(I915GM) \
-	func(I945G) \
-	func(I945GM) \
-	func(G33) \
-	func(PINEVIEW) \
+	func(i915g) \
+	func(i915gm) \
+	func(i945g) \
+	func(i945gm) \
+	func(g33) \
+	func(pineview) \
 	/* Display ver 4 */ \
-	func(I965G) \
-	func(I965GM) \
-	func(G45) \
-	func(GM45) \
+	func(i965g) \
+	func(i965gm) \
+	func(g45) \
+	func(gm45) \
 	/* Display ver 5 */ \
-	func(IRONLAKE) \
+	func(ironlake) \
 	/* Display ver 6 */ \
-	func(SANDYBRIDGE) \
+	func(sandybridge) \
 	/* Display ver 7 */ \
-	func(IVYBRIDGE) \
-	func(VALLEYVIEW) \
-	func(HASWELL) \
-	func(HASWELL_ULT) \
-	func(HASWELL_ULX) \
+	func(ivybridge) \
+	func(valleyview) \
+	func(haswell) \
+	func(haswell_ult) \
+	func(haswell_ulx) \
 	/* Display ver 8 */ \
-	func(BROADWELL) \
-	func(BROADWELL_ULT) \
-	func(BROADWELL_ULX) \
-	func(CHERRYVIEW) \
+	func(broadwell) \
+	func(broadwell_ult) \
+	func(broadwell_ulx) \
+	func(cherryview) \
 	/* Display ver 9 */ \
-	func(SKYLAKE) \
-	func(SKYLAKE_ULT) \
-	func(SKYLAKE_ULX) \
-	func(BROXTON) \
-	func(KABYLAKE) \
-	func(KABYLAKE_ULT) \
-	func(KABYLAKE_ULX) \
-	func(GEMINILAKE) \
-	func(COFFEELAKE) \
-	func(COFFEELAKE_ULT) \
-	func(COFFEELAKE_ULX) \
-	func(COMETLAKE) \
-	func(COMETLAKE_ULT) \
-	func(COMETLAKE_ULX) \
+	func(skylake) \
+	func(skylake_ult) \
+	func(skylake_ulx) \
+	func(broxton) \
+	func(kabylake) \
+	func(kabylake_ult) \
+	func(kabylake_ulx) \
+	func(geminilake) \
+	func(coffeelake) \
+	func(coffeelake_ult) \
+	func(coffeelake_ulx) \
+	func(cometlake) \
+	func(cometlake_ult) \
+	func(cometlake_ulx) \
 	/* Display ver 11 */ \
-	func(ICELAKE) \
-	func(ICELAKE_PORT_F) \
-	func(JASPERLAKE) \
-	func(ELKHARTLAKE) \
+	func(icelake) \
+	func(icelake_port_f) \
+	func(jasperlake) \
+	func(elkhartlake) \
 	/* Display ver 12 */ \
-	func(TIGERLAKE) \
-	func(TIGERLAKE_UY) \
-	func(ROCKETLAKE) \
-	func(DG1) \
-	func(ALDERLAKE_S) \
-	func(ALDERLAKE_S_RAPTORLAKE_S) \
+	func(tigerlake) \
+	func(tigerlake_uy) \
+	func(rocketlake) \
+	func(dg1) \
+	func(alderlake_s) \
+	func(alderlake_s_raptorlake_s) \
 	/* Display ver 13 */ \
-	func(ALDERLAKE_P) \
-	func(ALDERLAKE_P_ALDERLAKE_N) \
-	func(ALDERLAKE_P_RAPTORLAKE_P) \
-	func(ALDERLAKE_P_RAPTORLAKE_U) \
-	func(DG2) \
-	func(DG2_G10) \
-	func(DG2_G11) \
-	func(DG2_G12) \
+	func(alderlake_p) \
+	func(alderlake_p_alderlake_n) \
+	func(alderlake_p_raptorlake_p) \
+	func(alderlake_p_raptorlake_u) \
+	func(dg2) \
+	func(dg2_g10) \
+	func(dg2_g11) \
+	func(dg2_g12) \
 	/* Display ver 14 (based on GMD ID) */ \
-	func(METEORLAKE) \
+	func(meteorlake) \
 	/* Display ver 20 (based on GMD ID) */ \
-	func(LUNARLAKE) \
+	func(lunarlake) \
 	/* Display ver 14.1 (based on GMD ID) */ \
-	func(BATTLEMAGE) \
+	func(battlemage) \
 	/* Display ver 30 (based on GMD ID) */ \
-	func(PANTHERLAKE)
+	func(pantherlake)
 
 #define __ENUM(x) INTEL_DISPLAY_ ## x,
 
-- 
2.39.5

