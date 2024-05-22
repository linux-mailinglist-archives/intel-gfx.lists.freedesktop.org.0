Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B53B28CC5A1
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2024 19:34:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E6E510E34A;
	Wed, 22 May 2024 17:34:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bBeTO/5u";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDBFC10E1C7;
 Wed, 22 May 2024 17:34:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716399276; x=1747935276;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EKW2u2ipwQd14XoBxNJ3aKNtAp1YaRFfyIXbs1dWBuk=;
 b=bBeTO/5uZiKrprH/1cXJE37fmhnSVXsEx/kwdZWGfAUdf+y9Fjiff6Fy
 wGWD9zBAlS/rOGWIv/6sXB+VMYeIjMvvD1YDuqc9XE0LbMWERqnts/iJr
 PO3BAg3JEwtG62g1oKDzxYnW6o1GOxf0gnCg6cADgZ/mE3C/ofQbc/6q1
 4w8RO5ZCprwKqp6ODrd8D1Bk4/pYORLE2eob+M9R/apEJ+L1AtuwBS/wW
 W8dieHKe8Lc20s2rNAxG1FIoB050iB3Eu9CDTVjvKsWdgJrwqBGjX4AW2
 sCz53CUalvfjA7JhUqEfM34q33QPBKergVJLLgH8OBFMF7dBgdzwwxBnw Q==;
X-CSE-ConnectionGUID: g8F/a6jLTd+IX3waGnHLGA==
X-CSE-MsgGUID: zybbRjLPSyO9xUzx3FztZA==
X-IronPort-AV: E=McAfee;i="6600,9927,11080"; a="12611449"
X-IronPort-AV: E=Sophos;i="6.08,181,1712646000"; d="scan'208";a="12611449"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2024 10:34:35 -0700
X-CSE-ConnectionGUID: TLOVw+noRCSONxd2wHEQwQ==
X-CSE-MsgGUID: JsBqndUDQBOVBp47wACvHA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,181,1712646000"; d="scan'208";a="33475015"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.230])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2024 10:34:33 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	rodrigo.vivi@intel.com,
	lucas.demarchi@intel.com
Subject: [PATCH 08/10] drm/i915/display: identify platforms with enum and name
Date: Wed, 22 May 2024 20:33:45 +0300
Message-Id: <5dec70931217cd93e3ef34f7a57f949f6683f048.1716399081.git.jani.nikula@intel.com>
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

Add enum intel_display_platform and add that and name to all platform
descriptors.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_device.c   | 48 +++++++++++++++
 .../drm/i915/display/intel_display_device.h   | 58 +++++++++++++++++++
 2 files changed, 106 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index 416853ed50df..7c5cead1fe15 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -21,9 +21,15 @@ __diag_push();
 __diag_ignore_all("-Woverride-init", "Allow field initialization overrides for display info");
 
 struct platform_desc {
+	enum intel_display_platform platform;
+	const char *name;
 	const struct intel_display_device_info *info; /* NULL for GMD ID */
 };
 
