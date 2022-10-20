Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 09D5B60652D
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Oct 2022 18:00:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AC0F10E455;
	Thu, 20 Oct 2022 16:00:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 09D8710E442
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Oct 2022 16:00:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666281635; x=1697817635;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=b+vC2VAFc/BoyiapoJpJqTXldrX8ByHH+5lSBUtng3g=;
 b=nZUJF2x8hDfdFhNMqlVJZ+XllIhLOoxIqkf6Cx1aLDfFOdbBd/0OFCdS
 8iwNTArVhBTwVOZ2edyFSBFwsiEG63Xc2OPSYLElTk0Aw9L4GQfi8miat
 JunsmRjECtNMavw8O6AdWVDy1jdrUR1MG4U6ri4tgrGIaxPbOPl0YRUtX
 ymW9HrTF7KlQWFkdqxkFPEjuVBW1/KMr2eK9Fd792VIFShPLOxJlf3MVT
 ch1H6zOne94JpkJuJ64DofL0tqFjONgtsWFn/g5Hjh+MJ35K+g/C1AL2u
 1H57r82pk0uLGZNxYJCm8AFPOKM3FSxjy5YEnU3225dPxNBz16opaOokY A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="308433736"
X-IronPort-AV: E=Sophos;i="5.95,199,1661842800"; d="scan'208";a="308433736"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2022 09:00:32 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="755219885"
X-IronPort-AV: E=Sophos;i="5.95,199,1661842800"; d="scan'208";a="755219885"
Received: from ideak-desk.fi.intel.com ([10.237.72.175])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2022 09:00:31 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 20 Oct 2022 19:00:22 +0300
Message-Id: <20221020160022.1823365-5-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20221020160022.1823365-1-imre.deak@intel.com>
References: <20221020160022.1823365-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 4/4] drm/i915/tgl+: Sanitize DKL PHY register
 definitions
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

Not all Dekel PHY registers have a lane instance, so having to specify
this when using them is awkward. It makes more sense to define each PHY
register with its full internal PHY offset where bits 15:12 is the lane
for lane-instanced PHY registers and just a register bank index for other
PHY registers. This way lane-instanced registers can be referred to with
the (tc_port, lane) parameters, while other registers just with a tc_port
parameter.

