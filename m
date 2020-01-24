Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 10867148611
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 14:26:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6425B72A8F;
	Fri, 24 Jan 2020 13:26:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0A9D72A8F
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jan 2020 13:26:51 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 05:26:51 -0800
X-IronPort-AV: E=Sophos;i="5.70,357,1574150400"; d="scan'208";a="426615459"
Received: from omarkovx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.37.60])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 05:26:49 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Jan 2020 15:25:47 +0200
Message-Id: <b7865c858374e9ab04cf2bc4ceb3d7d89c27db83.1579871655.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1579871655.git.jani.nikula@intel.com>
References: <cover.1579871655.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [RFC 26/33] drm/i915/psr: use intel_de_*() functions
 for register access
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
Cc: Jani Nikula <jani.nikula@intel.com>
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
 drivers/gpu/drm/i915/display/intel_psr.c | 70 ++++++++++++++----------
 1 file changed, 41 insertions(+), 29 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 7f4056057f0c..5195df8c0343 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -114,10 +114,10 @@ static void psr_irq_control(struct drm_i915_private *dev_priv)
 			EDP_PSR_PRE_ENTRY(trans_shift);
 
 	/* Warning: it is masking/setting reserved bits too */
-	val = I915_READ(imr_reg);
+	val = intel_de_read(dev_priv, imr_reg);
 	val &= ~EDP_PSR_TRANS_MASK(trans_shift);
 	val |= ~mask;
-	I915_WRITE(imr_reg, val);
+	intel_de_write(dev_priv, imr_reg, val);
 }
 
 static void psr_event_print(u32 val, bool psr2_enabled)
@@ -184,10 +184,12 @@ void intel_psr_irq_handler(struct drm_i915_private *dev_priv, u32 psr_iir)
 			      transcoder_name(cpu_transcoder));
 
 		if (INTEL_GEN(dev_priv) >= 9) {
-			u32 val = I915_READ(PSR_EVENT(cpu_transcoder));
+			u32 val = intel_de_read(dev_priv,
+						PSR_EVENT(cpu_transcoder));
 			bool psr2_enabled = dev_priv->psr.psr2_enabled;
 
-			I915_WRITE(PSR_EVENT(cpu_transcoder), val);
+			intel_de_write(dev_priv, PSR_EVENT(cpu_transcoder),
+				       val);
 			psr_event_print(val, psr2_enabled);
 		}
 	}
@@ -208,9 +210,9 @@ void intel_psr_irq_handler(struct drm_i915_private *dev_priv, u32 psr_iir)
 		 * again so we don't care about unmask the interruption
 		 * or unset irq_aux_error.
 		 */
-		val = I915_READ(imr_reg);
+		val = intel_de_read(dev_priv, imr_reg);
 		val |= EDP_PSR_ERROR(trans_shift);
-		I915_WRITE(imr_reg, val);
+		intel_de_write(dev_priv, imr_reg, val);
 
 		schedule_work(&dev_priv->psr.work);
 	}
@@ -380,8 +382,9 @@ static void hsw_psr_setup_aux(struct intel_dp *intel_dp)
 
 	BUILD_BUG_ON(sizeof(aux_msg) > 20);
 	for (i = 0; i < sizeof(aux_msg); i += 4)
-		I915_WRITE(EDP_PSR_AUX_DATA(dev_priv->psr.transcoder, i >> 2),
-			   intel_dp_pack_aux(&aux_msg[i], sizeof(aux_msg) - i));
+		intel_de_write(dev_priv,
+			       EDP_PSR_AUX_DATA(dev_priv->psr.transcoder, i >> 2),
+			       intel_dp_pack_aux(&aux_msg[i], sizeof(aux_msg) - i));
 
 	aux_clock_divider = intel_dp->get_aux_clock_divider(intel_dp, 0);
 
@@ -391,7 +394,8 @@ static void hsw_psr_setup_aux(struct intel_dp *intel_dp)
 
 	/* Select only valid bits for SRD_AUX_CTL */
 	aux_ctl &= psr_aux_mask;
