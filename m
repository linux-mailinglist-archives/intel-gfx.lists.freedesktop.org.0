Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 176333EC6B5
	for <lists+intel-gfx@lfdr.de>; Sun, 15 Aug 2021 04:07:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EE9989DFA;
	Sun, 15 Aug 2021 02:07:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A75E89DA4
 for <intel-gfx@lists.freedesktop.org>; Sun, 15 Aug 2021 02:07:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10076"; a="202911129"
X-IronPort-AV: E=Sophos;i="5.84,322,1620716400"; d="scan'208";a="202911129"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2021 19:07:04 -0700
X-IronPort-AV: E=Sophos;i="5.84,322,1620716400"; d="scan'208";a="518782884"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-mobl2.intel.com)
 ([10.24.14.59])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2021 19:07:04 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>,
 =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
Date: Sat, 14 Aug 2021 19:11:51 -0700
Message-Id: <20210815021152.410835-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210815021152.410835-1-jose.souza@intel.com>
References: <20210815021152.410835-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/display: Drop PSR support from HSW
 and BDW
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

At this point is sure that HSW and BDW will never have PSR enabled by
default, so here dropping it from device info and cleaning up code.

Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 97 ++++--------------------
 drivers/gpu/drm/i915/i915_drv.h          |  2 -
 drivers/gpu/drm/i915/i915_irq.c          | 16 ----
 drivers/gpu/drm/i915/i915_pci.c          |  2 -
 drivers/gpu/drm/i915/i915_reg.h          | 21 ++---
 5 files changed, 18 insertions(+), 120 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 1b0daf649e823..5726f8dd8e8e3 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -364,41 +364,6 @@ void intel_psr_init_dpcd(struct intel_dp *intel_dp)
 	}
 }
 
