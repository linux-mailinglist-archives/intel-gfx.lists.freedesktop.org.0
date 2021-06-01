Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D76063975C8
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Jun 2021 16:49:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 235E46E9A3;
	Tue,  1 Jun 2021 14:49:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E463D6E9A3
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Jun 2021 14:49:17 +0000 (UTC)
IronPort-SDR: 8Z4ojl9ig6sECUsykSZlSBQj6PaRrpoK9cbob+1ikxgxJ+T7fOr8po1As6RrW+57o47vScHG1K
 QnmAC6FjkrfA==
X-IronPort-AV: E=McAfee;i="6200,9189,10002"; a="183242281"
X-IronPort-AV: E=Sophos;i="5.83,240,1616482800"; d="scan'208";a="183242281"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2021 07:49:15 -0700
IronPort-SDR: dgEXCUvhFbKHUclmnMJL7X/SB1v7i8k2ndiP3Z1FTxMAYtSHRPYnaroKsHX6noSd6xAv6Ks1JY
 leC/FALtS5/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,240,1616482800"; d="scan'208";a="445357130"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.91])
 by orsmga008.jf.intel.com with ESMTP; 01 Jun 2021 07:49:13 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  1 Jun 2021 17:52:48 +0300
Message-Id: <20210601145248.23900-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/adl_p: CDCLK crawl support for ADL
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>

CDCLK crawl feature allows to change CDCLK frequency
without disabling the actual PLL and doesn't require
a full modeset.

Cc: Mika Kahola <mika.kahola@intel.com>
Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 72 +++++++++++++++++++---
 drivers/gpu/drm/i915/i915_reg.h            |  2 +
 2 files changed, 65 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 618a9e1e2b0c..b9abed82328c 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1548,6 +1548,35 @@ static void cnl_cdclk_pll_enable(struct drm_i915_private *dev_priv, int vco)
 	dev_priv->cdclk.hw.vco = vco;
 }
 