-	I915_WRITE(EDP_PSR_AUX_CTL(dev_priv->psr.transcoder), aux_ctl);
+	intel_de_write(dev_priv, EDP_PSR_AUX_CTL(dev_priv->psr.transcoder),
+		       aux_ctl);
 }
 
 static void intel_psr_enable_sink(struct intel_dp *intel_dp)
@@ -491,9 +495,9 @@ static void hsw_activate_psr1(struct intel_dp *intel_dp)
 	if (INTEL_GEN(dev_priv) >= 8)
 		val |= EDP_PSR_CRC_ENABLE;
 
-	val |= (I915_READ(EDP_PSR_CTL(dev_priv->psr.transcoder)) &
+	val |= (intel_de_read(dev_priv, EDP_PSR_CTL(dev_priv->psr.transcoder)) &
 		EDP_PSR_RESTORE_PSR_ACTIVE_CTX_MASK);
-	I915_WRITE(EDP_PSR_CTL(dev_priv->psr.transcoder), val);
+	intel_de_write(dev_priv, EDP_PSR_CTL(dev_priv->psr.transcoder), val);
 }
 
 static void hsw_activate_psr2(struct intel_dp *intel_dp)
@@ -523,9 +527,9 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
 	 * PSR2 HW is incorrectly using EDP_PSR_TP1_TP3_SEL and BSpec is
 	 * recommending keep this bit unset while PSR2 is enabled.
 	 */
-	I915_WRITE(EDP_PSR_CTL(dev_priv->psr.transcoder), 0);
+	intel_de_write(dev_priv, EDP_PSR_CTL(dev_priv->psr.transcoder), 0);
 
-	I915_WRITE(EDP_PSR2_CTL(dev_priv->psr.transcoder), val);
+	intel_de_write(dev_priv, EDP_PSR2_CTL(dev_priv->psr.transcoder), val);
 }
 
 static bool
@@ -554,10 +558,10 @@ static void psr2_program_idle_frames(struct drm_i915_private *dev_priv,
 	u32 val;
 
 	idle_frames <<=  EDP_PSR2_IDLE_FRAME_SHIFT;
-	val = I915_READ(EDP_PSR2_CTL(dev_priv->psr.transcoder));
+	val = intel_de_read(dev_priv, EDP_PSR2_CTL(dev_priv->psr.transcoder));
 	val &= ~EDP_PSR2_IDLE_FRAME_MASK;
 	val |= idle_frames;
-	I915_WRITE(EDP_PSR2_CTL(dev_priv->psr.transcoder), val);
+	intel_de_write(dev_priv, EDP_PSR2_CTL(dev_priv->psr.transcoder), val);
 }
 
 static void tgl_psr2_enable_dc3co(struct drm_i915_private *dev_priv)
@@ -733,9 +737,9 @@ static void intel_psr_activate(struct intel_dp *intel_dp)
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 
 	if (transcoder_has_psr2(dev_priv, dev_priv->psr.transcoder))
-		WARN_ON(I915_READ(EDP_PSR2_CTL(dev_priv->psr.transcoder)) & EDP_PSR2_ENABLE);
+		WARN_ON(intel_de_read(dev_priv, EDP_PSR2_CTL(dev_priv->psr.transcoder)) & EDP_PSR2_ENABLE);
 
-	WARN_ON(I915_READ(EDP_PSR_CTL(dev_priv->psr.transcoder)) & EDP_PSR_ENABLE);
+	WARN_ON(intel_de_read(dev_priv, EDP_PSR_CTL(dev_priv->psr.transcoder)) & EDP_PSR_ENABLE);
 	WARN_ON(dev_priv->psr.active);
 	lockdep_assert_held(&dev_priv->psr.lock);
 
