Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86831583655
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jul 2022 03:34:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F3D510E48B;
	Thu, 28 Jul 2022 01:34:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C37B310E382
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Jul 2022 01:34:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658972081; x=1690508081;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=M+yoksGdwuE03MWsDfd72WlvDM7vY6VXl3D74+kbHH4=;
 b=IrpY24Exl72eBDDzILeYlIhXrdyDn4XoP+dXrqoTbzxXRWCdJo52RKfK
 PXNG5ZlbZNzvWkoS2jB2q//YQFgFI3BUkBMCkx8ZKqlhdhSCnSkj4Owet
 mC1EneN2QIPXV1PK943Sn/rj5gKDJRCqaGtWecJr7MSAtej7QDeDmkbuY
 V6cEITOmG/+lOR7WAgUtpWVXwtRYAd9f3YdlmETluW25AeqMUV84O7zYq
 Gg3KiU8u7LpLSsNOSmUANLTYqjfrDzCL03EwnVnjFEI4ljMFZG1ukqKh2
 gvXyExbqjoh961zCndYvQkBDEX0MIqUxcRx/HQtdjDpKBGzqDYnilr6ba Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10421"; a="271431756"
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="271431756"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 18:34:41 -0700
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="659457015"
Received: from invictus.jf.intel.com ([10.165.21.205])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 18:34:40 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Jul 2022 18:34:11 -0700
Message-Id: <20220728013420.3750388-15-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220728013420.3750388-1-radhakrishna.sripada@intel.com>
References: <20220728013420.3750388-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 14/23] drm/i915/mtl: Add CDCLK Support
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

From: Anusha Srivatsa <anusha.srivatsa@intel.com>

As per bSpec MTL has 38.4 MHz Reference clock.
MTL does support squasher like DG2 but only for lower
frequencies. Change the has_cdclk_squasher()
helper to reflect this.

bxt_get_cdclk() is not properly calculating HW clock for MTL, because
the squash formula is only prepared for DG2, so for now checking
all parameters against the table.

Out of what is explicit in specification this is also implementing
a legacy cdclk method that is to be used when cdclk needs sanitization,
this will be used when GPU is reset or not initialized by firmware.

BSpec: 65243

Cc: José Roberto de Souza <jose.souza@intel.com>
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 344 +++++++++++++++++++--
 1 file changed, 314 insertions(+), 30 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 390a198b0011..03a1dfd0f3c9 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -38,6 +38,33 @@
 #include "intel_psr.h"
 #include "vlv_sideband.h"
 
