Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A5D415D90C
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2020 15:09:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 957936F930;
	Fri, 14 Feb 2020 14:09:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14A9A6F930
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Feb 2020 14:09:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Feb 2020 06:09:20 -0800
X-IronPort-AV: E=Sophos;i="5.70,440,1574150400"; d="scan'208";a="223025903"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Feb 2020 06:09:18 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 Feb 2020 16:09:10 +0200
Message-Id: <20200214140910.23194-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214140910.23194-1-jani.nikula@intel.com>
References: <20200214140910.23194-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/display: use intel_de_*()
 functions for register access
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The implicit "dev_priv" local variable use has been a long-standing pain
point in the register access macros I915_READ(), I915_WRITE(),
POSTING_READ(), I915_READ_FW(), and I915_WRITE_FW().

Replace them with the corresponding new display engine register
accessors intel_de_read(), intel_de_write(), intel_de_posting_read(),
intel_de_read_fw(), and intel_de_write_fw().

No functional changes.

Generated using the following semantic patch:

@@
expression REG, OFFSET;
@@
- I915_READ(REG)
+ intel_de_read(dev_priv, REG)

@@
expression REG, OFFSET;
@@
- POSTING_READ(REG)
+ intel_de_posting_read(dev_priv, REG)

@@
expression REG, OFFSET;
@@
- I915_WRITE(REG, OFFSET)
+ intel_de_write(dev_priv, REG, OFFSET)

@@
expression REG;
@@
- I915_READ_FW(REG)
+ intel_de_read_fw(dev_priv, REG)

@@
expression REG, OFFSET;
@@
- I915_WRITE_FW(REG, OFFSET)
+ intel_de_write_fw(dev_priv, REG, OFFSET)

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  | 65 +++++++++++--------
 1 file changed, 37 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 50baac726e70..287442bbcb46 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -57,15 +57,15 @@ static int i915_fbc_status(struct seq_file *m, void *unused)
 		u32 mask;
 
 		if (INTEL_GEN(dev_priv) >= 8)
-			mask = I915_READ(IVB_FBC_STATUS2) & BDW_FBC_COMP_SEG_MASK;
+			mask = intel_de_read(dev_priv, IVB_FBC_STATUS2) & BDW_FBC_COMP_SEG_MASK;
 		else if (INTEL_GEN(dev_priv) >= 7)
-			mask = I915_READ(IVB_FBC_STATUS2) & IVB_FBC_COMP_SEG_MASK;
+			mask = intel_de_read(dev_priv, IVB_FBC_STATUS2) & IVB_FBC_COMP_SEG_MASK;
 		else if (INTEL_GEN(dev_priv) >= 5)
-			mask = I915_READ(ILK_DPFC_STATUS) & ILK_DPFC_COMP_SEG_MASK;
+			mask = intel_de_read(dev_priv, ILK_DPFC_STATUS) & ILK_DPFC_COMP_SEG_MASK;
 		else if (IS_G4X(dev_priv))
-			mask = I915_READ(DPFC_STATUS) & DPFC_COMP_SEG_MASK;
+			mask = intel_de_read(dev_priv, DPFC_STATUS) & DPFC_COMP_SEG_MASK;
 		else