@@ -764,11 +768,11 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
 	if (dev_priv->psr.psr2_enabled && (IS_GEN(dev_priv, 9) &&
 					   !IS_GEMINILAKE(dev_priv))) {
 		i915_reg_t reg = CHICKEN_TRANS(cpu_transcoder);
-		u32 chicken = I915_READ(reg);
+		u32 chicken = intel_de_read(dev_priv, reg);
 
 		chicken |= PSR2_VSC_ENABLE_PROG_HEADER |
 			   PSR2_ADD_VERTICAL_LINE_COUNT;
-		I915_WRITE(reg, chicken);
+		intel_de_write(dev_priv, reg, chicken);
 	}
 
 	/*
@@ -785,7 +789,8 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
 	if (INTEL_GEN(dev_priv) < 11)
 		mask |= EDP_PSR_DEBUG_MASK_DISP_REG_WRITE;
 
-	I915_WRITE(EDP_PSR_DEBUG(dev_priv->psr.transcoder), mask);
+	intel_de_write(dev_priv, EDP_PSR_DEBUG(dev_priv->psr.transcoder),
+		       mask);
 
 	psr_irq_control(dev_priv);
 }
@@ -814,10 +819,11 @@ static void intel_psr_enable_locked(struct drm_i915_private *dev_priv,
 	 * to avoid any rendering problems.
 	 */
 	if (INTEL_GEN(dev_priv) >= 12) {
-		val = I915_READ(TRANS_PSR_IIR(dev_priv->psr.transcoder));
+		val = intel_de_read(dev_priv,
+				    TRANS_PSR_IIR(dev_priv->psr.transcoder));
 		val &= EDP_PSR_ERROR(0);
 	} else {
-		val = I915_READ(EDP_PSR_IIR);
+		val = intel_de_read(dev_priv, EDP_PSR_IIR);
 		val &= EDP_PSR_ERROR(dev_priv->psr.transcoder);
 	}
 	if (val) {
@@ -875,11 +881,13 @@ static void intel_psr_exit(struct drm_i915_private *dev_priv)
 
 	if (!dev_priv->psr.active) {
 		if (transcoder_has_psr2(dev_priv, dev_priv->psr.transcoder)) {
-			val = I915_READ(EDP_PSR2_CTL(dev_priv->psr.transcoder));
+			val = intel_de_read(dev_priv,
+					    EDP_PSR2_CTL(dev_priv->psr.transcoder));
 			WARN_ON(val & EDP_PSR2_ENABLE);
 		}
 
-		val = I915_READ(EDP_PSR_CTL(dev_priv->psr.transcoder));
+		val = intel_de_read(dev_priv,
+				    EDP_PSR_CTL(dev_priv->psr.transcoder));
 		WARN_ON(val & EDP_PSR_ENABLE);
 
 		return;
@@ -887,15 +895,19 @@ static void intel_psr_exit(struct drm_i915_private *dev_priv)
 
 	if (dev_priv->psr.psr2_enabled) {
 		tgl_disallow_dc3co_on_psr2_exit(dev_priv);
-		val = I915_READ(EDP_PSR2_CTL(dev_priv->psr.transcoder));
+		val = intel_de_read(dev_priv,
+				    EDP_PSR2_CTL(dev_priv->psr.transcoder));
 		WARN_ON(!(val & EDP_PSR2_ENABLE));
 		val &= ~EDP_PSR2_ENABLE;
-		I915_WRITE(EDP_PSR2_CTL(dev_priv->psr.transcoder), val);
+		intel_de_write(dev_priv,
+			       EDP_PSR2_CTL(dev_priv->psr.transcoder), val);
 	} else {
-		val = I915_READ(EDP_PSR_CTL(dev_priv->psr.transcoder));
+		val = intel_de_read(dev_priv,
+				    EDP_PSR_CTL(dev_priv->psr.transcoder));
 		WARN_ON(!(val & EDP_PSR_ENABLE));
 		val &= ~EDP_PSR_ENABLE;
-		I915_WRITE(EDP_PSR_CTL(dev_priv->psr.transcoder), val);
+		intel_de_write(dev_priv,
+			       EDP_PSR_CTL(dev_priv->psr.transcoder), val);
 	}
 	dev_priv->psr.active = false;
 }
@@ -977,7 +989,7 @@ static void psr_force_hw_tracking_exit(struct drm_i915_private *dev_priv)
 		 * but it makes more sense write to the current active
 		 * pipe.
 		 */
-		I915_WRITE(CURSURFLIVE(dev_priv->psr.pipe), 0);
+		intel_de_write(dev_priv, CURSURFLIVE(dev_priv->psr.pipe), 0);
 	else
 		/*
 		 * A write to CURSURFLIVE do not cause HW tracking to exit PSR
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
