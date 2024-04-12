Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87A6C8A3537
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Apr 2024 19:58:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7195A10F77D;
	Fri, 12 Apr 2024 17:58:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YlcTm0dc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7B9110F698
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Apr 2024 17:58:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712944706; x=1744480706;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=XP+dJqhk9h4YYuZjWQbvZMKq+/5dYCn1lXLrW5jl+ew=;
 b=YlcTm0dc4iAe7l2C/eQndLhEpyZ/L5yr6/OP+YHhCJgXd1eXkdiqkF80
 qJOt5l3sMJHThLlQ3wmBPXhg2FzuVSQSy9cEZZY6FwPJk+6ZEny2aNFWQ
 Drxp09fL1WOnVZCD0XC0Y7f+9EWyzZa0ORxWwWAfQF+chY6GOajl5rtgD
 vpsWlWnaIy8/aEVk/r3zPquOqi6cJRGo4ijFVumlN3ktxA1wA1iIH6OMC
 hIBKqOIJizoCEyu5YIrtjMGXKvZ72UJRAx8KB+xsisWKJzIJSE8bmxoGE
 DBnx6X+pIi+fN2nXqBO9abe8LeeTE4A4zUpkLXoQ2xysLP93vzz+XP7Lk w==;
X-CSE-ConnectionGUID: o7J4z96FQP2r2cVBgt0LJQ==
X-CSE-MsgGUID: PJPrN2jhSJCj5jOBJ85Aig==
X-IronPort-AV: E=McAfee;i="6600,9927,11042"; a="8586949"
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; 
   d="scan'208";a="8586949"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2024 10:58:26 -0700
X-CSE-ConnectionGUID: Ya9lVdlQTQCGeRyX4QJBqA==
X-CSE-MsgGUID: qg/qStY7R3CCZJXeNrV+4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; d="scan'208";a="21383026"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 12 Apr 2024 10:58:25 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 12 Apr 2024 20:58:23 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 2/8] drm/i915/dpio: Add per-lane PHY TX register definitons
 for bxt/glk
Date: Fri, 12 Apr 2024 20:58:12 +0300
Message-ID: <20240412175818.29217-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240412175818.29217-1-ville.syrjala@linux.intel.com>
References: <20240412175818.29217-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Add consistent definitions for the per-lane PHY TX registers
on bxt/glk. The current situation is a slight mess with some
registers having a LN0 define, while others have a parametrized
per-lane definition.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpio_phy.c |  6 +--
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  2 +-
 drivers/gpu/drm/i915/i915_reg.h               | 38 +++++++++----------
 3 files changed, 23 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpio_phy.c b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
