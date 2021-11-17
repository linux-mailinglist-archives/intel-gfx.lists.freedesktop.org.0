Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6235B4549CC
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Nov 2021 16:20:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B3CD6E935;
	Wed, 17 Nov 2021 15:20:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F75E6E935
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Nov 2021 15:20:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10170"; a="231443149"
X-IronPort-AV: E=Sophos;i="5.87,241,1631602800"; d="scan'208";a="231443149"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2021 07:20:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,241,1631602800"; d="scan'208";a="536313749"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by orsmga001.jf.intel.com with ESMTP; 17 Nov 2021 07:19:59 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 17 Nov 2021 17:19:14 +0200
Message-Id: <20211117151914.627778-1-mika.kahola@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display/dg2: Set CD clock squashing
 registers
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

Set CD clock squashing registers based on selected CD clock.

v2: use slk_cdclk_decimal() to compute decimal values instead of a
    specific table (Ville)
    Set waveform based on CD clock table (Ville)
    Drop unnecessary local variable (Ville)
v3: Correct function naming (Ville)
    Correct if-else structure (Ville)
[v4: vsyrjala: Fix spaces vs. tabs]
[v5: vsyrjala: Fix cd2x divider calculation (Uma),
               Add warn to waveform lookup (Uma),
               Handle bypass freq in waveform lookup,
               Generalize waveform handling in bxt_set_cdclk()]

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 41 +++++++++++++++++++++-
 drivers/gpu/drm/i915/i915_reg.h            |  8 +++++
 2 files changed, 48 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 91c19e0a98d7..69bdec6abf1e 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1626,6 +1626,26 @@ static u32 bxt_cdclk_cd2x_div_sel(struct drm_i915_private *dev_priv,
 	}
 }
 
+static u32 cdclk_squash_waveform(struct drm_i915_private *dev_priv,
+				 int cdclk)
+{
+	const struct intel_cdclk_vals *table = dev_priv->cdclk.table;
+	int i;
+
+	if (cdclk == dev_priv->cdclk.hw.bypass)
+		return 0;
+
+	for (i = 0; table[i].refclk; i++)
+		if (table[i].refclk == dev_priv->cdclk.hw.ref &&
+		    table[i].cdclk == cdclk)
+			return table[i].waveform;
+
+	drm_WARN(&dev_priv->drm, 1, "cdclk %d not valid for refclk %u\n",
+		 cdclk, dev_priv->cdclk.hw.ref);
+
+	return 0xffff;
+}
+
 static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
 			  const struct intel_cdclk_config *cdclk_config,
 			  enum pipe pipe)
@@ -1633,6 +1653,8 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
 	int cdclk = cdclk_config->cdclk;
 	int vco = cdclk_config->vco;
 	u32 val;
+	u16 waveform;
+	int clock;
 	int ret;
 
 	/* Inform power controller of upcoming frequency change. */
@@ -1676,7 +1698,24 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
 			bxt_de_pll_enable(dev_priv, vco);
 	}
 
-	val = bxt_cdclk_cd2x_div_sel(dev_priv, cdclk, vco) |
+	waveform = cdclk_squash_waveform(dev_priv, cdclk);
+
+	if (waveform)
+		clock = vco / 2;
+	else
+		clock = cdclk;
+
+	if (has_cdclk_squasher(dev_priv)) {
+		u32 squash_ctl = 0;
+
+		if (waveform)
+			squash_ctl = CDCLK_SQUASH_ENABLE |
+				CDCLK_SQUASH_WINDOW_SIZE(0xf) | waveform;
+
+		intel_de_write(dev_priv, CDCLK_SQUASH_CTL, squash_ctl);
+	}
+
+	val = bxt_cdclk_cd2x_div_sel(dev_priv, clock, vco) |
 		bxt_cdclk_cd2x_pipe(dev_priv, pipe) |
 		skl_cdclk_decimal(cdclk);
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index f15ffc53e858..cfedbca0b5d3 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -10649,6 +10649,14 @@ enum skl_power_gate {
 #define  BXT_CDCLK_SSA_PRECHARGE_ENABLE	(1 << 16)
 #define  CDCLK_FREQ_DECIMAL_MASK	(0x7ff)
 
+/* CDCLK_SQUASH_CTL */
+#define CDCLK_SQUASH_CTL		_MMIO(0x46008)
+#define  CDCLK_SQUASH_ENABLE		REG_BIT(31)
+#define  CDCLK_SQUASH_WINDOW_SIZE_MASK	REG_GENMASK(27, 24)
+#define  CDCLK_SQUASH_WINDOW_SIZE(x)	REG_FIELD_PREP(CDCLK_SQUASH_WINDOW_SIZE_MASK, (x))
+#define  CDCLK_SQUASH_WAVEFORM_MASK	REG_GENMASK(15, 0)
+#define  CDCLK_SQUASH_WAVEFORM(x)	REG_FIELD_PREP(CDCLK_SQUASH_WAVEFORM_MASK, (x))
+
 /* LCPLL_CTL */
 #define LCPLL1_CTL		_MMIO(0x46010)
 #define LCPLL2_CTL		_MMIO(0x46014)
-- 
2.27.0

