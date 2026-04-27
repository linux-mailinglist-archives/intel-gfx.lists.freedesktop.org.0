Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +FUBEOBC72kE/gAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2026 13:05:04 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC48947177B
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2026 13:05:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A21B10E6C3;
	Mon, 27 Apr 2026 11:05:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OsV+uDvw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2979A10E6BA;
 Mon, 27 Apr 2026 11:05:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777287902; x=1808823902;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=D2moumv9mu4BHRUC2qLUZaMqGQ7oWn2pjhKhDDY3j30=;
 b=OsV+uDvwdYj3OYRoL3rXBigqMOkYmKay2HCNF0uRYgqH8aboNppm3Gxr
 SkoW+SSd6YRBQE15rS7xsjOIgBWMxm+Bucojv1V37lpB9aIL+0CRchIO6
 gpZRJsF2Ip5Un2PBthMrlrmjcY1IJnD1S3221iVyDgcgoyZG7qIHo25jI
 Y8IHk8/coPOm/XzwScudu0K1azPONaOmQufUH5qWRuiPQNIUVCOikW5iZ
 ItrEZED/ctVMTzZ6sCaaFJBeR20RtBu7I1SbIK0J5qfAk4qUCONQd++c3
 Kk1KBqYUKkbKoSXRTXDJaSUH1t4xUTik4GZfVgZrYP4NH4OzMrce8LCjv g==;
X-CSE-ConnectionGUID: eji/VKGxToWDyPqabqrIyg==
X-CSE-MsgGUID: 0FK4Etk3QCmHZvGVru+UpA==
X-IronPort-AV: E=McAfee;i="6800,10657,11768"; a="89255951"
X-IronPort-AV: E=Sophos;i="6.23,202,1770624000"; d="scan'208";a="89255951"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2026 04:05:01 -0700
X-CSE-ConnectionGUID: DY5o4T8QSLW7KStIq9cEpA==
X-CSE-MsgGUID: HddDrnJkSjqmb39L57lp4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,202,1770624000"; d="scan'208";a="264021876"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO localhost)
 ([10.245.244.53])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2026 04:04:59 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 6/6] drm/i915/display: stop passing i to
 for_each_pipe_crtc_modeset_{enable, disable}()
Date: Mon, 27 Apr 2026 14:04:32 +0300
Message-ID: <3cffa218db28e470117320e20343ea81c3f30e30.1777287836.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1777287836.git.jani.nikula@intel.com>
References: <cover.1777287836.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Rspamd-Queue-Id: CC48947177B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.99 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[intel.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_SPAM(0.00)[0.198];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]

Refactor for_each_pipe_crtc_modeset_{enable,disable}() and their
underlying for_each_crtc_in_masks{,_reverse}() helpers to utilize
__UNIQUE_ID() to avoid having to pass the for loop variable to them.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c     |  8 ++----
 drivers/gpu/drm/i915/display/intel_display.c | 12 ++++----
 drivers/gpu/drm/i915/display/intel_display.h | 30 ++++++++++----------
 drivers/gpu/drm/i915/display/intel_dp_mst.c  |  9 +++---
 4 files changed, 27 insertions(+), 32 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 4ddb3a70f9a1..3e1f1e8b1357 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3230,9 +3230,8 @@ static void intel_ddi_post_disable_hdmi_or_sst(struct intel_atomic_state *state,
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	struct intel_crtc *pipe_crtc;
 	bool is_hdmi = intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_HDMI);
-	int i;
 
