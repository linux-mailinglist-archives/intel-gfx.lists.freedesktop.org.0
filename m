Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CBEFA54DE65
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jun 2022 11:48:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0B6D113D5F;
	Thu, 16 Jun 2022 09:48:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 75F43113D4E
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jun 2022 09:48:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655372917; x=1686908917;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=45BxB1RBFYoda6dJo9Z43lCz8xXnDSfyCE93sMUjD0c=;
 b=naByhwksLRC95PRL9Nb1e2aYFGmK3rOBTd190C5ydnyPyY8XPK1JU4v6
 g5vvoxJOb64INXEmSQKwP8iJuIYbQvhGILaJYN5nrYlTHWEefEFrIrpfm
 oAVFfkSgGYcFxa0p+MGDKsgQBYD2Qv9CHL9HF0cqGBs3SolA5a/UBImBr
 OprIG1VlcyXs1MmGHgfd1C+Y5TXpOEZqL4iWDpPuQHMQQU5u3q5l/SFmi
 jkP+L1NWFwMau2nhWQvNNrW/WZFAOEi1kJolgj3O3tHtFuAKmA9fGEYon
 MFCepnU63y+n3SU9iz4H3GVFFkqrCwB2ZS6Nlitxz/Tp2hdl26ztssu84 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10379"; a="267900629"
X-IronPort-AV: E=Sophos;i="5.91,304,1647327600"; d="scan'208";a="267900629"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2022 02:48:36 -0700
X-IronPort-AV: E=Sophos;i="5.91,304,1647327600"; d="scan'208";a="641468542"
Received: from malashi-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.57.133])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2022 02:48:32 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Jun 2022 12:48:12 +0300
Message-Id: <85b02186f1269dd374d11db35900130547a5f2c6.1655372759.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1655372759.git.jani.nikula@intel.com>
References: <cover.1655372759.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 02/11] drm/i915/dpll: move shared dpll state
 verification to intel_dpll_mgr.c
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Keep the shared dpll implementation details together by moving the dpll
state verification to intel_dpll_mgr.c. Also declutter intel_display.c.

v2: intel_shared_dpll_verify_state -> intel_shared_dpll_state_verify (Ville)

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  | 94 +------------------
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 88 +++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  5 +
 3 files changed, 95 insertions(+), 92 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 9bb8ef39e01e..ca0b57816e5e 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6582,85 +6582,6 @@ intel_verify_planes(struct intel_atomic_state *state)
 			     plane_state->uapi.visible);
 }
 
