Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A78F79A6908
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Oct 2024 14:49:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54F2110E4D9;
	Mon, 21 Oct 2024 12:49:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IepJJF7k";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D42F10E4D5;
 Mon, 21 Oct 2024 12:49:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729514963; x=1761050963;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=MLLzebIESJtjILk1ZWMLMm0sOzklr1PpHokbV7g3e08=;
 b=IepJJF7k2aEcKPLctjLmKUSBd4PHtCYjt7EWdW+2nqW+eNtlGDpb6VM+
 9XCpwt1D2UxhziLML6idX+2mpEi0WK4pExHLSrJIWYLvkYinzBI0g55+s
 gxcNjvXVnwL2NLNxJ29Y2CuT9touFKVrai+N50Ya6GrpyGYLvnwT7Ovmb
 oTGJiguTh2KEQDBC2B7CAcYDqFZ3laZ1t1OehPAWygqzr61zkOEbTV9UW
 7s8krtT+fO0IsLSv8b4edeSkUHUfi2s/PNn5XxePtrHvklp/KzCjFGm82
 gQD9KqJUaBM0HQyl/YiQQRHPtiG5f9fAD/1JFbkPDJtUCwBgXw/veTRJG A==;
X-CSE-ConnectionGUID: Qi3k5lrcSMmEqEevTNmTkA==
X-CSE-MsgGUID: x6neUpuQSsGvUAjlFposIw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="39534868"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="39534868"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 05:49:22 -0700
X-CSE-ConnectionGUID: OQ2GIuK6SlGlkD2GcF6adA==
X-CSE-MsgGUID: C3zhrJ86QLS6vaGizUecxw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,220,1725346800"; d="scan'208";a="79110763"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmviesa006.fm.intel.com with ESMTP; 21 Oct 2024 05:49:19 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com, jani.nikula@linux.intel.com,
 nagavenkata.srikanth.v@intel.com
Subject: [v3] drm/i915/dp: Add FEC Enable Retry mechanism
Date: Mon, 21 Oct 2024 18:15:00 +0530
Message-Id: <20241021124500.3691030-1-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
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

Currently, even though there is a bit to control FEC enable/disable
individually, the FEC Decode Enable sequence is sent by the SOC only
once TRANS_CONF enable is set. This ties the FEC enabling too tightly
to modeset and therefore cannot be re-issued (in case of failure)
without a modeset.

From PTL, FEC_DECODE_EN sequence can be sent to a DPRX independent
of TRANS_CONF enable. This allows us to re-issue an FEC_DECODE_EN
sequence without a modeset. Hence allowing us to have a retry
mechanism in case the DPRX does not respond with an FEC_ENABLE
within certain amount of time.

v3:
 - Make the commit message more legible [Jani]
 - Refactor code to re-use existing code [Jani]
 - Do away with platform dependent FEC enable checks [Jani]

v2:
 - Refactor code to avoid duplication and improve readability [Jani]
 - In case of PTL, wait for FEC status directly after FEC enable [Srikanth]
 - Wait for FEC_ENABLE_LIVE_STATUS to be cleared before
   re-enabling FEC [Srikanth]

Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 57 +++++++++++++++++++-----
 drivers/gpu/drm/i915/display/intel_ddi.h |  6 +--
 2 files changed, 50 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index fe1ded6707f9..0e1e9e45e180 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2256,7 +2256,7 @@ static int read_fec_detected_status(struct drm_dp_aux *aux)
 	return status;
 }
 
-static void wait_for_fec_detected(struct drm_dp_aux *aux, bool enabled)
+static int wait_for_fec_detected(struct drm_dp_aux *aux, bool enabled)
 {
 	struct drm_i915_private *i915 = to_i915(aux->drm_dev);
 	int mask = enabled ? DP_FEC_DECODE_EN_DETECTED : DP_FEC_DECODE_DIS_DETECTED;
@@ -2268,25 +2268,27 @@ static void wait_for_fec_detected(struct drm_dp_aux *aux, bool enabled)
 				 10000, 200000);
 
 	if (!err && status >= 0)
-		return;
+		return err;
 
 	if (err == -ETIMEDOUT)
 		drm_dbg_kms(&i915->drm, "Timeout waiting for FEC %s to get detected\n",
 			    str_enabled_disabled(enabled));
 	else
 		drm_dbg_kms(&i915->drm, "FEC detected status read error: %d\n", status);