-	for_each_pipe_crtc_modeset_disable(display, pipe_crtc, old_crtc_state, i) {
+	for_each_pipe_crtc_modeset_disable(display, pipe_crtc, old_crtc_state) {
 		const struct intel_crtc_state *old_pipe_crtc_state =
 			intel_atomic_get_old_crtc_state(state, pipe_crtc);
 
@@ -3259,7 +3258,7 @@ static void intel_ddi_post_disable_hdmi_or_sst(struct intel_atomic_state *state,
 
 	intel_ddi_disable_transcoder_func(old_crtc_state);
 
-	for_each_pipe_crtc_modeset_disable(display, pipe_crtc, old_crtc_state, i) {
+	for_each_pipe_crtc_modeset_disable(display, pipe_crtc, old_crtc_state) {
 		const struct intel_crtc_state *old_pipe_crtc_state =
 			intel_atomic_get_old_crtc_state(state, pipe_crtc);
 
@@ -3516,7 +3515,6 @@ static void intel_ddi_enable(struct intel_atomic_state *state,
 	struct intel_crtc *pipe_crtc;
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 	bool is_hdmi = intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI);
-	int i;
 
 	/* 128b/132b SST */
 	if (!is_hdmi && intel_dp_is_uhbr(crtc_state)) {
@@ -3550,7 +3548,7 @@ static void intel_ddi_enable(struct intel_atomic_state *state,
 
 	intel_ddi_wait_for_fec_status(encoder, crtc_state, true);
 
-	for_each_pipe_crtc_modeset_enable(display, pipe_crtc, crtc_state, i) {
+	for_each_pipe_crtc_modeset_enable(display, pipe_crtc, crtc_state) {
 		const struct intel_crtc_state *pipe_crtc_state =
 			intel_atomic_get_new_crtc_state(state, pipe_crtc);
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 1c11d13c2c4b..50d31b01bdf4 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1653,11 +1653,10 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 		intel_atomic_get_new_crtc_state(state, crtc);
 	enum transcoder cpu_transcoder = new_crtc_state->cpu_transcoder;
 	struct intel_crtc *pipe_crtc;
-	int i;
 
 	if (drm_WARN_ON(display->drm, crtc->active))
 		return;
-	for_each_pipe_crtc_modeset_enable(display, pipe_crtc, new_crtc_state, i) {
+	for_each_pipe_crtc_modeset_enable(display, pipe_crtc, new_crtc_state) {
 		const struct intel_crtc_state *new_pipe_crtc_state =
 			intel_atomic_get_new_crtc_state(state, pipe_crtc);
 
@@ -1671,7 +1670,7 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 
 	intel_encoders_pre_enable(state, crtc);
 
-	for_each_pipe_crtc_modeset_enable(display, pipe_crtc, new_crtc_state, i) {
+	for_each_pipe_crtc_modeset_enable(display, pipe_crtc, new_crtc_state) {
 		const struct intel_crtc_state *pipe_crtc_state =
 			intel_atomic_get_new_crtc_state(state, pipe_crtc);
 
@@ -1689,7 +1688,7 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 	if (!transcoder_is_dsi(cpu_transcoder))
 		hsw_configure_cpu_transcoder(new_crtc_state);
 
-	for_each_pipe_crtc_modeset_enable(display, pipe_crtc, new_crtc_state, i) {
+	for_each_pipe_crtc_modeset_enable(display, pipe_crtc, new_crtc_state) {
 		const struct intel_crtc_state *pipe_crtc_state =
 			intel_atomic_get_new_crtc_state(state, pipe_crtc);
 
@@ -1719,7 +1718,7 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 
 	intel_encoders_enable(state, crtc);
 
-	for_each_pipe_crtc_modeset_enable(display, pipe_crtc, new_crtc_state, i) {
+	for_each_pipe_crtc_modeset_enable(display, pipe_crtc, new_crtc_state) {
 		const struct intel_crtc_state *pipe_crtc_state =
 			intel_atomic_get_new_crtc_state(state, pipe_crtc);
 		enum pipe hsw_workaround_pipe;
@@ -1787,7 +1786,6 @@ static void hsw_crtc_disable(struct intel_atomic_state *state,
 	const struct intel_crtc_state *old_crtc_state =
 		intel_atomic_get_old_crtc_state(state, crtc);
 	struct intel_crtc *pipe_crtc;
-	int i;
 
 	/*
 	 * FIXME collapse everything to one hook.
@@ -1800,7 +1798,7 @@ static void hsw_crtc_disable(struct intel_atomic_state *state,
 
 	intel_encoders_post_pll_disable(state, crtc);
 
-	for_each_pipe_crtc_modeset_disable(display, pipe_crtc, old_crtc_state, i) {
+	for_each_pipe_crtc_modeset_disable(display, pipe_crtc, old_crtc_state) {
 		const struct intel_crtc_state *old_pipe_crtc_state =
 			intel_atomic_get_old_crtc_state(state, pipe_crtc);
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index cb4ab5f22d8a..6ba1996b231a 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -325,29 +325,29 @@ enum phy_fia {
 			     ((connector) = to_intel_connector((__state)->base.connectors[__i].ptr), \
 			     (new_connector_state) = to_intel_digital_connector_state((__state)->base.connectors[__i].new_state), 1))
 
-#define for_each_crtc_in_masks(display, crtc, first_pipes, second_pipes, i) \
-	for ((i) = 0; \
+#define __for_each_crtc_in_masks(display, crtc, first_pipes, second_pipes, i) \
+	for (int (i) = 0; \
 	     (i) < (I915_MAX_PIPES * 2) && ((crtc) = intel_crtc_for_pipe(display, (i) % I915_MAX_PIPES), 1); \
 	     (i)++) \
 		for_each_if((crtc) && ((first_pipes) | ((second_pipes) << I915_MAX_PIPES)) & BIT(i))
 
-#define for_each_crtc_in_masks_reverse(display, crtc, first_pipes, second_pipes, i) \
-	for ((i) = (I915_MAX_PIPES * 2 - 1); \
+#define __for_each_crtc_in_masks_reverse(display, crtc, first_pipes, second_pipes, i) \
+	for (int (i) = (I915_MAX_PIPES * 2 - 1); \
 	     (i) >= 0 && ((crtc) = intel_crtc_for_pipe(display, (i) % I915_MAX_PIPES), 1); \
 	     (i)--) \
 		for_each_if((crtc) && ((first_pipes) | ((second_pipes) << I915_MAX_PIPES)) & BIT(i))
 
-#define for_each_pipe_crtc_modeset_disable(display, crtc, crtc_state, i) \
-	for_each_crtc_in_masks(display, crtc, \
-			       _intel_modeset_primary_pipes(crtc_state), \
-			       _intel_modeset_secondary_pipes(crtc_state), \
-			       i)
-
-#define for_each_pipe_crtc_modeset_enable(display, crtc, crtc_state, i) \
-	for_each_crtc_in_masks_reverse(display, crtc, \
-				       _intel_modeset_primary_pipes(crtc_state), \
-				       _intel_modeset_secondary_pipes(crtc_state), \
-				       i)
+#define for_each_pipe_crtc_modeset_disable(display, crtc, crtc_state) \
+	__for_each_crtc_in_masks(display, crtc, \
+				 _intel_modeset_primary_pipes(crtc_state), \
+				 _intel_modeset_secondary_pipes(crtc_state), \
+				 __UNIQUE_ID(i))
+
+#define for_each_pipe_crtc_modeset_enable(display, crtc, crtc_state) \
+	__for_each_crtc_in_masks_reverse(display, crtc,			\
+					 _intel_modeset_primary_pipes(crtc_state), \
+					 _intel_modeset_secondary_pipes(crtc_state), \
+					 __UNIQUE_ID(i))
 
 int intel_atomic_check(struct drm_device *dev, struct drm_atomic_state *state);
 u8 intel_calc_enabled_pipes(struct intel_atomic_state *state,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 3289489b42b5..66f16a85c87b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1065,14 +1065,13 @@ static void mst_stream_post_disable(struct intel_atomic_state *state,
 		drm_atomic_get_mst_payload_state(new_mst_state, connector->mst.port);
 	struct intel_crtc *pipe_crtc;
 	bool last_mst_stream;
-	int i;
 
 	last_mst_stream = intel_dp_mst_dec_active_streams(intel_dp);
 
 	drm_WARN_ON(display->drm, DISPLAY_VER(display) >= 12 && last_mst_stream &&
 		    !intel_dp_mst_is_master_trans(old_crtc_state));
 
-	for_each_pipe_crtc_modeset_disable(display, pipe_crtc, old_crtc_state, i) {
+	for_each_pipe_crtc_modeset_disable(display, pipe_crtc, old_crtc_state) {
 		const struct intel_crtc_state *old_pipe_crtc_state =
 			intel_atomic_get_old_crtc_state(state, pipe_crtc);
 
@@ -1099,7 +1098,7 @@ static void mst_stream_post_disable(struct intel_atomic_state *state,
 
 	intel_ddi_disable_transcoder_func(old_crtc_state);
 
-	for_each_pipe_crtc_modeset_disable(display, pipe_crtc, old_crtc_state, i) {
+	for_each_pipe_crtc_modeset_disable(display, pipe_crtc, old_crtc_state) {
 		const struct intel_crtc_state *old_pipe_crtc_state =
 			intel_atomic_get_old_crtc_state(state, pipe_crtc);
 
@@ -1310,7 +1309,7 @@ static void mst_stream_enable(struct intel_atomic_state *state,
 	enum transcoder trans = pipe_config->cpu_transcoder;
 	bool first_mst_stream = intel_dp_mst_active_streams(intel_dp) == 1;
 	struct intel_crtc *pipe_crtc;
-	int ret, i;
+	int ret;
 
 	drm_WARN_ON(display->drm, pipe_config->has_pch_encoder);
 
@@ -1355,7 +1354,7 @@ static void mst_stream_enable(struct intel_atomic_state *state,
 
 	intel_enable_transcoder(pipe_config);
 
-	for_each_pipe_crtc_modeset_enable(display, pipe_crtc, pipe_config, i) {
+	for_each_pipe_crtc_modeset_enable(display, pipe_crtc, pipe_config) {
 		const struct intel_crtc_state *pipe_crtc_state =
 			intel_atomic_get_new_crtc_state(state, pipe_crtc);
 
-- 
2.47.3