An additional benefit of this change is to prevent passing a Dekel
register to a generic MMIO access function or vice versa.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c      |  20 +-
 .../i915/display/intel_display_power_well.c   |   2 +-
 drivers/gpu/drm/i915/display/intel_dkl_phy.c  |  32 ++-
 drivers/gpu/drm/i915/display/intel_dkl_phy.h  |  10 +-
 .../gpu/drm/i915/display/intel_dkl_phy_regs.h | 189 +++++++++---------
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  50 ++---
 6 files changed, 154 insertions(+), 149 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 54142ca3e6947..e95bde5cf060e 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -1264,11 +1264,11 @@ static void tgl_dkl_phy_set_signal_levels(struct intel_encoder *encoder,
 	for (ln = 0; ln < 2; ln++) {
 		int level;
 
-		intel_dkl_phy_write(dev_priv, DKL_TX_PMD_LANE_SUS(tc_port), ln, 0);
+		intel_dkl_phy_write(dev_priv, DKL_TX_PMD_LANE_SUS(tc_port, ln), 0);
 
 		level = intel_ddi_level(encoder, crtc_state, 2*ln+0);
 
-		intel_dkl_phy_rmw(dev_priv, DKL_TX_DPCNTL0(tc_port), ln,
+		intel_dkl_phy_rmw(dev_priv, DKL_TX_DPCNTL0(tc_port, ln),
 				  DKL_TX_PRESHOOT_COEFF_MASK |
 				  DKL_TX_DE_EMPAHSIS_COEFF_MASK |
 				  DKL_TX_VSWING_CONTROL_MASK,
@@ -1278,7 +1278,7 @@ static void tgl_dkl_phy_set_signal_levels(struct intel_encoder *encoder,
 
 		level = intel_ddi_level(encoder, crtc_state, 2*ln+1);
 
-		intel_dkl_phy_rmw(dev_priv, DKL_TX_DPCNTL1(tc_port), ln,
+		intel_dkl_phy_rmw(dev_priv, DKL_TX_DPCNTL1(tc_port, ln),
 				  DKL_TX_PRESHOOT_COEFF_MASK |
 				  DKL_TX_DE_EMPAHSIS_COEFF_MASK |
 				  DKL_TX_VSWING_CONTROL_MASK,
@@ -1286,7 +1286,7 @@ static void tgl_dkl_phy_set_signal_levels(struct intel_encoder *encoder,
 				  DKL_TX_DE_EMPHASIS_COEFF(trans->entries[level].dkl.de_emphasis) |
 				  DKL_TX_VSWING_CONTROL(trans->entries[level].dkl.vswing));
 
-		intel_dkl_phy_rmw(dev_priv, DKL_TX_DPCNTL2(tc_port), ln,
+		intel_dkl_phy_rmw(dev_priv, DKL_TX_DPCNTL2(tc_port, ln),
 				  DKL_TX_DP20BITMODE, 0);
 
 		if (IS_ALDERLAKE_P(dev_priv)) {
@@ -1305,7 +1305,7 @@ static void tgl_dkl_phy_set_signal_levels(struct intel_encoder *encoder,
 				val |= DKL_TX_DPCNTL2_CFG_LOADGENSELECT_TX2(0);
 			}
 
-			intel_dkl_phy_rmw(dev_priv, DKL_TX_DPCNTL2(tc_port), ln,
+			intel_dkl_phy_rmw(dev_priv, DKL_TX_DPCNTL2(tc_port, ln),
 					  DKL_TX_DPCNTL2_CFG_LOADGENSELECT_TX1_MASK |
 					  DKL_TX_DPCNTL2_CFG_LOADGENSELECT_TX2_MASK,
 					  val);
@@ -2018,8 +2018,8 @@ icl_program_mg_dp_mode(struct intel_digital_port *dig_port,
 		return;
 
 	if (DISPLAY_VER(dev_priv) >= 12) {
-		ln0 = intel_dkl_phy_read(dev_priv, DKL_DP_MODE(tc_port), 0);
-		ln1 = intel_dkl_phy_read(dev_priv, DKL_DP_MODE(tc_port), 1);
+		ln0 = intel_dkl_phy_read(dev_priv, DKL_DP_MODE(tc_port, 0));
+		ln1 = intel_dkl_phy_read(dev_priv, DKL_DP_MODE(tc_port, 1));
 	} else {
 		ln0 = intel_de_read(dev_priv, MG_DP_MODE(0, tc_port));
 		ln1 = intel_de_read(dev_priv, MG_DP_MODE(1, tc_port));
@@ -2080,8 +2080,8 @@ icl_program_mg_dp_mode(struct intel_digital_port *dig_port,
 	}
 
 	if (DISPLAY_VER(dev_priv) >= 12) {
-		intel_dkl_phy_write(dev_priv, DKL_DP_MODE(tc_port), 0, ln0);
-		intel_dkl_phy_write(dev_priv, DKL_DP_MODE(tc_port), 1, ln1);
+		intel_dkl_phy_write(dev_priv, DKL_DP_MODE(tc_port, 0), ln0);
+		intel_dkl_phy_write(dev_priv, DKL_DP_MODE(tc_port, 1), ln1);
 	} else {
 		intel_de_write(dev_priv, MG_DP_MODE(0, tc_port), ln0);
 		intel_de_write(dev_priv, MG_DP_MODE(1, tc_port), ln1);
@@ -3086,7 +3086,7 @@ static void adlp_tbt_to_dp_alt_switch_wa(struct intel_encoder *encoder)
 	int ln;
 
 	for (ln = 0; ln < 2; ln++)
-		intel_dkl_phy_rmw(i915, DKL_PCS_DW5(tc_port), ln, DKL_PCS_DW5_CORE_SOFTRESET, 0);
+		intel_dkl_phy_rmw(i915, DKL_PCS_DW5(tc_port, ln), DKL_PCS_DW5_CORE_SOFTRESET, 0);
 }
 
 static void intel_ddi_prepare_link_retrain(struct intel_dp *intel_dp,
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 86974c515206e..8710dd41ffd4c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -532,7 +532,7 @@ icl_tc_phy_aux_power_well_enable(struct drm_i915_private *dev_priv,
 
 		tc_port = TGL_AUX_PW_TO_TC_PORT(i915_power_well_instance(power_well)->hsw.idx);
 
-		if (wait_for(intel_dkl_phy_read(dev_priv, DKL_CMN_UC_DW_27(tc_port), 2) &
+		if (wait_for(intel_dkl_phy_read(dev_priv, DKL_CMN_UC_DW_27(tc_port)) &
 			     DKL_CMN_UC_DW27_UC_HEALTH, 1))
 			drm_warn(&dev_priv->drm,
 				 "Timeout waiting TC uC health\n");
diff --git a/drivers/gpu/drm/i915/display/intel_dkl_phy.c b/drivers/gpu/drm/i915/display/intel_dkl_phy.c
index 28efef12904cf..ef5bec5384fae 100644
--- a/drivers/gpu/drm/i915/display/intel_dkl_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_dkl_phy.c
@@ -11,7 +11,7 @@
 #include "intel_dkl_phy.h"
 #include "intel_dkl_phy_regs.h"
 
-static void dkl_phy_set_hip_idx(struct drm_i915_private *i915, i915_reg_t reg, int idx)
+static void dkl_phy_set_hip_idx(struct drm_i915_private *i915, struct intel_dkl_phy_reg reg)
 {
 	enum tc_port tc_port = DKL_REG_TC_PORT(reg);
 
@@ -19,27 +19,26 @@ static void dkl_phy_set_hip_idx(struct drm_i915_private *i915, i915_reg_t reg, i
 
 	intel_de_write(i915,
 		       HIP_INDEX_REG(tc_port),
-		       HIP_INDEX_VAL(tc_port, idx));
+		       HIP_INDEX_VAL(tc_port, reg.bank_idx));
 }
 
 /**
  * intel_dkl_phy_read - read a Dekel PHY register
  * @i915: i915 device instance
  * @reg: Dekel PHY register
- * @ln: lane instance of @reg
  *
  * Read the @reg Dekel PHY register.
  *
  * Returns the read value.
  */
-u32 intel_dkl_phy_read(struct drm_i915_private *i915, i915_reg_t reg, int ln)
+u32 intel_dkl_phy_read(struct drm_i915_private *i915, struct intel_dkl_phy_reg reg)
 {
 	u32 val;
 
 	spin_lock(&i915->display.dkl.phy_lock);
 
-	dkl_phy_set_hip_idx(i915, reg, ln);
-	val = intel_de_read(i915, reg);
+	dkl_phy_set_hip_idx(i915, reg);
+	val = intel_de_read(i915, DKL_REG_MMIO(reg));
 
 	spin_unlock(&i915->display.dkl.phy_lock);
 
@@ -50,17 +49,16 @@ u32 intel_dkl_phy_read(struct drm_i915_private *i915, i915_reg_t reg, int ln)
  * intel_dkl_phy_write - write a Dekel PHY register
  * @i915: i915 device instance
  * @reg: Dekel PHY register
- * @ln: lane instance of @reg
  * @val: value to write
  *
  * Write @val to the @reg Dekel PHY register.
  */
-void intel_dkl_phy_write(struct drm_i915_private *i915, i915_reg_t reg, int ln, u32 val)
+void intel_dkl_phy_write(struct drm_i915_private *i915, struct intel_dkl_phy_reg reg, u32 val)
 {
 	spin_lock(&i915->display.dkl.phy_lock);
 
-	dkl_phy_set_hip_idx(i915, reg, ln);
-	intel_de_write(i915, reg, val);
+	dkl_phy_set_hip_idx(i915, reg);
+	intel_de_write(i915, DKL_REG_MMIO(reg), val);
 
 	spin_unlock(&i915->display.dkl.phy_lock);
 }
@@ -69,19 +67,18 @@ void intel_dkl_phy_write(struct drm_i915_private *i915, i915_reg_t reg, int ln,
  * intel_dkl_phy_rmw - read-modify-write a Dekel PHY register
  * @i915: i915 device instance
  * @reg: Dekel PHY register
- * @ln: lane instance of @reg
  * @clear: mask to clear
  * @set: mask to set
  *
  * Read the @reg Dekel PHY register, clearing then setting the @clear/@set bits in it, and writing
  * this value back to the register if the value differs from the read one.
  */
-void intel_dkl_phy_rmw(struct drm_i915_private *i915, i915_reg_t reg, int ln, u32 clear, u32 set)
+void intel_dkl_phy_rmw(struct drm_i915_private *i915, struct intel_dkl_phy_reg reg, u32 clear, u32 set)
 {
 	spin_lock(&i915->display.dkl.phy_lock);
 
-	dkl_phy_set_hip_idx(i915, reg, ln);
-	intel_de_rmw(i915, reg, clear, set);
+	dkl_phy_set_hip_idx(i915, reg);
+	intel_de_rmw(i915, DKL_REG_MMIO(reg), clear, set);
 
 	spin_unlock(&i915->display.dkl.phy_lock);
 }
@@ -90,16 +87,15 @@ void intel_dkl_phy_rmw(struct drm_i915_private *i915, i915_reg_t reg, int ln, u3
  * intel_dkl_phy_posting_read - do a posting read from a Dekel PHY register
  * @i915: i915 device instance
  * @reg: Dekel PHY register
- * @ln: lane instance of @reg
  *
  * Read the @reg Dekel PHY register without returning the read value.
  */
-void intel_dkl_phy_posting_read(struct drm_i915_private *i915, i915_reg_t reg, int ln)
+void intel_dkl_phy_posting_read(struct drm_i915_private *i915, struct intel_dkl_phy_reg reg)
 {
 	spin_lock(&i915->display.dkl.phy_lock);
 
-	dkl_phy_set_hip_idx(i915, reg, ln);
-	intel_de_posting_read(i915, reg);
+	dkl_phy_set_hip_idx(i915, reg);
+	intel_de_posting_read(i915, DKL_REG_MMIO(reg));
 
 	spin_unlock(&i915->display.dkl.phy_lock);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dkl_phy.h b/drivers/gpu/drm/i915/display/intel_dkl_phy.h
index 1c6c638de7068..c0d606b09601d 100644
--- a/drivers/gpu/drm/i915/display/intel_dkl_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_dkl_phy.h
@@ -8,13 +8,13 @@
 
 #include <linux/types.h>
 
-#include "i915_reg_defs.h"
+#include "intel_dkl_phy_regs.h"
 
 struct drm_i915_private;
 
-u32 intel_dkl_phy_read(struct drm_i915_private *i915, i915_reg_t reg, int ln);
-void intel_dkl_phy_write(struct drm_i915_private *i915, i915_reg_t reg, int ln, u32 val);
-void intel_dkl_phy_rmw(struct drm_i915_private *i915, i915_reg_t reg, int ln, u32 clear, u32 set);
-void intel_dkl_phy_posting_read(struct drm_i915_private *i915, i915_reg_t reg, int ln);
+u32 intel_dkl_phy_read(struct drm_i915_private *i915, struct intel_dkl_phy_reg reg);
+void intel_dkl_phy_write(struct drm_i915_private *i915, struct intel_dkl_phy_reg reg, u32 val);
+void intel_dkl_phy_rmw(struct drm_i915_private *i915, struct intel_dkl_phy_reg reg, u32 clear, u32 set);
+void intel_dkl_phy_posting_read(struct drm_i915_private *i915, struct intel_dkl_phy_reg reg);
 
 #endif /* __INTEL_DKL_PHY_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_dkl_phy_regs.h b/drivers/gpu/drm/i915/display/intel_dkl_phy_regs.h
index a808c74421467..ac650f7205c6f 100644
--- a/drivers/gpu/drm/i915/display/intel_dkl_phy_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_dkl_phy_regs.h
@@ -6,6 +6,13 @@
 #ifndef __INTEL_DKL_PHY_REGS__
 #define __INTEL_DKL_PHY_REGS__
 
+#include <linux/types.h>
+
+struct intel_dkl_phy_reg {
+	u32 reg:24;
+	u32 bank_idx:4;
+};
+
 #define _DKL_PHY1_BASE					0x168000
 #define _DKL_PHY2_BASE					0x169000
 #define _DKL_PHY3_BASE					0x16A000
@@ -17,18 +24,36 @@
 	(((reg).reg - _DKL_PHY1_BASE) / (_DKL_PHY2_BASE - _DKL_PHY1_BASE))
 
 /* DEKEL PHY MMIO Address = Phy base + (internal address & ~index_mask) */
-#define _DKL_PCS_DW5					0x14
-#define DKL_PCS_DW5(tc_port)				_MMIO(_PORT(tc_port, \
-								    _DKL_PHY1_BASE, \
-								    _DKL_PHY2_BASE) + \
-							      _DKL_PCS_DW5)
+#define DKL_REG_MMIO(reg)				_MMIO(reg.reg)
+
+#define _DKL_REG_PHY_BASE(tc_port)			_PORT(tc_port, \
+							      _DKL_PHY1_BASE, \
+							      _DKL_PHY2_BASE)
+
+#define _DKL_BANK_SHIFT					12
+#define _DKL_REG_BANK_OFFSET(phy_offset)		((phy_offset) & ((1 << _DKL_BANK_SHIFT) - 1))
+#define _DKL_REG_BANK_IDX(phy_offset)			(((phy_offset) >> _DKL_BANK_SHIFT) & 0xf)
+
+#define _DKL_REG(tc_port, phy_offset)	\
+	((const struct intel_dkl_phy_reg) { \
+		.reg = _DKL_REG_PHY_BASE(tc_port) + \
+		       _DKL_REG_BANK_OFFSET(phy_offset), \
+		.bank_idx = _DKL_REG_BANK_IDX(phy_offset), \
+	})
+
+#define _DKL_REG_LN(tc_port, ln_idx, ln0_offs, ln1_offs) \
+	_DKL_REG(tc_port, (ln0_offs) + (ln_idx) * ((ln1_offs) - (ln0_offs)))
+
+#define _DKL_PCS_DW5_LN0				0x0014
+#define _DKL_PCS_DW5_LN1				0x1014
+#define DKL_PCS_DW5(tc_port, ln)			_DKL_REG_LN(tc_port, ln, \
+								    _DKL_PCS_DW5_LN0, \
+								    _DKL_PCS_DW5_LN1)
 #define   DKL_PCS_DW5_CORE_SOFTRESET			REG_BIT(11)
 
-#define _DKL_PLL_DIV0					0x200
-#define DKL_PLL_DIV0(tc_port)				_MMIO(_PORT(tc_port, \
-								    _DKL_PHY1_BASE, \
-								    _DKL_PHY2_BASE) + \
-							      _DKL_PLL_DIV0)
+#define _DKL_PLL_DIV0					0x2200
+#define DKL_PLL_DIV0(tc_port)				_DKL_REG(tc_port, \
+								 _DKL_PLL_DIV0)
 #define   DKL_PLL_DIV0_AFC_STARTUP_MASK			REG_GENMASK(27, 25)
 #define   DKL_PLL_DIV0_AFC_STARTUP(val)			REG_FIELD_PREP(DKL_PLL_DIV0_AFC_STARTUP_MASK, (val))
 #define   DKL_PLL_DIV0_INTEG_COEFF(x)			((x) << 16)
@@ -45,21 +70,17 @@
 							 DKL_PLL_DIV0_FBPREDIV_MASK | \
 							 DKL_PLL_DIV0_FBDIV_INT_MASK)
 
-#define _DKL_PLL_DIV1					0x204
-#define DKL_PLL_DIV1(tc_port)				_MMIO(_PORT(tc_port, \
-								    _DKL_PHY1_BASE, \
-								    _DKL_PHY2_BASE) + \
-							      _DKL_PLL_DIV1)
+#define _DKL_PLL_DIV1					0x2204
+#define DKL_PLL_DIV1(tc_port)				_DKL_REG(tc_port, \
+								 _DKL_PLL_DIV1)
 #define   DKL_PLL_DIV1_IREF_TRIM(x)			((x) << 16)
 #define   DKL_PLL_DIV1_IREF_TRIM_MASK			(0x1F << 16)
 #define   DKL_PLL_DIV1_TDC_TARGET_CNT(x)		((x) << 0)
 #define   DKL_PLL_DIV1_TDC_TARGET_CNT_MASK		(0xFF << 0)
 
-#define _DKL_PLL_SSC					0x210
-#define DKL_PLL_SSC(tc_port)				_MMIO(_PORT(tc_port, \
-								    _DKL_PHY1_BASE, \
-								    _DKL_PHY2_BASE) + \
-							      _DKL_PLL_SSC)
+#define _DKL_PLL_SSC					0x2210
+#define DKL_PLL_SSC(tc_port)				_DKL_REG(tc_port, \
+								 _DKL_PLL_SSC)
 #define   DKL_PLL_SSC_IREF_NDIV_RATIO(x)		((x) << 29)
 #define   DKL_PLL_SSC_IREF_NDIV_RATIO_MASK		(0x7 << 29)
 #define   DKL_PLL_SSC_STEP_LEN(x)			((x) << 16)
@@ -68,52 +89,42 @@
 #define   DKL_PLL_SSC_STEP_NUM_MASK			(0x7 << 11)
 #define   DKL_PLL_SSC_EN				(1 << 9)
 
-#define _DKL_PLL_BIAS					0x214
-#define DKL_PLL_BIAS(tc_port)				_MMIO(_PORT(tc_port, \
-								    _DKL_PHY1_BASE, \
-								    _DKL_PHY2_BASE) + \
-							      _DKL_PLL_BIAS)
+#define _DKL_PLL_BIAS					0x2214
+#define DKL_PLL_BIAS(tc_port)				_DKL_REG(tc_port, \
+								 _DKL_PLL_BIAS)
 #define   DKL_PLL_BIAS_FRAC_EN_H			(1 << 30)
 #define   DKL_PLL_BIAS_FBDIV_SHIFT			(8)
 #define   DKL_PLL_BIAS_FBDIV_FRAC(x)			((x) << DKL_PLL_BIAS_FBDIV_SHIFT)
 #define   DKL_PLL_BIAS_FBDIV_FRAC_MASK			(0x3FFFFF << DKL_PLL_BIAS_FBDIV_SHIFT)
 
-#define _DKL_PLL_TDC_COLDST_BIAS			0x218
-#define DKL_PLL_TDC_COLDST_BIAS(tc_port)		_MMIO(_PORT(tc_port, \
-								    _DKL_PHY1_BASE, \
-								    _DKL_PHY2_BASE) + \
-							      _DKL_PLL_TDC_COLDST_BIAS)
+#define _DKL_PLL_TDC_COLDST_BIAS			0x2218
+#define DKL_PLL_TDC_COLDST_BIAS(tc_port)		_DKL_REG(tc_port, \
+								 _DKL_PLL_TDC_COLDST_BIAS)
 #define   DKL_PLL_TDC_SSC_STEP_SIZE(x)			((x) << 8)
 #define   DKL_PLL_TDC_SSC_STEP_SIZE_MASK		(0xFF << 8)
 #define   DKL_PLL_TDC_FEED_FWD_GAIN(x)			((x) << 0)
 #define   DKL_PLL_TDC_FEED_FWD_GAIN_MASK		(0xFF << 0)
 