+
+	return err;
 }
 
-void intel_ddi_wait_for_fec_status(struct intel_encoder *encoder,
-				   const struct intel_crtc_state *crtc_state,
-				   bool enabled)
+int intel_ddi_wait_for_fec_status(struct intel_encoder *encoder,
+				  const struct intel_crtc_state *crtc_state,
+				  bool enabled)
 {
 	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
-	int ret;
+	int ret = 0;
 
 	if (!crtc_state->fec_enable)
-		return;
+		return ret;
 
 	if (enabled)
 		ret = intel_de_wait_for_set(i915, dp_tp_status_reg(encoder, crtc_state),
@@ -2297,27 +2299,62 @@ void intel_ddi_wait_for_fec_status(struct intel_encoder *encoder,
 
 	if (ret)
 		drm_err(&i915->drm,
-			"Timeout waiting for FEC live state to get %s\n",
-			str_enabled_disabled(enabled));
+			"Failure in FEC live state to get %s: %d\n",
+			str_enabled_disabled(enabled), ret);
 
 	/*
 	 * At least the Synoptics MST hub doesn't set the detected flag for
 	 * FEC decoding disabling so skip waiting for that.
 	 */
 	if (enabled)
-		wait_for_fec_detected(&intel_dp->aux, enabled);
+		ret = wait_for_fec_detected(&intel_dp->aux, enabled);
+
+	return ret;
 }
 
 static void intel_ddi_enable_fec(struct intel_encoder *encoder,
 				 const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	int i;
+	int ret;
 
 	if (!crtc_state->fec_enable)
 		return;
 
 	intel_de_rmw(dev_priv, dp_tp_ctl_reg(encoder, crtc_state),
 		     0, DP_TP_CTL_FEC_ENABLE);
+
+	if (DISPLAY_VER(dev_priv) < 30)
+		return;
+
+	for (i = 0; i < 3; i++) {
+		ret = intel_ddi_wait_for_fec_status(encoder, crtc_state, true);
+
+		if (!ret)
+			return;
+
+		drm_dbg_kms(&dev_priv->drm,
+			    "Failure waiting for FEC enabled to get detected (%d), retrying (%d/3)\n",
+			    ret, i + 1);
+
+		intel_de_rmw(dev_priv, dp_tp_ctl_reg(encoder, crtc_state),
+			     DP_TP_CTL_FEC_ENABLE, 0);
+
+		ret = intel_ddi_wait_for_fec_status(encoder, crtc_state, false);
+
+		if (ret)
+			drm_err(&dev_priv->drm,
+				"Timeout waiting for FEC live state to get disabled during retry\n");
+
+		intel_de_rmw(dev_priv, dp_tp_ctl_reg(encoder, crtc_state),
+			     0, DP_TP_CTL_FEC_ENABLE);
+	}
+
+	ret = intel_ddi_wait_for_fec_status(encoder, crtc_state, true);
+
+	if (ret)
+		drm_err(&dev_priv->drm, "Failed to enable FEC after 3 retries\n");
 }
 
 static void intel_ddi_disable_fec(struct intel_encoder *encoder,
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.h b/drivers/gpu/drm/i915/display/intel_ddi.h
index 6d85422bdefe..640851d46b1b 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.h
+++ b/drivers/gpu/drm/i915/display/intel_ddi.h
@@ -63,9 +63,9 @@ void intel_ddi_disable_transcoder_func(const struct intel_crtc_state *crtc_state
 void intel_ddi_enable_transcoder_clock(struct intel_encoder *encoder,
 				       const struct intel_crtc_state *crtc_state);
 void intel_ddi_disable_transcoder_clock(const  struct intel_crtc_state *crtc_state);
-void intel_ddi_wait_for_fec_status(struct intel_encoder *encoder,
-				   const struct intel_crtc_state *crtc_state,
-				   bool enabled);
+int intel_ddi_wait_for_fec_status(struct intel_encoder *encoder,
+				  const struct intel_crtc_state *crtc_state,
+				  bool enabled);
 void intel_ddi_set_dp_msa(const struct intel_crtc_state *crtc_state,
 			  const struct drm_connector_state *conn_state);
 bool intel_ddi_connector_get_hw_state(struct intel_connector *intel_connector);
-- 
2.25.1

