Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C16D3D6E93
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jul 2021 08:01:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89EBB6EA13;
	Tue, 27 Jul 2021 06:01:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93F7E6EA13
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Jul 2021 06:01:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10057"; a="210485578"
X-IronPort-AV: E=Sophos;i="5.84,272,1620716400"; d="scan'208";a="210485578"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2021 23:01:01 -0700
X-IronPort-AV: E=Sophos;i="5.84,272,1620716400"; d="scan'208";a="662488604"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2021 23:01:01 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 26 Jul 2021 23:00:46 -0700
Message-Id: <20210727060046.2040579-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/adl_p: Allow underrun recovery when
 possible
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

ADL_P requires that we disable underrun recovery when downscaling (or
using the scaler for YUV420 pipe output), using DSC, or using PSR2.
Otherwise we should be able to enable the underrun recovery.

On DG2 we need to keep underrun recovery disabled at all times, but the
chicken bit in PIPE_CHICKEN has an inverted meaning (it's an enable bit
instead of disable).

Bspec: 50351
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 50 +++++++++++++-------
 drivers/gpu/drm/i915/i915_reg.h              |  3 +-
 2 files changed, 36 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index bd533813e5e2..b861b169fb82 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2211,8 +2211,26 @@ void intel_display_finish_reset(struct drm_i915_private *dev_priv)
 	clear_bit_unlock(I915_RESET_MODESET, &dev_priv->gt.reset.flags);
 }
 
-static void icl_set_pipe_chicken(struct intel_crtc *crtc)
+static bool underrun_recovery_supported(const struct intel_crtc_state *crtc_state)
 {
+	if (crtc_state->pch_pfit.enabled &&
+	    (crtc_state->pipe_src_w > drm_rect_width(&crtc_state->pch_pfit.dst) ||
+	     crtc_state->pipe_src_h > drm_rect_height(&crtc_state->pch_pfit.dst) ||
+	     crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420))
+		return false;
+
+	if (crtc_state->dsc.compression_enable)
+		return false;
+
+	if (crtc_state->has_psr2)
+		return false;
+
+	return true;
+}
+
+static void icl_set_pipe_chicken(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
 	u32 tmp;
@@ -2233,19 +2251,19 @@ static void icl_set_pipe_chicken(struct intel_crtc *crtc)
 	 */
 	tmp |= PIXEL_ROUNDING_TRUNC_FB_PASSTHRU;
 
-	/*
-	 * "The underrun recovery mechanism should be disabled
-	 *  when the following is enabled for this pipe:
-	 *  WiDi
-	 *  Downscaling (this includes YUV420 fullblend)
-	 *  COG
-	 *  DSC
-	 *  PSR2"
-	 *
-	 * FIXME: enable whenever possible...
-	 */
-	if (IS_ALDERLAKE_P(dev_priv))
-		tmp |= UNDERRUN_RECOVERY_DISABLE;
+	if (IS_DG2(dev_priv)) {
+		/*
+		 * Underrun recovery must always be disabled on DG2.  However
+		 * the chicken bit meaning is inverted compared to other
+		 * platforms.
+		 */
+		tmp &= ~UNDERRUN_RECOVERY_ENABLE_DG2;
+	} else if (DISPLAY_VER(dev_priv) >= 13) {
+		if (underrun_recovery_supported(crtc_state))
+			tmp |= UNDERRUN_RECOVERY_DISABLE_ADLP;
+		else
+			tmp &= ~UNDERRUN_RECOVERY_DISABLE_ADLP;
+	}
 
 	intel_de_write(dev_priv, PIPE_CHICKEN(pipe), tmp);
 }
@@ -3561,7 +3579,7 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 	hsw_set_linetime_wm(new_crtc_state);
 
 	if (DISPLAY_VER(dev_priv) >= 11)
-		icl_set_pipe_chicken(crtc);
+		icl_set_pipe_chicken(new_crtc_state);
 
 	if (dev_priv->display.initial_watermarks)
 		dev_priv->display.initial_watermarks(state, crtc);
@@ -10193,7 +10211,7 @@ static void intel_pipe_fastset(const struct intel_crtc_state *old_crtc_state,
 		hsw_set_linetime_wm(new_crtc_state);
 
 	if (DISPLAY_VER(dev_priv) >= 11)
-		icl_set_pipe_chicken(crtc);
+		icl_set_pipe_chicken(new_crtc_state);
 }
 
 static void commit_pipe_pre_planes(struct intel_atomic_state *state,
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index d5c67fd5dc7d..a10cdd1a3001 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -8416,7 +8416,8 @@ enum {
 #define _PIPEC_CHICKEN				0x72038
 #define PIPE_CHICKEN(pipe)			_MMIO_PIPE(pipe, _PIPEA_CHICKEN,\
 							   _PIPEB_CHICKEN)
-#define   UNDERRUN_RECOVERY_DISABLE		REG_BIT(30)
+#define   UNDERRUN_RECOVERY_DISABLE_ADLP	REG_BIT(30)
+#define   UNDERRUN_RECOVERY_ENABLE_DG2		REG_BIT(30)
 #define   PIXEL_ROUNDING_TRUNC_FB_PASSTHRU 	(1 << 15)
 #define   PER_PIXEL_ALPHA_BYPASS_EN		(1 << 7)
 
-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