+#define MTL_CDCLK_THRESHOLD	307200
+
+#define HAS_SQUASH_AND_CRAWL(i915)	(has_cdclk_squasher(i915) && HAS_CDCLK_CRAWL(i915))
+
+#define MTL_SQUASH_ONLY(i915, cdclk)		((i915)->cdclk.hw.cdclk <= MTL_CDCLK_THRESHOLD && \
+						 (cdclk) < MTL_CDCLK_THRESHOLD)
+#define MTL_SQUASH_CRAWL(i915, cdclk)		((i915)->cdclk.hw.cdclk < MTL_CDCLK_THRESHOLD && \
+						 (cdclk) > MTL_CDCLK_THRESHOLD)
+#define MTL_SQUASH_THRESHOLD(i915, cdclk)	((i915)->cdclk.hw.cdclk < MTL_CDCLK_THRESHOLD && \
+						 (cdclk) == MTL_CDCLK_THRESHOLD)
+#define MTL_CRAWL_THRESHOLD(i915, cdclk)	((i915)->cdclk.hw.cdclk > MTL_CDCLK_THRESHOLD && \
+						 (cdclk) == MTL_CDCLK_THRESHOLD)
+#define MTL_CRAWL_ONLY(i915, cdclk)		((i915)->cdclk.hw.cdclk > MTL_CDCLK_THRESHOLD && \
+						 (cdclk) > MTL_CDCLK_THRESHOLD)
+#define MTL_CRAWL_SQUASH(i915, cdclk)		((i915)->cdclk.hw.cdclk > MTL_CDCLK_THRESHOLD && \
+						 (cdclk) <= MTL_CDCLK_THRESHOLD)
+
+enum mtl_cdclk_sequence {
+	CDCLK_INVALID_ACTION = -1,
+
+	CDCLK_SQUASH_ONLY = 0,
+	CDCLK_CRAWL_ONLY,
+	CDCLK_SQUASH_THRESHOLD_CRAWL,
+	CDCLK_CRAWL_THRESHOLD_SQUASH,
+	CDCLK_LEGACY_CHANGE,
+};
+
 /**
  * DOC: CDCLK / RAWCLK
  *
@@ -1222,7 +1249,7 @@ static void skl_cdclk_uninit_hw(struct drm_i915_private *dev_priv)
 
 static bool has_cdclk_squasher(struct drm_i915_private *i915)
 {
-	return IS_DG2(i915);
+	return DISPLAY_VER(i915) >= 14 || IS_DG2(i915);
 }
 
 struct intel_cdclk_vals {
@@ -1350,6 +1377,16 @@ static const struct intel_cdclk_vals dg2_cdclk_table[] = {
 	{}
 };
 
+static const struct intel_cdclk_vals mtl_cdclk_table[] = {
+	{ .refclk = 38400, .cdclk = 172800, .divider = 2, .ratio = 16, .waveform = 0xad5a },
+	{ .refclk = 38400, .cdclk = 192000, .divider = 2, .ratio = 16, .waveform = 0xb6b6 },
+	{ .refclk = 38400, .cdclk = 307200, .divider = 2, .ratio = 16, .waveform = 0x0000 },
+	{ .refclk = 38400, .cdclk = 480000, .divider = 2, .ratio = 25, .waveform = 0x0000 },
+	{ .refclk = 38400, .cdclk = 556800, .divider = 2, .ratio = 29, .waveform = 0x0000 },
+	{ .refclk = 38400, .cdclk = 652800, .divider = 2, .ratio = 34, .waveform = 0x0000 },
+	{}
+};
+
 static int bxt_calc_cdclk(struct drm_i915_private *dev_priv, int min_cdclk)
 {
 	const struct intel_cdclk_vals *table = dev_priv->cdclk.table;
@@ -1479,6 +1516,75 @@ static void bxt_de_pll_readout(struct drm_i915_private *dev_priv,
 	cdclk_config->vco = ratio * cdclk_config->ref;
 }
 
+static void mtl_get_cdclk(struct drm_i915_private *dev_priv,
+			  struct intel_cdclk_config *cdclk_config)
+{
+	const struct intel_cdclk_vals *table = dev_priv->cdclk.table;
+	u32 squash_ctl, divider, waveform;
+	int div, i, ratio;
+
+	bxt_de_pll_readout(dev_priv, cdclk_config);
+
+	cdclk_config->bypass = cdclk_config->ref / 2;
+
+	if (cdclk_config->vco == 0) {
+		cdclk_config->cdclk = cdclk_config->bypass;
+		goto out;
+	}
+
+	divider = intel_de_read(dev_priv, CDCLK_CTL) & BXT_CDCLK_CD2X_DIV_SEL_MASK;
+	switch (divider) {
+	case BXT_CDCLK_CD2X_DIV_SEL_1:
+		div = 2;
+		break;
+	case BXT_CDCLK_CD2X_DIV_SEL_1_5:
+		div = 3;
+		break;
+	case BXT_CDCLK_CD2X_DIV_SEL_2:
+		div = 4;
+		break;
+	case BXT_CDCLK_CD2X_DIV_SEL_4:
+		div = 8;
+		break;
+	default:
+		MISSING_CASE(divider);
+		return;
+	}
+
+	squash_ctl = intel_de_read(dev_priv, CDCLK_SQUASH_CTL);
+	if (squash_ctl & CDCLK_SQUASH_ENABLE)
+		waveform = squash_ctl & CDCLK_SQUASH_WAVEFORM_MASK;
+	else
+		waveform = 0;
+
+	ratio = cdclk_config->vco / cdclk_config->ref;
+
+	for (i = 0, cdclk_config->cdclk = 0; table[i].refclk; i++) {
+		if (table[i].refclk != cdclk_config->ref)
+			continue;
+
+		if (table[i].divider != div)
+			continue;
+
+		if (table[i].waveform != waveform)
+			continue;
+
+		if (table[i].ratio != ratio)
+			continue;
+
+		cdclk_config->cdclk = table[i].cdclk;
+		break;
+	}
+
+out:
+	/*
+	 * Can't read this out :( Let's assume it's
+	 * at least what the CDCLK frequency requires.
+	 */
+	cdclk_config->voltage_level =
+		intel_cdclk_calc_voltage_level(dev_priv, cdclk_config->cdclk);
+}
+
 static void bxt_get_cdclk(struct drm_i915_private *dev_priv,
 			  struct intel_cdclk_config *cdclk_config)
 {
@@ -1689,6 +1795,131 @@ static u32 cdclk_squash_waveform(struct drm_i915_private *dev_priv,
 	return 0xffff;
 }
 
+static enum mtl_cdclk_sequence
+mtl_determine_cdclk_sequence(struct drm_i915_private *i915,
+			     int cdclk)
+{
+	if ((i915)->cdclk.hw.cdclk == 0) {
+		return CDCLK_LEGACY_CHANGE;
+	} else if (MTL_CRAWL_ONLY(i915, cdclk) || MTL_CRAWL_THRESHOLD(i915, cdclk)) {
+		return CDCLK_CRAWL_ONLY;
+	} else if (MTL_SQUASH_ONLY(i915, cdclk) ||
+		   MTL_SQUASH_THRESHOLD(i915, cdclk)) {
+		return CDCLK_SQUASH_ONLY;
+	} else if (MTL_SQUASH_CRAWL(i915, cdclk)) {
+		return CDCLK_SQUASH_THRESHOLD_CRAWL;
+	} else if (MTL_CRAWL_SQUASH(i915, cdclk)) {
+		return CDCLK_CRAWL_THRESHOLD_SQUASH;
+	}
+
+	drm_err(&i915->drm, "Not a valid cdclk sequence of actions\n");
+	return CDCLK_INVALID_ACTION;
+}
+
+static void dg2_prog_squash_ctl(struct drm_i915_private *i915, u16 waveform)
+{
+	u32 squash_ctl = 0;
+
+	if (waveform) {
+		squash_ctl |= CDCLK_SQUASH_ENABLE;
+		squash_ctl |= CDCLK_SQUASH_WINDOW_SIZE(0xf) | waveform;
+	}
+
+	intel_de_write(i915, CDCLK_SQUASH_CTL, squash_ctl);
+}
+
+static const char *cdclk_sequence_to_string(enum mtl_cdclk_sequence
+					    mtl_cdclk_sequence)
+{
+	switch (mtl_cdclk_sequence) {
+	case CDCLK_SQUASH_ONLY:
+		return "Squash only";
+	case CDCLK_CRAWL_ONLY:
+		return "Crawl only";
+	case CDCLK_SQUASH_THRESHOLD_CRAWL:
+		return "Squash to threshold, followed by Crawl";
+	case CDCLK_CRAWL_THRESHOLD_SQUASH:
+		return "Crawl to threshold, followed by Squash";
+	case CDCLK_LEGACY_CHANGE:
+		return "Legacy method";
+	default:
+		return "Not a valid cdclk sequence";
+	}
+}
+
+static void mtl_set_cdclk(struct drm_i915_private *i915,
+			  const struct intel_cdclk_config *cdclk_config,
+			  enum pipe pipe)
+{
+	enum mtl_cdclk_sequence mtl_cdclk_sequence;
+	int cdclk = cdclk_config->cdclk;
+	int vco = cdclk_config->vco;
+	int squash_crawl_vco;
+	u32 val;
+	u16 waveform;
+
+	mtl_cdclk_sequence = mtl_determine_cdclk_sequence(i915, cdclk);
+	if (mtl_cdclk_sequence == CDCLK_INVALID_ACTION)
+		return;
+
+	/*
+	 * MTL supports CDCLK flow with squashing and crawling.
+	 * - If current CDCLK and required CDCLK both are greater
+	 * than threshold(307200), crawl
+	 * - If we need to transition from CDCLK higher than threshold
+	 * to a frequency less than threshold, crawl till the threshold
+	 * and then squash to desired CDCLK.
+	 */
+
+	drm_dbg_kms(&i915->drm, "CDCLK changing from %i to %i using %s\n",
+		    i915->cdclk.hw.cdclk,
+		    cdclk, cdclk_sequence_to_string(mtl_cdclk_sequence));
+
+	switch (mtl_cdclk_sequence) {
+	case CDCLK_SQUASH_ONLY:
+		waveform = cdclk_squash_waveform(i915, cdclk);
+		dg2_prog_squash_ctl(i915, waveform);
+		break;
+	case CDCLK_CRAWL_ONLY:
+		adlp_cdclk_pll_crawl(i915, vco);
+		break;
+	case CDCLK_SQUASH_THRESHOLD_CRAWL:
+		waveform = cdclk_squash_waveform(i915, MTL_CDCLK_THRESHOLD);
+		dg2_prog_squash_ctl(i915, waveform);
+		adlp_cdclk_pll_crawl(i915, vco);
+		break;
+	case CDCLK_CRAWL_THRESHOLD_SQUASH:
+		squash_crawl_vco = bxt_calc_cdclk_pll_vco(i915, MTL_CDCLK_THRESHOLD);
+		adlp_cdclk_pll_crawl(i915, squash_crawl_vco);
+		waveform = cdclk_squash_waveform(i915, cdclk);
+		dg2_prog_squash_ctl(i915, waveform);
+		break;
+	case CDCLK_LEGACY_CHANGE:
+		icl_cdclk_pll_disable(i915);
+		icl_cdclk_pll_enable(i915, vco);
+
+		waveform = cdclk_squash_waveform(i915, cdclk);
+		dg2_prog_squash_ctl(i915, waveform);
+		break;
+	default:
+		drm_err(&i915->drm, "Invalid CDCLK sequence requested");
+		return;
+	}
+
+	val = BXT_CDCLK_CD2X_DIV_SEL_1 |
+		bxt_cdclk_cd2x_pipe(i915, pipe) |
+		skl_cdclk_decimal(cdclk);
+
+	intel_de_write(i915, CDCLK_CTL, val);
+
+	if (pipe != INVALID_PIPE)
+		intel_crtc_wait_for_next_vblank(intel_crtc_for_pipe(i915, pipe));
+
+	intel_update_cdclk(i915);
+
+	i915->cdclk.hw.voltage_level = cdclk_config->voltage_level;
+}
+
 static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
 			  const struct intel_cdclk_config *cdclk_config,
 			  enum pipe pipe)
