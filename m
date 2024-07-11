Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A65C492E1C7
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2024 10:14:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BC6210E99C;
	Thu, 11 Jul 2024 08:14:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iC3/e2kB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90A0410E99B
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jul 2024 08:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720685693; x=1752221693;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XuUX13ksMzOLRZrYd+KKU4aY+V4rMpt2zKghlqIDssQ=;
 b=iC3/e2kBleoWJF+aMRpJ7+B1XwpEOIYjCsV41+pgCoHE4TcV++veWJRS
 Wih+VQCLLdt7IjqGUw5u9X1Sk0h4ldoREO1p+K1hgFMaRQXxE4ancbz1h
 tJsr6lR1cEZ+X79BJPujJJ3Zm8seAkRvRRlPiBAKyvCDUfyuQbuJTfPzm
 n3628LqQaEPaYawKIvgOEgRcPEcGSRNiFZuDrIvbvGbF5htxCN4WFK5Ar
 qxPX0WsfiC/27ThX6vvLUNy9XyC7Qd2jdgYaf2BiN7veu0RNEbUosvJ0w
 vkbUB9E34eazFhX4RL01z2keRgi51kxATgTnaxdz8whmtjkOrSRvyjlui w==;
X-CSE-ConnectionGUID: dDj2203ERhKzSWAxNh4+1g==
X-CSE-MsgGUID: fJbJ9FFSSJWB5kmYnfUi6w==
X-IronPort-AV: E=McAfee;i="6700,10204,11129"; a="21814096"
X-IronPort-AV: E=Sophos;i="6.09,199,1716274800"; d="scan'208";a="21814096"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2024 01:14:53 -0700
X-CSE-ConnectionGUID: juyDoQMpRWaf7uJ/SzofVQ==
X-CSE-MsgGUID: i5A8UsMnQF2nWs58/hzN9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,199,1716274800"; d="scan'208";a="52785686"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by fmviesa003.fm.intel.com with ESMTP; 11 Jul 2024 01:14:52 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.saarinen@intel.com, ville.syrjala@linux.intel.com,
 ankit.k.nautiyal@intel.com
Subject: [PATCH 6/6] drm/i915: Add new abstraction layer to handle pipe order
 for different joiners
Date: Thu, 11 Jul 2024 11:14:41 +0300
Message-Id: <20240711081441.17415-7-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20240711081441.17415-1-stanislav.lisovskiy@intel.com>
References: <20240711081441.17415-1-stanislav.lisovskiy@intel.com>
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

Ultrajoiner case requires special treatment where both reverse and staight order
iteration doesn't work(for instance disabling case requires order to be:
primary master, slaves, secondary master).

