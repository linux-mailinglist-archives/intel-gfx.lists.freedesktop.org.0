Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A52508764C5
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Mar 2024 14:11:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B2D110F9DD;
	Fri,  8 Mar 2024 13:11:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fOtYr5es";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A28B10F32C
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Mar 2024 13:11:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709903515; x=1741439515;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QJrj/IqL869Ragdvjm7I4pjI/RKbEJ2JajlLGpVLkis=;
 b=fOtYr5esxEMRl/46sFZS8X01mQC/i5lv9Zcl7Go2FL/7FYC2C4EGefTb
 EjRGCuD2lZQEBqfHdVjXHuWubFcW8QiDFGLvZuAujl/qFpYbIuy50B6EL
 T1EPDTNAf0Yz9XzeC/qyNaTKm7FjvU6dDUBaag5AJpUe2OIETQPc/3TlC
 1NUgIxmTWCsPUi/DXS2AUCSzOXuh+Dig7YJ8RnVh7kR2pknrJTt7+0HZ4
 cHKWIcTRhikmKf1s0rtycQnYh2lNBty+jzwB/gEL2RMJmb+w7GrKnN5Vv
 ftGWzwWSZBx0DMJsfxeFWVRKfCXN3jxMOTs9OfgAOWrIWnuNsIIeO1tli Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11006"; a="4760588"
X-IronPort-AV: E=Sophos;i="6.07,109,1708416000"; 
   d="scan'208";a="4760588"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2024 05:11:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,109,1708416000"; d="scan'208";a="10470388"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by orviesa010.jf.intel.com with ESMTP; 08 Mar 2024 05:11:54 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Stanislav.Lisovskiy@intel.com, jani.saarinen@intel.com,
 ville.syrjala@linux.intel.com, vidya.srinivas@intel.com
Subject: [PATCH 3/6] drm/i915: Utilize intel_crtc_joined_pipe_mask() more
Date: Fri,  8 Mar 2024 15:11:43 +0200
Message-Id: <20240308131146.32714-4-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20240308131146.32714-1-stanislav.lisovskiy@intel.com>
References: <20240308131146.32714-1-stanislav.lisovskiy@intel.com>
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

Unify the master vs. slave handling in
intel_ddi_post_disable_hdmi_or_sst() by looping over all the
pipes in one go.

This also lets us move the intel_crtc_vblank_off() calls to
happen in a consistent place vs. the transcoder disable.
Previously we did the master vs. slaves on different sides
of that.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Credits-to: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 34 ++++++++++++------------
 1 file changed, 17 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 5628a4ab608d4..15441674c6f58 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3097,34 +3097,34 @@ static void intel_ddi_post_disable_hdmi(struct intel_atomic_state *state,
 
 static void intel_ddi_post_disable_hdmi_or_sst(struct intel_atomic_state *state,
 					       struct intel_encoder *encoder,
-					       const struct intel_crtc_state *old_master_crtc_state,
+					       const struct intel_crtc_state *old_crtc_state,
 					       const struct drm_connector_state *old_conn_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	struct intel_crtc *slave_crtc;
+	u8 pipe_mask = intel_crtc_joined_pipe_mask(old_crtc_state);
+	struct intel_crtc *crtc;
+
+	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, crtc, pipe_mask) {
+		const struct intel_crtc_state *_old_crtc_state =
+			intel_atomic_get_old_crtc_state(state, crtc);
 
-	intel_crtc_vblank_off(old_crtc_state);
+		intel_crtc_vblank_off(_old_crtc_state);
+	}
 
 	intel_disable_transcoder(old_crtc_state);
 
 	intel_ddi_disable_transcoder_func(old_crtc_state);
 
-	intel_dsc_disable(old_crtc_state);
+	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, crtc, pipe_mask) {
+		const struct intel_crtc_state *_old_crtc_state =
+			intel_atomic_get_old_crtc_state(state, crtc);
 
-	if (DISPLAY_VER(dev_priv) >= 9)
-		skl_scaler_disable(old_crtc_state);
-	else
-		ilk_pfit_disable(old_crtc_state);
+		intel_dsc_disable(_old_crtc_state);
 
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
+			skl_scaler_disable(_old_crtc_state);
+		else
+			ilk_pfit_disable(_old_crtc_state);
 	}
 }
 
-- 
2.37.3

