Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B08387A55F
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Mar 2024 11:00:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF80A10F218;
	Wed, 13 Mar 2024 10:00:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JFk59fx+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F064A10F1CB
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Mar 2024 10:00:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710324007; x=1741860007;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Ag5+QJ4zrtdkwqiaghPzf2eON843nLMN6OV58VV5iVY=;
 b=JFk59fx+ucW/ALt+KcAJqR6mNNRp0F3vwSg6v1NhKsrNJ4YTQUMc+7J/
 f9oCO7ruG9bfE7C2dPUiE7jHE1e5YJeCj+Wpp1vyKhmrtA8fpCBlPZe0X
 jT3O7kDUxX7fRiyFhyW9bGvO6Q5uSiexTq3lmlLQkMbG1q5Z/AzdmYtzg
 WmCyarCmaKUz4+zrqRXSX0AXsxE7ahmAU7FJRmw9npEPxhQreF2jYw0QB
 NWjW4rme1ME66hpy0to6DVpsrEUaaxqqUWKkQtRe9MEh0S0pA2xmlLJyq
 qs+sbFIaYsUFdILfd0lMvT602/903tcumCWzakutntgytL0KUhlcaDBPi g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11011"; a="8885988"
X-IronPort-AV: E=Sophos;i="6.07,122,1708416000"; 
   d="scan'208";a="8885988"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2024 02:59:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,122,1708416000"; d="scan'208";a="11931503"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by fmviesa006.fm.intel.com with ESMTP; 13 Mar 2024 02:59:55 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Stanislav.Lisovskiy@intel.com, jani.saarinen@intel.com,
 ville.syrjala@linux.intel.com, vidya.srinivas@intel.com
Subject: [PATCH 3/6] drm/i915: Utilize intel_crtc_joined_pipe_mask() more
Date: Wed, 13 Mar 2024 11:59:46 +0200
Message-Id: <20240313095949.6898-4-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20240313095949.6898-1-stanislav.lisovskiy@intel.com>
References: <20240313095949.6898-1-stanislav.lisovskiy@intel.com>
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

