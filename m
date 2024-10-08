Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EBD5994CB5
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Oct 2024 14:58:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5227E10E052;
	Tue,  8 Oct 2024 12:58:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lu9eaBjF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC92F10E052;
 Tue,  8 Oct 2024 12:57:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728392280; x=1759928280;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=+Z8vB1SAiD56DnB2Qowlv2O4i6Wk83SaeRnBgVd8J2g=;
 b=lu9eaBjFOPc6jc8UMzE1HpzWYG/bOcQ1tI0flc9igvPcIEA8iCrpg+td
 9NNpWL35eCSPxEsglwjroJ1K00cTjdEd3AXVkqGX0HJSIIo0FPr1XGv98
 9xMo6EdmECyVxO0x1X643aY6gbnBBHSaK8mCjd17TaqpV2O40cBBOIYdv
 IoSLVXuFrne2gJ4Kd585Sq+tF1fMO9g5eOwRg48rrHEVT2uTRmMCmlJI3
 GPgo3YyahRsTASh2aYvi2kB0+5o/xmtVlHh6MH1pf+sOLB85FsScxu/Ql
 IHQBDdSpQmeG+o49K2B09UgF8B3pruy9W1CV2k9C/L+jOUGinqfdPjQ94 Q==;
X-CSE-ConnectionGUID: CvZiM2LfQZ+IuS2yt6PSZA==
X-CSE-MsgGUID: w3h72V7yS+OAjQqYbJOs1A==
X-IronPort-AV: E=McAfee;i="6700,10204,11219"; a="27721496"
X-IronPort-AV: E=Sophos;i="6.11,187,1725346800"; d="scan'208,223";a="27721496"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2024 05:57:59 -0700
X-CSE-ConnectionGUID: kXrRILPBSpyVeN37vqDkAA==
X-CSE-MsgGUID: +tA6gr2gT2S7ldfdjwJt6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,187,1725346800"; d="scan'208,223";a="76087668"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by orviesa006.jf.intel.com with ESMTP; 08 Oct 2024 05:57:58 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: nagavenkata.srikanth.v@intel.com,
	jani.nikula@linux.intel.com
Subject: [v2] drm/i915/dp: Add FEC Enable Retry mechanism
Date: Tue,  8 Oct 2024 18:23:31 +0530
Message-Id: <20241008125331.2893681-1-chaitanya.kumar.borah@intel.com>
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

From PTL, FEC_DECODE_EN sequence can be sent to a DPRX independent
of TRANS_CONF enable. This allows us to re-issue an FEC_DECODE_EN
sequence without re-doing the whole mode set sequence. This separate
control over FEC_ECODE_EN/DIS sequence enables us to have a retry
mechanism in case the DPRX does not respond with an FEC_ENABLE
within the stipulated 5ms.

v2:
 - Refactor code to avoid duplication and improve readability [Jani]
 - In case of PTL, wait for FEC status directly after FEC enable [Srikanth]
 - Wait for FEC_ENABLE_LIVE_STATUS to be cleared before
   re-enabling FEC [Srikanth]

Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c    | 79 +++++++++++++++++----
 drivers/gpu/drm/i915/display/intel_ddi.h    |  2 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c |  4 +-
 3 files changed, 67 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index fe1ded6707f9..047816a427d5 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2256,30 +2256,74 @@ static int read_fec_detected_status(struct drm_dp_aux *aux)
 	return status;
 }
 