-#define _DKL_REFCLKIN_CTL				0x12C
-#define DKL_REFCLKIN_CTL(tc_port)			_MMIO(_PORT(tc_port, \
-								    _DKL_PHY1_BASE, \
-								    _DKL_PHY2_BASE) + \
-							      _DKL_REFCLKIN_CTL)
+#define _DKL_REFCLKIN_CTL				0x212C
+#define DKL_REFCLKIN_CTL(tc_port)			_DKL_REG(tc_port, \
+								 _DKL_REFCLKIN_CTL)
 /* Bits are the same as MG_REFCLKIN_CTL */
 
-#define _DKL_CLKTOP2_HSCLKCTL				0xD4
-#define DKL_CLKTOP2_HSCLKCTL(tc_port)			_MMIO(_PORT(tc_port, \
-								    _DKL_PHY1_BASE, \
-								    _DKL_PHY2_BASE) + \
-							      _DKL_CLKTOP2_HSCLKCTL)
+#define _DKL_CLKTOP2_HSCLKCTL				0x20D4
+#define DKL_CLKTOP2_HSCLKCTL(rc_port)			_DKL_REG(tc_port, \
+								 _DKL_CLKTOP2_HSCLKCTL)
 /* Bits are the same as MG_CLKTOP2_HSCLKCTL */
 
