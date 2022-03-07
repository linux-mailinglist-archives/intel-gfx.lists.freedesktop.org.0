Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19B1B4D06CB
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Mar 2022 19:46:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A23F10E12A;
	Mon,  7 Mar 2022 18:46:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62B4510E124
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Mar 2022 18:46:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646678783; x=1678214783;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=B9v29IrONUpm7fzqVThH+qqKnSqiilz1f1LR1UxpMDs=;
 b=Zm/Je44jwf8Xx3BlvR1uOX3WFVk/PBu+cJBIXWQ3pxQXXjNUwQrirZH/
 oAbcxsOEngNdgygUAIzkBtCHQpN1EDLS+iVlrZT0qfKWUNTE+GkZtpwaP
 QvVZH97gob0FQisdFI5/npn0VCX650jCBpSkKXXZvHPa2cWd9GXgiop+F
 eS4IAz6icwnymwMJGHeciuJWADvR/LSACYEeKzjpQL4B9QwQpz3+miz24
 c8dE4qFPfXKcrtAPj+IfTUtdWwAVKsFD+rARbuyhajxai09E0MmJtEQOf
 Qkmbmodq+pVao/sJp5vzTcfD+13akAEiBf4AlEkqDmkrDC3Er9ke3y3K/ w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10279"; a="254662268"
X-IronPort-AV: E=Sophos;i="5.90,162,1643702400"; d="scan'208";a="254662268"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2022 10:46:23 -0800
X-IronPort-AV: E=Sophos;i="5.90,162,1643702400"; d="scan'208";a="537228293"
Received: from anushasr-mobl6.jf.intel.com ([10.165.21.155])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2022 10:46:23 -0800
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  7 Mar 2022 10:43:29 -0800
Message-Id: <20220307184330.1635013-5-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220307184330.1635013-1-anusha.srivatsa@intel.com>
References: <20220307184330.1635013-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/5] drm/i915/display: Add drm_i915_private to
 intel_cdclk_needs_modeset()
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

