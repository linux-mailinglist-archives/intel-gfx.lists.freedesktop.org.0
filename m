Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 81AFB975355
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2024 15:12:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C264310EA21;
	Wed, 11 Sep 2024 13:12:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CEZpXVtw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 191C610EA25
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Sep 2024 13:12:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726060356; x=1757596356;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RxzPK3TEAShAaq3MxQ+CTqVQC6kVixZrM0gs63No0kU=;
 b=CEZpXVtwlchd2AY1OD8wMYTXwM5D+gpWzxtyMbgFb4npLBm15gEzS3uk
 TnhHT7CEEv5mEhomcLb50ZhDCQY+7rvAg/kdGG31LacqKQtGIp2/qs5pS
 g/K4wxqKxR8+620gmQtcyyQhsNeRiO6qleZNd7IgNsgN7QAFLe7XeZBF+
 doiI1IC3pxWzMBuohFiDvVpdD5eJ2l/F/2XYkLQDWf31ESIl57x6MQGps
 YRBJ8eURlqj3zpyIsjAnIoEzO5mBG4kZst5dYHHM1Kt2/HFCt5LpYNe2+
 lrXem5sxh2DTJVyftldThMh8tkJhifn+060KuMEeQcHAtCPjMHgHPbGXr g==;
X-CSE-ConnectionGUID: p+hYMxeMSbSW0hvJZeqecg==
X-CSE-MsgGUID: qEHtx1VLRRqKiOVd2F6mqQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11191"; a="36244419"
X-IronPort-AV: E=Sophos;i="6.10,220,1719903600"; d="scan'208";a="36244419"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2024 06:12:36 -0700
X-CSE-ConnectionGUID: 846/WSDBRue3c/cmeynPDg==
X-CSE-MsgGUID: LC+6OXjgQfGHh7H1jwRcgg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,220,1719903600"; d="scan'208";a="67381097"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2024 06:12:34 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: suraj.kandpal@intel.com, jani.saarinen@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 16/19] drm/i915: Add new abstraction layer to handle pipe
 order for different joiners
Date: Wed, 11 Sep 2024 18:43:46 +0530
Message-ID: <20240911131349.933814-17-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240911131349.933814-1-ankit.k.nautiyal@intel.com>
References: <20240911131349.933814-1-ankit.k.nautiyal@intel.com>
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

From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

Ultrajoiner case requires special treatment where both reverse and
staight order iteration doesn't work(for instance disabling case requires
order to be: primary master, slaves, secondary master).

Lets unify our approach by using not only pipe masks for iterating required
pipes based on joiner type used, but also using different "priority" arrays
for each of those.

v2: Fix checkpatch warnings. (Ankit)

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c     | 19 +++--
 drivers/gpu/drm/i915/display/intel_display.c | 83 ++++++++++++++++----
 drivers/gpu/drm/i915/display/intel_display.h |  7 ++
 drivers/gpu/drm/i915/display/intel_dp_mst.c  | 18 +++--
 4 files changed, 96 insertions(+), 31 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 00fbe9f8c03a..2c064b6c6d01 100644
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
index db27850b2c36..27622d51a473 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1737,6 +1737,50 @@ static void hsw_configure_cpu_transcoder(const struct intel_crtc_state *crtc_sta
 	hsw_set_transconf(crtc_state);
 }
 
