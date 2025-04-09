Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CD98A82E67
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Apr 2025 20:18:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 217B310E2FB;
	Wed,  9 Apr 2025 18:18:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gU6KdkGH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CE9A10E2FA;
 Wed,  9 Apr 2025 18:18:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744222724; x=1775758724;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EllBjm9rjP8Lyx7UVt4DzITqVbxkWCvqwJOEUKpEcnQ=;
 b=gU6KdkGH8osQZF1J6p/Z5Un5/ST5vfRe2TL4gTt1UGknLGoV05SH8a7g
 wYL4y6tCRF7vc3YHJIBJnQcvhsdUzwO2a4TodbhoXKTSE2MGN+vCZbTC/
 7UPCB6NwE3o9CN6kOIOXT/zdKvRS70vpbMclvN4kQjCyDR3tC9nTWoJhD
 5w7sFQ6uPLh0GutI91YPaGVOYtll9fpquXTKqKtBpiT+v7IJiGA3VqFnC
 UQpoEX+l37a8brRInVefjBiQ1G7artov/PDcNxSaxgBWRGUWK525S88e4
 e5ipCptd5mAxXlYpXJgizh7KhfPwGMxpYCixt0afjh4XLnc7ZcFRBpVLR w==;
X-CSE-ConnectionGUID: 46jD9F4hRvKZpzUxTcy1Nw==
X-CSE-MsgGUID: H+5VYmouS8+N7/X/hSC0hQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11399"; a="45729940"
X-IronPort-AV: E=Sophos;i="6.15,201,1739865600"; d="scan'208";a="45729940"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 11:18:43 -0700
X-CSE-ConnectionGUID: 46QAf3E+TCaxn3X7/6F51A==
X-CSE-MsgGUID: 0NSVcsnJRpq++snHgE5ZZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,201,1739865600"; d="scan'208";a="165879024"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.201])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 11:18:41 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 07/14] drm/i915/dmc: switch to display->platform based
 platform detection
Date: Wed,  9 Apr 2025 21:17:48 +0300
Message-Id: <eda2b6cd285ec76d57d91ea3fe33158852aaec22.1744222449.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1744222449.git.jani.nikula@intel.com>
References: <cover.1744222449.git.jani.nikula@intel.com>
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

Prefer display->platform based platform detection over the old IS_*()
macros.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 45 ++++++++++--------------
 1 file changed, 19 insertions(+), 26 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 98f80a6c63e8..ff2b97a752b1 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -173,7 +173,6 @@ MODULE_FIRMWARE(BXT_DMC_PATH);
 
 static const char *dmc_firmware_default(struct intel_display *display, u32 *size)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	const char *fw_path = NULL;
 	u32 max_fw_size = 0;
 
@@ -189,39 +188,39 @@ static const char *dmc_firmware_default(struct intel_display *display, u32 *size
 	} else if (DISPLAY_VERx100(display) == 1400) {
 		fw_path = MTL_DMC_PATH;
 		max_fw_size = XELPDP_DMC_MAX_FW_SIZE;
-	} else if (IS_DG2(i915)) {
+	} else if (display->platform.dg2) {
 		fw_path = DG2_DMC_PATH;
 		max_fw_size = DISPLAY_VER13_DMC_MAX_FW_SIZE;
-	} else if (IS_ALDERLAKE_P(i915)) {
+	} else if (display->platform.alderlake_p) {
 		fw_path = ADLP_DMC_PATH;
 		max_fw_size = DISPLAY_VER13_DMC_MAX_FW_SIZE;
-	} else if (IS_ALDERLAKE_S(i915)) {
+	} else if (display->platform.alderlake_s) {
 		fw_path = ADLS_DMC_PATH;
 		max_fw_size = DISPLAY_VER12_DMC_MAX_FW_SIZE;
-	} else if (IS_DG1(i915)) {
+	} else if (display->platform.dg1) {
 		fw_path = DG1_DMC_PATH;
 		max_fw_size = DISPLAY_VER12_DMC_MAX_FW_SIZE;
-	} else if (IS_ROCKETLAKE(i915)) {
+	} else if (display->platform.rocketlake) {
 		fw_path = RKL_DMC_PATH;
 		max_fw_size = DISPLAY_VER12_DMC_MAX_FW_SIZE;
-	} else if (IS_TIGERLAKE(i915)) {
+	} else if (display->platform.tigerlake) {
 		fw_path = TGL_DMC_PATH;
 		max_fw_size = DISPLAY_VER12_DMC_MAX_FW_SIZE;
 	} else if (DISPLAY_VER(display) == 11) {
 		fw_path = ICL_DMC_PATH;
 		max_fw_size = ICL_DMC_MAX_FW_SIZE;
-	} else if (IS_GEMINILAKE(i915)) {
+	} else if (display->platform.geminilake) {
 		fw_path = GLK_DMC_PATH;
 		max_fw_size = GLK_DMC_MAX_FW_SIZE;
-	} else if (IS_KABYLAKE(i915) ||
-		   IS_COFFEELAKE(i915) ||
-		   IS_COMETLAKE(i915)) {
+	} else if (display->platform.kabylake ||
+		   display->platform.coffeelake ||
+		   display->platform.cometlake) {
 		fw_path = KBL_DMC_PATH;
 		max_fw_size = KBL_DMC_MAX_FW_SIZE;
-	} else if (IS_SKYLAKE(i915)) {
+	} else if (display->platform.skylake) {
 		fw_path = SKL_DMC_PATH;
 		max_fw_size = SKL_DMC_MAX_FW_SIZE;
-	} else if (IS_BROXTON(i915)) {
+	} else if (display->platform.broxton) {
 		fw_path = BXT_DMC_PATH;
 		max_fw_size = BXT_DMC_MAX_FW_SIZE;
 	}