@@ -1747,15 +1978,8 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
 	else
 		clock = cdclk;
 
-	if (has_cdclk_squasher(dev_priv)) {
-		u32 squash_ctl = 0;
-
-		if (waveform)
-			squash_ctl = CDCLK_SQUASH_ENABLE |
-				CDCLK_SQUASH_WINDOW_SIZE(0xf) | waveform;
-
-		intel_de_write(dev_priv, CDCLK_SQUASH_CTL, squash_ctl);
-	}
+	if (has_cdclk_squasher(dev_priv))
+		dg2_prog_squash_ctl(dev_priv, waveform);
 
 	val = bxt_cdclk_cd2x_div_sel(dev_priv, clock, vco) |
 		bxt_cdclk_cd2x_pipe(dev_priv, pipe) |
@@ -1897,7 +2121,10 @@ static void bxt_cdclk_init_hw(struct drm_i915_private *dev_priv)
 	cdclk_config.voltage_level =
 		intel_cdclk_calc_voltage_level(dev_priv, cdclk_config.cdclk);
 
-	bxt_set_cdclk(dev_priv, &cdclk_config, INVALID_PIPE);
+	if (DISPLAY_VER(dev_priv) >= 14)
+		mtl_set_cdclk(dev_priv, &cdclk_config, INVALID_PIPE);
+	else
+		bxt_set_cdclk(dev_priv, &cdclk_config, INVALID_PIPE);
 }
 
 static void bxt_cdclk_uninit_hw(struct drm_i915_private *dev_priv)