The change is to be able to have access to the in-flight state.
Changing this one functions, trickles the change to
intel_cdclk_changed()

Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c    | 22 ++++++++++---------
 drivers/gpu/drm/i915/display/intel_cdclk.h    |  3 ++-
 .../drm/i915/display/intel_display_power.c    |  2 +-
 3 files changed, 15 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 840d611197cf..2278b052d859 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2003,7 +2003,8 @@ static bool intel_cdclk_squash(struct drm_i915_private *dev_priv,
  * True if changing between the two CDCLK configurations
  * requires all pipes to be off, false if not.
  */
-bool intel_cdclk_needs_modeset(const struct intel_cdclk_config *a,
+bool intel_cdclk_needs_modeset(struct drm_i915_private *i915,
+			       const struct intel_cdclk_config *a,
 			       const struct intel_cdclk_config *b)
 {
 	return a->cdclk != b->cdclk ||
@@ -2053,10 +2054,11 @@ static bool intel_cdclk_can_cd2x_update(struct drm_i915_private *dev_priv,
  * Returns:
  * True if the CDCLK configurations don't match, false if they do.
  */
-static bool intel_cdclk_changed(const struct intel_cdclk_config *a,
+static bool intel_cdclk_changed(struct drm_i915_private *i915,
+				const struct intel_cdclk_config *a,
 				const struct intel_cdclk_config *b)
 {
-	return intel_cdclk_needs_modeset(a, b) ||
+	return intel_cdclk_needs_modeset(i915, a, b) ||
 		a->voltage_level != b->voltage_level;
 }
 
@@ -2085,7 +2087,7 @@ static void intel_set_cdclk(struct drm_i915_private *dev_priv,
 {
 	struct intel_encoder *encoder;
 
-	if (!intel_cdclk_changed(&dev_priv->cdclk.hw, cdclk_config))
+	if (!intel_cdclk_changed(dev_priv, &dev_priv->cdclk.hw, cdclk_config))
 		return;
 
 	if (drm_WARN_ON_ONCE(&dev_priv->drm, !dev_priv->cdclk_funcs->set_cdclk))
@@ -2132,7 +2134,7 @@ static void intel_set_cdclk(struct drm_i915_private *dev_priv,
 	intel_audio_cdclk_change_post(dev_priv);
 
 	if (drm_WARN(&dev_priv->drm,
-		     intel_cdclk_changed(&dev_priv->cdclk.hw, cdclk_config),
+		     intel_cdclk_changed(dev_priv, &dev_priv->cdclk.hw, cdclk_config),
 		     "cdclk state doesn't match!\n")) {
 		intel_cdclk_dump_config(dev_priv, &dev_priv->cdclk.hw, "[hw state]");
 		intel_cdclk_dump_config(dev_priv, cdclk_config, "[sw state]");
@@ -2156,7 +2158,7 @@ intel_set_cdclk_pre_plane_update(struct intel_atomic_state *state)
 		intel_atomic_get_new_cdclk_state(state);
 	enum pipe pipe = new_cdclk_state->pipe;
 
-	if (!intel_cdclk_changed(&old_cdclk_state->actual,
+	if (!intel_cdclk_changed(dev_priv, &old_cdclk_state->actual,
 				 &new_cdclk_state->actual))
 		return;
 
@@ -2185,7 +2187,7 @@ intel_set_cdclk_post_plane_update(struct intel_atomic_state *state)
 		intel_atomic_get_new_cdclk_state(state);
 	enum pipe pipe = new_cdclk_state->pipe;
 
-	if (!intel_cdclk_changed(&old_cdclk_state->actual,
+	if (!intel_cdclk_changed(dev_priv, &old_cdclk_state->actual,
 				 &new_cdclk_state->actual))
 		return;
 
@@ -2739,7 +2741,7 @@ int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
 	if (ret)
 		return ret;
 
-	if (intel_cdclk_changed(&old_cdclk_state->actual,
+	if (intel_cdclk_changed(dev_priv, &old_cdclk_state->actual,
 				&new_cdclk_state->actual)) {
 		/*
 		 * Also serialize commits across all crtcs
@@ -2750,7 +2752,7 @@ int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
 			return ret;
 	} else if (old_cdclk_state->active_pipes != new_cdclk_state->active_pipes ||
 		   old_cdclk_state->force_min_cdclk != new_cdclk_state->force_min_cdclk ||
-		   intel_cdclk_changed(&old_cdclk_state->logical,
+		   intel_cdclk_changed(dev_priv, &old_cdclk_state->logical,
 				       &new_cdclk_state->logical)) {
 		ret = intel_atomic_lock_global_state(&new_cdclk_state->base);
 		if (ret)
@@ -2793,7 +2795,7 @@ int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
 		drm_dbg_kms(&dev_priv->drm,
 			    "Can change cdclk cd2x divider with pipe %c active\n",
 			    pipe_name(pipe));
-	} else if (intel_cdclk_needs_modeset(&old_cdclk_state->actual,
+	} else if (intel_cdclk_needs_modeset(dev_priv, &old_cdclk_state->actual,
 					     &new_cdclk_state->actual)) {
 		/* All pipes must be switched off while we change the cdclk. */
 		ret = intel_modeset_all_pipes(state);
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
index 06d7f9f0b253..ed1749e094fc 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.h
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
@@ -71,7 +71,8 @@ void intel_init_cdclk_hooks(struct drm_i915_private *dev_priv);
 void intel_update_max_cdclk(struct drm_i915_private *dev_priv);
 void intel_update_cdclk(struct drm_i915_private *dev_priv);
 u32 intel_read_rawclk(struct drm_i915_private *dev_priv);
-bool intel_cdclk_needs_modeset(const struct intel_cdclk_config *a,
+bool intel_cdclk_needs_modeset(struct drm_i915_private *i915,
+			       const struct intel_cdclk_config *a,
 			       const struct intel_cdclk_config *b);
 void intel_set_cdclk_pre_plane_update(struct intel_atomic_state *state);
 void intel_set_cdclk_post_plane_update(struct intel_atomic_state *state);
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 3dc859032bac..417a56d54056 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1118,7 +1118,7 @@ static void gen9_disable_dc_states(struct drm_i915_private *dev_priv)
 	intel_cdclk_get_cdclk(dev_priv, &cdclk_config);
 	/* Can't read out voltage_level so can't use intel_cdclk_changed() */
 	drm_WARN_ON(&dev_priv->drm,
-		    intel_cdclk_needs_modeset(&dev_priv->cdclk.hw,
+		    intel_cdclk_needs_modeset(dev_priv, &dev_priv->cdclk.hw,
 					      &cdclk_config));
 
 	gen9_assert_dbuf_enabled(dev_priv);
-- 
2.25.1

