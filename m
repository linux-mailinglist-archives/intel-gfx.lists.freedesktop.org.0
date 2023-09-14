Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB1357A0E37
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Sep 2023 21:27:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDD9110E58B;
	Thu, 14 Sep 2023 19:26:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E87310E587
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Sep 2023 19:26:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694719609; x=1726255609;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qGSqCp81AIudkguXnNFTttTbgtTglTF0WvVFjy4hHGw=;
 b=CKypvnnFXMFZ9c3060UUgQWPIqioo7ZalX+2xXEteQIjVBmbHKTcfg9d
 oL8i3amF1XHqZqrI9U1txj8i6CDZoUIUtOt+lZb6qZ4+gVWT47fDD3aD7
 sOEi0YNv/MBIS8poudynK3hl/qLygm+E19uAl9wfVU9GFCDkP3I3So/MQ
 FvjnJtuszISGI7IG9JYH9SFPmB35h5CY+naNPRah3960dMIi88pv6SxSq
 EzazcAIIGXwaplqFO5z34/mGrmftonaTAWyC/kziJ/tcnK/jnlGLmqRb4
 EjUrYQTf82eWUmxo+JVBj31XPR7a1qcjCpbqgiFRGXKGmlFaUSMhaLi6m Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="465421684"
X-IronPort-AV: E=Sophos;i="6.02,146,1688454000"; d="scan'208";a="465421684"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 12:26:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="779790512"
X-IronPort-AV: E=Sophos;i="6.02,146,1688454000"; d="scan'208";a="779790512"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 12:26:48 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 14 Sep 2023 22:26:40 +0300
Message-Id: <20230914192659.757475-7-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230914192659.757475-1-imre.deak@intel.com>
References: <20230914192659.757475-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 06/25] drm/i915: Add helper to modeset a set
 of pipes
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

Add intel_modeset_pipes_in_mask_early() to modeset a provided set of
pipes, used in a follow-up patch.

While at it add _late suffix to intel_modeset_all_pipes() for clarity
and add DocBook descriptions for the two exported functions.

v2:
- Add a flag controlling if active planes are force updated as well.
- Add DockBook descriptions.
v3:
- For clarity use _early/_late suffixes for the exported functions
  instead of the update_active_planes parameter. (Ville)

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c   |  2 +-
 drivers/gpu/drm/i915/display/intel_display.c | 45 ++++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_display.h |  6 ++-
 drivers/gpu/drm/i915/display/skl_watermark.c |  2 +-
 4 files changed, 47 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index ad5251ba6fe13..a2e20b25d6361 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -3139,7 +3139,7 @@ int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
 	} else if (intel_cdclk_needs_modeset(&old_cdclk_state->actual,
 					     &new_cdclk_state->actual)) {
 		/* All pipes must be switched off while we change the cdclk. */
-		ret = intel_modeset_all_pipes(state, "CDCLK change");
+		ret = intel_modeset_all_pipes_late(state, "CDCLK change");
 		if (ret)
 			return ret;
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 6bbc9069754c4..27e6ea21e0a91 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5407,8 +5407,9 @@ intel_verify_planes(struct intel_atomic_state *state)
 			     plane_state->uapi.visible);
 }
 
-int intel_modeset_all_pipes(struct intel_atomic_state *state,
-			    const char *reason)
+static int intel_modeset_pipes_in_mask(struct intel_atomic_state *state,
+				       const char *reason, u8 mask,
+				       bool update_active_planes)
 {
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 	struct intel_crtc *crtc;
@@ -5417,7 +5418,7 @@ int intel_modeset_all_pipes(struct intel_atomic_state *state,
 	 * Add all pipes to the state, and force
 	 * a modeset on all the active ones.
 	 */
-	for_each_intel_crtc(&dev_priv->drm, crtc) {
+	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, crtc, mask) {
 		struct intel_crtc_state *crtc_state;
 		int ret;
 
@@ -5448,7 +5449,9 @@ int intel_modeset_all_pipes(struct intel_atomic_state *state,
 		if (ret)
 			return ret;
 
-		crtc_state->update_planes |= crtc_state->active_planes;
+		if (update_active_planes)
+			crtc_state->update_planes |= crtc_state->active_planes;
+
 		crtc_state->async_flip_planes = 0;
 		crtc_state->do_async_flip = false;
 	}
@@ -5456,6 +5459,40 @@ int intel_modeset_all_pipes(struct intel_atomic_state *state,
 	return 0;
 }
 
+/**
+ * intel_modeset_pipes_in_mask_early - force a full modeset on a set of pipes
+ * @state: intel atomic state
+ * @reason: the reason for the full modeset
+ * @mask: mask of pipes to modeset
+ *
+ * Force a full modeset on pipes in @mask due to the description in @reason.
+ * This function can be called only before new plane states are computed.
+ *
+ * Returns 0 in case of success, negative error code otherwise.
+ */
+int intel_modeset_pipes_in_mask_early(struct intel_atomic_state *state,
+				      const char *reason, u8 mask)
+{
+	return intel_modeset_pipes_in_mask(state, reason, mask, false);
+}
+
+/**
+ * intel_modeset_all_pipes_late - force a full modeset on all pipes
+ * @state: intel atomic state
+ * @reason: the reason for the full modeset
+ *
+ * Force a full modeset on all pipes due to the description in @reason.
+ * This function can be called only after new plane states are computed
+ * already.
+ *
+ * Returns 0 in case of success, negative error code otherwise.
+ */
+int intel_modeset_all_pipes_late(struct intel_atomic_state *state,
+				 const char *reason)
+{
+	return intel_modeset_pipes_in_mask(state, reason, -1, true);
+}
+
 /*
  * This implements the workaround described in the "notes" section of the mode
  * set sequence documentation. When going from no pipes or single pipe to
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 49ac8473b988b..64a5be7859331 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -513,8 +513,10 @@ void intel_plane_fixup_bitmasks(struct intel_crtc_state *crtc_state);
 void intel_update_watermarks(struct drm_i915_private *i915);
 
 /* modesetting */
-int intel_modeset_all_pipes(struct intel_atomic_state *state,
-			    const char *reason);
+int intel_modeset_pipes_in_mask_early(struct intel_atomic_state *state,
+				      const char *reason, u8 pipe_mask);
+int intel_modeset_all_pipes_late(struct intel_atomic_state *state,
+				 const char *reason);
 void intel_modeset_get_crtc_power_domains(struct intel_crtc_state *crtc_state,
 					  struct intel_power_domain_mask *old_domains);
 void intel_modeset_put_crtc_power_domains(struct intel_crtc *crtc,
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 063929a42a42f..a29d9b717deed 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2616,7 +2616,7 @@ skl_compute_ddb(struct intel_atomic_state *state)
 
 		if (old_dbuf_state->joined_mbus != new_dbuf_state->joined_mbus) {
 			/* TODO: Implement vblank synchronized MBUS joining changes */
-			ret = intel_modeset_all_pipes(state, "MBUS joining change");
+			ret = intel_modeset_all_pipes_late(state, "MBUS joining change");
 			if (ret)
 				return ret;
 		}
-- 
2.37.2

