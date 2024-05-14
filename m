Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AEDE88C5B90
	for <lists+intel-gfx@lfdr.de>; Tue, 14 May 2024 21:14:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3D3610E859;
	Tue, 14 May 2024 19:14:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="L1Wklnpq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B207B10E53F
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 May 2024 19:14:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715714062; x=1747250062;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=t7fjGSZMw9Lcbb/lEMiMgezF8gn7u6IXU2kOlp3l8C0=;
 b=L1Wklnpqp94bSwGCxl8m85/k/61Qep8S1J+6akYaOseXkbhz7M+jpV6/
 baZRnp0oD0uE7ny+5mXbYANnb2ESe4/2zdQKdLyzfT1n+Dwi+dE0j6qmI
 SDedqh0rEDIbkbWw7zfb+o1zyYBt6oc4d1Lj30pwpJl689b+Xo0CeORvF
 rIgjLQ2H7VyJcFpuPC+S8cBGZj/6IPEWxSd9fv1gVaO5IUXA+1kT+qkV/
 Ddyl1KNyXq+PukkcCo7aqH/4YsJDSFZl7C2hX+NmDEBsy/63j1q5lfxEw
 xayq9GSh0FMIfvqj6RMlEqgxFwq/YMyvAngk1nPH7uorBkAjer6qPXsDD Q==;
X-CSE-ConnectionGUID: OrNiAbVdRsG13eezLagFBw==
X-CSE-MsgGUID: J1GCeQwTRXq2rfkfsDq3Cw==
X-IronPort-AV: E=McAfee;i="6600,9927,11073"; a="23124988"
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="23124988"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2024 12:14:22 -0700
X-CSE-ConnectionGUID: LdlC8aVYRc+4z9s9KsUkDw==
X-CSE-MsgGUID: 2dULMEbkRyKV3oalRtHFUw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="30724602"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2024 12:14:20 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 06/20] drm/i915/dp: Use a commit modeset for link retraining
 MST links
Date: Tue, 14 May 2024 22:14:04 +0300
Message-ID: <20240514191418.2863344-7-imre.deak@intel.com>
X-Mailer: git-send-email 2.43.3
In-Reply-To: <20240514191418.2863344-1-imre.deak@intel.com>
References: <20240514191418.2863344-1-imre.deak@intel.com>
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

Instead of direct calls to the link train functions, retrain the link
via a commit modeset. The direct call means that the output port will be
disabled/re-enabled while the rest of the pipeline (transcoder) is
active, which doesn't seem to work on MST at least. It leads to
underruns and black screen, presumedly because the transcoder is not
disabled/re-enabled along the port.

Leave switching to a commit modeset on SST for a later patchset, as that
seems to work ok currently (though better to using a commit there too,
due to the suppressed underruns).

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 25 +++++++++++++++++++------
 1 file changed, 19 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 9951ea8d0a139..abf1aec2f3217 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5147,6 +5147,7 @@ int intel_dp_retrain_link(struct intel_encoder *encoder,
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	struct intel_crtc *crtc;
 	u8 pipe_mask;
+	bool mst_output = false;
 	int ret;
 
 	if (!intel_dp_is_connected(intel_dp))
@@ -5177,6 +5178,11 @@ int intel_dp_retrain_link(struct intel_encoder *encoder,
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
@@ -5184,16 +5190,23 @@ int intel_dp_retrain_link(struct intel_encoder *encoder,
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

