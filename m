Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E346902711
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2024 18:49:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A41C10E34E;
	Mon, 10 Jun 2024 16:49:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TUiEO9Ne";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3EBEB10E4EA
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2024 16:49:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718038174; x=1749574174;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=D+h2vvkpE8Df5hgBJjn8yjCseyILmFrITeolgF7gYl8=;
 b=TUiEO9NedD62H7gpd0F72Fb/cksoXBzc/NLopcfxVTZRXMukA0aXAmhQ
 cffdFEOM18eQSoWyAGwTxP61oAlphT6IuYkBd98dWN0BiuCvaYbLNDVoM
 QZbrlXvzxtCUkvW9G8QCrwyvPjkY9BPn2wEvSmg7dfQ7iZGz+Hl+JNViw
 m6Ay17UICrfk3wko+eJl/XcbzqK7dvYYwgJjl1KGifTFjaMIjIsbIvpdf
 ek/32J54vEVSQOHYC3CFWYH8ZVaqK0hWYuURAXbUjEF2YoX9t0FHq6pZf
 wUZYywyK2NiGzkQKXJ+Imj0iM9HyhDCmngxHIIGArhrtbcOSLvbhomQ6p g==;
X-CSE-ConnectionGUID: +OyBRLpTR/O+zz6XQ9Fp3Q==
X-CSE-MsgGUID: aR7WU+fsR3mOLF7kDJyalQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11099"; a="18493980"
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="18493980"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2024 09:49:33 -0700
X-CSE-ConnectionGUID: zrIzMcg0Rdipfl7QpgqFJA==
X-CSE-MsgGUID: NV8cbmkTSHafcFfcw+Lc6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="39060575"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2024 09:49:32 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [PATCH v3 05/21] drm/i915: Factor out function to modeset commit a
 set of pipes
Date: Mon, 10 Jun 2024 19:49:17 +0300
Message-ID: <20240610164933.2947366-6-imre.deak@intel.com>
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

Factor out a function to modeset commit a set of pipes, which a later
patch will reuse for DP link retraining.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c     | 31 +-----------------
 drivers/gpu/drm/i915/display/intel_display.c | 34 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_display.h |  3 ++
 3 files changed, 38 insertions(+), 30 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index f306e0d2d418b..db601c230ac7b 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4454,35 +4454,6 @@ intel_ddi_init_dp_connector(struct intel_digital_port *dig_port)
 	return connector;
 }
 
-static int modeset_pipe(struct drm_crtc *crtc,
-			struct drm_modeset_acquire_ctx *ctx)
-{
-	struct drm_atomic_state *state;
-	struct drm_crtc_state *crtc_state;
-	int ret;
-
-	state = drm_atomic_state_alloc(crtc->dev);
-	if (!state)
-		return -ENOMEM;
-
-	state->acquire_ctx = ctx;
-	to_intel_atomic_state(state)->internal = true;
-
-	crtc_state = drm_atomic_get_crtc_state(state, crtc);
-	if (IS_ERR(crtc_state)) {
-		ret = PTR_ERR(crtc_state);
-		goto out;
-	}
-
-	crtc_state->connectors_changed = true;
-
-	ret = drm_atomic_commit(state);
-out:
-	drm_atomic_state_put(state);
-
-	return ret;
-}
-
 static int intel_hdmi_reset_link(struct intel_encoder *encoder,
 				 struct drm_modeset_acquire_ctx *ctx)
 {
@@ -4552,7 +4523,7 @@ static int intel_hdmi_reset_link(struct intel_encoder *encoder,
 	 * would be perfectly happy if were to just reconfigure
 	 * the SCDC settings on the fly.
 	 */
-	return modeset_pipe(&crtc->base, ctx);
+	return intel_modeset_commit_pipes(dev_priv, BIT(crtc->pipe), ctx);
 }
 
 static enum intel_hotplug_state
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index c608329dac420..63c87fe9fd609 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5608,6 +5608,40 @@ int intel_modeset_all_pipes_late(struct intel_atomic_state *state,
 	return 0;
 }
 
+int intel_modeset_commit_pipes(struct drm_i915_private *i915,
+			       u8 pipe_mask,
+			       struct drm_modeset_acquire_ctx *ctx)
+{
+	struct drm_atomic_state *state;
+	struct intel_crtc *crtc;
+	int ret;
+
+	state = drm_atomic_state_alloc(&i915->drm);
+	if (!state)
+		return -ENOMEM;
+
+	state->acquire_ctx = ctx;
+	to_intel_atomic_state(state)->internal = true;
+
+	for_each_intel_crtc_in_pipe_mask(&i915->drm, crtc, pipe_mask) {
+		struct intel_crtc_state *crtc_state =
+			intel_atomic_get_crtc_state(state, crtc);
+
+		if (IS_ERR(crtc_state)) {
+			ret = PTR_ERR(crtc_state);
+			goto out;
+		}
+
+		crtc_state->uapi.connectors_changed = true;
+	}
+
+	ret = drm_atomic_commit(state);
+out:
+	drm_atomic_state_put(state);
+
+	return ret;
+}
+
 /*
  * This implements the workaround described in the "notes" section of the mode
  * set sequence documentation. When going from no pipes or single pipe to
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 56d1c0e3e62cd..dfdc42cef8723 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -537,6 +537,9 @@ int intel_modeset_pipes_in_mask_early(struct intel_atomic_state *state,
 				      const char *reason, u8 pipe_mask);
 int intel_modeset_all_pipes_late(struct intel_atomic_state *state,
 				 const char *reason);
+int intel_modeset_commit_pipes(struct drm_i915_private *i915,
+			       u8 pipe_mask,
+			       struct drm_modeset_acquire_ctx *ctx);
 void intel_modeset_get_crtc_power_domains(struct intel_crtc_state *crtc_state,
 					  struct intel_power_domain_mask *old_domains);
 void intel_modeset_put_crtc_power_domains(struct intel_crtc *crtc,
-- 
2.43.3