index d14e80ece8aa..50d6b412d652 100644
--- a/drivers/gpu/drm/i915/display/intel_dpio_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
@@ -294,13 +294,13 @@ void bxt_ddi_phy_set_signal_levels(struct intel_encoder *encoder,
 	val &= ~(TX2_SWING_CALC_INIT | TX1_SWING_CALC_INIT);
 	intel_de_write(dev_priv, BXT_PORT_PCS_DW10_GRP(phy, ch), val);
 
-	val = intel_de_read(dev_priv, BXT_PORT_TX_DW2_LN0(phy, ch));
+	val = intel_de_read(dev_priv, BXT_PORT_TX_DW2_LN(phy, ch, 0));
 	val &= ~(MARGIN_000_MASK | UNIQ_TRANS_SCALE_MASK);
 	val |= MARGIN_000(trans->entries[level].bxt.margin) |
 		UNIQ_TRANS_SCALE(trans->entries[level].bxt.scale);
 	intel_de_write(dev_priv, BXT_PORT_TX_DW2_GRP(phy, ch), val);
 
-	val = intel_de_read(dev_priv, BXT_PORT_TX_DW3_LN0(phy, ch));
+	val = intel_de_read(dev_priv, BXT_PORT_TX_DW3_LN(phy, ch, 0));
 	val &= ~SCALE_DCOMP_METHOD;
 	if (trans->entries[level].bxt.enable)
 		val |= SCALE_DCOMP_METHOD;
@@ -311,7 +311,7 @@ void bxt_ddi_phy_set_signal_levels(struct intel_encoder *encoder,
 
 	intel_de_write(dev_priv, BXT_PORT_TX_DW3_GRP(phy, ch), val);
 
-	val = intel_de_read(dev_priv, BXT_PORT_TX_DW4_LN0(phy, ch));
+	val = intel_de_read(dev_priv, BXT_PORT_TX_DW4_LN(phy, ch, 0));
 	val &= ~DE_EMPHASIS_MASK;
 	val |= DE_EMPHASIS(trans->entries[level].bxt.deemphasis);
 	intel_de_write(dev_priv, BXT_PORT_TX_DW4_GRP(phy, ch), val);
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 9ff6c4cc2e4b..cc3acdafdbf8 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -2071,7 +2071,7 @@ static void bxt_ddi_pll_enable(struct drm_i915_private *i915,
 		drm_err(&i915->drm, "PLL %d not locked\n", port);
 
 	if (IS_GEMINILAKE(i915)) {
-		temp = intel_de_read(i915, BXT_PORT_TX_DW5_LN0(phy, ch));
+		temp = intel_de_read(i915, BXT_PORT_TX_DW5_LN(phy, ch, 0));
 		temp |= DCC_DELAY_RANGE_2;
 		intel_de_write(i915, BXT_PORT_TX_DW5_GRP(phy, ch), temp);
 	}
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 9701aad57e3a..261b520da399 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -555,6 +555,10 @@
 					 (reg_ch1) - _BXT_PHY0_BASE))
 #define _MMIO_BXT_PHY_CH(phy, ch, reg_ch0, reg_ch1)		\
 	_MMIO(_BXT_PHY_CH(phy, ch, reg_ch0, reg_ch1))
+#define _BXT_LANE_OFFSET(lane)           (((lane) >> 1) * 0x200 + \
+					  ((lane) & 1) * 0x80)
+#define _MMIO_BXT_PHY_CH_LN(phy, ch, lane, reg_ch0, reg_ch1) \
+	_MMIO(_BXT_PHY_CH(phy, ch, reg_ch0, reg_ch1) + _BXT_LANE_OFFSET(lane))
 
 #define BXT_P_CR_GT_DISP_PWRON		_MMIO(0x138090)
 #define  MIPIO_RST_CTRL				(1 << 2)
@@ -747,18 +751,15 @@
 							 _PORT_PCS_DW12_GRP_C)
 
 /* BXT PHY TX registers */
-#define _BXT_LANE_OFFSET(lane)           (((lane) >> 1) * 0x200 +	\
-					  ((lane) & 1) * 0x80)
-
 #define _PORT_TX_DW2_LN0_A		0x162508
 #define _PORT_TX_DW2_LN0_B		0x6C508
 #define _PORT_TX_DW2_LN0_C		0x6C908
 #define _PORT_TX_DW2_GRP_A		0x162D08
 #define _PORT_TX_DW2_GRP_B		0x6CD08
 #define _PORT_TX_DW2_GRP_C		0x6CF08
-#define BXT_PORT_TX_DW2_LN0(phy, ch)	_MMIO_BXT_PHY_CH(phy, ch, \
-							 _PORT_TX_DW2_LN0_B, \
-							 _PORT_TX_DW2_LN0_C)
+#define BXT_PORT_TX_DW2_LN(phy, ch, lane)	_MMIO_BXT_PHY_CH_LN(phy, ch, lane, \
+								    _PORT_TX_DW2_LN0_B,	\
+								    _PORT_TX_DW2_LN0_C)
 #define BXT_PORT_TX_DW2_GRP(phy, ch)	_MMIO_BXT_PHY_CH(phy, ch, \
 							 _PORT_TX_DW2_GRP_B, \
 							 _PORT_TX_DW2_GRP_C)
