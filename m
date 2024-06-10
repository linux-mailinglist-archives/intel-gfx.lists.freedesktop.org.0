Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 29D07902710
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2024 18:49:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28D9710E417;
	Mon, 10 Jun 2024 16:49:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WITzTHgc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 513DA10E34E
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2024 16:49:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718038175; x=1749574175;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=t/RVBBSI/E2G2bEPPCMlkM7LgXVPU8w9QnsyqJD5Mic=;
 b=WITzTHgckj9ip0cCWz29YuwLFD5dX1hGMvU9ej4lvGMHkakQijCmLP92
 EAhhVbn536uqsLKu5nnv1zhK7qjV+Xc7MJxpIdaqVL4gxkBUqtBCWtYy1
 8U5lxn3/ZJTlwUzIaUASzrrIDdljHb1/J1L8dSgHLLAJ0zGFNcfbY2jXU
 EONVKs71l4E3z4pJgNwMnkUMUhKXRuDPSPj2hBuL9aFWzQ7Ev+EQrJRLC
 1B81kmN8C/qfXqZKzpNWc3GVPnWei2hhHZ8A0pxZRM9i0rREhDUAO1e0J
 +h/RG8G2FqA/gf9LiMVhgnueBQu0IqfJXrRRZglwiMSDX3s9RAhIeZaL9 g==;
X-CSE-ConnectionGUID: +01ZSqtqRqCNepOEuocFuA==
X-CSE-MsgGUID: Sy6gJaeuTuqQ7jx5lcFTxA==
X-IronPort-AV: E=McAfee;i="6600,9927,11099"; a="18493985"
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="18493985"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2024 09:49:35 -0700
X-CSE-ConnectionGUID: 3Ogd3N9jSpSVemN0w9BA+w==
X-CSE-MsgGUID: 3pZqKopGSc6E/hUJqcHgjA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="39060584"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2024 09:49:33 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [PATCH v3 06/21] drm/i915/dp: Use a commit modeset for link
 retraining MST links
Date: Mon, 10 Jun 2024 19:49:18 +0300
Message-ID: <20240610164933.2947366-7-imre.deak@intel.com>
X-Mailer: git-send-email 2.43.3
In-Reply-To: <20240610164933.2947366-1-imre.deak@intel.com>
References: <20240610164933.2947366-1-imre.deak@intel.com>
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

Instead of direct calls to the link train functions, retrain the link
via a commit modeset. The direct call means that the output port will be
disabled/re-enabled while the rest of the pipeline (transcoder) is
active, which doesn't seem to work on MST at least. It leads to
underruns and black screen, presumedly because the transcoder is not
disabled/re-enabled along the port.

Leave switching to a commit modeset on SST for a later patchset, as that
seems to work ok currently (though better to using a commit there too,
due to the suppressed underruns).

v2: Keep reverse line length order for local variables. (Ville)

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 25 +++++++++++++++++++------
 1 file changed, 19 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 825116ea31bb8..a38e1f89cfb86 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5149,6 +5149,7 @@ int intel_dp_retrain_link(struct intel_encoder *encoder,
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	struct intel_crtc *crtc;
+	bool mst_output = false;
 	u8 pipe_mask;
 	int ret;
 
@@ -5180,6 +5181,11 @@ int intel_dp_retrain_link(struct intel_encoder *encoder,
 		const struct intel_crtc_state *crtc_state =
 			to_intel_crtc_state(crtc->base.state);
 
+		if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST)) {
+			mst_output = true;
+			break;
+		}
+
 		/* Suppress underruns caused by re-training */
 		intel_set_cpu_fifo_underrun_reporting(dev_priv, crtc->pipe, false);
 		if (crtc_state->has_pch_encoder)
@@ -5187,16 +5193,23 @@ int intel_dp_retrain_link(struct intel_encoder *encoder,
 							      intel_crtc_pch_transcoder(crtc), false);
 	}
 
+	/* TODO: use a modeset for SST as well. */
+	if (mst_output) {
+		ret = intel_modeset_commit_pipes(dev_priv, pipe_mask, ctx);
+
+		if (ret && ret != -EDEADLK)
+			drm_dbg_kms(&dev_priv->drm,
+				    "[ENCODER:%d:%s] link retraining failed: %pe\n",
+				    encoder->base.base.id, encoder->base.name,
+				    ERR_PTR(ret));
+
+		return ret;
+	}
+
 	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, crtc, pipe_mask) {
 		const struct intel_crtc_state *crtc_state =
 			to_intel_crtc_state(crtc->base.state);
 
-		/* retrain on the MST master transcoder */
-		if (DISPLAY_VER(dev_priv) >= 12 &&
-		    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST) &&
-		    !intel_dp_mst_is_master_trans(crtc_state))
-			continue;
-
 		intel_dp_check_frl_training(intel_dp);
 		intel_dp_pcon_dsc_configure(intel_dp, crtc_state);
 		intel_dp_start_link_train(intel_dp, crtc_state);
-- 
2.43.3

