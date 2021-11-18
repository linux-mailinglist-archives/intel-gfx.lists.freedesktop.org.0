Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CA62455772
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Nov 2021 09:55:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBF2B6EB72;
	Thu, 18 Nov 2021 08:55:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91CDE6EB72
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Nov 2021 08:55:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10171"; a="221025335"
X-IronPort-AV: E=Sophos;i="5.87,244,1631602800"; d="scan'208";a="221025335"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2021 00:55:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,244,1631602800"; d="scan'208";a="507341375"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by orsmga008.jf.intel.com with ESMTP; 18 Nov 2021 00:55:11 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 18 Nov 2021 10:54:24 +0200
Message-Id: <20211118085424.685686-5-mika.kahola@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20211118085424.685686-1-mika.kahola@intel.com>
References: <20211118085424.685686-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/4] drm/i915/display/dg2: Set CD clock
 squashing registers
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
index e8c58779c2a8..5fcb393079f7 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1653,6 +1653,26 @@ static u32 bxt_cdclk_cd2x_div_sel(struct drm_i915_private *dev_priv,
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
@@ -1660,6 +1680,8 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
 	int cdclk = cdclk_config->cdclk;
 	int vco = cdclk_config->vco;
 	u32 val;
+	u16 waveform;
+	int clock;
 	int ret;
 
 	/* Inform power controller of upcoming frequency change. */
@@ -1703,7 +1725,24 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
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