+static bool has_cdclk_crawl(struct drm_i915_private *i915)
+{
+	return IS_ALDERLAKE_P(i915);
+}
+
+static void gen13_cdclk_pll_crawl(struct drm_i915_private *dev_priv, int vco)
+{
+	int ratio = DIV_ROUND_CLOSEST(vco, dev_priv->cdclk.hw.ref);
+	u32 val;
+
+	/* Write PLL ratio without disabling */
+	val = CNL_CDCLK_PLL_RATIO(ratio) | BXT_DE_PLL_PLL_ENABLE;
+	intel_de_write(dev_priv, BXT_DE_PLL_ENABLE, val);
+
+	/* Submit freq change request */
+	val |= BXT_DE_PLL_FREQ_REQ;
+	intel_de_write(dev_priv, BXT_DE_PLL_ENABLE, val);
+
+	/* Timeout 200us */
+	if (intel_de_wait_for_set(dev_priv, BXT_DE_PLL_ENABLE,
+				  BXT_DE_PLL_LOCK | BXT_DE_PLL_FREQ_REQ_ACK, 1))
+		DRM_ERROR("timeout waiting for FREQ change request ack\n");
+
+	val &= ~BXT_DE_PLL_FREQ_REQ;
+	intel_de_write(dev_priv, BXT_DE_PLL_ENABLE, val);
+
+	dev_priv->cdclk.hw.vco = vco;
+}
+
 static u32 bxt_cdclk_cd2x_pipe(struct drm_i915_private *dev_priv, enum pipe pipe)
 {
 	if (DISPLAY_VER(dev_priv) >= 12) {
@@ -1620,14 +1649,16 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
 		return;
 	}
 
-	if (DISPLAY_VER(dev_priv) >= 11 || IS_CANNONLAKE(dev_priv)) {
+	if (has_cdclk_crawl(dev_priv) && dev_priv->cdclk.hw.vco > 0 && vco > 0) {
+		if (dev_priv->cdclk.hw.vco != vco)
+			gen13_cdclk_pll_crawl(dev_priv, vco);
+	} else if (DISPLAY_VER(dev_priv) >= 11 || IS_CANNONLAKE(dev_priv)) {
 		if (dev_priv->cdclk.hw.vco != 0 &&
 		    dev_priv->cdclk.hw.vco != vco)
 			cnl_cdclk_pll_disable(dev_priv);
 
 		if (dev_priv->cdclk.hw.vco != vco)
 			cnl_cdclk_pll_enable(dev_priv, vco);
-
 	} else {
 		if (dev_priv->cdclk.hw.vco != 0 &&
 		    dev_priv->cdclk.hw.vco != vco)
@@ -1820,6 +1851,28 @@ void intel_cdclk_uninit_hw(struct drm_i915_private *i915)
 		skl_cdclk_uninit_hw(i915);
 }
 
+static bool intel_cdclk_can_crawl(struct drm_i915_private *dev_priv,
+				  const struct intel_cdclk_config *a,
+				  const struct intel_cdclk_config *b)
+{
+	int a_div, b_div;
+
+	if (!has_cdclk_crawl(dev_priv))
+		return false;
+
+	/*
+	 * The vco and cd2x divider will change independently
+	 * from each, so we disallow cd2x change when crawling.
+	 */
+	a_div = DIV_ROUND_CLOSEST(a->vco, a->cdclk);
+	b_div = DIV_ROUND_CLOSEST(b->vco, b->cdclk);
+
+	return a->vco != 0 && b->vco != 0 &&
+		a->vco != b->vco &&
+		a_div == b_div &&
+		a->ref == b->ref;
+}
+
 /**
  * intel_cdclk_needs_modeset - Determine if changong between the CDCLK
  *                             configurations requires a modeset on all pipes
@@ -2475,7 +2528,7 @@ int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 	const struct intel_cdclk_state *old_cdclk_state;
 	struct intel_cdclk_state *new_cdclk_state;
-	enum pipe pipe;
+	enum pipe pipe = INVALID_PIPE;
 	int ret;
 
 	new_cdclk_state = intel_atomic_get_cdclk_state(state);
@@ -2527,15 +2580,18 @@ int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
 
 		if (drm_atomic_crtc_needs_modeset(&crtc_state->uapi))
 			pipe = INVALID_PIPE;
-	} else {
-		pipe = INVALID_PIPE;
 	}
 
-	if (pipe != INVALID_PIPE) {
+	if (intel_cdclk_can_crawl(dev_priv,
+				  &old_cdclk_state->actual,
+				  &new_cdclk_state->actual)) {
+		drm_dbg_kms(&dev_priv->drm,
+			    "Can change cdclk via crawl\n");
+	} else if (pipe != INVALID_PIPE) {
 		new_cdclk_state->pipe = pipe;
 
 		drm_dbg_kms(&dev_priv->drm,
-			    "Can change cdclk with pipe %c active\n",
+			    "Can change cdclk cd2x divider with pipe %c active\n",
 			    pipe_name(pipe));
 	} else if (intel_cdclk_needs_modeset(&old_cdclk_state->actual,
 					     &new_cdclk_state->actual)) {
@@ -2544,8 +2600,6 @@ int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
 		if (ret)
 			return ret;
 
-		new_cdclk_state->pipe = INVALID_PIPE;
-
 		drm_dbg_kms(&dev_priv->drm,
 			    "Modeset required for cdclk change\n");
 	}
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 3b58067a873c..1d1176d1799d 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -11157,6 +11157,8 @@ enum skl_power_gate {
 #define BXT_DE_PLL_ENABLE		_MMIO(0x46070)
 #define   BXT_DE_PLL_PLL_ENABLE		(1 << 31)
 #define   BXT_DE_PLL_LOCK		(1 << 30)
+#define   BXT_DE_PLL_FREQ_REQ		(1 << 23)
+#define   BXT_DE_PLL_FREQ_REQ_ACK	(1 << 22)
 #define   CNL_CDCLK_PLL_RATIO(x)	(x)
 #define   CNL_CDCLK_PLL_RATIO_MASK	0xff
 
-- 
2.24.1.485.gad05a3d8e5

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
