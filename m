Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98F8F8CA259
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2024 20:58:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C118B10E4F9;
	Mon, 20 May 2024 18:58:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Pii4ffZx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5085F10E51E
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2024 18:58:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716231504; x=1747767504;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ZRBtLPT2mdv7wTIt6HK31NPWwgetyFffmi5HYcLGKbE=;
 b=Pii4ffZxvdEGsy5hsbJOVIw6qbNhudgtvk7YyN2DcKGk8XNJYqqxmvA3
 y7zVaevhwTigvG2SSq17LSrMKZY9Wherc7jMJ85ZU9OvwpWJNdDmpc4RY
 VjIV1A+wiVXjwXR3GYqqSoXxpNkQ621IMpc06MlQAivqAxz058mhaWZj4
 QiUyL5V1LdG9CAqFieKbVx46XngmnePLeF7pSFpbLDq64HxFwsVz0dbD+
 kvAsLqX6KyqyYZz1VpQUDSf4JVO/7ga4mDsTkKEjqevf8F2Szce32LpbE
 R9lDiWtYbgvGYrvD4vls9NWk7bwhdIkNjBX02DWNY7AEqfjeISXupZdHk A==;
X-CSE-ConnectionGUID: qGbuQLftR7+XQ2kCXcKE4w==
X-CSE-MsgGUID: pu0ufK+MR/az22APy36tag==
X-IronPort-AV: E=McAfee;i="6600,9927,11078"; a="16218520"
X-IronPort-AV: E=Sophos;i="6.08,175,1712646000"; d="scan'208";a="16218520"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 11:58:24 -0700
X-CSE-ConnectionGUID: mTzJ+HEYQxmghLm0uhkp/Q==
X-CSE-MsgGUID: RxHNm7KqS+i+nc5+nyhoAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,175,1712646000"; d="scan'208";a="37213845"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 11:58:23 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 05/21] drm/i915: Factor out function to modeset commit a
 set of pipes
Date: Mon, 20 May 2024 21:58:03 +0300
Message-ID: <20240520185822.3725844-6-imre.deak@intel.com>
X-Mailer: git-send-email 2.43.3
In-Reply-To: <20240520185822.3725844-1-imre.deak@intel.com>
References: <20240520185822.3725844-1-imre.deak@intel.com>
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

Factor out a function to modeset commit a set of pipes, which a later
patch will reuse for DP link retraining.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c     | 31 +-----------------
 drivers/gpu/drm/i915/display/intel_display.c | 34 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_display.h |  3 ++
 3 files changed, 38 insertions(+), 30 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 3c3fc53376ce3..170ba01786cf8 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4441,35 +4441,6 @@ intel_ddi_init_dp_connector(struct intel_digital_port *dig_port)
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
@@ -4539,7 +4510,7 @@ static int intel_hdmi_reset_link(struct intel_encoder *encoder,
 	 * would be perfectly happy if were to just reconfigure
 	 * the SCDC settings on the fly.
 	 */
-	return modeset_pipe(&crtc->base, ctx);
+	return intel_modeset_commit_pipes(dev_priv, BIT(crtc->pipe), ctx);
 }
 
 static enum intel_hotplug_state
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index cce1420fb5417..4edb1ede4a1b4 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5569,6 +5569,40 @@ int intel_modeset_all_pipes_late(struct intel_atomic_state *state,
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

