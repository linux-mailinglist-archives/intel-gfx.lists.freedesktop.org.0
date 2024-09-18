Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B60E97BE18
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2024 16:42:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0FD010E5BB;
	Wed, 18 Sep 2024 14:41:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JTo7YTYj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2527010E26C;
 Wed, 18 Sep 2024 14:41:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726670518; x=1758206518;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=di7rt4IcgDCTPdBwogDuABCxz17kPxZXbGi0nVm8CnY=;
 b=JTo7YTYjKXflVJCW9SgmNk0B8jD2v934XNPdADb5mZkj8iOXWbM089jt
 dSzA3c24VdJQ7yW8ur7nTptOc9GZWqG/c6aIl693WCyYDCo3vi/vRzrj5
 nsiF98AMN51sOgZRfTBVBipARo1AxIzhc5nAHugzA67LzhnCH8pyTsnbQ
 xoL9kb69mP3b0sWKILfyKEQ7qTBErYH3n2tXDOTwF0i7GBlGheYt9PedZ
 xvVjsnWR+AU1qQh0BWft/mWZ6tSTtAXsHAML9DsE2rEcfbKoP9f+7zFDc
 3NYiuXj9+2eZa+oKci5ms9b6WNdhq6cUFZlX/GtXLDva1wDFjaK47M8wg g==;
X-CSE-ConnectionGUID: efP6fPavS3ev0UYvXV+wTw==
X-CSE-MsgGUID: U5bnIVULR9K7KUhQNDXTSQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11199"; a="29481715"
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="29481715"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 07:41:58 -0700
X-CSE-ConnectionGUID: ykZQYZ0USYqm+cCFVRCDtw==
X-CSE-MsgGUID: Jd+VPNHASWiMoD1paCLGXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="69200363"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 07:41:56 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 02/15] drm/i915/display: Enhance iterators for modeset
 en/disable
Date: Wed, 18 Sep 2024 20:13:30 +0530
Message-ID: <20240918144343.2876184-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240918144343.2876184-1-ankit.k.nautiyal@intel.com>
References: <20240918144343.2876184-1-ankit.k.nautiyal@intel.com>
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

v2:
-Simplify the iterator macro. (Ville)
-Use struct intel_display. (Ville)
-Add prefix _intel to the helper name. (Ville)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c     | 14 +++----
 drivers/gpu/drm/i915/display/intel_display.c | 40 ++++++++++++--------
 drivers/gpu/drm/i915/display/intel_display.h | 26 +++++++++++++
 drivers/gpu/drm/i915/display/intel_dp_mst.c  | 14 +++----
 4 files changed, 64 insertions(+), 30 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index b1c294236cc8..85e519a21542 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3115,11 +3115,12 @@ static void intel_ddi_post_disable_hdmi_or_sst(struct intel_atomic_state *state,
 					       const struct intel_crtc_state *old_crtc_state,
 					       const struct drm_connector_state *old_conn_state)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_crtc *pipe_crtc;
+	int i;
 