-static void hsw_psr_setup_aux(struct intel_dp *intel_dp)
-{
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
-	u32 aux_clock_divider, aux_ctl;
-	int i;
-	static const u8 aux_msg[] = {
-		[0] = DP_AUX_NATIVE_WRITE << 4,
-		[1] = DP_SET_POWER >> 8,
-		[2] = DP_SET_POWER & 0xff,
-		[3] = 1 - 1,
-		[4] = DP_SET_POWER_D0,
-	};
-	u32 psr_aux_mask = EDP_PSR_AUX_CTL_TIME_OUT_MASK |
-			   EDP_PSR_AUX_CTL_MESSAGE_SIZE_MASK |
-			   EDP_PSR_AUX_CTL_PRECHARGE_2US_MASK |
-			   EDP_PSR_AUX_CTL_BIT_CLOCK_2X_MASK;
-
-	BUILD_BUG_ON(sizeof(aux_msg) > 20);
-	for (i = 0; i < sizeof(aux_msg); i += 4)
-		intel_de_write(dev_priv,
-			       EDP_PSR_AUX_DATA(intel_dp->psr.transcoder, i >> 2),
-			       intel_dp_pack_aux(&aux_msg[i], sizeof(aux_msg) - i));
-
-	aux_clock_divider = intel_dp->get_aux_clock_divider(intel_dp, 0);
-
-	/* Start with bits set for DDI_AUX_CTL register */
-	aux_ctl = intel_dp->get_aux_send_ctl(intel_dp, sizeof(aux_msg),
-					     aux_clock_divider);
-
-	/* Select only valid bits for SRD_AUX_CTL */
-	aux_ctl &= psr_aux_mask;
-	intel_de_write(dev_priv, EDP_PSR_AUX_CTL(intel_dp->psr.transcoder),
-		       aux_ctl);
-}
-
 static void intel_psr_enable_sink(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
@@ -621,9 +586,7 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
 static bool
 transcoder_has_psr2(struct drm_i915_private *dev_priv, enum transcoder trans)
 {
-	if (DISPLAY_VER(dev_priv) < 9)
-		return false;
-	else if (DISPLAY_VER(dev_priv) >= 12)
+	if (DISPLAY_VER(dev_priv) >= 12)
 		return trans == TRANSCODER_A;
 	else
 		return trans == TRANSCODER_EDP;
@@ -1114,12 +1077,6 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp)
 	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
 	u32 mask;
 
-	/* Only HSW and BDW have PSR AUX registers that need to be setup. SKL+
-	 * use hardcoded values PSR AUX transactions
-	 */
-	if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv))
-		hsw_psr_setup_aux(intel_dp);
-
 	if (intel_dp->psr.psr2_enabled && DISPLAY_VER(dev_priv) == 9) {
 		i915_reg_t reg = CHICKEN_TRANS(cpu_transcoder);
 		u32 chicken = intel_de_read(dev_priv, reg);
@@ -1460,23 +1417,16 @@ static void psr_force_hw_tracking_exit(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 
-	if (DISPLAY_VER(dev_priv) >= 9)
-		/*
-		 * Display WA #0884: skl+
-		 * This documented WA for bxt can be safely applied
-		 * broadly so we can force HW tracking to exit PSR
-		 * instead of disabling and re-enabling.
-		 * Workaround tells us to write 0 to CUR_SURFLIVE_A,
-		 * but it makes more sense write to the current active
-		 * pipe.
-		 */
-		intel_de_write(dev_priv, CURSURFLIVE(intel_dp->psr.pipe), 0);
-	else
-		/*
-		 * A write to CURSURFLIVE do not cause HW tracking to exit PSR
-		 * on older gens so doing the manual exit instead.
-		 */
-		intel_psr_exit(intel_dp);
+	/*
+	 * Display WA #0884: skl+
+	 * This documented WA for bxt can be safely applied
+	 * broadly so we can force HW tracking to exit PSR
+	 * instead of disabling and re-enabling.
+	 * Workaround tells us to write 0 to CUR_SURFLIVE_A,
+	 * but it makes more sense write to the current active
+	 * pipe.
+	 */
+	intel_de_write(dev_priv, CURSURFLIVE(intel_dp->psr.pipe), 0);
 }
 
 void intel_psr2_program_plane_sel_fetch(struct intel_plane *plane,
@@ -1748,7 +1698,6 @@ void intel_psr_update(struct intel_dp *intel_dp,
 		      const struct intel_crtc_state *crtc_state,
 		      const struct drm_connector_state *conn_state)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	struct intel_psr *psr = &intel_dp->psr;
 	bool enable, psr2_enable;
 
@@ -1765,15 +1714,6 @@ void intel_psr_update(struct intel_dp *intel_dp,
 		/* Force a PSR exit when enabling CRC to avoid CRC timeouts */
 		if (crtc_state->crc_enabled && psr->enabled)
 			psr_force_hw_tracking_exit(intel_dp);
-		else if (DISPLAY_VER(dev_priv) < 9 && psr->enabled) {
-			/*
-			 * Activate PSR again after a force exit when enabling
-			 * CRC in older gens
-			 */
-			if (!intel_dp->psr.active &&
-			    !intel_dp->psr.busy_frontbuffer_bits)
-				schedule_work(&intel_dp->psr.work);
-		}
 
 		goto unlock;
 	}
@@ -2186,23 +2126,12 @@ void intel_psr_init(struct intel_dp *intel_dp)
 
 	intel_dp->psr.source_support = true;
 
-	if (IS_HASWELL(dev_priv))
-		/*
-		 * HSW don't have PSR registers on the same space as transcoder
-		 * so set this to a value that when subtract to the register
-		 * in transcoder space results in the right offset for HSW
-		 */
-		dev_priv->hsw_psr_mmio_adjust = _SRD_CTL_EDP - _HSW_EDP_PSR_BASE;
-
 	if (dev_priv->params.enable_psr == -1)
-		if (DISPLAY_VER(dev_priv) < 9 || !dev_priv->vbt.psr.enable)
+		if (!dev_priv->vbt.psr.enable)
 			dev_priv->params.enable_psr = 0;
 
 	/* Set link_standby x link_off defaults */
-	if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv))
-		/* HSW and BDW require workarounds that we don't implement. */
-		intel_dp->psr.link_standby = false;
-	else if (DISPLAY_VER(dev_priv) < 12)
+	if (DISPLAY_VER(dev_priv) < 12)
 		/* For new platforms up to TGL let's respect VBT back again */
 		intel_dp->psr.link_standby = dev_priv->vbt.psr.full_link;
 
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 41e3a421efcec..fe1dc8b7871a0 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -886,8 +886,6 @@ struct drm_i915_private {
 	 */
 	u32 gpio_mmio_base;
 
-	u32 hsw_psr_mmio_adjust;
-
 	/* MMIO base address for MIPI regs */
 	u32 mipi_mmio_base;
 
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 9bc4f4a8e12ec..45c0b51a8da17 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -2093,22 +2093,6 @@ static void ivb_display_irq_handler(struct drm_i915_private *dev_priv,
 	if (de_iir & DE_ERR_INT_IVB)
 		ivb_err_int_handler(dev_priv);
 
-	if (de_iir & DE_EDP_PSR_INT_HSW) {
-		struct intel_encoder *encoder;
-
-		for_each_intel_encoder_with_psr(&dev_priv->drm, encoder) {
-			struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
-
-			u32 psr_iir = intel_uncore_read(&dev_priv->uncore,
-							EDP_PSR_IIR);
-
-			intel_psr_irq_handler(intel_dp, psr_iir);
-			intel_uncore_write(&dev_priv->uncore,
-					   EDP_PSR_IIR, psr_iir);
-			break;
-		}
-	}
-
 	if (de_iir & DE_AUX_CHANNEL_A_IVB)
 		dp_aux_irq_handler(dev_priv);
 
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 2c1cb9b6b5567..68ca9fcdd4f64 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -537,8 +537,6 @@ static const struct intel_device_info vlv_info = {
 		BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP), \
 	.display.has_ddi = 1, \
 	.display.has_fpga_dbg = 1, \
-	.display.has_psr = 1, \
-	.display.has_psr_hw_tracking = 1, \
 	.display.has_dp_mst = 1, \
 	.has_rc6p = 0 /* RC6p removed-by HSW */, \
 	HSW_PIPE_OFFSETS, \
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index e7215722b8d3a..87a7a23378a81 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -4511,11 +4511,9 @@ enum {
  * HSW PSR registers are relative to DDIA(_DDI_BUF_CTL_A + 0x800) with just one
  * instance of it
  */
-#define _HSW_EDP_PSR_BASE			0x64800
 #define _SRD_CTL_A				0x60800
 #define _SRD_CTL_EDP				0x6f800
-#define _PSR_ADJ(tran, reg)			(_TRANS2(tran, reg) - dev_priv->hsw_psr_mmio_adjust)
-#define EDP_PSR_CTL(tran)			_MMIO(_PSR_ADJ(tran, _SRD_CTL_A))
+#define EDP_PSR_CTL(tran)			_MMIO(_TRANS2(tran, _SRD_CTL_A))
 #define   EDP_PSR_ENABLE			(1 << 31)
 #define   BDW_PSR_SINGLE_FRAME			(1 << 30)
 #define   EDP_PSR_RESTORE_PSR_ACTIVE_CTX_MASK	(1 << 29) /* SW can't modify */
@@ -4559,22 +4557,13 @@ enum {
 #define   EDP_PSR_POST_EXIT(trans)		(0x2 << _EDP_PSR_TRANS_SHIFT(trans))
 #define   EDP_PSR_PRE_ENTRY(trans)		(0x1 << _EDP_PSR_TRANS_SHIFT(trans))
 
-#define _SRD_AUX_CTL_A				0x60810
-#define _SRD_AUX_CTL_EDP			0x6f810
-#define EDP_PSR_AUX_CTL(tran)			_MMIO(_PSR_ADJ(tran, _SRD_AUX_CTL_A))
-#define   EDP_PSR_AUX_CTL_TIME_OUT_MASK		(3 << 26)
-#define   EDP_PSR_AUX_CTL_MESSAGE_SIZE_MASK	(0x1f << 20)
-#define   EDP_PSR_AUX_CTL_PRECHARGE_2US_MASK	(0xf << 16)
-#define   EDP_PSR_AUX_CTL_ERROR_INTERRUPT	(1 << 11)
-#define   EDP_PSR_AUX_CTL_BIT_CLOCK_2X_MASK	(0x7ff)
-
 #define _SRD_AUX_DATA_A				0x60814
 #define _SRD_AUX_DATA_EDP			0x6f814
-#define EDP_PSR_AUX_DATA(tran, i)		_MMIO(_PSR_ADJ(tran, _SRD_AUX_DATA_A) + (i) + 4) /* 5 registers */
+#define EDP_PSR_AUX_DATA(tran, i)		_MMIO(_TRANS2(tran, _SRD_AUX_DATA_A) + (i) + 4) /* 5 registers */
 
 #define _SRD_STATUS_A				0x60840
 #define _SRD_STATUS_EDP				0x6f840
-#define EDP_PSR_STATUS(tran)			_MMIO(_PSR_ADJ(tran, _SRD_STATUS_A))
+#define EDP_PSR_STATUS(tran)			_MMIO(_TRANS2(tran, _SRD_STATUS_A))
 #define   EDP_PSR_STATUS_STATE_MASK		(7 << 29)
 #define   EDP_PSR_STATUS_STATE_SHIFT		29
 #define   EDP_PSR_STATUS_STATE_IDLE		(0 << 29)
@@ -4601,13 +4590,13 @@ enum {
 
 #define _SRD_PERF_CNT_A			0x60844
 #define _SRD_PERF_CNT_EDP		0x6f844
-#define EDP_PSR_PERF_CNT(tran)		_MMIO(_PSR_ADJ(tran, _SRD_PERF_CNT_A))
+#define EDP_PSR_PERF_CNT(tran)		_MMIO(_TRANS2(tran, _SRD_PERF_CNT_A))
 #define   EDP_PSR_PERF_CNT_MASK		0xffffff
 
 /* PSR_MASK on SKL+ */
 #define _SRD_DEBUG_A				0x60860
 #define _SRD_DEBUG_EDP				0x6f860
-#define EDP_PSR_DEBUG(tran)			_MMIO(_PSR_ADJ(tran, _SRD_DEBUG_A))
+#define EDP_PSR_DEBUG(tran)			_MMIO(_TRANS2(tran, _SRD_DEBUG_A))
 #define   EDP_PSR_DEBUG_MASK_MAX_SLEEP         (1 << 28)
 #define   EDP_PSR_DEBUG_MASK_LPSP              (1 << 27)
 #define   EDP_PSR_DEBUG_MASK_MEMUP             (1 << 26)
-- 
2.32.0

