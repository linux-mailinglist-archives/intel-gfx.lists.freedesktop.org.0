Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 792F197CE67
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2024 22:14:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16D6610E217;
	Thu, 19 Sep 2024 20:14:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="d6XTAV37";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7384010E217
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2024 20:14:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726776872; x=1758312872;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TERKoX1Oax/bWzhRLRRzU9nQPBS4b0KT2++tYRF/yzQ=;
 b=d6XTAV37brR8XbDzhtOts47bBEsDyN1tD40J8PxNhFz20AQuPC6OLNRY
 eBf5wzCnKZF8WY5wMGFSYSjKOb9yXGpJFJ1vrjKB0VJJK/DeTtcZDIEFU
 CWQ5TqtArJRm4E3oe6qKiqG63aIYtsvw/4nIHrIA2w55BXLI+xowvx8QZ
 y7rZ6CcVD5XdRHrhoA6A2uEqHHe/WQttAUfK45WizAv+SQUD57fMJI5qv
 wacayWk5y18qjDLpkWyX6uYjJrrR/wQ1FnySDqShhsV1W6EzqC7Tjp7n7
 7Mftv7w2P2t42/KDKyaJO9JkPX8mhECtRzFOVd1qxgISypyMxcDkS1Rjg Q==;
X-CSE-ConnectionGUID: Xm+ZLyv6SxukXKUdkOnJ+w==
X-CSE-MsgGUID: WMrk07MXSJKDdYhmt5Gn4A==
X-IronPort-AV: E=McAfee;i="6700,10204,11200"; a="25639431"
X-IronPort-AV: E=Sophos;i="6.10,242,1719903600"; d="scan'208";a="25639431"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2024 13:14:32 -0700
X-CSE-ConnectionGUID: ZQcH9e2VQAKeLNsnXBkjLA==
X-CSE-MsgGUID: lCcyQtORQ3OpGTFlh2efig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,242,1719903600"; d="scan'208";a="70297494"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.127])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2024 13:14:30 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [RFC 2/2] drm/i915/display: try out the new crtc iterators
Date: Thu, 19 Sep 2024 23:14:11 +0300
Message-Id: <fd461d3fcdd34212255c65f2125dceb3d795fd93.1726776703.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1726776703.git.jani.nikula@intel.com>
References: <cover.1726776703.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Random conversions here and there.

Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c     | 17 ++++++++++++-----
 drivers/gpu/drm/i915/display/intel_display.c | 16 ++++++++++++----
 2 files changed, 24 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 85e519a21542..b822b28df213 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -41,6 +41,7 @@
 #include "intel_combo_phy_regs.h"
 #include "intel_connector.h"
 #include "intel_crtc.h"
+#include "intel_crtc_iter.h"
 #include "intel_cx0_phy.h"
 #include "intel_cx0_phy_regs.h"
 #include "intel_ddi.h"