@@ -773,9 +774,9 @@
 #define _PORT_TX_DW3_GRP_A		0x162D0C
 #define _PORT_TX_DW3_GRP_B		0x6CD0C
 #define _PORT_TX_DW3_GRP_C		0x6CF0C
-#define BXT_PORT_TX_DW3_LN0(phy, ch)	_MMIO_BXT_PHY_CH(phy, ch, \
-							 _PORT_TX_DW3_LN0_B, \
-							 _PORT_TX_DW3_LN0_C)
+#define BXT_PORT_TX_DW3_LN(phy, ch, lane)	_MMIO_BXT_PHY_CH_LN(phy, ch, lane, \
+								    _PORT_TX_DW3_LN0_B, \
+								    _PORT_TX_DW3_LN0_C)
 #define BXT_PORT_TX_DW3_GRP(phy, ch)	_MMIO_BXT_PHY_CH(phy, ch, \
 							 _PORT_TX_DW3_GRP_B, \
 							 _PORT_TX_DW3_GRP_C)
@@ -788,9 +789,9 @@
 #define _PORT_TX_DW4_GRP_A		0x162D10
 #define _PORT_TX_DW4_GRP_B		0x6CD10
 #define _PORT_TX_DW4_GRP_C		0x6CF10
-#define BXT_PORT_TX_DW4_LN0(phy, ch)	_MMIO_BXT_PHY_CH(phy, ch, \
-							 _PORT_TX_DW4_LN0_B, \
-							 _PORT_TX_DW4_LN0_C)
+#define BXT_PORT_TX_DW4_LN(phy, ch, lane)	_MMIO_BXT_PHY_CH_LN(phy, ch, lane, \
+								    _PORT_TX_DW4_LN0_B, \
+								    _PORT_TX_DW4_LN0_C)
 #define BXT_PORT_TX_DW4_GRP(phy, ch)	_MMIO_BXT_PHY_CH(phy, ch, \
 							 _PORT_TX_DW4_GRP_B, \
 							 _PORT_TX_DW4_GRP_C)
@@ -803,9 +804,9 @@
 #define _PORT_TX_DW5_GRP_A		0x162D14
 #define _PORT_TX_DW5_GRP_B		0x6CD14
 #define _PORT_TX_DW5_GRP_C		0x6CF14
-#define BXT_PORT_TX_DW5_LN0(phy, ch)	_MMIO_BXT_PHY_CH(phy, ch, \
-							 _PORT_TX_DW5_LN0_B, \
-							 _PORT_TX_DW5_LN0_C)
+#define BXT_PORT_TX_DW5_LN(phy, ch, lane)	_MMIO_BXT_PHY_CH_LN(phy, ch, lane, \
+								    _PORT_TX_DW5_LN0_B, \
+								    _PORT_TX_DW5_LN0_C)
 #define BXT_PORT_TX_DW5_GRP(phy, ch)	_MMIO_BXT_PHY_CH(phy, ch, \
 							 _PORT_TX_DW5_GRP_B, \
 							 _PORT_TX_DW5_GRP_C)
@@ -816,10 +817,9 @@
 #define _PORT_TX_DW14_LN0_B		0x6C538
 #define _PORT_TX_DW14_LN0_C		0x6C938
 #define   LATENCY_OPTIM			REG_BIT(30)
-#define BXT_PORT_TX_DW14_LN(phy, ch, lane)				\
-	_MMIO(_BXT_PHY_CH(phy, ch, _PORT_TX_DW14_LN0_B,			\
-				   _PORT_TX_DW14_LN0_C) +		\
-	      _BXT_LANE_OFFSET(lane))
+#define BXT_PORT_TX_DW14_LN(phy, ch, lane)	_MMIO_BXT_PHY_CH_LN(phy, ch, lane, \
+								    _PORT_TX_DW14_LN0_B, \
+								    _PORT_TX_DW14_LN0_C)
 
 /* UAIMI scratch pad register 1 */
 #define UAIMI_SPR1			_MMIO(0x4F074)
-- 
2.43.2