Lets unify our approach by using not only pipe masks for iterating required
pipes based on joiner type used, but also using different "priority" arrays
for each of those.

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c     | 19 ++---
 drivers/gpu/drm/i915/display/intel_display.c | 73 +++++++++++++++-----
 drivers/gpu/drm/i915/display/intel_display.h |  7 ++
 drivers/gpu/drm/i915/display/intel_dp_mst.c  | 19 ++---
 4 files changed, 86 insertions(+), 32 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index a07aca96e551..d54c9e51209e 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3116,10 +3116,11 @@ static void intel_ddi_post_disable_hdmi_or_sst(struct intel_atomic_state *state,
 					       const struct drm_connector_state *old_conn_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	struct intel_crtc *pipe_crtc;
+	struct intel_crtc *pipe_crtc; enum pipe pipe;
 
-	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, pipe_crtc,
-					 intel_crtc_joined_pipe_mask(old_crtc_state)) {
+	for_each_intel_crtc_in_mask_priority(dev_priv, pipe_crtc, pipe,
+					     intel_crtc_joined_pipe_mask(old_crtc_state),
+					     intel_get_pipe_order_disable(old_crtc_state)) {
 		const struct intel_crtc_state *old_pipe_crtc_state =
 			intel_atomic_get_old_crtc_state(state, pipe_crtc);
 
@@ -3130,8 +3131,9 @@ static void intel_ddi_post_disable_hdmi_or_sst(struct intel_atomic_state *state,
 
 	intel_ddi_disable_transcoder_func(old_crtc_state);
 
-	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, pipe_crtc,
-					 intel_crtc_joined_pipe_mask(old_crtc_state)) {
+	for_each_intel_crtc_in_mask_priority(dev_priv, pipe_crtc, pipe,
+					     intel_crtc_joined_pipe_mask(old_crtc_state),
+					     intel_get_pipe_order_disable(old_crtc_state)) {
 		const struct intel_crtc_state *old_pipe_crtc_state =
 			intel_atomic_get_old_crtc_state(state, pipe_crtc);
 
@@ -3383,7 +3385,7 @@ static void intel_enable_ddi(struct intel_atomic_state *state,
 			     const struct drm_connector_state *conn_state)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	struct intel_crtc *pipe_crtc;
+	struct intel_crtc *pipe_crtc; enum pipe pipe;
 
 	intel_ddi_enable_transcoder_func(encoder, crtc_state);
 
@@ -3394,8 +3396,9 @@ static void intel_enable_ddi(struct intel_atomic_state *state,
 
 	intel_ddi_wait_for_fec_status(encoder, crtc_state, true);
 
-	for_each_intel_crtc_in_pipe_mask_reverse(&i915->drm, pipe_crtc,
-						 intel_crtc_joined_pipe_mask(crtc_state)) {
+	for_each_intel_crtc_in_mask_priority(i915, pipe_crtc, pipe,
+					     intel_crtc_joined_pipe_mask(crtc_state),
+					     intel_get_pipe_order_enable(crtc_state)) {
 		const struct intel_crtc_state *pipe_crtc_state =
 			intel_atomic_get_new_crtc_state(state, pipe_crtc);
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 9aea637ce913..7204ffc1dd56 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1721,6 +1721,40 @@ static void hsw_configure_cpu_transcoder(const struct intel_crtc_state *crtc_sta
 	hsw_set_transconf(crtc_state);
 }
 
+
+
+const enum pipe *intel_get_pipe_order_enable(const struct intel_crtc_state *crtc_state)
+{
+	static const enum pipe ultrajoiner_pipe_order_enable[I915_MAX_PIPES] =
+		{ PIPE_B, PIPE_D, PIPE_C, PIPE_A };
+	static const enum pipe bigjoiner_pipe_order_enable[I915_MAX_PIPES] =
+		{ PIPE_B, PIPE_A, PIPE_D, PIPE_C };
+	static const enum pipe nojoiner_pipe_order_enable[I915_MAX_PIPES] =
+		{ PIPE_A, PIPE_B, PIPE_C, PIPE_D };
+
+	if (intel_is_ultrajoiner(crtc_state))
+		return ultrajoiner_pipe_order_enable;
+	else if (intel_is_bigjoiner(crtc_state))
+		return bigjoiner_pipe_order_enable;
+	return nojoiner_pipe_order_enable;
+}
+
+const enum pipe *intel_get_pipe_order_disable(const struct intel_crtc_state *crtc_state)
+{
+	static const enum pipe ultrajoiner_pipe_order_disable[I915_MAX_PIPES] =
+		{ PIPE_A, PIPE_B, PIPE_D, PIPE_C };
+	static const enum pipe bigjoiner_pipe_order_disable[I915_MAX_PIPES] =
+		{ PIPE_A, PIPE_B, PIPE_C, PIPE_D };
+	static const enum pipe nojoiner_pipe_order_disable[I915_MAX_PIPES] =
+		{ PIPE_A, PIPE_B, PIPE_C, PIPE_D };
+
+	if (intel_is_ultrajoiner(crtc_state))
+		return ultrajoiner_pipe_order_disable;
+	else if (intel_is_bigjoiner(crtc_state))
+		return bigjoiner_pipe_order_disable;
+	return nojoiner_pipe_order_disable;
+}
+
 static void hsw_crtc_enable(struct intel_atomic_state *state,
 			    struct intel_crtc *crtc)
 {
@@ -1728,19 +1762,21 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 		intel_atomic_get_new_crtc_state(state, crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum transcoder cpu_transcoder = new_crtc_state->cpu_transcoder;
-	struct intel_crtc *pipe_crtc;
+	struct intel_crtc *pipe_crtc; enum pipe pipe;
 
 	if (drm_WARN_ON(&dev_priv->drm, crtc->active))
 		return;
 
-	for_each_intel_crtc_in_pipe_mask_reverse(&dev_priv->drm, pipe_crtc,
-						 intel_crtc_joined_pipe_mask(new_crtc_state))
+	for_each_intel_crtc_in_mask_priority(dev_priv, pipe_crtc, pipe,
+					     intel_crtc_joined_pipe_mask(new_crtc_state),
+					     intel_get_pipe_order_enable(new_crtc_state))
 		intel_dmc_enable_pipe(dev_priv, pipe_crtc->pipe);
 
 	intel_encoders_pre_pll_enable(state, crtc);
 
-	for_each_intel_crtc_in_pipe_mask_reverse(&dev_priv->drm, pipe_crtc,
-						 intel_crtc_joined_pipe_mask(new_crtc_state)) {
+	for_each_intel_crtc_in_mask_priority(dev_priv, pipe_crtc, pipe,
+					     intel_crtc_joined_pipe_mask(new_crtc_state),
+					     intel_get_pipe_order_enable(new_crtc_state)) {
 		const struct intel_crtc_state *pipe_crtc_state =
 			intel_atomic_get_new_crtc_state(state, pipe_crtc);
 
@@ -1750,8 +1786,9 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 
 	intel_encoders_pre_enable(state, crtc);
 
-	for_each_intel_crtc_in_pipe_mask_reverse(&dev_priv->drm, pipe_crtc,
-						 intel_crtc_joined_pipe_mask(new_crtc_state)) {
+	for_each_intel_crtc_in_mask_priority(dev_priv, pipe_crtc, pipe,
+					     intel_crtc_joined_pipe_mask(new_crtc_state),
+					     intel_get_pipe_order_enable(new_crtc_state)) {
 		const struct intel_crtc_state *pipe_crtc_state =
 			intel_atomic_get_new_crtc_state(state, pipe_crtc);
 
@@ -1769,8 +1806,9 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 	if (!transcoder_is_dsi(cpu_transcoder))
 		hsw_configure_cpu_transcoder(new_crtc_state);
 
-	for_each_intel_crtc_in_pipe_mask_reverse(&dev_priv->drm, pipe_crtc,
-						 intel_crtc_joined_pipe_mask(new_crtc_state)) {
+	for_each_intel_crtc_in_mask_priority(dev_priv, pipe_crtc, pipe,
+					     intel_crtc_joined_pipe_mask(new_crtc_state),
+					     intel_get_pipe_order_enable(new_crtc_state)) {
 		const struct intel_crtc_state *pipe_crtc_state =
 			intel_atomic_get_new_crtc_state(state, pipe_crtc);
 
@@ -1805,8 +1843,9 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 
 	intel_encoders_enable(state, crtc);
 
-	for_each_intel_crtc_in_pipe_mask_reverse(&dev_priv->drm, pipe_crtc,
-						 intel_crtc_joined_pipe_mask(new_crtc_state)) {
+	for_each_intel_crtc_in_mask_priority(dev_priv, pipe_crtc, pipe,
+					     intel_crtc_joined_pipe_mask(new_crtc_state),
+					     intel_get_pipe_order_enable(new_crtc_state)) {
 		const struct intel_crtc_state *pipe_crtc_state =
 			intel_atomic_get_new_crtc_state(state, pipe_crtc);
 		enum pipe hsw_workaround_pipe;
@@ -1891,7 +1930,7 @@ static void hsw_crtc_disable(struct intel_atomic_state *state,
 	const struct intel_crtc_state *old_crtc_state =
 		intel_atomic_get_old_crtc_state(state, crtc);
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
-	struct intel_crtc *pipe_crtc;
+	struct intel_crtc *pipe_crtc; enum pipe pipe;
 
 	/*
 	 * FIXME collapse everything to one hook.
@@ -1900,8 +1939,9 @@ static void hsw_crtc_disable(struct intel_atomic_state *state,
 	intel_encoders_disable(state, crtc);
 	intel_encoders_post_disable(state, crtc);
 
-	for_each_intel_crtc_in_pipe_mask(&i915->drm, pipe_crtc,
-					 intel_crtc_joined_pipe_mask(old_crtc_state)) {
+	for_each_intel_crtc_in_mask_priority(i915, pipe_crtc, pipe,
+					     intel_crtc_joined_pipe_mask(old_crtc_state),
+					     intel_get_pipe_order_disable(old_crtc_state)) {
 		const struct intel_crtc_state *old_pipe_crtc_state =
 			intel_atomic_get_old_crtc_state(state, pipe_crtc);
 
@@ -1910,8 +1950,9 @@ static void hsw_crtc_disable(struct intel_atomic_state *state,
 
 	intel_encoders_post_pll_disable(state, crtc);
 
-	for_each_intel_crtc_in_pipe_mask(&i915->drm, pipe_crtc,
-					 intel_crtc_joined_pipe_mask(old_crtc_state))
+	for_each_intel_crtc_in_mask_priority(i915, pipe_crtc, pipe,
+					     intel_crtc_joined_pipe_mask(old_crtc_state),
+					     intel_get_pipe_order_disable(old_crtc_state))
 		intel_dmc_disable_pipe(i915, pipe_crtc->pipe);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 0a51f24af405..70e18003112a 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -274,6 +274,11 @@ enum phy_fia {
 			    &(dev)->mode_config.crtc_list,		\
 			    base.head)
 
+#define for_each_intel_crtc_in_mask_priority(__dev_priv, intel_crtc, __p, __mask, __priolist) \
+	for_each_pipe(__dev_priv, __p) \
+		for_each_if((__mask) & BIT(__priolist[__p])) \
+			for_each_if(intel_crtc = intel_crtc_for_pipe(__dev_priv, __priolist[__p]))
+
 #define for_each_intel_crtc_in_pipe_mask(dev, intel_crtc, pipe_mask)	\
 	list_for_each_entry(intel_crtc,					\
 			    &(dev)->mode_config.crtc_list,		\
@@ -432,6 +437,8 @@ bool intel_crtc_is_ultrajoiner(const struct intel_crtc_state *crtc_state);
 bool intel_crtc_is_ultrajoiner_primary(const struct intel_crtc_state *crtc_state);
 u8 intel_crtc_joiner_secondary_pipes(const struct intel_crtc_state *crtc_state);
 struct intel_crtc *intel_joiner_primary_crtc(const struct intel_crtc_state *crtc_state);
+const enum pipe *intel_get_pipe_order_enable(const struct intel_crtc_state *crtc_state);
+const enum pipe *intel_get_pipe_order_disable(const struct intel_crtc_state *crtc_state);
 bool intel_crtc_get_pipe_config(struct intel_crtc_state *crtc_state);
 bool intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 			       const struct intel_crtc_state *pipe_config,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 13828c011d9c..291bfc3e22f9 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1002,7 +1002,7 @@ static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
 	struct drm_dp_mst_atomic_payload *new_payload =
 		drm_atomic_get_mst_payload_state(new_mst_state, connector->port);
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
-	struct intel_crtc *pipe_crtc;
+	struct intel_crtc *pipe_crtc; enum pipe pipe;
 	bool last_mst_stream;
 
 	intel_dp->active_mst_links--;
@@ -1011,8 +1011,9 @@ static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
 		    DISPLAY_VER(dev_priv) >= 12 && last_mst_stream &&
 		    !intel_dp_mst_is_master_trans(old_crtc_state));
 
-	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, pipe_crtc,
-					 intel_crtc_joined_pipe_mask(old_crtc_state)) {
+	for_each_intel_crtc_in_mask_priority(dev_priv, pipe_crtc, pipe,
+					     intel_crtc_joined_pipe_mask(old_crtc_state),
+					     intel_get_pipe_order_disable(old_crtc_state)) {
 		const struct intel_crtc_state *old_pipe_crtc_state =
 			intel_atomic_get_old_crtc_state(state, pipe_crtc);
 
@@ -1036,8 +1037,9 @@ static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
 
 	intel_ddi_disable_transcoder_func(old_crtc_state);
 
-	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, pipe_crtc,
-					 intel_crtc_joined_pipe_mask(old_crtc_state)) {
+	for_each_intel_crtc_in_mask_priority(dev_priv, pipe_crtc, pipe,
+					     intel_crtc_joined_pipe_mask(old_crtc_state),
+					     intel_get_pipe_order_disable(old_crtc_state)) {
 		const struct intel_crtc_state *old_pipe_crtc_state =
 			intel_atomic_get_old_crtc_state(state, pipe_crtc);
 
@@ -1226,7 +1228,7 @@ static void intel_mst_enable_dp(struct intel_atomic_state *state,
 		drm_atomic_get_new_mst_topology_state(&state->base, &intel_dp->mst_mgr);
 	enum transcoder trans = pipe_config->cpu_transcoder;
 	bool first_mst_stream = intel_dp->active_mst_links == 1;
-	struct intel_crtc *pipe_crtc;
+	struct intel_crtc *pipe_crtc; enum pipe pipe;
 
 	drm_WARN_ON(&dev_priv->drm, pipe_config->has_pch_encoder);
 
@@ -1270,8 +1272,9 @@ static void intel_mst_enable_dp(struct intel_atomic_state *state,
 
 	intel_enable_transcoder(pipe_config);
 
-	for_each_intel_crtc_in_pipe_mask_reverse(&dev_priv->drm, pipe_crtc,
-						 intel_crtc_joined_pipe_mask(pipe_config)) {
+	for_each_intel_crtc_in_mask_priority(dev_priv, pipe_crtc, pipe,
+					     intel_crtc_joined_pipe_mask(pipe_config),
+					     intel_get_pipe_order_enable(pipe_config)) {
 		const struct intel_crtc_state *pipe_crtc_state =
 			intel_atomic_get_new_crtc_state(state, pipe_crtc);
 
-- 
2.37.3

