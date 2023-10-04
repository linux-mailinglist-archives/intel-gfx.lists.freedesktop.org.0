Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8854A7B8452
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Oct 2023 17:56:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1B1510E396;
	Wed,  4 Oct 2023 15:56:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B322910E395
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Oct 2023 15:56:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696435000; x=1727971000;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=TEY5yGIiuRLcVu8gmZp3JaTJW8AmH9ZfAjx7ChUToRM=;
 b=nlwCATonZ7e958FPbVuCuG4NMm2XJFcoJCQjEePoX4dcPcsu+gRLOYwk
 1xSXAISPM7KjikAIRn072dOpWE5NG/5oUMPGX6TZYj2/y+XZ4c5pjO6Ul
 DDDgzQBJXrhnrKqP+p70KNjkiOOgZOmYfSr/KdwhMiuYM7nQ15YfRmRel
 msvlM7HRk8iuGjXNIBl7bV3X/+BB/xNNbSX0iIUk/DfXcehlENHGTBoVd
 13WdeOIttYfPpP1uMeC3UTPPlq7M5KjRenCToJBQFV8ZHVx+Fyi4cYvSK
 XxuaPCvXR+DT4muvGwX6KHUOU0M/KGVCaMe9IF4SoHKp80V+loXbcrcPn Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="363483810"
X-IronPort-AV: E=Sophos;i="6.03,200,1694761200"; d="scan'208";a="363483810"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 08:56:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="867441235"
X-IronPort-AV: E=Sophos;i="6.03,200,1694761200"; d="scan'208";a="867441235"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by fmsmga002.fm.intel.com with SMTP; 04 Oct 2023 08:56:38 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 04 Oct 2023 18:56:37 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 Oct 2023 18:56:05 +0300
Message-ID: <20231004155607.7719-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231004155607.7719-1-ville.syrjala@linux.intel.com>
References: <20231004155607.7719-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 10/12] drm/i915: Simplify the state checker
 calling convetions
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

We're passing in a totally random mismash of things into the state
checker. Clean it up to pass in the minimum needed.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  |  4 ++--
 .../drm/i915/display/intel_modeset_verify.c   | 24 ++++++++++---------
 .../drm/i915/display/intel_modeset_verify.h   | 11 +++------
 3 files changed, 18 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 8683b030cebb..e309fda108ef 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7218,7 +7218,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 
 		intel_set_cdclk_pre_plane_update(state);
 
-		intel_modeset_verify_disabled(dev_priv, state);
+		intel_modeset_verify_disabled(state);
 	}
 
 	intel_sagv_pre_plane_update(state);
@@ -7304,7 +7304,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 
 		intel_modeset_put_crtc_power_domains(crtc, &put_domains[crtc->pipe]);
 
-		intel_modeset_verify_crtc(crtc, state, old_crtc_state, new_crtc_state);
+		intel_modeset_verify_crtc(state, crtc);
 
 		/* Must be done after gamma readout due to HSW split gamma vs. IPS w/a */
 		hsw_ips_post_update(state, crtc);
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_verify.c b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
index 9ac9c23782cc..67fe754ac6e5 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_verify.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
@@ -86,9 +86,10 @@ verify_connector_state(struct intel_atomic_state *state,
 	}
 }
 
-static void intel_pipe_config_sanity_check(struct drm_i915_private *dev_priv,
-					   const struct intel_crtc_state *pipe_config)
+static void intel_pipe_config_sanity_check(const struct intel_crtc_state *pipe_config)
 {
+	struct drm_i915_private *dev_priv = to_i915(pipe_config->uapi.crtc->dev);
+
 	if (pipe_config->has_pch_encoder) {
 		int fdi_dotclock = intel_dotclock_calculate(intel_fdi_link_freq(dev_priv, pipe_config),
 							    &pipe_config->fdi_m_n);
@@ -106,8 +107,9 @@ static void intel_pipe_config_sanity_check(struct drm_i915_private *dev_priv,
 }
 
 static void
-verify_encoder_state(struct drm_i915_private *dev_priv, struct intel_atomic_state *state)
+verify_encoder_state(struct intel_atomic_state *state)
 {
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 	struct intel_encoder *encoder;
 	struct drm_connector *connector;
 	const struct drm_connector_state *old_conn_state, *new_conn_state;
@@ -214,7 +216,7 @@ verify_crtc_state(struct intel_atomic_state *state,
 	if (!new_crtc_state->hw.active)
 		return;
 
-	intel_pipe_config_sanity_check(dev_priv, pipe_config);
+	intel_pipe_config_sanity_check(pipe_config);
 
 	if (!intel_pipe_config_compare(new_crtc_state,
 				       pipe_config, false)) {
@@ -224,11 +226,12 @@ verify_crtc_state(struct intel_atomic_state *state,
 	}
 }
 
-void intel_modeset_verify_crtc(struct intel_crtc *crtc,
-			       struct intel_atomic_state *state,
-			       const struct intel_crtc_state *old_crtc_state,
-			       const struct intel_crtc_state *new_crtc_state)
+void intel_modeset_verify_crtc(struct intel_atomic_state *state,
+			       struct intel_crtc *crtc)
 {
+	const struct intel_crtc_state *new_crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
+
 	if (!intel_crtc_needs_modeset(new_crtc_state) &&
 	    !intel_crtc_needs_fastset(new_crtc_state))
 		return;
@@ -241,10 +244,9 @@ void intel_modeset_verify_crtc(struct intel_crtc *crtc,
 	intel_c10pll_state_verify(state, crtc);
 }
 
-void intel_modeset_verify_disabled(struct drm_i915_private *dev_priv,
-				   struct intel_atomic_state *state)
+void intel_modeset_verify_disabled(struct intel_atomic_state *state)
 {
-	verify_encoder_state(dev_priv, state);
+	verify_encoder_state(state);
 	verify_connector_state(state, NULL);
 	intel_shared_dpll_verify_disabled(state);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_verify.h b/drivers/gpu/drm/i915/display/intel_modeset_verify.h
index 77786a877f6a..3bef8735cb4b 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_verify.h
+++ b/drivers/gpu/drm/i915/display/intel_modeset_verify.h
@@ -6,16 +6,11 @@
 #ifndef __INTEL_MODESET_VERIFY_H__
 #define __INTEL_MODESET_VERIFY_H__
 
-struct drm_i915_private;
 struct intel_atomic_state;
 struct intel_crtc;
-struct intel_crtc_state;
 
-void intel_modeset_verify_crtc(struct intel_crtc *crtc,
-			       struct intel_atomic_state *state,
-			       const struct intel_crtc_state *old_crtc_state,
-			       const struct intel_crtc_state *new_crtc_state);
-void intel_modeset_verify_disabled(struct drm_i915_private *dev_priv,
-				   struct intel_atomic_state *state);
+void intel_modeset_verify_crtc(struct intel_atomic_state *state,
+			       struct intel_crtc *crtc);
+void intel_modeset_verify_disabled(struct intel_atomic_state *state);
 
 #endif /* __INTEL_MODESET_VERIFY_H__ */
-- 
2.41.0

