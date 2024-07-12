Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 11CE092FBEF
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jul 2024 15:57:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 863DC10EACF;
	Fri, 12 Jul 2024 13:57:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gTYhzBON";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 09E0710EACF
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jul 2024 13:57:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720792649; x=1752328649;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=teXB6mI0aVAcID2T4Stcyp12FtXg51MBHBgQDDp3RG0=;
 b=gTYhzBONF+tvUdmIvXHAO+vwbLQhRtSbaz2DqdNfE+tTh3hPsPUMd6ah
 Td85cO3/pciKB51ki0hJozeolhvDENEIzuyIv64wzpZ+/b0ft4C0GjgIa
 v1TY9OrviD4qjky7ZpZJMJffUtN2WCd9+jpdtFXljk+rInlEAu6m+CE0S
 ztJ4vnbwyFb/e30t+7PfxgXXiiJLtf25d24f+snsz8EJx54hZfWeooOoF
 1V183xGQDk+eKh8LU2R3V0CqMoxlzXfnk6hwlYx9lgqhnCR93EaExRb7C
 fMYwJOePne83MdyFPNMcG3v8T6wLwIXBty1zCuSRXVu6juQFVZ9ZTDHyM g==;
X-CSE-ConnectionGUID: aXwcbGWMSzOHE2mOASzA5A==
X-CSE-MsgGUID: rTzZ3f7rT3mZd9pnSRqxfw==
X-IronPort-AV: E=McAfee;i="6700,10204,11131"; a="28823536"
X-IronPort-AV: E=Sophos;i="6.09,202,1716274800"; d="scan'208";a="28823536"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2024 06:57:13 -0700
X-CSE-ConnectionGUID: rqA3qIN/SRavn2OU/uXglg==
X-CSE-MsgGUID: IzWTs2leTKm4EI9xqDMuQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,202,1716274800"; d="scan'208";a="53485084"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2024 06:57:11 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [PATCH 1/3] drm/i915/dp: Retrain SST links via a modeset commit
Date: Fri, 12 Jul 2024 16:57:22 +0300
Message-ID: <20240712135724.660399-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
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

Instead of direct calls of the link training functions, use a modeset
commit to retrain a DP link in SST mode, similarly to how this is done
in DP-MST mode. Originally the current way was chosen presumedly,
because there wasn't a well-established way in place for the driver to
do an internal (vs. userspace/kernel client) commit. Since then such
internal commits became a common place (initial-, HDMI/TC link reset
commit), so there is no reason to handle the DP-SST link-retraining case
differently.

At the end of the current sequence the HW reported a FIFO underrun -
without other issues visible to users - because during retraining the
link's encoder/port was disabled/re-enabled without also
disabling/re-enabling the corresponding pipe/transcoder (as required by
the spec); the corresponding underrun error message was suppressed as a
known issue. Based on Ankit's test on DG2 the underrun error was still
reported as it got detected with some (vblank) delay wrt. other
platforms. Switching to a modeset commit resolves these underrun related
issues.

Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 67 ++++---------------------
 1 file changed, 9 insertions(+), 58 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index d4b1b18453dca..f83128ac60756 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5242,8 +5242,6 @@ static int intel_dp_retrain_link(struct intel_encoder *encoder,
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
-	struct intel_crtc *crtc;
-	bool mst_output = false;
 	u8 pipe_mask;
 	int ret;
 
@@ -5272,64 +5270,17 @@ static int intel_dp_retrain_link(struct intel_encoder *encoder,
 		    encoder->base.base.id, encoder->base.name,
 		    str_yes_no(intel_dp->link.force_retrain));
 
-	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, crtc, pipe_mask) {
-		const struct intel_crtc_state *crtc_state =
-			to_intel_crtc_state(crtc->base.state);
+	ret = intel_modeset_commit_pipes(dev_priv, pipe_mask, ctx);
+	if (ret == -EDEADLK)
+		return ret;
 
-		if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST)) {
-			mst_output = true;
-			break;
-		}
+	intel_dp->link.force_retrain = false;
 
-		/* Suppress underruns caused by re-training */
-		intel_set_cpu_fifo_underrun_reporting(dev_priv, crtc->pipe, false);
-		if (crtc_state->has_pch_encoder)
-			intel_set_pch_fifo_underrun_reporting(dev_priv,
-							      intel_crtc_pch_transcoder(crtc), false);
-	}
-
-	/* TODO: use a modeset for SST as well. */
-	if (mst_output) {
-		ret = intel_modeset_commit_pipes(dev_priv, pipe_mask, ctx);
-
-		if (ret && ret != -EDEADLK)
-			drm_dbg_kms(&dev_priv->drm,
-				    "[ENCODER:%d:%s] link retraining failed: %pe\n",
-				    encoder->base.base.id, encoder->base.name,
-				    ERR_PTR(ret));
-
-		goto out;
-	}
-
-	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, crtc, pipe_mask) {
-		const struct intel_crtc_state *crtc_state =
-			to_intel_crtc_state(crtc->base.state);
-
-		intel_dp->link_trained = false;
-
-		intel_dp_check_frl_training(intel_dp);
-		intel_dp_pcon_dsc_configure(intel_dp, crtc_state);
-		intel_dp_start_link_train(NULL, intel_dp, crtc_state);
-		intel_dp_stop_link_train(intel_dp, crtc_state);
-		break;
-	}
-
-	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, crtc, pipe_mask) {
-		const struct intel_crtc_state *crtc_state =
-			to_intel_crtc_state(crtc->base.state);
-
-		/* Keep underrun reporting disabled until things are stable */
-		intel_crtc_wait_for_next_vblank(crtc);
-
-		intel_set_cpu_fifo_underrun_reporting(dev_priv, crtc->pipe, true);
-		if (crtc_state->has_pch_encoder)
-			intel_set_pch_fifo_underrun_reporting(dev_priv,
-							      intel_crtc_pch_transcoder(crtc), true);
-	}
-
-out:
-	if (ret != -EDEADLK)
-		intel_dp->link.force_retrain = false;
+	if (ret)
+		drm_dbg_kms(&dev_priv->drm,
+			    "[ENCODER:%d:%s] link retraining failed: %pe\n",
+			    encoder->base.base.id, encoder->base.name,
+			    ERR_PTR(ret));
 
 	return ret;
 }
-- 
2.44.2