@@ -1909,7 +2136,10 @@ static void bxt_cdclk_uninit_hw(struct drm_i915_private *dev_priv)
 	cdclk_config.voltage_level =
 		intel_cdclk_calc_voltage_level(dev_priv, cdclk_config.cdclk);
 
-	bxt_set_cdclk(dev_priv, &cdclk_config, INVALID_PIPE);
+	if (DISPLAY_VER(dev_priv) >= 14)
+		mtl_set_cdclk(dev_priv, &cdclk_config, INVALID_PIPE);
+	else
+		bxt_set_cdclk(dev_priv, &cdclk_config, INVALID_PIPE);
 }
 
 /**
@@ -1985,6 +2215,37 @@ static bool intel_cdclk_can_squash(struct drm_i915_private *dev_priv,
 		a->ref == b->ref;
 }
 
+/*
+ * MTL Introduces cases where squashing and crawling alone can't satisfy
+ *  we will still have to use a combination of both squashing+crawling
+ * to achieve the overall transition without triggering
+ * a full modeset.
+ */
+static bool intel_cdclk_can_squash_and_crawl(struct drm_i915_private *dev_priv,
+					     const struct intel_cdclk_config *old,
+					     struct intel_cdclk_config *new)
+{
+	if (!HAS_SQUASH_AND_CRAWL(dev_priv))
+		return false;
+
+	if (old->cdclk == 0)
+		return false;
+
+	if (old->cdclk > MTL_CDCLK_THRESHOLD && new->cdclk <= MTL_CDCLK_THRESHOLD)
+		return true;
+
+	/*
+	 * - For transitioning from a CDCLK less than the threshold(307200) to one
+	 * that is higher than threshold, squash till threshold and then crawl to
+	 * the desired frequency
+	 */
+	if (old->cdclk < MTL_CDCLK_THRESHOLD && new->cdclk > MTL_CDCLK_THRESHOLD)
+		return true;
+
+	return old->cdclk != new->cdclk &&
+		old->vco != 0 && new->vco != 0;
+}
+
 /**
  * intel_cdclk_needs_modeset - Determine if changong between the CDCLK
  *                             configurations requires a modeset on all pipes
@@ -2705,6 +2966,7 @@ int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
 	const struct intel_cdclk_state *old_cdclk_state;
 	struct intel_cdclk_state *new_cdclk_state;
 	enum pipe pipe = INVALID_PIPE;
+	bool can_fastset = false;
 	int ret;
 
 	new_cdclk_state = intel_atomic_get_cdclk_state(state);
@@ -2758,24 +3020,37 @@ int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
 			pipe = INVALID_PIPE;
 	}
 
-	if (intel_cdclk_can_squash(dev_priv,
-				   &old_cdclk_state->actual,
-				   &new_cdclk_state->actual)) {
-		drm_dbg_kms(&dev_priv->drm,
-			    "Can change cdclk via squasher\n");
-	} else if (intel_cdclk_can_crawl(dev_priv,
-					 &old_cdclk_state->actual,
-					 &new_cdclk_state->actual)) {
-		drm_dbg_kms(&dev_priv->drm,
-			    "Can change cdclk via crawl\n");
-	} else if (pipe != INVALID_PIPE) {
-		new_cdclk_state->pipe = pipe;
+	if (DISPLAY_VER(dev_priv) >= 14) {
+		if (intel_cdclk_can_squash_and_crawl(dev_priv,
+						     &old_cdclk_state->actual,
+						     &new_cdclk_state->actual)) {
+			drm_dbg_kms(&dev_priv->drm,
+				    "Can change cdclk via squasher and crawler combinations\n");
+			can_fastset = true;
+		}
+	} else {
+		if (intel_cdclk_can_squash(dev_priv,
+					   &old_cdclk_state->actual,
+					   &new_cdclk_state->actual)) {
+			drm_dbg_kms(&dev_priv->drm, "Can change cdclk via squasher\n");
+			can_fastset = true;
+		} else if (intel_cdclk_can_crawl(dev_priv,
+						 &old_cdclk_state->actual,
+						 &new_cdclk_state->actual)) {
+			drm_dbg_kms(&dev_priv->drm, "Can change cdclk via crawl\n");
+			can_fastset = true;
+		} else if (pipe != INVALID_PIPE) {
+			new_cdclk_state->pipe = pipe;
+
+			drm_dbg_kms(&dev_priv->drm,
+				    "Can change cdclk cd2x divider with pipe %c active\n",
+				    pipe_name(pipe));
+			can_fastset = true;
+		}
+	}
 
-		drm_dbg_kms(&dev_priv->drm,
-			    "Can change cdclk cd2x divider with pipe %c active\n",
-			    pipe_name(pipe));
-	} else if (intel_cdclk_needs_modeset(&old_cdclk_state->actual,
-					     &new_cdclk_state->actual)) {
+	if (!can_fastset && intel_cdclk_needs_modeset(&old_cdclk_state->actual,
+						      &new_cdclk_state->actual)) {
 		/* All pipes must be switched off while we change the cdclk. */
 		ret = intel_modeset_all_pipes(state);
 		if (ret)
