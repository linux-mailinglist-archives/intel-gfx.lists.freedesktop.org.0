Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 78246729C78
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Jun 2023 16:14:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7CC610E6B8;
	Fri,  9 Jun 2023 14:14:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EEA4110E6B8
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Jun 2023 14:14:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686320056; x=1717856056;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=pCwdRt4rXxWmAGMB9F3D0ENB44Ft7FmLFGek9VVhluk=;
 b=ll8uq0x+3/hqYZM/ebsOdUhdiSyB7mkwAVl3bKJx3UPTUTTmlVABBt3y
 3q4cUvmI5bxepHVDptPCGpLFzaOghZwd8YkG/E8sYvBpgbIM8vvZaY8b5
 6eQJiCekXnujtCZw81fUiquHBB9Zcbh5KvhlGZqVmgaYDTN6+3hZz7Nzm
 3YH2F+qm2d6SXxupW0EVsnZW1PyyDssvw4iqrsBgZXF/fIfVxBZEyl0/2
 EO8z0aKsaeXuq83sbCXvHhsx9n2Y0UC9Ois4ZXfENsUiFhW3+qSQI6ANe
 +psctdzPxE58pVJkHPgk3XW/Y9DN+ZPJMZI3toaOPo8wp22BU3ljkX0If Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10736"; a="385966336"
X-IronPort-AV: E=Sophos;i="6.00,229,1681196400"; d="scan'208";a="385966336"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2023 07:14:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10736"; a="740183050"
X-IronPort-AV: E=Sophos;i="6.00,229,1681196400"; d="scan'208";a="740183050"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga008.jf.intel.com with SMTP; 09 Jun 2023 07:14:14 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 09 Jun 2023 17:14:13 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  9 Jun 2023 17:13:54 +0300
Message-Id: <20230609141404.12729-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20230609141404.12729-1-ville.syrjala@linux.intel.com>
References: <20230609141404.12729-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 03/13] drm/i915/psr: Wrap PSR1 register with
 functions
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

In preparation for re-introducing HSW's different PSR1 register
offeets let's just wrap all the registers into functions.
Avoids having to make the register macros more complex.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 99 ++++++++++++++++--------
 1 file changed, 65 insertions(+), 34 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index ea0389c5f656..60518d5d0c4e 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -234,23 +234,61 @@ static u32 psr_irq_mask_get(struct intel_dp *intel_dp)
 		EDP_PSR_MASK(intel_dp->psr.transcoder);
 }
 