-static void wait_for_fec_detected(struct drm_dp_aux *aux, bool enabled)
+static void retry_fec_enable(struct intel_encoder *encoder,
+			     const struct intel_crtc_state *crtc_state,
+		struct drm_dp_aux *aux)
+{
+	struct drm_i915_private *i915 = to_i915(aux->drm_dev);
+	int ret = 0;
+
+	ret = intel_de_wait_for_clear(i915, dp_tp_status_reg(encoder, crtc_state),
+				      DP_TP_STATUS_FEC_ENABLE_LIVE, 1);
+
+	if (ret)
+		drm_err(&i915->drm,
+			"Timeout waiting for FEC live state to get disabled during retry\n");
+
+	/* Clear FEC enable */
+	intel_de_rmw(i915, dp_tp_ctl_reg(encoder, crtc_state),
+		     DP_TP_CTL_FEC_ENABLE, 0);
+
+	/* Set FEC enable */
+	intel_de_rmw(i915, dp_tp_ctl_reg(encoder, crtc_state),
+		     0, DP_TP_CTL_FEC_ENABLE);
+
+	ret = intel_de_wait_for_set(i915, dp_tp_status_reg(encoder, crtc_state),
+				    DP_TP_STATUS_FEC_ENABLE_LIVE, 1);
+	if (!ret)
+		drm_dbg_kms(&i915->drm,
+			    "Timeout waiting for FEC live state to get enabled");
+}
+
+static void wait_for_fec_detected(struct intel_encoder *encoder,
+				  const struct intel_crtc_state *crtc_state,
+		struct drm_dp_aux *aux, bool enabled, bool retry)
 {
 	struct drm_i915_private *i915 = to_i915(aux->drm_dev);
 	int mask = enabled ? DP_FEC_DECODE_EN_DETECTED : DP_FEC_DECODE_DIS_DETECTED;
 	int status;
 	int err;
+	int max_retries = retry ? 3 : 1;
 
-	err = readx_poll_timeout(read_fec_detected_status, aux, status,
-				 status & mask || status < 0,
-				 10000, 200000);
+	for (int retrycount = 0; retrycount < max_retries; retrycount++) {
+		err = readx_poll_timeout(read_fec_detected_status, aux, status,
+					 status & mask || status < 0,
+					 retry ? 500 : 10000,
+					 retry ? 5000 : 200000);
 
-	if (!err && status >= 0)
-		return;
+		if (!err && status >= 0)
+			return;
 
-	if (err == -ETIMEDOUT)
-		drm_dbg_kms(&i915->drm, "Timeout waiting for FEC %s to get detected\n",
-			    str_enabled_disabled(enabled));
-	else
-		drm_dbg_kms(&i915->drm, "FEC detected status read error: %d\n", status);
+		if (err == -ETIMEDOUT) {
+			drm_dbg_kms(&i915->drm,
+				    "Timeout waiting for FEC %s to get detected, retrying (%d/%d)\n",
+				    str_enabled_disabled(enabled), retrycount + 1, max_retries);
+
+			if (retry && enabled)
+				retry_fec_enable(encoder, crtc_state, aux);
+		} else {
+			drm_dbg_kms(&i915->drm, "FEC detected status read error: %d\n", status);
+			return;
+		}
+	}
+
+	drm_err(&i915->drm, "FEC %s Failed after %d attempts\n",
+		str_enabled_disabled(enabled), max_retries);
 }
 
 void intel_ddi_wait_for_fec_status(struct intel_encoder *encoder,
 				   const struct intel_crtc_state *crtc_state,
-				   bool enabled)
+				   bool enabled, bool retry)
 {
 	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
@@ -2305,7 +2349,7 @@ void intel_ddi_wait_for_fec_status(struct intel_encoder *encoder,
 	 * FEC decoding disabling so skip waiting for that.
 	 */
 	if (enabled)
-		wait_for_fec_detected(&intel_dp->aux, enabled);
+		wait_for_fec_detected(encoder, crtc_state, &intel_dp->aux, enabled, retry);
 }
 
 static void intel_ddi_enable_fec(struct intel_encoder *encoder,
@@ -2318,6 +2362,9 @@ static void intel_ddi_enable_fec(struct intel_encoder *encoder,
 
 	intel_de_rmw(dev_priv, dp_tp_ctl_reg(encoder, crtc_state),
 		     0, DP_TP_CTL_FEC_ENABLE);
+
+	if (DISPLAY_VER(dev_priv) >= 30)
+		intel_ddi_wait_for_fec_status(encoder, crtc_state, true, true);
 }
 
 static void intel_ddi_disable_fec(struct intel_encoder *encoder,
@@ -3010,7 +3057,7 @@ static void intel_disable_ddi_buf(struct intel_encoder *encoder,
 		disable_ddi_buf(encoder, crtc_state);
 	}
 
-	intel_ddi_wait_for_fec_status(encoder, crtc_state, false);
+	intel_ddi_wait_for_fec_status(encoder, crtc_state, false, false);
 }
 
 static void intel_ddi_post_disable_dp(struct intel_atomic_state *state,
@@ -3383,6 +3430,7 @@ static void intel_enable_ddi(struct intel_atomic_state *state,
 			     const struct intel_crtc_state *crtc_state,
 			     const struct drm_connector_state *conn_state)
 {
+	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
 	struct intel_display *display = to_intel_display(encoder);
 	struct intel_crtc *pipe_crtc;
 	int i;
@@ -3394,7 +3442,8 @@ static void intel_enable_ddi(struct intel_atomic_state *state,
 
 	intel_enable_transcoder(crtc_state);
 
-	intel_ddi_wait_for_fec_status(encoder, crtc_state, true);
+	if (DISPLAY_VER(i915) < 30)
+		intel_ddi_wait_for_fec_status(encoder, crtc_state, true, false);
 
 	for_each_pipe_crtc_modeset_enable(display, pipe_crtc, crtc_state, i) {
 		const struct intel_crtc_state *pipe_crtc_state =
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.h b/drivers/gpu/drm/i915/display/intel_ddi.h
index 6d85422bdefe..981e7702e11e 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.h
+++ b/drivers/gpu/drm/i915/display/intel_ddi.h
@@ -65,7 +65,7 @@ void intel_ddi_enable_transcoder_clock(struct intel_encoder *encoder,
 void intel_ddi_disable_transcoder_clock(const  struct intel_crtc_state *crtc_state);
 void intel_ddi_wait_for_fec_status(struct intel_encoder *encoder,
 				   const struct intel_crtc_state *crtc_state,
-				   bool enabled);
+				   bool enabled, bool retry);
 void intel_ddi_set_dp_msa(const struct intel_crtc_state *crtc_state,
 			  const struct drm_connector_state *conn_state);
 bool intel_ddi_connector_get_hw_state(struct intel_connector *intel_connector);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 732d7543ad06..226ac9a73a55 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1289,8 +1289,8 @@ static void intel_mst_enable_dp(struct intel_atomic_state *state,
 
 	wait_for_act_sent(encoder, pipe_config);
 
-	if (first_mst_stream)
-		intel_ddi_wait_for_fec_status(encoder, pipe_config, true);
+	if (first_mst_stream && DISPLAY_VER(dev_priv) < 30)
+		intel_ddi_wait_for_fec_status(encoder, pipe_config, true, false);
 
 	ret = drm_dp_add_payload_part2(&intel_dp->mst_mgr,
 				       drm_atomic_get_mst_payload_state(mst_state,
-- 
2.25.1