-#define _DKL_CLKTOP2_CORECLKCTL1			0xD8
-#define DKL_CLKTOP2_CORECLKCTL1(tc_port)		_MMIO(_PORT(tc_port, \
-								    _DKL_PHY1_BASE, \
-								    _DKL_PHY2_BASE) + \
-							      _DKL_CLKTOP2_CORECLKCTL1)
+#define _DKL_CLKTOP2_CORECLKCTL1			0x20D8
+#define DKL_CLKTOP2_CORECLKCTL1(tc_port)		_DKL_REG(tc_port, \
+								 _DKL_CLKTOP2_CORECLKCTL1)
 /* Bits are the same as MG_CLKTOP2_CORECLKCTL1 */
 
-#define _DKL_TX_DPCNTL0					0x2C0
-#define DKL_TX_DPCNTL0(tc_port)				_MMIO(_PORT(tc_port, \
-								    _DKL_PHY1_BASE, \
-								    _DKL_PHY2_BASE) + \
-							      _DKL_TX_DPCNTL0)
+#define _DKL_TX_DPCNTL0_LN0				0x02C0
+#define _DKL_TX_DPCNTL0_LN1				0x12C0
+#define DKL_TX_DPCNTL0(tc_port, ln)			_DKL_REG_LN(tc_port, ln, \
+								    _DKL_TX_DPCNTL0_LN0, \
+								    _DKL_TX_DPCNTL0_LN1)
 #define  DKL_TX_PRESHOOT_COEFF(x)			((x) << 13)
 #define  DKL_TX_PRESHOOT_COEFF_MASK			(0x1f << 13)
 #define  DKL_TX_DE_EMPHASIS_COEFF(x)			((x) << 8)