-static void
-verify_single_dpll_state(struct drm_i915_private *dev_priv,
-			 struct intel_shared_dpll *pll,
-			 struct intel_crtc *crtc,
-			 struct intel_crtc_state *new_crtc_state)
-{
-	struct intel_dpll_hw_state dpll_hw_state;
-	u8 pipe_mask;
-	bool active;
-
-	memset(&dpll_hw_state, 0, sizeof(dpll_hw_state));
-
-	drm_dbg_kms(&dev_priv->drm, "%s\n", pll->info->name);
-
-	active = intel_dpll_get_hw_state(dev_priv, pll, &dpll_hw_state);
-
-	if (!(pll->info->flags & INTEL_DPLL_ALWAYS_ON)) {
-		I915_STATE_WARN(!pll->on && pll->active_mask,
-		     "pll in active use but not on in sw tracking\n");
-		I915_STATE_WARN(pll->on && !pll->active_mask,
-		     "pll is on but not used by any active pipe\n");
-		I915_STATE_WARN(pll->on != active,
-		     "pll on state mismatch (expected %i, found %i)\n",
-		     pll->on, active);
-	}
-
-	if (!crtc) {
-		I915_STATE_WARN(pll->active_mask & ~pll->state.pipe_mask,
-				"more active pll users than references: 0x%x vs 0x%x\n",
-				pll->active_mask, pll->state.pipe_mask);
-
-		return;
-	}
-
-	pipe_mask = BIT(crtc->pipe);
-
-	if (new_crtc_state->hw.active)
-		I915_STATE_WARN(!(pll->active_mask & pipe_mask),
-				"pll active mismatch (expected pipe %c in active mask 0x%x)\n",
-				pipe_name(crtc->pipe), pll->active_mask);
-	else
-		I915_STATE_WARN(pll->active_mask & pipe_mask,
-				"pll active mismatch (didn't expect pipe %c in active mask 0x%x)\n",
-				pipe_name(crtc->pipe), pll->active_mask);
-
-	I915_STATE_WARN(!(pll->state.pipe_mask & pipe_mask),
-			"pll enabled crtcs mismatch (expected 0x%x in 0x%x)\n",
-			pipe_mask, pll->state.pipe_mask);
-
-	I915_STATE_WARN(pll->on && memcmp(&pll->state.hw_state,
-					  &dpll_hw_state,
-					  sizeof(dpll_hw_state)),
-			"pll hw state mismatch\n");
-}
-
-static void
-verify_shared_dpll_state(struct intel_crtc *crtc,
-			 struct intel_crtc_state *old_crtc_state,
-			 struct intel_crtc_state *new_crtc_state)
-{
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-
-	if (new_crtc_state->shared_dpll)
-		verify_single_dpll_state(dev_priv, new_crtc_state->shared_dpll, crtc, new_crtc_state);
-
-	if (old_crtc_state->shared_dpll &&
-	    old_crtc_state->shared_dpll != new_crtc_state->shared_dpll) {
-		u8 pipe_mask = BIT(crtc->pipe);
-		struct intel_shared_dpll *pll = old_crtc_state->shared_dpll;
-
-		I915_STATE_WARN(pll->active_mask & pipe_mask,
-				"pll active mismatch (didn't expect pipe %c in active mask (0x%x))\n",
-				pipe_name(crtc->pipe), pll->active_mask);
-		I915_STATE_WARN(pll->state.pipe_mask & pipe_mask,
-				"pll enabled crtcs mismatch (found %x in enabled mask (0x%x))\n",
-				pipe_name(crtc->pipe), pll->state.pipe_mask);
-	}
-}
-
 static void
 verify_mpllb_state(struct intel_atomic_state *state,
 		   struct intel_crtc_state *new_crtc_state)
@@ -6719,28 +6640,17 @@ intel_modeset_verify_crtc(struct intel_crtc *crtc,
 	intel_wm_state_verify(crtc, new_crtc_state);
 	verify_connector_state(state, crtc);
 	verify_crtc_state(crtc, old_crtc_state, new_crtc_state);
-	verify_shared_dpll_state(crtc, old_crtc_state, new_crtc_state);
+	intel_shared_dpll_state_verify(crtc, old_crtc_state, new_crtc_state);
 	verify_mpllb_state(state, new_crtc_state);
 }
 
-static void
-verify_disabled_dpll_state(struct drm_i915_private *dev_priv)
-{
-	int i;
-
-	for (i = 0; i < dev_priv->dpll.num_shared_dpll; i++)
-		verify_single_dpll_state(dev_priv,
-					 &dev_priv->dpll.shared_dplls[i],
-					 NULL, NULL);
-}
-
 static void
 intel_modeset_verify_disabled(struct drm_i915_private *dev_priv,
 			      struct intel_atomic_state *state)
 {
 	verify_encoder_state(dev_priv, state);
 	verify_connector_state(state, NULL);
-	verify_disabled_dpll_state(dev_priv);
+	intel_shared_dpll_verify_disabled(dev_priv);
 }
 
 int intel_modeset_all_pipes(struct intel_atomic_state *state)
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 64708e874b13..a5e84842a154 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -4449,3 +4449,91 @@ void intel_dpll_dump_hw_state(struct drm_i915_private *dev_priv,
 			    hw_state->fp1);
 	}
 }