+static i915_reg_t psr_ctl_reg(struct drm_i915_private *dev_priv,
+			      enum transcoder cpu_transcoder)
+{
+	return EDP_PSR_CTL(cpu_transcoder);
+}
+
+static i915_reg_t psr_debug_reg(struct drm_i915_private *dev_priv,
+				enum transcoder cpu_transcoder)
+{
+	return EDP_PSR_DEBUG(cpu_transcoder);
+}
+
+static i915_reg_t psr_perf_cnt_reg(struct drm_i915_private *dev_priv,
+				   enum transcoder cpu_transcoder)
+{
+	return EDP_PSR_PERF_CNT(cpu_transcoder);
+}
+
+static i915_reg_t psr_status_reg(struct drm_i915_private *dev_priv,
+				 enum transcoder cpu_transcoder)
+{
+	return EDP_PSR_STATUS(cpu_transcoder);
+}
+
+static i915_reg_t psr_imr_reg(struct drm_i915_private *dev_priv,
+			      enum transcoder cpu_transcoder)
+{
+	if (DISPLAY_VER(dev_priv) >= 12)
+		return TRANS_PSR_IMR(cpu_transcoder);
+	else
+		return EDP_PSR_IMR;
+}
+
+static i915_reg_t psr_iir_reg(struct drm_i915_private *dev_priv,
+			      enum transcoder cpu_transcoder)
+{
+	if (DISPLAY_VER(dev_priv) >= 12)
+		return TRANS_PSR_IIR(cpu_transcoder);
+	else
+		return EDP_PSR_IIR;
+}
+
 static void psr_irq_control(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
-	i915_reg_t imr_reg;
+	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
 	u32 mask;
 
-	if (DISPLAY_VER(dev_priv) >= 12)
-		imr_reg = TRANS_PSR_IMR(intel_dp->psr.transcoder);
-	else
-		imr_reg = EDP_PSR_IMR;
-
 	mask = psr_irq_psr_error_bit_get(intel_dp);
 	if (intel_dp->psr.debug & I915_PSR_DEBUG_IRQ)
 		mask |= psr_irq_post_exit_bit_get(intel_dp) |
 			psr_irq_pre_entry_bit_get(intel_dp);
 
-	intel_de_rmw(dev_priv, imr_reg, psr_irq_mask_get(intel_dp), ~mask);
+	intel_de_rmw(dev_priv, psr_imr_reg(dev_priv, cpu_transcoder),
+		     psr_irq_mask_get(intel_dp), ~mask);
 }
 
 static void psr_event_print(struct drm_i915_private *i915,
@@ -296,12 +334,6 @@ void intel_psr_irq_handler(struct intel_dp *intel_dp, u32 psr_iir)
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
 	ktime_t time_ns =  ktime_get();
-	i915_reg_t imr_reg;
-
-	if (DISPLAY_VER(dev_priv) >= 12)
-		imr_reg = TRANS_PSR_IMR(cpu_transcoder);
-	else
-		imr_reg = EDP_PSR_IMR;
 
 	if (psr_iir & psr_irq_pre_entry_bit_get(intel_dp)) {
 		intel_dp->psr.last_entry_attempt = time_ns;
@@ -339,7 +371,8 @@ void intel_psr_irq_handler(struct intel_dp *intel_dp, u32 psr_iir)
 		 * again so we don't care about unmask the interruption
 		 * or unset irq_aux_error.
 		 */
-		intel_de_rmw(dev_priv, imr_reg, 0, psr_irq_psr_error_bit_get(intel_dp));
+		intel_de_rmw(dev_priv, psr_imr_reg(dev_priv, cpu_transcoder),
+			     0, psr_irq_psr_error_bit_get(intel_dp));
 
 		schedule_work(&intel_dp->psr.work);
 	}
@@ -577,7 +610,7 @@ static void hsw_activate_psr1(struct intel_dp *intel_dp)
 	if (DISPLAY_VER(dev_priv) >= 8)
 		val |= EDP_PSR_CRC_ENABLE;
 
-	intel_de_rmw(dev_priv, EDP_PSR_CTL(cpu_transcoder),
+	intel_de_rmw(dev_priv, psr_ctl_reg(dev_priv, cpu_transcoder),
 		     ~EDP_PSR_RESTORE_PSR_ACTIVE_CTX_MASK, val);
 }
 
@@ -685,7 +718,7 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
 	 * PSR2 HW is incorrectly using EDP_PSR_TP1_TP3_SEL and BSpec is
 	 * recommending keep this bit unset while PSR2 is enabled.
 	 */
-	intel_de_write(dev_priv, EDP_PSR_CTL(cpu_transcoder), 0);
+	intel_de_write(dev_priv, psr_ctl_reg(dev_priv, cpu_transcoder), 0);
 
 	intel_de_write(dev_priv, EDP_PSR2_CTL(cpu_transcoder), val);
 }
@@ -1201,13 +1234,15 @@ static void intel_psr_activate(struct intel_dp *intel_dp)
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
 
-	if (transcoder_has_psr2(dev_priv, cpu_transcoder))
-		drm_WARN_ON(&dev_priv->drm,
-			    intel_de_read(dev_priv, EDP_PSR2_CTL(cpu_transcoder)) & EDP_PSR2_ENABLE);
+	drm_WARN_ON(&dev_priv->drm,
+		    transcoder_has_psr2(dev_priv, cpu_transcoder) &&
+		    intel_de_read(dev_priv, EDP_PSR2_CTL(cpu_transcoder)) & EDP_PSR2_ENABLE);
 
 	drm_WARN_ON(&dev_priv->drm,
-		    intel_de_read(dev_priv, EDP_PSR_CTL(cpu_transcoder)) & EDP_PSR_ENABLE);
+		    intel_de_read(dev_priv, psr_ctl_reg(dev_priv, cpu_transcoder)) & EDP_PSR_ENABLE);
+
 	drm_WARN_ON(&dev_priv->drm, intel_dp->psr.active);
+
 	lockdep_assert_held(&intel_dp->psr.lock);
 
 	/* psr1 and psr2 are mutually exclusive.*/
@@ -1285,8 +1320,7 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
 	if (DISPLAY_VER(dev_priv) < 11)
 		mask |= EDP_PSR_DEBUG_MASK_DISP_REG_WRITE;
 
-	intel_de_write(dev_priv, EDP_PSR_DEBUG(cpu_transcoder),
-		       mask);
+	intel_de_write(dev_priv, psr_debug_reg(dev_priv, cpu_transcoder), mask);
 
 	psr_irq_control(intel_dp);
 
@@ -1352,10 +1386,7 @@ static bool psr_interrupt_error_check(struct intel_dp *intel_dp)
 	 * first time that PSR HW tries to activate so lets keep PSR disabled
 	 * to avoid any rendering problems.
 	 */