@@ -3117,21 +3118,24 @@ static void intel_ddi_post_disable_hdmi_or_sst(struct intel_atomic_state *state,
 {
 	struct intel_display *display = to_intel_display(encoder);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_crtc_iter iter;
 	struct intel_crtc *pipe_crtc;
-	int i;
 
-	for_each_pipe_crtc_modeset_disable(display, pipe_crtc, old_crtc_state, i) {
+	intel_crtc_iter_begin_modeset_disable(display, &iter, old_crtc_state);
+	intel_crtc_iter_for_each(pipe_crtc, &iter) {
 		const struct intel_crtc_state *old_pipe_crtc_state =
 			intel_atomic_get_old_crtc_state(state, pipe_crtc);
 
 		intel_crtc_vblank_off(old_pipe_crtc_state);
 	}
+	intel_crtc_iter_end(&iter);
 
 	intel_disable_transcoder(old_crtc_state);
 
 	intel_ddi_disable_transcoder_func(old_crtc_state);
 
-	for_each_pipe_crtc_modeset_disable(display, pipe_crtc, old_crtc_state, i) {
+	intel_crtc_iter_begin_modeset_disable(display, &iter, old_crtc_state);
+	intel_crtc_iter_for_each(pipe_crtc, &iter) {
 		const struct intel_crtc_state *old_pipe_crtc_state =
 			intel_atomic_get_old_crtc_state(state, pipe_crtc);
 
@@ -3142,6 +3146,7 @@ static void intel_ddi_post_disable_hdmi_or_sst(struct intel_atomic_state *state,
 		else
 			ilk_pfit_disable(old_pipe_crtc_state);
 	}
+	intel_crtc_iter_end(&iter);
 }
 
 static void intel_ddi_post_disable(struct intel_atomic_state *state,
@@ -3383,8 +3388,8 @@ static void intel_enable_ddi(struct intel_atomic_state *state,
 			     const struct drm_connector_state *conn_state)
 {
 	struct intel_display *display = to_intel_display(encoder);
+	struct intel_crtc_iter iter;
 	struct intel_crtc *pipe_crtc;
-	int i;
 
 	intel_ddi_enable_transcoder_func(encoder, crtc_state);
 
@@ -3395,12 +3400,14 @@ static void intel_enable_ddi(struct intel_atomic_state *state,
 
 	intel_ddi_wait_for_fec_status(encoder, crtc_state, true);
 
-	for_each_pipe_crtc_modeset_enable(display, pipe_crtc, crtc_state, i) {
+	intel_crtc_iter_begin_modeset_enable(display, &iter, crtc_state);
+	intel_crtc_iter_for_each(pipe_crtc, &iter) {
 		const struct intel_crtc_state *pipe_crtc_state =
 			intel_atomic_get_new_crtc_state(state, pipe_crtc);
 
 		intel_crtc_vblank_on(pipe_crtc_state);
 	}
+	intel_crtc_iter_end(&iter);
 
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
 		intel_enable_ddi_hdmi(state, encoder, crtc_state, conn_state);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 7136c80ac8cc..4aedc7e49fe1 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -65,6 +65,7 @@
 #include "intel_color.h"
 #include "intel_crt.h"
 #include "intel_crtc.h"
+#include "intel_crtc_iter.h"
 #include "intel_crtc_state_dump.h"
 #include "intel_cursor_regs.h"
 #include "intel_cx0_phy.h"
@@ -3583,6 +3584,8 @@ static bool transcoder_ddi_func_is_enabled(struct drm_i915_private *dev_priv,
 static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
 				 u8 *primary_pipes, u8 *secondary_pipes)
 {
+	struct intel_display *display = &dev_priv->display;
+	struct intel_crtc_iter iter;
 	struct intel_crtc *crtc;
 
 	*primary_pipes = 0;
@@ -3591,8 +3594,8 @@ static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
 	if (!HAS_BIGJOINER(dev_priv))
 		return;
 
-	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, crtc,
-					 joiner_pipes(dev_priv)) {
+	intel_crtc_iter_begin_pipe_mask(display, &iter, joiner_pipes(dev_priv));
+	intel_crtc_iter_for_each(crtc, &iter) {
 		enum intel_display_power_domain power_domain;
 		enum pipe pipe = crtc->pipe;
 		intel_wakeref_t wakeref;
@@ -3623,6 +3626,7 @@ static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
 				*secondary_pipes |= BIT(pipe);
 		}
 	}
+	intel_crtc_iter_end(&iter);
 
 	/* Joiner pipes should always be consecutive primary and secondary */
 	drm_WARN(&dev_priv->drm, *secondary_pipes != *primary_pipes << 1,
@@ -6911,22 +6915,26 @@ static void commit_pipe_post_planes(struct intel_atomic_state *state,
 static void intel_enable_crtc(struct intel_atomic_state *state,
 			      struct intel_crtc *crtc)
 {
+	struct intel_display *display = to_intel_display(state);
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 	const struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
+	struct intel_crtc_iter iter;
 	struct intel_crtc *pipe_crtc;
 
 	if (!intel_crtc_needs_modeset(new_crtc_state))
 		return;
 
-	for_each_intel_crtc_in_pipe_mask_reverse(&dev_priv->drm, pipe_crtc,
-						 intel_crtc_joined_pipe_mask(new_crtc_state)) {
+	intel_crtc_iter_begin_pipe_mask_reverse(display, &iter,
+						intel_crtc_joined_pipe_mask(new_crtc_state));
+	intel_crtc_iter_for_each(pipe_crtc, &iter) {
 		const struct intel_crtc_state *pipe_crtc_state =
 			intel_atomic_get_new_crtc_state(state, pipe_crtc);
 
 		/* VRR will be enable later, if required */
 		intel_crtc_update_active_timings(pipe_crtc_state, false);
 	}
+	intel_crtc_iter_end(&iter);
 
 	dev_priv->display.funcs.display->crtc_enable(state, crtc);
 
-- 
2.39.2

