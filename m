Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 112F897ACCA
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2024 10:22:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A85D910E431;
	Tue, 17 Sep 2024 08:22:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="T0EEjFbq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ADAF410E431;
 Tue, 17 Sep 2024 08:22:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726561336; x=1758097336;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=x43t37+iJ3vWu87AOWHKMXbGQgapxX74+plj0Q93Hio=;
 b=T0EEjFbqrxd3C48o2aeybCgozOKFyudgMZSA38KRJWLgN4urqXRRaA2T
 3QluavPR1J5fdRnTpGYj/z/dFHW1RPD4g3ddmbDQaNMVCAXleNq3TBoPt
 JMFGOVDeXzoKFAwO2b58VYEAEi9efpJ3GnK3ry3ibYpTQ2KA8NvG1/WPn
 /X4TydYoh+AkaYE3aGrpuyph39hADIgSqi07V82Sa6FSH3eZcda3GQ/Eo
 B5e7eloS7N3WCKD2pwalEgNZ3m3ppwoVhcZ3ZpOaVjMCbNKAZBnlzUGda
 EPx172UYxaxe6uIs/RsPk8UPv5rbVs21paG9nx3hqzKDaf+WaMhyeyi6c A==;
X-CSE-ConnectionGUID: 62S+WQWSQ56KJSKvfi+X4g==
X-CSE-MsgGUID: dooWxUJUQC64EExOXM8GpQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11197"; a="25230074"
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="25230074"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 01:22:16 -0700
X-CSE-ConnectionGUID: 7fqqCitLRuWMg3BUgMt/Zg==
X-CSE-MsgGUID: lzx/I1MPT+65iF3q1dmqAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="69906059"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 01:22:13 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: suraj.kandpal@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 2/2] drm/i915/display: Enhance iterators for modeset en/disable
Date: Tue, 17 Sep 2024 13:53:58 +0530
Message-ID: <20240917082359.2383204-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240917082359.2383204-1-ankit.k.nautiyal@intel.com>
References: <20240917082359.2383204-1-ankit.k.nautiyal@intel.com>
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

Joiners have specific enabling and disabling order dependent on primary
and secondary pipes. This becomes more complex with ultrajoiner where we
have ultrajoiner primary/secondary pipes in addition to bigjoiner
primary/secondary pipes. To unify the approach that works for present
and future joiner cases, use primary and secondary pipe masks to
iterate over pipes.

If joiner is used, derive bigoiner primary and secondary pipe masks
and use following sequences:
Disabling : disable primary pipes followed by secondary pipes,
Enabling: enable secondary pipes followed by primary pipes.

This works well with ultrajoiner too, as ultrajoiner has 2 bigjoiner
primary/secondary pairs (AC, BD).