@@ -541,8 +540,6 @@ static bool disable_dmc_evt(struct intel_display *display,
 			    enum intel_dmc_id dmc_id,
 			    i915_reg_t reg, u32 data)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
-
 	if (!is_dmc_evt_ctl_reg(display, dmc_id, reg))
 		return false;
 
@@ -551,12 +548,12 @@ static bool disable_dmc_evt(struct intel_display *display,
 		return true;
 
 	/* also disable the flip queue event on the main DMC on TGL */
-	if (IS_TIGERLAKE(i915) &&
+	if (display->platform.tigerlake &&
 	    REG_FIELD_GET(DMC_EVT_CTL_EVENT_ID_MASK, data) == DMC_EVT_CTL_EVENT_ID_CLK_MSEC)
 		return true;
 
 	/* also disable the HRR event on the main DMC on TGL/ADLS */
-	if ((IS_TIGERLAKE(i915) || IS_ALDERLAKE_S(i915)) &&
+	if ((display->platform.tigerlake || display->platform.alderlake_s) &&
 	    REG_FIELD_GET(DMC_EVT_CTL_EVENT_ID_MASK, data) == DMC_EVT_CTL_EVENT_ID_VBLANK_A)
 		return true;
 
@@ -588,7 +585,6 @@ static u32 dmc_mmiodata(struct intel_display *display,
  */
 void intel_dmc_load_program(struct intel_display *display)
 {
-	struct drm_i915_private *i915 __maybe_unused = to_i915(display->drm);
 	struct i915_power_domains *power_domains = &display->power.domains;
 	struct intel_dmc *dmc = display_to_dmc(display);
 	enum intel_dmc_id dmc_id;
@@ -1012,9 +1008,7 @@ static void intel_dmc_runtime_pm_put(struct intel_display *display)
 
 static const char *dmc_fallback_path(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
-
-	if (IS_ALDERLAKE_P(i915))
+	if (display->platform.alderlake_p)
 		return ADLP_DMC_FALLBACK_PATH;
 
 	return NULL;
@@ -1279,7 +1273,6 @@ static bool intel_dmc_get_dc6_allowed_count(struct intel_display *display, u32 *
 static int intel_dmc_debugfs_status_show(struct seq_file *m, void *unused)
 {
 	struct intel_display *display = m->private;
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct intel_dmc *dmc = display_to_dmc(display);
 	struct ref_tracker *wakeref;
 	i915_reg_t dc5_reg, dc6_reg = INVALID_MMIO_REG;
@@ -1299,7 +1292,7 @@ static int intel_dmc_debugfs_status_show(struct seq_file *m, void *unused)
 	seq_printf(m, "Pipe A fw loaded: %s\n",
 		   str_yes_no(has_dmc_id_fw(display, DMC_FW_PIPEA)));
 	seq_printf(m, "Pipe B fw needed: %s\n",
-		   str_yes_no(IS_ALDERLAKE_P(i915) ||
+		   str_yes_no(display->platform.alderlake_p ||
 			      DISPLAY_VER(display) >= 14));
 	seq_printf(m, "Pipe B fw loaded: %s\n",
 		   str_yes_no(has_dmc_id_fw(display, DMC_FW_PIPEB)));
@@ -1313,7 +1306,7 @@ static int intel_dmc_debugfs_status_show(struct seq_file *m, void *unused)
 	if (DISPLAY_VER(display) >= 12) {
 		i915_reg_t dc3co_reg;
 
-		if (IS_DGFX(i915) || DISPLAY_VER(display) >= 14) {
+		if (display->platform.dgfx || DISPLAY_VER(display) >= 14) {
 			dc3co_reg = DG1_DMC_DEBUG3;
 			dc5_reg = DG1_DMC_DEBUG_DC5_COUNT;
 		} else {
@@ -1325,9 +1318,9 @@ static int intel_dmc_debugfs_status_show(struct seq_file *m, void *unused)
 		seq_printf(m, "DC3CO count: %d\n",
 			   intel_de_read(display, dc3co_reg));
 	} else {
-		dc5_reg = IS_BROXTON(i915) ? BXT_DMC_DC3_DC5_COUNT :
+		dc5_reg = display->platform.broxton ? BXT_DMC_DC3_DC5_COUNT :
 			SKL_DMC_DC3_DC5_COUNT;
-		if (!IS_GEMINILAKE(i915) && !IS_BROXTON(i915))
+		if (!display->platform.geminilake && !display->platform.broxton)
 			dc6_reg = SKL_DMC_DC5_DC6_COUNT;
 	}
 
-- 
2.39.5