-	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, pipe_crtc,
-					 intel_crtc_joined_pipe_mask(old_crtc_state)) {
+	for_each_pipe_crtc_modeset_disable(display, pipe_crtc, old_crtc_state, i) {
 		const struct intel_crtc_state *old_pipe_crtc_state =
 			intel_atomic_get_old_crtc_state(state, pipe_crtc);
 
@@ -3130,8 +3131,7 @@ static void intel_ddi_post_disable_hdmi_or_sst(struct intel_atomic_state *state,
 
 	intel_ddi_disable_transcoder_func(old_crtc_state);
 
-	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, pipe_crtc,
-					 intel_crtc_joined_pipe_mask(old_crtc_state)) {
+	for_each_pipe_crtc_modeset_disable(display, pipe_crtc, old_crtc_state, i) {
 		const struct intel_crtc_state *old_pipe_crtc_state =
 			intel_atomic_get_old_crtc_state(state, pipe_crtc);
 
@@ -3382,8 +3382,9 @@ static void intel_enable_ddi(struct intel_atomic_state *state,
 			     const struct intel_crtc_state *crtc_state,
 			     const struct drm_connector_state *conn_state)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_crtc *pipe_crtc;
+	int i;
 
 	intel_ddi_enable_transcoder_func(encoder, crtc_state);
 
@@ -3394,8 +3395,7 @@ static void intel_enable_ddi(struct intel_atomic_state *state,
 
 	intel_ddi_wait_for_fec_status(encoder, crtc_state, true);
 
-	for_each_intel_crtc_in_pipe_mask_reverse(&i915->drm, pipe_crtc,
-						 intel_crtc_joined_pipe_mask(crtc_state)) {
+	for_each_pipe_crtc_modeset_enable(display, pipe_crtc, crtc_state, i) {
 		const struct intel_crtc_state *pipe_crtc_state =
 			intel_atomic_get_new_crtc_state(state, pipe_crtc);
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 9f108d5e00ef..7cdc12188df9 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -299,6 +299,21 @@ bool intel_crtc_is_bigjoiner_secondary(const struct intel_crtc_state *crtc_state
 	return BIT(crtc->pipe) & bigjoiner_secondary_pipes(crtc_state);
 }
 
+u8 _intel_modeset_primary_pipes(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+
+	if (!is_bigjoiner(crtc_state))
+		return BIT(crtc->pipe);
+
+	return bigjoiner_primary_pipes(crtc_state);
+}
+
+u8 _intel_modeset_secondary_pipes(const struct intel_crtc_state *crtc_state)
+{
+	return bigjoiner_secondary_pipes(crtc_state);
+}
+
 u8 intel_crtc_joiner_secondary_pipes(const struct intel_crtc_state *crtc_state)
 {
 	if (crtc_state->joiner_pipes)
@@ -1729,18 +1744,16 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum transcoder cpu_transcoder = new_crtc_state->cpu_transcoder;
 	struct intel_crtc *pipe_crtc;
+	int i;
 
 	if (drm_WARN_ON(&dev_priv->drm, crtc->active))
 		return;
-
-	for_each_intel_crtc_in_pipe_mask_reverse(&dev_priv->drm, pipe_crtc,
-						 intel_crtc_joined_pipe_mask(new_crtc_state))
+	for_each_pipe_crtc_modeset_enable(display, pipe_crtc, new_crtc_state, i)
 		intel_dmc_enable_pipe(display, pipe_crtc->pipe);
 
 	intel_encoders_pre_pll_enable(state, crtc);
 
-	for_each_intel_crtc_in_pipe_mask_reverse(&dev_priv->drm, pipe_crtc,
-						 intel_crtc_joined_pipe_mask(new_crtc_state)) {
+	for_each_pipe_crtc_modeset_enable(display, pipe_crtc, new_crtc_state, i) {
 		const struct intel_crtc_state *pipe_crtc_state =
 			intel_atomic_get_new_crtc_state(state, pipe_crtc);
 
@@ -1750,8 +1763,7 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 
 	intel_encoders_pre_enable(state, crtc);
 
-	for_each_intel_crtc_in_pipe_mask_reverse(&dev_priv->drm, pipe_crtc,
-						 intel_crtc_joined_pipe_mask(new_crtc_state)) {
+	for_each_pipe_crtc_modeset_enable(display, pipe_crtc, new_crtc_state, i) {
 		const struct intel_crtc_state *pipe_crtc_state =
 			intel_atomic_get_new_crtc_state(state, pipe_crtc);
 
@@ -1769,8 +1781,7 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 	if (!transcoder_is_dsi(cpu_transcoder))
 		hsw_configure_cpu_transcoder(new_crtc_state);
 
-	for_each_intel_crtc_in_pipe_mask_reverse(&dev_priv->drm, pipe_crtc,
-						 intel_crtc_joined_pipe_mask(new_crtc_state)) {
+	for_each_pipe_crtc_modeset_enable(display, pipe_crtc, new_crtc_state, i) {
 		const struct intel_crtc_state *pipe_crtc_state =
 			intel_atomic_get_new_crtc_state(state, pipe_crtc);
 
@@ -1805,8 +1816,7 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 
 	intel_encoders_enable(state, crtc);
 
-	for_each_intel_crtc_in_pipe_mask_reverse(&dev_priv->drm, pipe_crtc,
-						 intel_crtc_joined_pipe_mask(new_crtc_state)) {
+	for_each_pipe_crtc_modeset_enable(display, pipe_crtc, new_crtc_state, i) {
 		const struct intel_crtc_state *pipe_crtc_state =
 			intel_atomic_get_new_crtc_state(state, pipe_crtc);
 		enum pipe hsw_workaround_pipe;
@@ -1889,10 +1899,10 @@ static void hsw_crtc_disable(struct intel_atomic_state *state,
 			     struct intel_crtc *crtc)
 {
 	struct intel_display *display = to_intel_display(state);
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	const struct intel_crtc_state *old_crtc_state =
 		intel_atomic_get_old_crtc_state(state, crtc);
 	struct intel_crtc *pipe_crtc;
+	int i;
 
 	/*
 	 * FIXME collapse everything to one hook.
@@ -1901,8 +1911,7 @@ static void hsw_crtc_disable(struct intel_atomic_state *state,
 	intel_encoders_disable(state, crtc);
 	intel_encoders_post_disable(state, crtc);
 
-	for_each_intel_crtc_in_pipe_mask(&i915->drm, pipe_crtc,
-					 intel_crtc_joined_pipe_mask(old_crtc_state)) {
+	for_each_pipe_crtc_modeset_disable(display, pipe_crtc, old_crtc_state, i) {
 		const struct intel_crtc_state *old_pipe_crtc_state =
 			intel_atomic_get_old_crtc_state(state, pipe_crtc);
 
@@ -1911,8 +1920,7 @@ static void hsw_crtc_disable(struct intel_atomic_state *state,
 
 	intel_encoders_post_pll_disable(state, crtc);
 
-	for_each_intel_crtc_in_pipe_mask(&i915->drm, pipe_crtc,
-					 intel_crtc_joined_pipe_mask(old_crtc_state))
+	for_each_pipe_crtc_modeset_disable(display, pipe_crtc, old_crtc_state, i)
 		intel_dmc_disable_pipe(display, pipe_crtc->pipe);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 64ca0f1ae013..783562dc013b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -392,6 +392,30 @@ enum phy_fia {
 			     ((connector) = to_intel_connector((__state)->base.connectors[__i].ptr), \
 			     (new_connector_state) = to_intel_digital_connector_state((__state)->base.connectors[__i].new_state), 1))
 
+#define for_each_crtc_in_masks(display, crtc, first_pipes, second_pipes, i) \
+	for ((i) = 0; \
+	     (i) < (I915_MAX_PIPES * 2) && ((crtc) = intel_crtc_for_pipe(display, (i) % I915_MAX_PIPES), 1); \
+	     (i)++) \
+		for_each_if((crtc) && ((first_pipes) | ((second_pipes) << I915_MAX_PIPES)) & BIT(i))
+
+#define for_each_crtc_in_masks_reverse(display, crtc, first_pipes, second_pipes, i) \
+	for ((i) = (I915_MAX_PIPES * 2 - 1); \
+	     (i) >= 0 && ((crtc) = intel_crtc_for_pipe(display, (i) % I915_MAX_PIPES), 1); \
+	     (i)--) \
+		for_each_if((crtc) && ((first_pipes) | ((second_pipes) << I915_MAX_PIPES)) & BIT(i))
+
+#define for_each_pipe_crtc_modeset_disable(display, crtc, crtc_state, i) \
+	for_each_crtc_in_masks(display, crtc, \
+			       _intel_modeset_primary_pipes(crtc_state), \
+			       _intel_modeset_secondary_pipes(crtc_state), \
+			       i)
+
+#define for_each_pipe_crtc_modeset_enable(display, crtc, crtc_state, i) \
+	for_each_crtc_in_masks_reverse(display, crtc, \
+				       _intel_modeset_primary_pipes(crtc_state), \
+				       _intel_modeset_secondary_pipes(crtc_state), \
+				       i)
+
 int intel_atomic_check(struct drm_device *dev, struct drm_atomic_state *state);
 int intel_atomic_add_affected_planes(struct intel_atomic_state *state,
 				     struct intel_crtc *crtc);
@@ -419,6 +443,8 @@ bool intel_crtc_is_joiner_primary(const struct intel_crtc_state *crtc_state);
 bool intel_crtc_is_bigjoiner_primary(const struct intel_crtc_state *crtc_state);
 bool intel_crtc_is_bigjoiner_secondary(const struct intel_crtc_state *crtc_state);
 u8 intel_crtc_joiner_secondary_pipes(const struct intel_crtc_state *crtc_state);
+u8 _intel_modeset_primary_pipes(const struct intel_crtc_state *crtc_state);
+u8 _intel_modeset_secondary_pipes(const struct intel_crtc_state *crtc_state);
 struct intel_crtc *intel_primary_crtc(const struct intel_crtc_state *crtc_state);
 bool intel_crtc_get_pipe_config(struct intel_crtc_state *crtc_state);
 bool intel_pipe_config_compare(const struct intel_crtc_state *current_config,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index dc050da29815..7debefd4a0d6 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -990,6 +990,7 @@ static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
 				      const struct intel_crtc_state *old_crtc_state,
 				      const struct drm_connector_state *old_conn_state)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_dp_mst_encoder *intel_mst = enc_to_mst(encoder);
 	struct intel_digital_port *dig_port = intel_mst->primary;
 	struct intel_dp *intel_dp = &dig_port->dp;
@@ -1006,6 +1007,7 @@ static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	struct intel_crtc *pipe_crtc;
 	bool last_mst_stream;
+	int i;
 
 	intel_dp->active_mst_links--;
 	last_mst_stream = intel_dp->active_mst_links == 0;
@@ -1013,8 +1015,7 @@ static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
 		    DISPLAY_VER(dev_priv) >= 12 && last_mst_stream &&
 		    !intel_dp_mst_is_master_trans(old_crtc_state));
 
-	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, pipe_crtc,
-					 intel_crtc_joined_pipe_mask(old_crtc_state)) {
+	for_each_pipe_crtc_modeset_disable(display, pipe_crtc, old_crtc_state, i) {
 		const struct intel_crtc_state *old_pipe_crtc_state =
 			intel_atomic_get_old_crtc_state(state, pipe_crtc);
 
@@ -1038,8 +1039,7 @@ static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
 
 	intel_ddi_disable_transcoder_func(old_crtc_state);
 
-	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, pipe_crtc,
-					 intel_crtc_joined_pipe_mask(old_crtc_state)) {
+	for_each_pipe_crtc_modeset_disable(display, pipe_crtc, old_crtc_state, i) {
 		const struct intel_crtc_state *old_pipe_crtc_state =
 			intel_atomic_get_old_crtc_state(state, pipe_crtc);
 
@@ -1248,6 +1248,7 @@ static void intel_mst_enable_dp(struct intel_atomic_state *state,
 				const struct intel_crtc_state *pipe_config,
 				const struct drm_connector_state *conn_state)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_dp_mst_encoder *intel_mst = enc_to_mst(encoder);
 	struct intel_digital_port *dig_port = intel_mst->primary;
 	struct intel_dp *intel_dp = &dig_port->dp;
@@ -1258,7 +1259,7 @@ static void intel_mst_enable_dp(struct intel_atomic_state *state,
 	enum transcoder trans = pipe_config->cpu_transcoder;
 	bool first_mst_stream = intel_dp->active_mst_links == 1;
 	struct intel_crtc *pipe_crtc;
-	int ret;
+	int ret, i;
 
 	drm_WARN_ON(&dev_priv->drm, pipe_config->has_pch_encoder);
 
@@ -1305,8 +1306,7 @@ static void intel_mst_enable_dp(struct intel_atomic_state *state,
 
 	intel_enable_transcoder(pipe_config);
 
-	for_each_intel_crtc_in_pipe_mask_reverse(&dev_priv->drm, pipe_crtc,
-						 intel_crtc_joined_pipe_mask(pipe_config)) {
+	for_each_pipe_crtc_modeset_enable(display, pipe_crtc, pipe_config, i) {
 		const struct intel_crtc_state *pipe_crtc_state =
 			intel_atomic_get_new_crtc_state(state, pipe_crtc);
 
-- 
2.45.2