@@ -121,60 +132,58 @@
 #define  DKL_TX_VSWING_CONTROL(x)			((x) << 0)
 #define  DKL_TX_VSWING_CONTROL_MASK			(0x7 << 0)
 
-#define _DKL_TX_DPCNTL1					0x2C4
-#define DKL_TX_DPCNTL1(tc_port)				_MMIO(_PORT(tc_port, \
-								    _DKL_PHY1_BASE, \
-								    _DKL_PHY2_BASE) + \
-							      _DKL_TX_DPCNTL1)
+#define _DKL_TX_DPCNTL1_LN0				0x02C4
+#define _DKL_TX_DPCNTL1_LN1				0x12C4
+#define DKL_TX_DPCNTL1(tc_port, ln)			_DKL_REG_LN(tc_port, ln, \
+								    _DKL_TX_DPCNTL1_LN0, \
+								    _DKL_TX_DPCNTL1_LN1)
 /* Bits are the same as DKL_TX_DPCNTRL0 */
 
-#define _DKL_TX_DPCNTL2					0x2C8
-#define DKL_TX_DPCNTL2(tc_port)				_MMIO(_PORT(tc_port, \
-								    _DKL_PHY1_BASE, \
-								    _DKL_PHY2_BASE) + \
-							      _DKL_TX_DPCNTL2)
+#define _DKL_TX_DPCNTL2_LN0				0x02C8
+#define _DKL_TX_DPCNTL2_LN1				0x12C8
+#define DKL_TX_DPCNTL2(tc_port, ln)			_DKL_REG_LN(tc_port, ln, \
+								    _DKL_TX_DPCNTL2_LN0, \
+								    _DKL_TX_DPCNTL2_LN1)
 #define  DKL_TX_DP20BITMODE				REG_BIT(2)
 #define  DKL_TX_DPCNTL2_CFG_LOADGENSELECT_TX1_MASK	REG_GENMASK(4, 3)
 #define  DKL_TX_DPCNTL2_CFG_LOADGENSELECT_TX1(val)	REG_FIELD_PREP(DKL_TX_DPCNTL2_CFG_LOADGENSELECT_TX1_MASK, (val))
 #define  DKL_TX_DPCNTL2_CFG_LOADGENSELECT_TX2_MASK	REG_GENMASK(6, 5)
 #define  DKL_TX_DPCNTL2_CFG_LOADGENSELECT_TX2(val)	REG_FIELD_PREP(DKL_TX_DPCNTL2_CFG_LOADGENSELECT_TX2_MASK, (val))
 
