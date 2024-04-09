Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9173C89E083
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Apr 2024 18:35:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF5A8112B16;
	Tue,  9 Apr 2024 16:35:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iGqmJD3y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDB3B112518
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Apr 2024 16:35:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712680511; x=1744216511;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VxJ3cH8M2pyMxMsSBubFGZawTMeLcSnKg1yRlpi1vJk=;
 b=iGqmJD3ycDa+3OparI9q4Lsm+dtTZuiC2bvSb74iDx0F8Daj9m162eoc
 Lh+p4Od/ciYgGIRPhqaaWvwkjqlw/jaRrLykW8bwq2srv9dlSijK/ItVg
 GeD0hp5gXb17qljgxk5NVPwvlNnHs8iiDp2GQmw1wMSYlldzOXkagNgr/
 BxDy1x6v3/MHg1iXTxp2LwojzCHPnW1+nzOHk7CTg5QRckuOdus8FbP7p
 6xgYd3jx0iJ+2ocl4gBvxi38JTcP3F98RoK2IAYpKZzKhgQSfGoLMYre5
 91SsubnRhm6Lad9ctPVhoegquhJICM1/nTCOFwCqUwFvPpD9C7rB8IPsk g==;
X-CSE-ConnectionGUID: 9c88i9AZSKaWCHArERf2Yw==
X-CSE-MsgGUID: G/okWGI6SseHBtydK0bBwQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11039"; a="18570853"
X-IronPort-AV: E=Sophos;i="6.07,189,1708416000"; d="scan'208";a="18570853"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2024 09:35:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11039"; a="827792679"
X-IronPort-AV: E=Sophos;i="6.07,189,1708416000"; d="scan'208";a="827792679"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 09 Apr 2024 09:35:09 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 09 Apr 2024 19:35:08 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Vidya Srinivas <vidya.srinivas@intel.com>,
 Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCH v3 2/6] drm/i915: Utilize intel_crtc_joined_pipe_mask() more
Date: Tue,  9 Apr 2024 19:34:58 +0300
Message-ID: <20240409163502.29633-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240409163502.29633-1-ville.syrjala@linux.intel.com>
References: <20240409163502.29633-1-ville.syrjala@linux.intel.com>
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Unify the master vs. slave handling in
intel_ddi_post_disable_hdmi_or_sst() by looping over all the
pipes in one go.

This also lets us move the intel_crtc_vblank_off() calls to
happen in a consistent place vs. the transcoder disable.
Previously we did the master vs. slaves on different sides
of that.

v2: Use the name 'pipe_crtc' for the per-pipe crtc pointer

Tested-by: Vidya Srinivas <vidya.srinivas@intel.com>
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 33 ++++++++++++------------
 1 file changed, 17 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 6d1b3de3045b..deaed9ff3f95 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3097,30 +3097,31 @@ static void intel_ddi_post_disable_hdmi_or_sst(struct intel_atomic_state *state,
 					       const struct drm_connector_state *old_conn_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	struct intel_crtc *slave_crtc;
+	struct intel_crtc *pipe_crtc;
 
-	intel_crtc_vblank_off(old_crtc_state);
+	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, pipe_crtc,
+					 intel_crtc_joined_pipe_mask(old_crtc_state)) {
+		const struct intel_crtc_state *old_pipe_crtc_state =
+			intel_atomic_get_old_crtc_state(state, pipe_crtc);
+
+		intel_crtc_vblank_off(old_pipe_crtc_state);
+	}
 
 	intel_disable_transcoder(old_crtc_state);
 
 	intel_ddi_disable_transcoder_func(old_crtc_state);
 
-	intel_dsc_disable(old_crtc_state);
+	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, pipe_crtc,
+					 intel_crtc_joined_pipe_mask(old_crtc_state)) {
+		const struct intel_crtc_state *old_pipe_crtc_state =
+			intel_atomic_get_old_crtc_state(state, pipe_crtc);
 
-	if (DISPLAY_VER(dev_priv) >= 9)
-		skl_scaler_disable(old_crtc_state);
-	else
-		ilk_pfit_disable(old_crtc_state);
+		intel_dsc_disable(old_pipe_crtc_state);
 
-	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, slave_crtc,
-					 intel_crtc_bigjoiner_slave_pipes(old_crtc_state)) {
-		const struct intel_crtc_state *old_slave_crtc_state =
-			intel_atomic_get_old_crtc_state(state, slave_crtc);
-
-		intel_crtc_vblank_off(old_slave_crtc_state);
-
-		intel_dsc_disable(old_slave_crtc_state);
-		skl_scaler_disable(old_slave_crtc_state);
+		if (DISPLAY_VER(dev_priv) >= 9)
+			skl_scaler_disable(old_pipe_crtc_state);
+		else
+			ilk_pfit_disable(old_pipe_crtc_state);
 	}
 }
 
-- 
2.43.2