-			mask = I915_READ(FBC_STATUS) & (FBC_STAT_COMPRESSING |
+			mask = intel_de_read(dev_priv, FBC_STATUS) & (FBC_STAT_COMPRESSING |
 							FBC_STAT_COMPRESSED);
 
 		seq_printf(m, "Compressing: %s\n", yesno(mask));
@@ -99,12 +99,11 @@ static int i915_fbc_false_color_set(void *data, u64 val)
 
 	mutex_lock(&dev_priv->fbc.lock);
 
-	reg = I915_READ(ILK_DPFC_CONTROL);
+	reg = intel_de_read(dev_priv, ILK_DPFC_CONTROL);
 	dev_priv->fbc.false_color = val;
 
-	I915_WRITE(ILK_DPFC_CONTROL, val ?
-		   (reg | FBC_CTL_FALSE_COLOR) :
-		   (reg & ~FBC_CTL_FALSE_COLOR));
+	intel_de_write(dev_priv, ILK_DPFC_CONTROL,
+		       val ? (reg | FBC_CTL_FALSE_COLOR) : (reg & ~FBC_CTL_FALSE_COLOR));
 
 	mutex_unlock(&dev_priv->fbc.lock);
 	return 0;
@@ -130,7 +129,7 @@ static int i915_ips_status(struct seq_file *m, void *unused)
 	if (INTEL_GEN(dev_priv) >= 8) {
 		seq_puts(m, "Currently: unknown\n");
 	} else {
-		if (I915_READ(IPS_CTL) & IPS_ENABLE)
+		if (intel_de_read(dev_priv, IPS_CTL) & IPS_ENABLE)
 			seq_puts(m, "Currently: enabled\n");
 		else
 			seq_puts(m, "Currently: disabled\n");
@@ -152,16 +151,16 @@ static int i915_sr_status(struct seq_file *m, void *unused)
 	if (INTEL_GEN(dev_priv) >= 9)
 		/* no global SR status; inspect per-plane WM */;
 	else if (HAS_PCH_SPLIT(dev_priv))
-		sr_enabled = I915_READ(WM1_LP_ILK) & WM1_LP_SR_EN;
+		sr_enabled = intel_de_read(dev_priv, WM1_LP_ILK) & WM1_LP_SR_EN;
 	else if (IS_I965GM(dev_priv) || IS_G4X(dev_priv) ||
 		 IS_I945G(dev_priv) || IS_I945GM(dev_priv))
-		sr_enabled = I915_READ(FW_BLC_SELF) & FW_BLC_SELF_EN;
+		sr_enabled = intel_de_read(dev_priv, FW_BLC_SELF) & FW_BLC_SELF_EN;
 	else if (IS_I915GM(dev_priv))
-		sr_enabled = I915_READ(INSTPM) & INSTPM_SELF_EN;
+		sr_enabled = intel_de_read(dev_priv, INSTPM) & INSTPM_SELF_EN;
 	else if (IS_PINEVIEW(dev_priv))
-		sr_enabled = I915_READ(DSPFW3) & PINEVIEW_SELF_REFRESH_EN;
+		sr_enabled = intel_de_read(dev_priv, DSPFW3) & PINEVIEW_SELF_REFRESH_EN;
 	else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
-		sr_enabled = I915_READ(FW_BLC_SELF_VLV) & FW_CSPWRDWNEN;
+		sr_enabled = intel_de_read(dev_priv, FW_BLC_SELF_VLV) & FW_CSPWRDWNEN;
 
 	intel_display_power_put(dev_priv, POWER_DOMAIN_INIT, wakeref);
 
@@ -298,7 +297,8 @@ psr_source_status(struct drm_i915_private *dev_priv, struct seq_file *m)
 			"BUF_ON",
 			"TG_ON"
 		};
-		val = I915_READ(EDP_PSR2_STATUS(dev_priv->psr.transcoder));
+		val = intel_de_read(dev_priv,
+				    EDP_PSR2_STATUS(dev_priv->psr.transcoder));
 		status_val = (val & EDP_PSR2_STATUS_STATE_MASK) >>
 			      EDP_PSR2_STATUS_STATE_SHIFT;
 		if (status_val < ARRAY_SIZE(live_status))
@@ -314,7 +314,8 @@ psr_source_status(struct drm_i915_private *dev_priv, struct seq_file *m)
 			"SRDOFFACK",
 			"SRDENT_ON",
 		};
-		val = I915_READ(EDP_PSR_STATUS(dev_priv->psr.transcoder));
+		val = intel_de_read(dev_priv,
+				    EDP_PSR_STATUS(dev_priv->psr.transcoder));
 		status_val = (val & EDP_PSR_STATUS_STATE_MASK) >>
 			      EDP_PSR_STATUS_STATE_SHIFT;
 		if (status_val < ARRAY_SIZE(live_status))