@@ -3058,6 +3333,12 @@ u32 intel_read_rawclk(struct drm_i915_private *dev_priv)
 	return freq;
 }
 
+static const struct intel_cdclk_funcs mtl_cdclk_funcs = {
+	.get_cdclk = mtl_get_cdclk,
+	.set_cdclk = mtl_set_cdclk,
+	.modeset_calc_cdclk = bxt_modeset_calc_cdclk,
+	.calc_voltage_level = tgl_calc_voltage_level,
+};
 static const struct intel_cdclk_funcs tgl_cdclk_funcs = {
 	.get_cdclk = bxt_get_cdclk,
 	.set_cdclk = bxt_set_cdclk,
@@ -3193,7 +3474,10 @@ static const struct intel_cdclk_funcs i830_cdclk_funcs = {
  */
 void intel_init_cdclk_hooks(struct drm_i915_private *dev_priv)
 {
-	if (IS_DG2(dev_priv)) {
+	if (IS_METEORLAKE(dev_priv)) {
+		dev_priv->cdclk_funcs = &mtl_cdclk_funcs;
+		dev_priv->cdclk.table = mtl_cdclk_table;
+	} else if (IS_DG2(dev_priv)) {
 		dev_priv->cdclk_funcs = &tgl_cdclk_funcs;
 		dev_priv->cdclk.table = dg2_cdclk_table;
 	} else if (IS_ALDERLAKE_P(dev_priv)) {
-- 
2.25.1

