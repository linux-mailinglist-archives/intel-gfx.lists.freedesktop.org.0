Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F0D93D3E24
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jul 2021 19:06:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DDC56F4B8;
	Fri, 23 Jul 2021 17:06:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA8B66F4B8
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Jul 2021 17:06:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10054"; a="199179816"
X-IronPort-AV: E=Sophos;i="5.84,264,1620716400"; d="scan'208";a="199179816"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2021 10:06:21 -0700
X-IronPort-AV: E=Sophos;i="5.84,264,1620716400"; d="scan'208";a="496422228"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2021 10:06:21 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 23 Jul 2021 10:06:18 -0700
Message-Id: <20210723170618.1477415-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Program chicken bit during DP MST
 sequence on TGL+
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

A new step has been added to the DP modeset sequences for all platforms
with display version 12 and beyond:  if enabling DP MST with FEC, we
need to set a chicken bit before enabling the transcoder.  The chicken
bit should be disabled again before disabling the transcoder (which we
can do unconditionally since it shouldn't be set anyway in non-MST
cases).

Bspec: 49190, 54128, 55424
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  4 ++++
 drivers/gpu/drm/i915/display/intel_dp_mst.c  | 14 +++++++-------
 drivers/gpu/drm/i915/i915_reg.h              | 19 ++++++++++---------
 3 files changed, 21 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 2b082e1827a8..902826202622 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1035,6 +1035,10 @@ void intel_disable_pipe(const struct intel_crtc_state *old_crtc_state)
 	if (!IS_I830(dev_priv))
 		val &= ~PIPECONF_ENABLE;
 
+	if (DISPLAY_VER(dev_priv) >= 12)
+		intel_de_rmw(dev_priv, CHICKEN_TRANS(cpu_transcoder),
+			     FECSTALL_DIS_DPTSTREAM_DPTTG, 0);
+
 	intel_de_write(dev_priv, reg, val);
 	if ((val & PIPECONF_ENABLE) == 0)
 		intel_wait_for_pipe_off(old_crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 3661cd19ce48..e2eb46337369 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -542,7 +542,7 @@ static void intel_mst_enable_dp(struct intel_atomic_state *state,
 	struct intel_digital_port *dig_port = intel_mst->primary;
 	struct intel_dp *intel_dp = &dig_port->dp;
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	u32 val;
+	enum transcoder trans = pipe_config->cpu_transcoder;
 
 	drm_WARN_ON(&dev_priv->drm, pipe_config->has_pch_encoder);
 
@@ -550,12 +550,8 @@ static void intel_mst_enable_dp(struct intel_atomic_state *state,
 
 	intel_ddi_enable_transcoder_func(encoder, pipe_config);
 
-	val = intel_de_read(dev_priv,
-			    TRANS_DDI_FUNC_CTL(pipe_config->cpu_transcoder));
-	val |= TRANS_DDI_DP_VC_PAYLOAD_ALLOC;
-	intel_de_write(dev_priv,
-		       TRANS_DDI_FUNC_CTL(pipe_config->cpu_transcoder),
-		       val);
+	intel_de_rmw(dev_priv, TRANS_DDI_FUNC_CTL(trans), 0,
+		     TRANS_DDI_DP_VC_PAYLOAD_ALLOC);
 
 	drm_dbg_kms(&dev_priv->drm, "active links %d\n",
 		    intel_dp->active_mst_links);
@@ -564,6 +560,10 @@ static void intel_mst_enable_dp(struct intel_atomic_state *state,
 
 	drm_dp_update_payload_part2(&intel_dp->mst_mgr);
 
+	if (DISPLAY_VER(dev_priv) >= 12 && pipe_config->fec_enable)
+		intel_de_rmw(dev_priv, CHICKEN_TRANS(trans), 0,
+			     FECSTALL_DIS_DPTSTREAM_DPTTG);
+
 	intel_enable_pipe(pipe_config);
 
 	intel_crtc_vblank_on(pipe_config);
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 8e1392028184..9f1f5e1228f8 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -8173,15 +8173,16 @@ enum {
 					    [TRANSCODER_B] = _CHICKEN_TRANS_B, \
 					    [TRANSCODER_C] = _CHICKEN_TRANS_C, \
 					    [TRANSCODER_D] = _CHICKEN_TRANS_D))
-#define  HSW_FRAME_START_DELAY_MASK	(3 << 27)
-#define  HSW_FRAME_START_DELAY(x)	((x) << 27) /* 0-3 */
-#define  VSC_DATA_SEL_SOFTWARE_CONTROL	(1 << 25) /* GLK and CNL+ */
-#define  DDI_TRAINING_OVERRIDE_ENABLE	(1 << 19)
-#define  DDI_TRAINING_OVERRIDE_VALUE	(1 << 18)
-#define  DDIE_TRAINING_OVERRIDE_ENABLE	(1 << 17) /* CHICKEN_TRANS_A only */
-#define  DDIE_TRAINING_OVERRIDE_VALUE	(1 << 16) /* CHICKEN_TRANS_A only */
-#define  PSR2_ADD_VERTICAL_LINE_COUNT   (1 << 15)
-#define  PSR2_VSC_ENABLE_PROG_HEADER    (1 << 12)
+#define  HSW_FRAME_START_DELAY_MASK	REG_GENMASK(28, 27)
+#define  HSW_FRAME_START_DELAY(x)	REG_FIELD_PREP(HSW_FRAME_START_DELAY_MASK, x)
+#define  VSC_DATA_SEL_SOFTWARE_CONTROL	REG_BIT(25) /* GLK and CNL+ */
+#define  FECSTALL_DIS_DPTSTREAM_DPTTG	REG_BIT(23)
+#define  DDI_TRAINING_OVERRIDE_ENABLE	REG_BIT(19)
+#define  DDI_TRAINING_OVERRIDE_VALUE	REG_BIT(18)
+#define  DDIE_TRAINING_OVERRIDE_ENABLE	REG_BIT(17) /* CHICKEN_TRANS_A only */
+#define  DDIE_TRAINING_OVERRIDE_VALUE	REG_BIT(16) /* CHICKEN_TRANS_A only */
+#define  PSR2_ADD_VERTICAL_LINE_COUNT	REG_BIT(15)
+#define  PSR2_VSC_ENABLE_PROG_HEADER	REG_BIT(12)
 
 #define DISP_ARB_CTL	_MMIO(0x45000)
 #define  DISP_FBC_MEMORY_WAKE		(1 << 31)
-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