-#define _DKL_TX_FW_CALIB				0x2F8
-#define DKL_TX_FW_CALIB(tc_port)			_MMIO(_PORT(tc_port, \
-								    _DKL_PHY1_BASE, \
-								    _DKL_PHY2_BASE) + \
-							      _DKL_TX_FW_CALIB)
+#define _DKL_TX_FW_CALIB_LN0				0x02F8
+#define _DKL_TX_FW_CALIB_LN1				0x12F8
+#define DKL_TX_FW_CALIB(tc_port, ln)			_DKL_REG_LN(tc_port, ln, \
+								    _DKL_TX_FW_CALIB_LN0, \
+								    _DKL_TX_FW_CALIB_LN1)
 #define  DKL_TX_CFG_DISABLE_WAIT_INIT			(1 << 7)
 
-#define _DKL_TX_PMD_LANE_SUS				0xD00
-#define DKL_TX_PMD_LANE_SUS(tc_port)			_MMIO(_PORT(tc_port, \
-								    _DKL_PHY1_BASE, \
-								    _DKL_PHY2_BASE) + \
-							      _DKL_TX_PMD_LANE_SUS)
+#define _DKL_TX_PMD_LANE_SUS_LN0			0x0D00
+#define _DKL_TX_PMD_LANE_SUS_LN1			0x1D00
+#define DKL_TX_PMD_LANE_SUS(tc_port, ln)		_DKL_REG_LN(tc_port, ln, \
+								    _DKL_TX_PMD_LANE_SUS_LN0, \
+								    _DKL_TX_PMD_LANE_SUS_LN1)
 
-#define _DKL_TX_DW17					0xDC4
-#define DKL_TX_DW17(tc_port)				_MMIO(_PORT(tc_port, \
-								    _DKL_PHY1_BASE, \
-								    _DKL_PHY2_BASE) + \
-							      _DKL_TX_DW17)
+#define _DKL_TX_DW17_LN0				0x0DC4
+#define _DKL_TX_DW17_LN1				0x1DC4
+#define DKL_TX_DW17(tc_port, ln)			_DKL_REG_LN(tc_port, ln, \
+								    _DKL_TX_DW17_LN0, \
+								    _DKL_TX_DW17_LN1)
 
-#define _DKL_TX_DW18					0xDC8
-#define DKL_TX_DW18(tc_port)				_MMIO(_PORT(tc_port, \
-								    _DKL_PHY1_BASE, \
-								    _DKL_PHY2_BASE) + \
-							      _DKL_TX_DW18)
+#define _DKL_TX_DW18_LN0				0x0DC8
+#define _DKL_TX_DW18_LN1				0x1DC8
+#define DKL_TX_DW18(tc_port, ln)			_DKL_REG_LN(tc_port, ln, \
+								    _DKL_TX_DW18_LN0, \
+								    _DKL_TX_DW18_LN1)
 
-#define _DKL_DP_MODE					0xA0
-#define DKL_DP_MODE(tc_port)				_MMIO(_PORT(tc_port, \
-								    _DKL_PHY1_BASE, \
-								    _DKL_PHY2_BASE) + \
-							      _DKL_DP_MODE)
+#define _DKL_DP_MODE_LN0				0x00A0
+#define _DKL_DP_MODE_LN1				0x10A0
+#define DKL_DP_MODE(tc_port, ln)			_DKL_REG_LN(tc_port, ln, \
+								    _DKL_DP_MODE_LN0, \
+								    _DKL_DP_MODE_LN1)
 