@@ -361,10 +362,12 @@ static int i915_edp_psr_status(struct seq_file *m, void *data)
 	}
 
 	if (psr->psr2_enabled) {
-		val = I915_READ(EDP_PSR2_CTL(dev_priv->psr.transcoder));
+		val = intel_de_read(dev_priv,
+				    EDP_PSR2_CTL(dev_priv->psr.transcoder));
 		enabled = val & EDP_PSR2_ENABLE;
 	} else {
-		val = I915_READ(EDP_PSR_CTL(dev_priv->psr.transcoder));
+		val = intel_de_read(dev_priv,
+				    EDP_PSR_CTL(dev_priv->psr.transcoder));
 		enabled = val & EDP_PSR_ENABLE;
 	}
 	seq_printf(m, "Source PSR ctl: %s [0x%08x]\n",
@@ -377,7 +380,8 @@ static int i915_edp_psr_status(struct seq_file *m, void *data)
 	 * SKL+ Perf counter is reset to 0 everytime DC state is entered
 	 */
 	if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv)) {
-		val = I915_READ(EDP_PSR_PERF_CNT(dev_priv->psr.transcoder));
+		val = intel_de_read(dev_priv,
+				    EDP_PSR_PERF_CNT(dev_priv->psr.transcoder));
 		val &= EDP_PSR_PERF_CNT_MASK;
 		seq_printf(m, "Performance counter: %u\n", val);
 	}
@@ -397,8 +401,8 @@ static int i915_edp_psr_status(struct seq_file *m, void *data)
 		 * frame boundary between register reads
 		 */
 		for (frame = 0; frame < PSR2_SU_STATUS_FRAMES; frame += 3) {
-			val = I915_READ(PSR2_SU_STATUS(dev_priv->psr.transcoder,
-						       frame));
+			val = intel_de_read(dev_priv,
+					    PSR2_SU_STATUS(dev_priv->psr.transcoder, frame));
 			su_frames_val[frame / 3] = val;
 		}
 
@@ -518,7 +522,8 @@ static int i915_dmc_info(struct seq_file *m, void *unused)
 		 * reg for DC3CO debugging and validation,
 		 * but TGL DMC f/w is using DMC_DEBUG3 reg for DC3CO counter.
 		 */
-		seq_printf(m, "DC3CO count: %d\n", I915_READ(DMC_DEBUG3));
+		seq_printf(m, "DC3CO count: %d\n",
+			   intel_de_read(dev_priv, DMC_DEBUG3));
 	} else {
 		dc5_reg = IS_BROXTON(dev_priv) ? BXT_CSR_DC3_DC5_COUNT :
 						 SKL_CSR_DC3_DC5_COUNT;
@@ -526,14 +531,18 @@ static int i915_dmc_info(struct seq_file *m, void *unused)
 			dc6_reg = SKL_CSR_DC5_DC6_COUNT;
 	}
 
-	seq_printf(m, "DC3 -> DC5 count: %d\n", I915_READ(dc5_reg));
+	seq_printf(m, "DC3 -> DC5 count: %d\n",
+		   intel_de_read(dev_priv, dc5_reg));
 	if (dc6_reg.reg)
-		seq_printf(m, "DC5 -> DC6 count: %d\n", I915_READ(dc6_reg));
+		seq_printf(m, "DC5 -> DC6 count: %d\n",
+			   intel_de_read(dev_priv, dc6_reg));
 
 out:
-	seq_printf(m, "program base: 0x%08x\n", I915_READ(CSR_PROGRAM(0)));
-	seq_printf(m, "ssp base: 0x%08x\n", I915_READ(CSR_SSP_BASE));
-	seq_printf(m, "htp: 0x%08x\n", I915_READ(CSR_HTP_SKL));
+	seq_printf(m, "program base: 0x%08x\n",
+		   intel_de_read(dev_priv, CSR_PROGRAM(0)));
+	seq_printf(m, "ssp base: 0x%08x\n",
+		   intel_de_read(dev_priv, CSR_SSP_BASE));
+	seq_printf(m, "htp: 0x%08x\n", intel_de_read(dev_priv, CSR_HTP_SKL));
 
 	intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