For non joiner case, enable/disable based on usual pipe order A-D, D-A
respectively.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c     | 13 ++++---
 drivers/gpu/drm/i915/display/intel_display.c | 41 +++++++++++++-------
 drivers/gpu/drm/i915/display/intel_display.h | 26 +++++++++++++
 drivers/gpu/drm/i915/display/intel_dp_mst.c  | 14 +++----
 4 files changed, 66 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index b1c294236cc8..60603839f495 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3117,9 +3117,10 @@ static void intel_ddi_post_disable_hdmi_or_sst(struct intel_atomic_state *state,
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_crtc *pipe_crtc;
+	enum pipe pipes;
+	int i;
 
-	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, pipe_crtc,
-					 intel_crtc_joined_pipe_mask(old_crtc_state)) {
+	for_each_pipe_crtc_modeset_disable(dev_priv, pipe_crtc, old_crtc_state, pipes, i) {
 		const struct intel_crtc_state *old_pipe_crtc_state =
 			intel_atomic_get_old_crtc_state(state, pipe_crtc);
 
@@ -3130,8 +3131,7 @@ static void intel_ddi_post_disable_hdmi_or_sst(struct intel_atomic_state *state,
 
 	intel_ddi_disable_transcoder_func(old_crtc_state);
 
-	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, pipe_crtc,
-					 intel_crtc_joined_pipe_mask(old_crtc_state)) {
+	for_each_pipe_crtc_modeset_disable(dev_priv, pipe_crtc, old_crtc_state, pipes, i) {
 		const struct intel_crtc_state *old_pipe_crtc_state =
 			intel_atomic_get_old_crtc_state(state, pipe_crtc);
 
@@ -3384,6 +3384,8 @@ static void intel_enable_ddi(struct intel_atomic_state *state,
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct intel_crtc *pipe_crtc;
+	enum pipe pipes;
+	int i;
 
 	intel_ddi_enable_transcoder_func(encoder, crtc_state);
 
@@ -3394,8 +3396,7 @@ static void intel_enable_ddi(struct intel_atomic_state *state,
 
 	intel_ddi_wait_for_fec_status(encoder, crtc_state, true);
 
-	for_each_intel_crtc_in_pipe_mask_reverse(&i915->drm, pipe_crtc,
-						 intel_crtc_joined_pipe_mask(crtc_state)) {
+	for_each_pipe_crtc_modeset_enable(i915, pipe_crtc, crtc_state, pipes, i) {
 		const struct intel_crtc_state *pipe_crtc_state =
 			intel_atomic_get_new_crtc_state(state, pipe_crtc);
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index deacdf82e143..179aa7c66081 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -295,6 +295,21 @@ bool intel_crtc_is_bigjoiner_secondary(const struct intel_crtc_state *crtc_state
 	return BIT(crtc->pipe) & bigjoiner_secondary_pipes(crtc_state);
 }
 
+u8 _modeset_primary_pipes(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+
+	if (!is_bigjoiner(crtc_state))
+		return BIT(crtc->pipe);
+
+	return bigjoiner_primary_pipes(crtc_state);
+}
+
+u8 _modeset_secondary_pipes(const struct intel_crtc_state *crtc_state)
+{
+	return bigjoiner_secondary_pipes(crtc_state);
+}
+
 u8 intel_crtc_joiner_secondary_pipes(const struct intel_crtc_state *crtc_state)
 {
 	if (crtc_state->joiner_pipes)
@@ -1725,18 +1740,17 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum transcoder cpu_transcoder = new_crtc_state->cpu_transcoder;
 	struct intel_crtc *pipe_crtc;
+	enum pipe pipes;
+	int i;
 
 	if (drm_WARN_ON(&dev_priv->drm, crtc->active))
 		return;
-
-	for_each_intel_crtc_in_pipe_mask_reverse(&dev_priv->drm, pipe_crtc,
-						 intel_crtc_joined_pipe_mask(new_crtc_state))
+	for_each_pipe_crtc_modeset_enable(dev_priv, pipe_crtc, new_crtc_state, pipes, i)
 		intel_dmc_enable_pipe(display, pipe_crtc->pipe);
 
 	intel_encoders_pre_pll_enable(state, crtc);
 
-	for_each_intel_crtc_in_pipe_mask_reverse(&dev_priv->drm, pipe_crtc,
-						 intel_crtc_joined_pipe_mask(new_crtc_state)) {
+	for_each_pipe_crtc_modeset_enable(dev_priv, pipe_crtc, new_crtc_state, pipes, i) {
 		const struct intel_crtc_state *pipe_crtc_state =
 			intel_atomic_get_new_crtc_state(state, pipe_crtc);
 
@@ -1746,8 +1760,7 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 
 	intel_encoders_pre_enable(state, crtc);
 
-	for_each_intel_crtc_in_pipe_mask_reverse(&dev_priv->drm, pipe_crtc,
-						 intel_crtc_joined_pipe_mask(new_crtc_state)) {
+	for_each_pipe_crtc_modeset_enable(dev_priv, pipe_crtc, new_crtc_state, pipes, i) {
 		const struct intel_crtc_state *pipe_crtc_state =
 			intel_atomic_get_new_crtc_state(state, pipe_crtc);
 
@@ -1765,8 +1778,7 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 	if (!transcoder_is_dsi(cpu_transcoder))
 		hsw_configure_cpu_transcoder(new_crtc_state);
 
-	for_each_intel_crtc_in_pipe_mask_reverse(&dev_priv->drm, pipe_crtc,
-						 intel_crtc_joined_pipe_mask(new_crtc_state)) {
+	for_each_pipe_crtc_modeset_enable(dev_priv, pipe_crtc, new_crtc_state, pipes, i) {
 		const struct intel_crtc_state *pipe_crtc_state =
 			intel_atomic_get_new_crtc_state(state, pipe_crtc);
 
@@ -1801,8 +1813,7 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 
 	intel_encoders_enable(state, crtc);
 
-	for_each_intel_crtc_in_pipe_mask_reverse(&dev_priv->drm, pipe_crtc,
-						 intel_crtc_joined_pipe_mask(new_crtc_state)) {
+	for_each_pipe_crtc_modeset_enable(dev_priv, pipe_crtc, new_crtc_state, pipes, i) {
 		const struct intel_crtc_state *pipe_crtc_state =
 			intel_atomic_get_new_crtc_state(state, pipe_crtc);
 		enum pipe hsw_workaround_pipe;
@@ -1889,6 +1900,8 @@ static void hsw_crtc_disable(struct intel_atomic_state *state,
 	const struct intel_crtc_state *old_crtc_state =
 		intel_atomic_get_old_crtc_state(state, crtc);
 	struct intel_crtc *pipe_crtc;
+	enum pipe pipes;
+	int i;
 
 	/*
 	 * FIXME collapse everything to one hook.
@@ -1897,8 +1910,7 @@ static void hsw_crtc_disable(struct intel_atomic_state *state,
 	intel_encoders_disable(state, crtc);
 	intel_encoders_post_disable(state, crtc);
 
-	for_each_intel_crtc_in_pipe_mask(&i915->drm, pipe_crtc,
-					 intel_crtc_joined_pipe_mask(old_crtc_state)) {
+	for_each_pipe_crtc_modeset_disable(i915, pipe_crtc, old_crtc_state, pipes, i) {
 		const struct intel_crtc_state *old_pipe_crtc_state =
 			intel_atomic_get_old_crtc_state(state, pipe_crtc);
 
@@ -1907,8 +1919,7 @@ static void hsw_crtc_disable(struct intel_atomic_state *state,
 
 	intel_encoders_post_pll_disable(state, crtc);
 
-	for_each_intel_crtc_in_pipe_mask(&i915->drm, pipe_crtc,
-					 intel_crtc_joined_pipe_mask(old_crtc_state))
+	for_each_pipe_crtc_modeset_disable(i915, pipe_crtc, old_crtc_state, pipes, i)
 		intel_dmc_disable_pipe(display, pipe_crtc->pipe);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 894f58ead279..eeee03a9796b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -402,6 +402,30 @@ enum phy_fia {
 			     ((connector) = to_intel_connector((__state)->base.connectors[__i].ptr), \
 			     (new_connector_state) = to_intel_digital_connector_state((__state)->base.connectors[__i].new_state), 1))
 
+#define for_each_crtc_in_masks(__dev_priv, crtc, first_pipes, second_pipes, pipes, i) \
+	for ((i) = 0, (pipes) = ((first_pipes) | ((second_pipes) << I915_MAX_PIPES)); \
+             (i) < 8 && ((crtc) = intel_crtc_for_pipe(to_intel_display(&__dev_priv->drm), (i) % I915_MAX_PIPES), 1); \
+             (i)++) \
+                for_each_if((crtc) && (pipes) & BIT(i))
+
+#define for_each_crtc_in_masks_reverse(__dev_priv, crtc, first_pipes, second_pipes, pipes, i) \
+	for ((i) = 7, (pipes) = ((first_pipes) | ((second_pipes) << I915_MAX_PIPES)); \
+             (i) >= 0 && ((crtc) = intel_crtc_for_pipe(to_intel_display(&__dev_priv->drm), (i) % I915_MAX_PIPES), 1); \
+             (i)--) \
+                for_each_if((crtc) && (pipes) & BIT(i))
+
+#define for_each_pipe_crtc_modeset_disable(__dev_priv, crtc, crtc_state, pipes, i) \
+	for_each_crtc_in_masks(__dev_priv, crtc, \
+			       _modeset_primary_pipes(crtc_state), \
+			       _modeset_secondary_pipes(crtc_state), \
+			       pipes, i)
+
+#define for_each_pipe_crtc_modeset_enable(__dev_priv, crtc, crtc_state, pipes, i) \
+	for_each_crtc_in_masks_reverse(__dev_priv, crtc, \
+				       _modeset_primary_pipes(crtc_state), \
+				       _modeset_secondary_pipes(crtc_state), \
+				       pipes, i)
+
 int intel_atomic_check(struct drm_device *dev, struct drm_atomic_state *state);
 int intel_atomic_add_affected_planes(struct intel_atomic_state *state,
 				     struct intel_crtc *crtc);
@@ -429,6 +453,8 @@ bool intel_crtc_is_joiner_primary(const struct intel_crtc_state *crtc_state);
 bool intel_crtc_is_bigjoiner_primary(const struct intel_crtc_state *crtc_state);
 bool intel_crtc_is_bigjoiner_secondary(const struct intel_crtc_state *crtc_state);
 u8 intel_crtc_joiner_secondary_pipes(const struct intel_crtc_state *crtc_state);
+u8 _modeset_primary_pipes(const struct intel_crtc_state *crtc_state);
+u8 _modeset_secondary_pipes(const struct intel_crtc_state *crtc_state);
 struct intel_crtc *intel_primary_crtc(const struct intel_crtc_state *crtc_state);
 bool intel_crtc_get_pipe_config(struct intel_crtc_state *crtc_state);
 bool intel_pipe_config_compare(const struct intel_crtc_state *current_config,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 15541932b809..0be11db7d880 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1001,6 +1001,8 @@ static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	struct intel_crtc *pipe_crtc;
 	bool last_mst_stream;
+	enum pipe pipes;
+	int i;
 
 	intel_dp->active_mst_links--;
 	last_mst_stream = intel_dp->active_mst_links == 0;
@@ -1008,8 +1010,7 @@ static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
 		    DISPLAY_VER(dev_priv) >= 12 && last_mst_stream &&
 		    !intel_dp_mst_is_master_trans(old_crtc_state));
 
-	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, pipe_crtc,
-					 intel_crtc_joined_pipe_mask(old_crtc_state)) {
+	for_each_pipe_crtc_modeset_disable(dev_priv, pipe_crtc, old_crtc_state, pipes, i) {
 		const struct intel_crtc_state *old_pipe_crtc_state =
 			intel_atomic_get_old_crtc_state(state, pipe_crtc);
 
@@ -1033,8 +1034,7 @@ static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
 
 	intel_ddi_disable_transcoder_func(old_crtc_state);
 
-	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, pipe_crtc,
-					 intel_crtc_joined_pipe_mask(old_crtc_state)) {
+	for_each_pipe_crtc_modeset_disable(dev_priv, pipe_crtc, old_crtc_state, pipes, i) {
 		const struct intel_crtc_state *old_pipe_crtc_state =
 			intel_atomic_get_old_crtc_state(state, pipe_crtc);
 
@@ -1253,7 +1253,8 @@ static void intel_mst_enable_dp(struct intel_atomic_state *state,
 	enum transcoder trans = pipe_config->cpu_transcoder;
 	bool first_mst_stream = intel_dp->active_mst_links == 1;
 	struct intel_crtc *pipe_crtc;
-	int ret;
+	enum pipe pipes;
+	int ret, i;
 
 	drm_WARN_ON(&dev_priv->drm, pipe_config->has_pch_encoder);
 
@@ -1300,8 +1301,7 @@ static void intel_mst_enable_dp(struct intel_atomic_state *state,
 
 	intel_enable_transcoder(pipe_config);
 
-	for_each_intel_crtc_in_pipe_mask_reverse(&dev_priv->drm, pipe_crtc,
-						 intel_crtc_joined_pipe_mask(pipe_config)) {
+	for_each_pipe_crtc_modeset_enable(dev_priv, pipe_crtc, pipe_config, pipes, i) {
 		const struct intel_crtc_state *pipe_crtc_state =
 			intel_atomic_get_new_crtc_state(state, pipe_crtc);
 
-- 
2.45.2