-#define _DKL_CMN_UC_DW27				0x36C
-#define DKL_CMN_UC_DW_27(tc_port)			_MMIO(_PORT(tc_port, \
-								    _DKL_PHY1_BASE, \
-								    _DKL_PHY2_BASE) + \
-							      _DKL_CMN_UC_DW27)
+#define _DKL_CMN_UC_DW27				0x236C
+#define DKL_CMN_UC_DW_27(tc_port)			_DKL_REG(tc_port, \
+								 _DKL_CMN_UC_DW27)
 #define  DKL_CMN_UC_DW27_UC_HEALTH			(0x1 << 15)
 
 /*
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 8df58f37e217c..7c6c094a0a01d 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -3489,11 +3489,11 @@ static bool dkl_pll_get_hw_state(struct drm_i915_private *dev_priv,
 	 * they are on different building blocks
 	 */
 	hw_state->mg_refclkin_ctl = intel_dkl_phy_read(dev_priv,
-						       DKL_REFCLKIN_CTL(tc_port), 2);
+						       DKL_REFCLKIN_CTL(tc_port));
 	hw_state->mg_refclkin_ctl &= MG_REFCLKIN_CTL_OD_2_MUX_MASK;
 
 	hw_state->mg_clktop2_hsclkctl =
-		intel_dkl_phy_read(dev_priv, DKL_CLKTOP2_HSCLKCTL(tc_port), 2);
+		intel_dkl_phy_read(dev_priv, DKL_CLKTOP2_HSCLKCTL(tc_port));
 	hw_state->mg_clktop2_hsclkctl &=
 		MG_CLKTOP2_HSCLKCTL_TLINEDRV_CLKSEL_MASK |
 		MG_CLKTOP2_HSCLKCTL_CORE_INPUTSEL_MASK |