+
+static void
+verify_single_dpll_state(struct drm_i915_private *dev_priv,
+			 struct intel_shared_dpll *pll,
+			 struct intel_crtc *crtc,
+			 struct intel_crtc_state *new_crtc_state)
+{
+	struct intel_dpll_hw_state dpll_hw_state;
+	u8 pipe_mask;
+	bool active;
+
+	memset(&dpll_hw_state, 0, sizeof(dpll_hw_state));
+
+	drm_dbg_kms(&dev_priv->drm, "%s\n", pll->info->name);
+
+	active = intel_dpll_get_hw_state(dev_priv, pll, &dpll_hw_state);
+
+	if (!(pll->info->flags & INTEL_DPLL_ALWAYS_ON)) {
+		I915_STATE_WARN(!pll->on && pll->active_mask,
+				"pll in active use but not on in sw tracking\n");
+		I915_STATE_WARN(pll->on && !pll->active_mask,
+				"pll is on but not used by any active pipe\n");
+		I915_STATE_WARN(pll->on != active,
+				"pll on state mismatch (expected %i, found %i)\n",
+				pll->on, active);
+	}
+
+	if (!crtc) {
+		I915_STATE_WARN(pll->active_mask & ~pll->state.pipe_mask,
+				"more active pll users than references: 0x%x vs 0x%x\n",
+				pll->active_mask, pll->state.pipe_mask);
+
+		return;
+	}
+
+	pipe_mask = BIT(crtc->pipe);
+
+	if (new_crtc_state->hw.active)
+		I915_STATE_WARN(!(pll->active_mask & pipe_mask),
+				"pll active mismatch (expected pipe %c in active mask 0x%x)\n",
+				pipe_name(crtc->pipe), pll->active_mask);
+	else
+		I915_STATE_WARN(pll->active_mask & pipe_mask,
+				"pll active mismatch (didn't expect pipe %c in active mask 0x%x)\n",
+				pipe_name(crtc->pipe), pll->active_mask);
+
+	I915_STATE_WARN(!(pll->state.pipe_mask & pipe_mask),
+			"pll enabled crtcs mismatch (expected 0x%x in 0x%x)\n",
+			pipe_mask, pll->state.pipe_mask);
+
+	I915_STATE_WARN(pll->on && memcmp(&pll->state.hw_state,
+					  &dpll_hw_state,
+					  sizeof(dpll_hw_state)),
+			"pll hw state mismatch\n");
+}
+
+void intel_shared_dpll_state_verify(struct intel_crtc *crtc,
+				    struct intel_crtc_state *old_crtc_state,
+				    struct intel_crtc_state *new_crtc_state)
+{
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+
+	if (new_crtc_state->shared_dpll)
+		verify_single_dpll_state(dev_priv, new_crtc_state->shared_dpll,
+					 crtc, new_crtc_state);
+
+	if (old_crtc_state->shared_dpll &&
+	    old_crtc_state->shared_dpll != new_crtc_state->shared_dpll) {
+		u8 pipe_mask = BIT(crtc->pipe);
+		struct intel_shared_dpll *pll = old_crtc_state->shared_dpll;
+
+		I915_STATE_WARN(pll->active_mask & pipe_mask,
+				"pll active mismatch (didn't expect pipe %c in active mask (0x%x))\n",
+				pipe_name(crtc->pipe), pll->active_mask);
+		I915_STATE_WARN(pll->state.pipe_mask & pipe_mask,
+				"pll enabled crtcs mismatch (found %x in enabled mask (0x%x))\n",
+				pipe_name(crtc->pipe), pll->state.pipe_mask);
+	}
+}
+
+void intel_shared_dpll_verify_disabled(struct drm_i915_private *i915)
+{
+	int i;
+
+	for (i = 0; i < i915->dpll.num_shared_dpll; i++)
+		verify_single_dpll_state(i915, &i915->dpll.shared_dplls[i],
+					 NULL, NULL);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
index 02412bf7625c..3247dc300ae4 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
@@ -368,4 +368,9 @@ void intel_dpll_dump_hw_state(struct drm_i915_private *dev_priv,
 enum intel_dpll_id icl_tc_port_to_pll_id(enum tc_port tc_port);
 bool intel_dpll_is_combophy(enum intel_dpll_id id);
 
+void intel_shared_dpll_state_verify(struct intel_crtc *crtc,
+				    struct intel_crtc_state *old_crtc_state,
+				    struct intel_crtc_state *new_crtc_state);
+void intel_shared_dpll_verify_disabled(struct drm_i915_private *i915);
+
 #endif /* _INTEL_DPLL_MGR_H_ */
-- 
2.30.2