+static
+bool intel_crtc_is_bigjoiner(const struct intel_crtc_state *pipe_config)
+{
+	return hweight8(pipe_config->joiner_pipes) == 2;
+}
+
+const enum pipe *intel_get_pipe_order_enable(const struct intel_crtc_state *crtc_state)
+{
+	static const enum pipe ultrajoiner_pipe_order_enable[I915_MAX_PIPES] = {
+		PIPE_B, PIPE_D, PIPE_C, PIPE_A
+	};
+	static const enum pipe bigjoiner_pipe_order_enable[I915_MAX_PIPES] = {
+		PIPE_B, PIPE_A, PIPE_D, PIPE_C
+	};
+	static const enum pipe nojoiner_pipe_order_enable[I915_MAX_PIPES] = {
+		PIPE_A, PIPE_B, PIPE_C, PIPE_D
+	};
+
+	if (intel_crtc_is_ultrajoiner(crtc_state))
+		return ultrajoiner_pipe_order_enable;
+	else if (intel_crtc_is_bigjoiner(crtc_state))
+		return bigjoiner_pipe_order_enable;
+	return nojoiner_pipe_order_enable;
+}
+
+const enum pipe *intel_get_pipe_order_disable(const struct intel_crtc_state *crtc_state)
+{
+	static const enum pipe ultrajoiner_pipe_order_disable[I915_MAX_PIPES] = {
+		PIPE_A, PIPE_B, PIPE_D, PIPE_C
+	};
+	static const enum pipe bigjoiner_pipe_order_disable[I915_MAX_PIPES] = {
+		PIPE_A, PIPE_B, PIPE_C, PIPE_D
+	};
+	static const enum pipe nojoiner_pipe_order_disable[I915_MAX_PIPES] = {
+		PIPE_A, PIPE_B, PIPE_C, PIPE_D
+	};
+
+	if (intel_crtc_is_ultrajoiner(crtc_state))
+		return ultrajoiner_pipe_order_disable;
+	else if (intel_crtc_is_bigjoiner(crtc_state))
+		return bigjoiner_pipe_order_disable;
+	return nojoiner_pipe_order_disable;
+}
+
 static void hsw_crtc_enable(struct intel_atomic_state *state,
 			    struct intel_crtc *crtc)
 {
@@ -1745,19 +1789,21 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
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
 
@@ -1767,8 +1813,9 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 
 	intel_encoders_pre_enable(state, crtc);
 
-	for_each_intel_crtc_in_pipe_mask_reverse(&dev_priv->drm, pipe_crtc,
-						 intel_crtc_joined_pipe_mask(new_crtc_state)) {
+	for_each_intel_crtc_in_mask_priority(dev_priv, pipe_crtc, pipe,
+					     intel_crtc_joined_pipe_mask(new_crtc_state),
+					     intel_get_pipe_order_enable(new_crtc_state)) {
 		const struct intel_crtc_state *pipe_crtc_state =
 			intel_atomic_get_new_crtc_state(state, pipe_crtc);
 
@@ -1786,8 +1833,9 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 	if (!transcoder_is_dsi(cpu_transcoder))
 		hsw_configure_cpu_transcoder(new_crtc_state);
 
-	for_each_intel_crtc_in_pipe_mask_reverse(&dev_priv->drm, pipe_crtc,
-						 intel_crtc_joined_pipe_mask(new_crtc_state)) {
+	for_each_intel_crtc_in_mask_priority(dev_priv, pipe_crtc, pipe,
+					     intel_crtc_joined_pipe_mask(new_crtc_state),
+					     intel_get_pipe_order_enable(new_crtc_state)) {
 		const struct intel_crtc_state *pipe_crtc_state =
 			intel_atomic_get_new_crtc_state(state, pipe_crtc);
 
@@ -1822,8 +1870,9 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 
 	intel_encoders_enable(state, crtc);
 
-	for_each_intel_crtc_in_pipe_mask_reverse(&dev_priv->drm, pipe_crtc,
-						 intel_crtc_joined_pipe_mask(new_crtc_state)) {
+	for_each_intel_crtc_in_mask_priority(dev_priv, pipe_crtc, pipe,
+					     intel_crtc_joined_pipe_mask(new_crtc_state),
+					     intel_get_pipe_order_enable(new_crtc_state)) {
 		const struct intel_crtc_state *pipe_crtc_state =
 			intel_atomic_get_new_crtc_state(state, pipe_crtc);
 		enum pipe hsw_workaround_pipe;
@@ -1908,7 +1957,7 @@ static void hsw_crtc_disable(struct intel_atomic_state *state,
 	const struct intel_crtc_state *old_crtc_state =
 		intel_atomic_get_old_crtc_state(state, crtc);
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
-	struct intel_crtc *pipe_crtc;
+	struct intel_crtc *pipe_crtc; enum pipe pipe;
 
 	/*
 	 * FIXME collapse everything to one hook.
@@ -1917,8 +1966,9 @@ static void hsw_crtc_disable(struct intel_atomic_state *state,
 	intel_encoders_disable(state, crtc);
 	intel_encoders_post_disable(state, crtc);
 
-	for_each_intel_crtc_in_pipe_mask(&i915->drm, pipe_crtc,
-					 intel_crtc_joined_pipe_mask(old_crtc_state)) {
+	for_each_intel_crtc_in_mask_priority(i915, pipe_crtc, pipe,
+					     intel_crtc_joined_pipe_mask(old_crtc_state),
+					     intel_get_pipe_order_disable(old_crtc_state)) {
 		const struct intel_crtc_state *old_pipe_crtc_state =
 			intel_atomic_get_old_crtc_state(state, pipe_crtc);
 
@@ -1927,8 +1977,9 @@ static void hsw_crtc_disable(struct intel_atomic_state *state,
 
 	intel_encoders_post_pll_disable(state, crtc);
 
-	for_each_intel_crtc_in_pipe_mask(&i915->drm, pipe_crtc,
-					 intel_crtc_joined_pipe_mask(old_crtc_state))
+	for_each_intel_crtc_in_mask_priority(i915, pipe_crtc, pipe,
+					     intel_crtc_joined_pipe_mask(old_crtc_state),
+					     intel_get_pipe_order_disable(old_crtc_state))
 		intel_dmc_disable_pipe(i915, pipe_crtc->pipe);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index dbbe23ea14fc..72dc495c645c 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -274,6 +274,11 @@ enum phy_fia {
 			    &(dev)->mode_config.crtc_list,		\
 			    base.head)
 
+#define for_each_intel_crtc_in_mask_priority(__dev_priv, intel_crtc, __p, __mask, __priolist) \
+	for_each_pipe(__dev_priv, __p) \
+		for_each_if((__mask) & BIT(__priolist[__p])) \
+			for_each_if(intel_crtc = intel_crtc_for_pipe(to_intel_display(&__dev_priv->drm), __priolist[__p]))
+
 #define for_each_intel_crtc_in_pipe_mask(dev, intel_crtc, pipe_mask)	\
 	list_for_each_entry(intel_crtc,					\
 			    &(dev)->mode_config.crtc_list,		\
@@ -431,6 +436,8 @@ bool intel_crtc_is_ultrajoiner(const struct intel_crtc_state *crtc_state);
 bool intel_crtc_is_ultrajoiner_primary(const struct intel_crtc_state *crtc_state);
 u8 intel_crtc_joiner_secondary_pipes(const struct intel_crtc_state *crtc_state);
 struct intel_crtc *intel_primary_crtc(const struct intel_crtc_state *crtc_state);
+const enum pipe *intel_get_pipe_order_enable(const struct intel_crtc_state *crtc_state);
+const enum pipe *intel_get_pipe_order_disable(const struct intel_crtc_state *crtc_state);
 bool intel_crtc_get_pipe_config(struct intel_crtc_state *crtc_state);
 bool intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 			       const struct intel_crtc_state *pipe_config,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index be79783ce09b..1c87f81568c8 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1003,7 +1003,7 @@ static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
 	struct drm_dp_mst_atomic_payload *new_payload =
 		drm_atomic_get_mst_payload_state(new_mst_state, connector->port);
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
-	struct intel_crtc *pipe_crtc;
+	struct intel_crtc *pipe_crtc; enum pipe pipe;
 	bool last_mst_stream;
 
 	intel_dp->active_mst_links--;
@@ -1012,8 +1012,9 @@ static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
 		    DISPLAY_VER(dev_priv) >= 12 && last_mst_stream &&
 		    !intel_dp_mst_is_master_trans(old_crtc_state));
 
-	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, pipe_crtc,
-					 intel_crtc_joined_pipe_mask(old_crtc_state)) {
+	for_each_intel_crtc_in_mask_priority(dev_priv, pipe_crtc, pipe,
+					     intel_crtc_joined_pipe_mask(old_crtc_state),
+					     intel_get_pipe_order_disable(old_crtc_state)) {
 		const struct intel_crtc_state *old_pipe_crtc_state =
 			intel_atomic_get_old_crtc_state(state, pipe_crtc);
 
@@ -1037,8 +1038,9 @@ static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
 
 	intel_ddi_disable_transcoder_func(old_crtc_state);
 
-	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, pipe_crtc,
-					 intel_crtc_joined_pipe_mask(old_crtc_state)) {
+	for_each_intel_crtc_in_mask_priority(dev_priv, pipe_crtc, pipe,
+					     intel_crtc_joined_pipe_mask(old_crtc_state),
+					     intel_get_pipe_order_disable(old_crtc_state)) {
 		const struct intel_crtc_state *old_pipe_crtc_state =
 			intel_atomic_get_old_crtc_state(state, pipe_crtc);
 
@@ -1257,6 +1259,7 @@ static void intel_mst_enable_dp(struct intel_atomic_state *state,
 	enum transcoder trans = pipe_config->cpu_transcoder;
 	bool first_mst_stream = intel_dp->active_mst_links == 1;
 	struct intel_crtc *pipe_crtc;
+	enum pipe pipe;
 	int ret;
 
 	drm_WARN_ON(&dev_priv->drm, pipe_config->has_pch_encoder);
@@ -1304,8 +1307,9 @@ static void intel_mst_enable_dp(struct intel_atomic_state *state,
 
 	intel_enable_transcoder(pipe_config);
 
-	for_each_intel_crtc_in_pipe_mask_reverse(&dev_priv->drm, pipe_crtc,
-						 intel_crtc_joined_pipe_mask(pipe_config)) {
+	for_each_intel_crtc_in_mask_priority(dev_priv, pipe_crtc, pipe,
+					     intel_crtc_joined_pipe_mask(pipe_config),
+					     intel_get_pipe_order_enable(pipe_config)) {
 		const struct intel_crtc_state *pipe_crtc_state =
 			intel_atomic_get_new_crtc_state(state, pipe_crtc);
 
-- 
2.45.2