-	if (DISPLAY_VER(dev_priv) >= 12)
-		val = intel_de_read(dev_priv, TRANS_PSR_IIR(cpu_transcoder));
-	else
-		val = intel_de_read(dev_priv, EDP_PSR_IIR);
+	val = intel_de_read(dev_priv, psr_iir_reg(dev_priv, cpu_transcoder));
 	val &= psr_irq_psr_error_bit_get(intel_dp);
 	if (val) {
 		intel_dp->psr.sink_not_reliable = true;
@@ -1418,7 +1449,7 @@ static void intel_psr_exit(struct intel_dp *intel_dp)
 			drm_WARN_ON(&dev_priv->drm, val & EDP_PSR2_ENABLE);
 		}
 
-		val = intel_de_read(dev_priv, EDP_PSR_CTL(cpu_transcoder));
+		val = intel_de_read(dev_priv, psr_ctl_reg(dev_priv, cpu_transcoder));
 		drm_WARN_ON(&dev_priv->drm, val & EDP_PSR_ENABLE);
 
 		return;
@@ -1432,7 +1463,7 @@ static void intel_psr_exit(struct intel_dp *intel_dp)
 
 		drm_WARN_ON(&dev_priv->drm, !(val & EDP_PSR2_ENABLE));
 	} else {
-		val = intel_de_rmw(dev_priv, EDP_PSR_CTL(cpu_transcoder),
+		val = intel_de_rmw(dev_priv, psr_ctl_reg(dev_priv, cpu_transcoder),
 				   EDP_PSR_ENABLE, 0);
 
 		drm_WARN_ON(&dev_priv->drm, !(val & EDP_PSR_ENABLE));
@@ -1451,7 +1482,7 @@ static void intel_psr_wait_exit_locked(struct intel_dp *intel_dp)
 		psr_status = EDP_PSR2_STATUS(cpu_transcoder);
 		psr_status_mask = EDP_PSR2_STATUS_STATE_MASK;
 	} else {
-		psr_status = EDP_PSR_STATUS(cpu_transcoder);
+		psr_status = psr_status_reg(dev_priv, cpu_transcoder);
 		psr_status_mask = EDP_PSR_STATUS_STATE_MASK;
 	}
 
@@ -2151,7 +2182,7 @@ static int _psr1_ready_for_pipe_update_locked(struct intel_dp *intel_dp)
 	 * defensive enough to cover everything.
 	 */
 	return intel_de_wait_for_clear(dev_priv,
-				       EDP_PSR_STATUS(cpu_transcoder),
+				       psr_status_reg(dev_priv, cpu_transcoder),
 				       EDP_PSR_STATUS_STATE_MASK, 50);
 }
 
@@ -2205,7 +2236,7 @@ static bool __psr_wait_for_idle_locked(struct intel_dp *intel_dp)
 		reg = EDP_PSR2_STATUS(cpu_transcoder);
 		mask = EDP_PSR2_STATUS_STATE_MASK;
 	} else {
-		reg = EDP_PSR_STATUS(cpu_transcoder);
+		reg = psr_status_reg(dev_priv, cpu_transcoder);
 		mask = EDP_PSR_STATUS_STATE_MASK;
 	}
 
@@ -2823,7 +2854,7 @@ psr_source_status(struct intel_dp *intel_dp, struct seq_file *m)
 			"SRDOFFACK",
 			"SRDENT_ON",
 		};
-		val = intel_de_read(dev_priv, EDP_PSR_STATUS(cpu_transcoder));
+		val = intel_de_read(dev_priv, psr_status_reg(dev_priv, cpu_transcoder));
 		status_val = REG_FIELD_GET(EDP_PSR_STATUS_STATE_MASK, val);
 		if (status_val < ARRAY_SIZE(live_status))
 			status = live_status[status_val];
@@ -2870,7 +2901,7 @@ static int intel_psr_status(struct seq_file *m, struct intel_dp *intel_dp)
 		val = intel_de_read(dev_priv, EDP_PSR2_CTL(cpu_transcoder));
 		enabled = val & EDP_PSR2_ENABLE;
 	} else {
-		val = intel_de_read(dev_priv, EDP_PSR_CTL(cpu_transcoder));
+		val = intel_de_read(dev_priv, psr_ctl_reg(dev_priv, cpu_transcoder));
 		enabled = val & EDP_PSR_ENABLE;
 	}
 	seq_printf(m, "Source PSR ctl: %s [0x%08x]\n",
@@ -2882,7 +2913,7 @@ static int intel_psr_status(struct seq_file *m, struct intel_dp *intel_dp)
 	/*
 	 * SKL+ Perf counter is reset to 0 everytime DC state is entered
 	 */
-	val = intel_de_read(dev_priv, EDP_PSR_PERF_CNT(cpu_transcoder));
+	val = intel_de_read(dev_priv, psr_perf_cnt_reg(dev_priv, cpu_transcoder));
 	seq_printf(m, "Performance counter: %u\n",
 		   REG_FIELD_GET(EDP_PSR_PERF_CNT_MASK, val));
 
-- 
2.39.3