+#define PLATFORM(_platform)			 \
+	.platform = (INTEL_DISPLAY_##_platform), \
+	.name = #_platform
+
 static const struct intel_display_device_info no_display = {};
 
 #define PIPE_A_OFFSET		0x70000
@@ -205,6 +211,7 @@ static const struct intel_display_device_info no_display = {};
 	.__runtime_defaults.cpu_transcoder_mask = BIT(TRANSCODER_A)
 
 static const struct platform_desc i830_desc = {
+	PLATFORM(I830),
 	.info = &(const struct intel_display_device_info) {
 		I830_DISPLAY,
 
@@ -213,6 +220,7 @@ static const struct platform_desc i830_desc = {
 };
 
 static const struct platform_desc i845_desc = {
+	PLATFORM(I845G),
 	.info = &(const struct intel_display_device_info) {
 		I845_DISPLAY,
 
@@ -221,6 +229,7 @@ static const struct platform_desc i845_desc = {
 };
 
 static const struct platform_desc i85x_desc = {
+	PLATFORM(I85X),
 	.info = &(const struct intel_display_device_info) {
 		I830_DISPLAY,
 
@@ -230,6 +239,7 @@ static const struct platform_desc i85x_desc = {
 };
 
 static const struct platform_desc i865g_desc = {
+	PLATFORM(I865G),
 	.info = &(const struct intel_display_device_info) {
 		I845_DISPLAY,
 
@@ -251,6 +261,7 @@ static const struct platform_desc i865g_desc = {
 	.__runtime_defaults.port_mask = BIT(PORT_B) | BIT(PORT_C) /* SDVO B/C */
 
 static const struct platform_desc i915g_desc = {
+	PLATFORM(I915G),
 	.info = &(const struct intel_display_device_info) {
 		GEN3_DISPLAY,
 		I845_COLORS,
@@ -260,6 +271,7 @@ static const struct platform_desc i915g_desc = {
 };
 
 static const struct platform_desc i915gm_desc = {
+	PLATFORM(I915GM),
 	.info = &(const struct intel_display_device_info) {
 		GEN3_DISPLAY,
 		I9XX_COLORS,
@@ -272,6 +284,7 @@ static const struct platform_desc i915gm_desc = {
 };
 
 static const struct platform_desc i945g_desc = {
+	PLATFORM(I945G),
 	.info = &(const struct intel_display_device_info) {
 		GEN3_DISPLAY,
 		I845_COLORS,
@@ -282,6 +295,7 @@ static const struct platform_desc i945g_desc = {
 };
 
 static const struct platform_desc i945gm_desc = {
+	PLATFORM(I915GM),
 	.info = &(const struct intel_display_device_info) {
 		GEN3_DISPLAY,
 		I9XX_COLORS,
@@ -295,6 +309,7 @@ static const struct platform_desc i945gm_desc = {
 };
 
 static const struct platform_desc g33_desc = {
+	PLATFORM(G33),
 	.info = &(const struct intel_display_device_info) {
 		GEN3_DISPLAY,
 		I845_COLORS,
@@ -303,6 +318,7 @@ static const struct platform_desc g33_desc = {
 };
 
 static const struct platform_desc pnv_desc = {
+	PLATFORM(PINEVIEW),
 	.info = &(const struct intel_display_device_info) {
 		GEN3_DISPLAY,
 		I9XX_COLORS,
@@ -323,6 +339,7 @@ static const struct platform_desc pnv_desc = {
 		BIT(TRANSCODER_A) | BIT(TRANSCODER_B)
 
 static const struct platform_desc i965g_desc = {
+	PLATFORM(I965G),
 	.info = &(const struct intel_display_device_info) {
 		GEN4_DISPLAY,
 		.has_overlay = 1,
@@ -332,6 +349,7 @@ static const struct platform_desc i965g_desc = {
 };
 
 static const struct platform_desc i965gm_desc = {
+	PLATFORM(I965GM),
 	.info = &(const struct intel_display_device_info) {
 		GEN4_DISPLAY,
 		.has_overlay = 1,
@@ -343,6 +361,7 @@ static const struct platform_desc i965gm_desc = {
 };
 
 static const struct platform_desc g45_desc = {
+	PLATFORM(G45),
 	.info = &(const struct intel_display_device_info) {
 		GEN4_DISPLAY,
 
@@ -351,6 +370,7 @@ static const struct platform_desc g45_desc = {
 };
 
 static const struct platform_desc gm45_desc = {
+	PLATFORM(GM45),
 	.info = &(const struct intel_display_device_info) {
 		GEN4_DISPLAY,
 		.supports_tv = 1,
@@ -373,12 +393,14 @@ static const struct platform_desc gm45_desc = {
 	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D) /* DP A, SDVO/HDMI/DP B, HDMI/DP C/D */
 
 static const struct platform_desc ilk_d_desc = {
+	PLATFORM(IRONLAKE),
 	.info = &(const struct intel_display_device_info) {
 		ILK_DISPLAY,
 	},
 };
 
 static const struct platform_desc ilk_m_desc = {
+	PLATFORM(IRONLAKE),
 	.info = &(const struct intel_display_device_info) {
 		ILK_DISPLAY,
 
@@ -387,6 +409,7 @@ static const struct platform_desc ilk_m_desc = {
 };
 
 static const struct platform_desc snb_desc = {
+	PLATFORM(SANDYBRIDGE),
 	.info = &(const struct intel_display_device_info) {
 		.has_hotplug = 1,
 		I9XX_PIPE_OFFSETS,
@@ -403,6 +426,7 @@ static const struct platform_desc snb_desc = {
 };
 
 static const struct platform_desc ivb_desc = {
+	PLATFORM(IVYBRIDGE),
 	.info = &(const struct intel_display_device_info) {
 		.has_hotplug = 1,
 		IVB_PIPE_OFFSETS,
@@ -419,6 +443,7 @@ static const struct platform_desc ivb_desc = {
 };
 
 static const struct platform_desc vlv_desc = {
+	PLATFORM(VALLEYVIEW),
 	.info = &(const struct intel_display_device_info) {
 		.has_gmch = 1,
 		.has_hotplug = 1,
@@ -436,6 +461,7 @@ static const struct platform_desc vlv_desc = {
 };
 
 static const struct platform_desc hsw_desc = {
+	PLATFORM(HASWELL),
 	.info = &(const struct intel_display_device_info) {
 		.has_ddi = 1,
 		.has_dp_mst = 1,
@@ -458,6 +484,7 @@ static const struct platform_desc hsw_desc = {
 };
 
 static const struct platform_desc bdw_desc = {
+	PLATFORM(BROADWELL),
 	.info = &(const struct intel_display_device_info) {
 		.has_ddi = 1,
 		.has_dp_mst = 1,
@@ -480,6 +507,7 @@ static const struct platform_desc bdw_desc = {
 };
 
 static const struct platform_desc chv_desc = {
+	PLATFORM(CHERRYVIEW),
 	.info = &(const struct intel_display_device_info) {
 		.has_hotplug = 1,
 		.has_gmch = 1,
@@ -522,18 +550,22 @@ static const struct intel_display_device_info skl_display = {
 };
 
 static const struct platform_desc skl_desc = {
+	PLATFORM(SKYLAKE),
 	.info = &skl_display,
 };
 
 static const struct platform_desc kbl_desc = {
+	PLATFORM(KABYLAKE),
 	.info = &skl_display,
 };
 
 static const struct platform_desc cfl_desc = {
+	PLATFORM(COFFEELAKE),
 	.info = &skl_display,
 };
 
 static const struct platform_desc cml_desc = {
+	PLATFORM(COMETLAKE),
 	.info = &skl_display,
 };
 
@@ -561,6 +593,7 @@ static const struct platform_desc cml_desc = {
 	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C)
 
 static const struct platform_desc bxt_desc = {
+	PLATFORM(BROXTON),
 	.info = &(const struct intel_display_device_info) {
 		GEN9_LP_DISPLAY,
 		.dbuf.size = 512 - 4, /* 4 blocks for bypass path allocation */
@@ -570,6 +603,7 @@ static const struct platform_desc bxt_desc = {
 };
 
 static const struct platform_desc glk_desc = {
+	PLATFORM(GEMINILAKE),
 	.info = &(const struct intel_display_device_info) {
 		GEN9_LP_DISPLAY,
 		.dbuf.size = 1024 - 4, /* 4 blocks for bypass path allocation */
@@ -621,6 +655,7 @@ static const struct platform_desc glk_desc = {
 	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A)
 
 static const struct platform_desc icl_desc = {
+	PLATFORM(ICELAKE),
 	.info = &(const struct intel_display_device_info) {
 		ICL_DISPLAY,
 
@@ -635,10 +670,12 @@ static const struct intel_display_device_info jsl_ehl_display = {
 };
 
 static const struct platform_desc jsl_desc = {
+	PLATFORM(JASPERLAKE),
 	.info = &jsl_ehl_display,
 };
 
 static const struct platform_desc ehl_desc = {
+	PLATFORM(ELKHARTLAKE),
 	.info = &jsl_ehl_display,
 };
 
@@ -686,6 +723,7 @@ static const struct platform_desc ehl_desc = {
 	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A)
 
 static const struct platform_desc tgl_desc = {
+	PLATFORM(TIGERLAKE),
 	.info = &(const struct intel_display_device_info) {
 		XE_D_DISPLAY,
 
@@ -699,6 +737,7 @@ static const struct platform_desc tgl_desc = {
 };
 
 static const struct platform_desc dg1_desc = {
+	PLATFORM(DG1),
 	.info = &(const struct intel_display_device_info) {
 		XE_D_DISPLAY,
 
@@ -708,6 +747,7 @@ static const struct platform_desc dg1_desc = {
 };
 
 static const struct platform_desc rkl_desc = {
+	PLATFORM(ROCKETLAKE),
 	.info = &(const struct intel_display_device_info) {
 		XE_D_DISPLAY,
 		.abox_mask = BIT(0),
@@ -723,6 +763,7 @@ static const struct platform_desc rkl_desc = {
 };
 
 static const struct platform_desc adl_s_desc = {
+	PLATFORM(ALDERLAKE_S),
 	.info = &(const struct intel_display_device_info) {
 		XE_D_DISPLAY,
 		.has_hti = 1,
@@ -790,6 +831,7 @@ static const struct intel_display_device_info xe_lpd_display = {
 };
 
 static const struct platform_desc adl_p_desc = {
+	PLATFORM(ALDERLAKE_P),
 	.info = &xe_lpd_display,
 };
 
@@ -805,6 +847,7 @@ static const struct intel_display_device_info xe_hpd_display = {
 };
 
 static const struct platform_desc dg2_desc = {
+	PLATFORM(DG2),
 	.info = &xe_hpd_display,
 };
 
@@ -877,9 +920,11 @@ static const struct intel_display_device_info xe2_hpd_display = {
  * reported by the hardware.
  */
 static const struct platform_desc mtl_desc = {
+	PLATFORM(METEORLAKE),
 };
 
 static const struct platform_desc lnl_desc = {
+	PLATFORM(LUNARLAKE),
 };
 
 __diag_pop();
@@ -1050,6 +1095,9 @@ void intel_display_device_probe(struct drm_i915_private *i915)
 	       &DISPLAY_INFO(i915)->__runtime_defaults,
 	       sizeof(*DISPLAY_RUNTIME_INFO(i915)));
 
+	drm_WARN_ON(&i915->drm, !desc->platform || !desc->name);
+	DISPLAY_RUNTIME_INFO(i915)->platform = desc->platform;
+
 	if (ip_ver.ver || ip_ver.rel || ip_ver.step)
 		DISPLAY_RUNTIME_INFO(i915)->ip = ip_ver;
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index fd2d03bfe8a6..8accd680a61e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -14,6 +14,62 @@
 struct drm_i915_private;
 struct drm_printer;
 
+/* Keep in gen based order, and chronological order within a gen */
+enum intel_display_platform {
+	INTEL_DISPLAY_PLATFORM_UNINITIALIZED = 0,
+	/* Display ver 2 */
+	INTEL_DISPLAY_I830,
+	INTEL_DISPLAY_I845G,
+	INTEL_DISPLAY_I85X,
+	INTEL_DISPLAY_I865G,
+	/* Display ver 3 */
+	INTEL_DISPLAY_I915G,
+	INTEL_DISPLAY_I915GM,
+	INTEL_DISPLAY_I945G,
+	INTEL_DISPLAY_I945GM,
+	INTEL_DISPLAY_G33,
+	INTEL_DISPLAY_PINEVIEW,
+	/* Display ver 4 */
+	INTEL_DISPLAY_I965G,
+	INTEL_DISPLAY_I965GM,
+	INTEL_DISPLAY_G45,
+	INTEL_DISPLAY_GM45,
+	/* Display ver 5 */
+	INTEL_DISPLAY_IRONLAKE,
+	/* Display ver 6 */
+	INTEL_DISPLAY_SANDYBRIDGE,
+	/* Display ver 7 */
+	INTEL_DISPLAY_IVYBRIDGE,
+	INTEL_DISPLAY_VALLEYVIEW,
+	INTEL_DISPLAY_HASWELL,
+	/* Display ver 8 */
+	INTEL_DISPLAY_BROADWELL,
+	INTEL_DISPLAY_CHERRYVIEW,
+	/* Display ver 9 */
+	INTEL_DISPLAY_SKYLAKE,
+	INTEL_DISPLAY_BROXTON,
+	INTEL_DISPLAY_KABYLAKE,
+	INTEL_DISPLAY_GEMINILAKE,
+	INTEL_DISPLAY_COFFEELAKE,
+	INTEL_DISPLAY_COMETLAKE,
+	/* Display ver 11 */
+	INTEL_DISPLAY_ICELAKE,
+	INTEL_DISPLAY_JASPERLAKE,
+	INTEL_DISPLAY_ELKHARTLAKE,
+	/* Display ver 12 */
+	INTEL_DISPLAY_TIGERLAKE,
+	INTEL_DISPLAY_ROCKETLAKE,
+	INTEL_DISPLAY_DG1,
+	INTEL_DISPLAY_ALDERLAKE_S,
+	/* Display ver 13 */
+	INTEL_DISPLAY_ALDERLAKE_P,
+	INTEL_DISPLAY_DG2,
+	/* Display ver 14 (based on GMD ID) */
+	INTEL_DISPLAY_METEORLAKE,
+	/* Display ver 20 (based on GMD ID) */
+	INTEL_DISPLAY_LUNARLAKE,
+};
+
 #define DEV_INFO_DISPLAY_FOR_EACH_FLAG(func) \
 	/* Keep in alphabetical order */ \
 	func(cursor_needs_physical); \
@@ -111,6 +167,8 @@ struct drm_printer;
 	(DISPLAY_VER(i915) >= (from) && DISPLAY_VER(i915) <= (until))
 
 struct intel_display_runtime_info {
+	enum intel_display_platform platform;
+
 	struct intel_display_ip_ver {
 		u16 ver;
 		u16 rel;
-- 
2.39.2