@@ -3501,32 +3501,32 @@ static bool dkl_pll_get_hw_state(struct drm_i915_private *dev_priv,
 		MG_CLKTOP2_HSCLKCTL_DSDIV_RATIO_MASK;
 
 	hw_state->mg_clktop2_coreclkctl1 =
-		intel_dkl_phy_read(dev_priv, DKL_CLKTOP2_CORECLKCTL1(tc_port), 2);
+		intel_dkl_phy_read(dev_priv, DKL_CLKTOP2_CORECLKCTL1(tc_port));
 	hw_state->mg_clktop2_coreclkctl1 &=
 		MG_CLKTOP2_CORECLKCTL1_A_DIVRATIO_MASK;
 
-	hw_state->mg_pll_div0 = intel_dkl_phy_read(dev_priv, DKL_PLL_DIV0(tc_port), 2);
+	hw_state->mg_pll_div0 = intel_dkl_phy_read(dev_priv, DKL_PLL_DIV0(tc_port));
 	val = DKL_PLL_DIV0_MASK;
 	if (dev_priv->display.vbt.override_afc_startup)
 		val |= DKL_PLL_DIV0_AFC_STARTUP_MASK;
 	hw_state->mg_pll_div0 &= val;
 
-	hw_state->mg_pll_div1 = intel_dkl_phy_read(dev_priv, DKL_PLL_DIV1(tc_port), 2);
+	hw_state->mg_pll_div1 = intel_dkl_phy_read(dev_priv, DKL_PLL_DIV1(tc_port));
 	hw_state->mg_pll_div1 &= (DKL_PLL_DIV1_IREF_TRIM_MASK |
 				  DKL_PLL_DIV1_TDC_TARGET_CNT_MASK);
 
-	hw_state->mg_pll_ssc = intel_dkl_phy_read(dev_priv, DKL_PLL_SSC(tc_port), 2);
+	hw_state->mg_pll_ssc = intel_dkl_phy_read(dev_priv, DKL_PLL_SSC(tc_port));
 	hw_state->mg_pll_ssc &= (DKL_PLL_SSC_IREF_NDIV_RATIO_MASK |
 				 DKL_PLL_SSC_STEP_LEN_MASK |
 				 DKL_PLL_SSC_STEP_NUM_MASK |
 				 DKL_PLL_SSC_EN);
 
-	hw_state->mg_pll_bias = intel_dkl_phy_read(dev_priv, DKL_PLL_BIAS(tc_port), 2);
+	hw_state->mg_pll_bias = intel_dkl_phy_read(dev_priv, DKL_PLL_BIAS(tc_port));
 	hw_state->mg_pll_bias &= (DKL_PLL_BIAS_FRAC_EN_H |
 				  DKL_PLL_BIAS_FBDIV_FRAC_MASK);
 
 	hw_state->mg_pll_tdc_coldst_bias =
-		intel_dkl_phy_read(dev_priv, DKL_PLL_TDC_COLDST_BIAS(tc_port), 2);
+		intel_dkl_phy_read(dev_priv, DKL_PLL_TDC_COLDST_BIAS(tc_port));
 	hw_state->mg_pll_tdc_coldst_bias &= (DKL_PLL_TDC_SSC_STEP_SIZE_MASK |
 					     DKL_PLL_TDC_FEED_FWD_GAIN_MASK);
 
@@ -3715,57 +3715,57 @@ static void dkl_pll_write(struct drm_i915_private *dev_priv,
 	 * though on different building block
 	 */
 	/* All the registers are RMW */
-	val = intel_dkl_phy_read(dev_priv, DKL_REFCLKIN_CTL(tc_port), 2);
+	val = intel_dkl_phy_read(dev_priv, DKL_REFCLKIN_CTL(tc_port));
 	val &= ~MG_REFCLKIN_CTL_OD_2_MUX_MASK;
 	val |= hw_state->mg_refclkin_ctl;
-	intel_dkl_phy_write(dev_priv, DKL_REFCLKIN_CTL(tc_port), 2, val);
+	intel_dkl_phy_write(dev_priv, DKL_REFCLKIN_CTL(tc_port), val);
 
-	val = intel_dkl_phy_read(dev_priv, DKL_CLKTOP2_CORECLKCTL1(tc_port), 2);
+	val = intel_dkl_phy_read(dev_priv, DKL_CLKTOP2_CORECLKCTL1(tc_port));
 	val &= ~MG_CLKTOP2_CORECLKCTL1_A_DIVRATIO_MASK;
 	val |= hw_state->mg_clktop2_coreclkctl1;
-	intel_dkl_phy_write(dev_priv, DKL_CLKTOP2_CORECLKCTL1(tc_port), 2, val);
+	intel_dkl_phy_write(dev_priv, DKL_CLKTOP2_CORECLKCTL1(tc_port), val);
 
-	val = intel_dkl_phy_read(dev_priv, DKL_CLKTOP2_HSCLKCTL(tc_port), 2);
+	val = intel_dkl_phy_read(dev_priv, DKL_CLKTOP2_HSCLKCTL(tc_port));
 	val &= ~(MG_CLKTOP2_HSCLKCTL_TLINEDRV_CLKSEL_MASK |
 		 MG_CLKTOP2_HSCLKCTL_CORE_INPUTSEL_MASK |
 		 MG_CLKTOP2_HSCLKCTL_HSDIV_RATIO_MASK |
 		 MG_CLKTOP2_HSCLKCTL_DSDIV_RATIO_MASK);
 	val |= hw_state->mg_clktop2_hsclkctl;
-	intel_dkl_phy_write(dev_priv, DKL_CLKTOP2_HSCLKCTL(tc_port), 2, val);
+	intel_dkl_phy_write(dev_priv, DKL_CLKTOP2_HSCLKCTL(tc_port), val);
 
 	val = DKL_PLL_DIV0_MASK;
 	if (dev_priv->display.vbt.override_afc_startup)
 		val |= DKL_PLL_DIV0_AFC_STARTUP_MASK;
-	intel_dkl_phy_rmw(dev_priv, DKL_PLL_DIV0(tc_port), 2, val,
-			 hw_state->mg_pll_div0);
+	intel_dkl_phy_rmw(dev_priv, DKL_PLL_DIV0(tc_port), val,
+			  hw_state->mg_pll_div0);
 
-	val = intel_dkl_phy_read(dev_priv, DKL_PLL_DIV1(tc_port), 2);
+	val = intel_dkl_phy_read(dev_priv, DKL_PLL_DIV1(tc_port));
 	val &= ~(DKL_PLL_DIV1_IREF_TRIM_MASK |
 		 DKL_PLL_DIV1_TDC_TARGET_CNT_MASK);
 	val |= hw_state->mg_pll_div1;
-	intel_dkl_phy_write(dev_priv, DKL_PLL_DIV1(tc_port), 2, val);
+	intel_dkl_phy_write(dev_priv, DKL_PLL_DIV1(tc_port), val);
 
-	val = intel_dkl_phy_read(dev_priv, DKL_PLL_SSC(tc_port), 2);
+	val = intel_dkl_phy_read(dev_priv, DKL_PLL_SSC(tc_port));
 	val &= ~(DKL_PLL_SSC_IREF_NDIV_RATIO_MASK |
 		 DKL_PLL_SSC_STEP_LEN_MASK |
 		 DKL_PLL_SSC_STEP_NUM_MASK |
 		 DKL_PLL_SSC_EN);
 	val |= hw_state->mg_pll_ssc;
-	intel_dkl_phy_write(dev_priv, DKL_PLL_SSC(tc_port), 2, val);
+	intel_dkl_phy_write(dev_priv, DKL_PLL_SSC(tc_port), val);
 
-	val = intel_dkl_phy_read(dev_priv, DKL_PLL_BIAS(tc_port), 2);
+	val = intel_dkl_phy_read(dev_priv, DKL_PLL_BIAS(tc_port));
 	val &= ~(DKL_PLL_BIAS_FRAC_EN_H |
 		 DKL_PLL_BIAS_FBDIV_FRAC_MASK);
 	val |= hw_state->mg_pll_bias;
-	intel_dkl_phy_write(dev_priv, DKL_PLL_BIAS(tc_port), 2, val);
+	intel_dkl_phy_write(dev_priv, DKL_PLL_BIAS(tc_port), val);
 
-	val = intel_dkl_phy_read(dev_priv, DKL_PLL_TDC_COLDST_BIAS(tc_port), 2);
+	val = intel_dkl_phy_read(dev_priv, DKL_PLL_TDC_COLDST_BIAS(tc_port));
 	val &= ~(DKL_PLL_TDC_SSC_STEP_SIZE_MASK |
 		 DKL_PLL_TDC_FEED_FWD_GAIN_MASK);
 	val |= hw_state->mg_pll_tdc_coldst_bias;
-	intel_dkl_phy_write(dev_priv, DKL_PLL_TDC_COLDST_BIAS(tc_port), 2, val);
+	intel_dkl_phy_write(dev_priv, DKL_PLL_TDC_COLDST_BIAS(tc_port), val);
 
-	intel_dkl_phy_posting_read(dev_priv, DKL_PLL_TDC_COLDST_BIAS(tc_port), 2);
+	intel_dkl_phy_posting_read(dev_priv, DKL_PLL_TDC_COLDST_BIAS(tc_port));
 }
 
 static void icl_pll_power_enable(struct drm_i915_private *dev_priv,
-- 
2.37.1

