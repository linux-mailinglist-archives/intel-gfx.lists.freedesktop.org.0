Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56877A82E65
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Apr 2025 20:18:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C127810E2DC;
	Wed,  9 Apr 2025 18:18:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gzl663to";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48EE310E2D5;
 Wed,  9 Apr 2025 18:18:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744222700; x=1775758700;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Afi9QEOdH/W9Di0DqHSPOvAmXiGFML1UOiEIxn1z4hE=;
 b=gzl663tokjFATroPg29E7alwql44tTH2Q1nLJcO6ZbzjL6re7cBw50/o
 3w1YH0Q1nl3b6QfwKxTmW+hVdZgnQcCVQXAO740YR3qBo+yzKDDrjKOnw
 eOuU6LZPrwsW0rnjXqSsQ47Zc2fM6g/Ciw6l96VOUwmcVmrhk7V4h7NNo
 VmwVzP/kM9Rg21ppj75k02yCZ3DSa91QzGyaxWkSJWM+DtdbLBFXXsmhL
 vzTbVkJGqubEUofTPXLqonoLyyRWnEdjAxHrISFmBfZYuv1hYAEWB+vDB
 txKzhN+Ip8fmYLcyYcQ5lmQHqTw5ycTG6UUKL0G0K3/9gVEPc25HtON5b A==;
X-CSE-ConnectionGUID: CTsGWzWJTcK8dYep9TmT/Q==
X-CSE-MsgGUID: ESRlpoLCTKGGvoBlvGGj6Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11399"; a="57088327"
X-IronPort-AV: E=Sophos;i="6.15,201,1739865600"; d="scan'208";a="57088327"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 11:18:20 -0700
X-CSE-ConnectionGUID: WJEJIEBaQHKOILtbyPcEyg==
X-CSE-MsgGUID: vmdBX56PQo+MdzOETKZnCg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,201,1739865600"; d="scan'208";a="133785298"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.201])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 11:18:18 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 02/14] drm/i915/display: convert intel_modeset_setup.[ch] to
 struct intel_display
Date: Wed,  9 Apr 2025 21:17:43 +0300
Message-Id: <21d51387a36f027313a0687d09a14586eb8f71a6.1744222449.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1744222449.git.jani.nikula@intel.com>
References: <cover.1744222449.git.jani.nikula@intel.com>
MIME-Version: 1.0
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

Going forward, struct intel_display is the main display device data
pointer. Convert intel_modeset_setup.[ch] to struct intel_display.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_driver.c   |   6 +-
 .../drm/i915/display/intel_modeset_setup.c    | 192 +++++++++---------
 .../drm/i915/display/intel_modeset_setup.h    |   4 +-
 3 files changed, 97 insertions(+), 105 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 7c65fc1cce34..6fbaacea8af0 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -415,7 +415,6 @@ bool intel_display_driver_check_access(struct intel_display *display)
 /* part #2: call after irq install, but before gem init */
 int intel_display_driver_probe_nogem(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	enum pipe pipe;
 	int ret;
 
@@ -464,7 +463,7 @@ int intel_display_driver_probe_nogem(struct intel_display *display)
 	intel_display_driver_disable_user_access(display);
 
 	drm_modeset_lock_all(display->drm);
-	intel_modeset_setup_hw_state(i915, display->drm->mode_config.acquire_ctx);
+	intel_modeset_setup_hw_state(display, display->drm->mode_config.acquire_ctx);
 	intel_acpi_assign_connector_fwnodes(display);
 	drm_modeset_unlock_all(display->drm);
 
@@ -686,12 +685,11 @@ __intel_display_driver_resume(struct intel_display *display,
 			      struct drm_atomic_state *state,
 			      struct drm_modeset_acquire_ctx *ctx)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct drm_crtc_state *crtc_state;
 	struct drm_crtc *crtc;
 	int ret, i;
 
-	intel_modeset_setup_hw_state(i915, ctx);
+	intel_modeset_setup_hw_state(display, ctx);
 	intel_vga_redisable(display);
 
 	if (!state)
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index 9e963bce340f..5d5ade7fdd77 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -6,11 +6,11 @@
  * state.
  */
 
-#include <drm/drm_atomic_uapi.h>
 #include <drm/drm_atomic_state_helper.h>
+#include <drm/drm_atomic_uapi.h>
+#include <drm/drm_print.h>
 #include <drm/drm_vblank.h>
 
-#include "i915_drv.h"
 #include "i915_reg.h"
 #include "i9xx_wm.h"
 #include "intel_atomic.h"
@@ -37,7 +37,7 @@
 static void intel_crtc_disable_noatomic_begin(struct intel_crtc *crtc,
 					      struct drm_modeset_acquire_ctx *ctx)
 {
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc);
 	struct intel_crtc_state *crtc_state =
 		to_intel_crtc_state(crtc->base.state);
 	struct intel_plane *plane;
@@ -48,7 +48,7 @@ static void intel_crtc_disable_noatomic_begin(struct intel_crtc *crtc,
 	if (!crtc_state->hw.active)
 		return;
 
-	for_each_intel_plane_on_crtc(&i915->drm, crtc, plane) {
+	for_each_intel_plane_on_crtc(display->drm, crtc, plane) {
 		const struct intel_plane_state *plane_state =
 			to_intel_plane_state(plane->base.state);
 
@@ -56,9 +56,9 @@ static void intel_crtc_disable_noatomic_begin(struct intel_crtc *crtc,
 			intel_plane_disable_noatomic(crtc, plane);
 	}
 
-	state = drm_atomic_state_alloc(&i915->drm);
+	state = drm_atomic_state_alloc(display->drm);
 	if (!state) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "failed to disable [CRTC:%d:%s], out of memory",
 			    crtc->base.base.id, crtc->base.name);
 		return;
@@ -68,7 +68,7 @@ static void intel_crtc_disable_noatomic_begin(struct intel_crtc *crtc,
 	to_intel_atomic_state(state)->internal = true;
 
 	/* Everything's already locked, -EDEADLK can't happen. */
-	for_each_intel_crtc_in_pipe_mask(&i915->drm, temp_crtc,
+	for_each_intel_crtc_in_pipe_mask(display->drm, temp_crtc,
 					 BIT(pipe) |
 					 intel_crtc_joiner_secondary_pipes(crtc_state)) {
 		struct intel_crtc_state *temp_crtc_state =
@@ -77,14 +77,14 @@ static void intel_crtc_disable_noatomic_begin(struct intel_crtc *crtc,
 
 		ret = drm_atomic_add_affected_connectors(state, &temp_crtc->base);
 
-		drm_WARN_ON(&i915->drm, IS_ERR(temp_crtc_state) || ret);
+		drm_WARN_ON(display->drm, IS_ERR(temp_crtc_state) || ret);
 	}
 
-	i915->display.funcs.display->crtc_disable(to_intel_atomic_state(state), crtc);
+	display->funcs.display->crtc_disable(to_intel_atomic_state(state), crtc);
 
 	drm_atomic_state_put(state);
 
-	drm_dbg_kms(&i915->drm,
+	drm_dbg_kms(display->drm,
 		    "[CRTC:%d:%s] hw state adjusted, was enabled, now disabled\n",
 		    crtc->base.base.id, crtc->base.name);
 
@@ -118,13 +118,12 @@ static void set_encoder_for_connector(struct intel_connector *connector,
 static void reset_encoder_connector_state(struct intel_encoder *encoder)
 {
 	struct intel_display *display = to_intel_display(encoder);
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct intel_pmdemand_state *pmdemand_state =
-		to_intel_pmdemand_state(i915->display.pmdemand.obj.state);
+		to_intel_pmdemand_state(display->pmdemand.obj.state);
 	struct intel_connector *connector;
 	struct drm_connector_list_iter conn_iter;
 
-	drm_connector_list_iter_begin(&i915->drm, &conn_iter);
+	drm_connector_list_iter_begin(display->drm, &conn_iter);
 	for_each_intel_connector_iter(connector, &conn_iter) {
 		if (connector->base.encoder != &encoder->base)
 			continue;
@@ -143,10 +142,10 @@ static void reset_encoder_connector_state(struct intel_encoder *encoder)
 
 static void reset_crtc_encoder_state(struct intel_crtc *crtc)
 {
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc);
 	struct intel_encoder *encoder;
 
-	for_each_encoder_on_crtc(&i915->drm, &crtc->base, encoder) {
+	for_each_encoder_on_crtc(display->drm, &crtc->base, encoder) {
 		reset_encoder_connector_state(encoder);
 		encoder->base.crtc = NULL;
 	}
@@ -183,13 +182,13 @@ static void intel_crtc_disable_noatomic_complete(struct intel_crtc *crtc)
  * Return all the pipes using a transcoder in @transcoder_mask.
  * For joiner configs return only the joiner primary.
  */
-static u8 get_transcoder_pipes(struct drm_i915_private *i915,
+static u8 get_transcoder_pipes(struct intel_display *display,
 			       u8 transcoder_mask)
 {
 	struct intel_crtc *temp_crtc;
 	u8 pipes = 0;
 
-	for_each_intel_crtc(&i915->drm, temp_crtc) {
+	for_each_intel_crtc(display->drm, temp_crtc) {
 		struct intel_crtc_state *temp_crtc_state =
 			to_intel_crtc_state(temp_crtc->base.state);
 
@@ -214,7 +213,6 @@ static void get_portsync_pipes(struct intel_crtc *crtc,
 			       u8 *master_pipe_mask, u8 *slave_pipes_mask)
 {
 	struct intel_display *display = to_intel_display(crtc);
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	struct intel_crtc_state *crtc_state =
 		to_intel_crtc_state(crtc->base.state);
 	struct intel_crtc *master_crtc;
@@ -233,20 +231,20 @@ static void get_portsync_pipes(struct intel_crtc *crtc,
 	else
 		master_transcoder = crtc_state->master_transcoder;
 
-	*master_pipe_mask = get_transcoder_pipes(i915, BIT(master_transcoder));
-	drm_WARN_ON(&i915->drm, !is_power_of_2(*master_pipe_mask));
+	*master_pipe_mask = get_transcoder_pipes(display, BIT(master_transcoder));
+	drm_WARN_ON(display->drm, !is_power_of_2(*master_pipe_mask));
 
 	master_crtc = intel_crtc_for_pipe(display, ffs(*master_pipe_mask) - 1);
 	master_crtc_state = to_intel_crtc_state(master_crtc->base.state);
-	*slave_pipes_mask = get_transcoder_pipes(i915, master_crtc_state->sync_mode_slaves_mask);
+	*slave_pipes_mask = get_transcoder_pipes(display, master_crtc_state->sync_mode_slaves_mask);
 }
 
-static u8 get_joiner_secondary_pipes(struct drm_i915_private *i915, u8 primary_pipes_mask)
+static u8 get_joiner_secondary_pipes(struct intel_display *display, u8 primary_pipes_mask)
 {
 	struct intel_crtc *primary_crtc;
 	u8 pipes = 0;
 
-	for_each_intel_crtc_in_pipe_mask(&i915->drm, primary_crtc, primary_pipes_mask) {
+	for_each_intel_crtc_in_pipe_mask(display->drm, primary_crtc, primary_pipes_mask) {
 		struct intel_crtc_state *primary_crtc_state =
 			to_intel_crtc_state(primary_crtc->base.state);
 
@@ -259,45 +257,45 @@ static u8 get_joiner_secondary_pipes(struct drm_i915_private *i915, u8 primary_p
 static void intel_crtc_disable_noatomic(struct intel_crtc *crtc,
 					struct drm_modeset_acquire_ctx *ctx)
 {
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc);
+	struct intel_crtc *temp_crtc;
 	u8 portsync_master_mask;
 	u8 portsync_slaves_mask;
 	u8 joiner_secondaries_mask;
-	struct intel_crtc *temp_crtc;
 
 	/* TODO: Add support for MST */
 	get_portsync_pipes(crtc, &portsync_master_mask, &portsync_slaves_mask);
-	joiner_secondaries_mask = get_joiner_secondary_pipes(i915,
+	joiner_secondaries_mask = get_joiner_secondary_pipes(display,
 							     portsync_master_mask |
 							     portsync_slaves_mask);
 
-	drm_WARN_ON(&i915->drm,
+	drm_WARN_ON(display->drm,
 		    portsync_master_mask & portsync_slaves_mask ||
 		    portsync_master_mask & joiner_secondaries_mask ||
 		    portsync_slaves_mask & joiner_secondaries_mask);
 
-	for_each_intel_crtc_in_pipe_mask(&i915->drm, temp_crtc, joiner_secondaries_mask)
+	for_each_intel_crtc_in_pipe_mask(display->drm, temp_crtc, joiner_secondaries_mask)
 		intel_crtc_disable_noatomic_begin(temp_crtc, ctx);
 
-	for_each_intel_crtc_in_pipe_mask(&i915->drm, temp_crtc, portsync_slaves_mask)
+	for_each_intel_crtc_in_pipe_mask(display->drm, temp_crtc, portsync_slaves_mask)
 		intel_crtc_disable_noatomic_begin(temp_crtc, ctx);
 
-	for_each_intel_crtc_in_pipe_mask(&i915->drm, temp_crtc, portsync_master_mask)
+	for_each_intel_crtc_in_pipe_mask(display->drm, temp_crtc, portsync_master_mask)
 		intel_crtc_disable_noatomic_begin(temp_crtc, ctx);
 
-	for_each_intel_crtc_in_pipe_mask(&i915->drm, temp_crtc,
+	for_each_intel_crtc_in_pipe_mask(display->drm, temp_crtc,
 					 joiner_secondaries_mask |
 					 portsync_slaves_mask |
 					 portsync_master_mask)
 		intel_crtc_disable_noatomic_complete(temp_crtc);
 }
 
-static void intel_modeset_update_connector_atomic_state(struct drm_i915_private *i915)
+static void intel_modeset_update_connector_atomic_state(struct intel_display *display)
 {
 	struct intel_connector *connector;
 	struct drm_connector_list_iter conn_iter;
 
-	drm_connector_list_iter_begin(&i915->drm, &conn_iter);
+	drm_connector_list_iter_begin(display->drm, &conn_iter);
 	for_each_intel_connector_iter(connector, &conn_iter) {
 		struct drm_connector_state *conn_state = connector->base.state;
 		struct intel_encoder *encoder =
@@ -319,7 +317,7 @@ static void intel_modeset_update_connector_atomic_state(struct drm_i915_private
 
 static void intel_crtc_copy_hw_to_uapi_state(struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 
 	if (intel_crtc_is_joiner_secondary(crtc_state))
 		return;
@@ -332,7 +330,7 @@ static void intel_crtc_copy_hw_to_uapi_state(struct intel_crtc_state *crtc_state
 	crtc_state->uapi.adjusted_mode = crtc_state->hw.adjusted_mode;
 	crtc_state->uapi.scaling_filter = crtc_state->hw.scaling_filter;
 
-	if (DISPLAY_INFO(i915)->color.degamma_lut_size) {
+	if (DISPLAY_INFO(display)->color.degamma_lut_size) {
 		/* assume 1:1 mapping */
 		drm_property_replace_blob(&crtc_state->hw.degamma_lut,
 					  crtc_state->pre_csc_lut);
@@ -347,7 +345,7 @@ static void intel_crtc_copy_hw_to_uapi_state(struct intel_crtc_state *crtc_state
 		 * to gamma_lut as that is the only valid source of LUTs
 		 * in the uapi.
 		 */
-		drm_WARN_ON(&i915->drm, crtc_state->post_csc_lut &&
+		drm_WARN_ON(display->drm, crtc_state->post_csc_lut &&
 			    crtc_state->pre_csc_lut);
 
 		drm_property_replace_blob(&crtc_state->hw.degamma_lut,
@@ -366,15 +364,14 @@ static void intel_crtc_copy_hw_to_uapi_state(struct intel_crtc_state *crtc_state
 }
 
 static void
-intel_sanitize_plane_mapping(struct drm_i915_private *i915)
+intel_sanitize_plane_mapping(struct intel_display *display)
 {
-	struct intel_display *display = &i915->display;
 	struct intel_crtc *crtc;
 
-	if (DISPLAY_VER(i915) >= 4)
+	if (DISPLAY_VER(display) >= 4)
 		return;
 
-	for_each_intel_crtc(&i915->drm, crtc) {
+	for_each_intel_crtc(display->drm, crtc) {
 		struct intel_plane *plane =
 			to_intel_plane(crtc->base.primary);
 		struct intel_crtc *plane_crtc;
@@ -386,7 +383,7 @@ intel_sanitize_plane_mapping(struct drm_i915_private *i915)
 		if (pipe == crtc->pipe)
 			continue;
 
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "[PLANE:%d:%s] attached to the wrong pipe, disabling plane\n",
 			    plane->base.base.id, plane->base.name);
 
@@ -423,12 +420,12 @@ static bool intel_crtc_needs_link_reset(struct intel_crtc *crtc)
 
 static struct intel_connector *intel_encoder_find_connector(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	struct drm_connector_list_iter conn_iter;
 	struct intel_connector *connector;
 	struct intel_connector *found_connector = NULL;
 
-	drm_connector_list_iter_begin(&i915->drm, &conn_iter);
+	drm_connector_list_iter_begin(display->drm, &conn_iter);
 	for_each_intel_connector_iter(connector, &conn_iter) {
 		if (&encoder->base == connector->base.encoder) {
 			found_connector = connector;
@@ -466,7 +463,7 @@ static void intel_sanitize_fifo_underrun_reporting(const struct intel_crtc_state
 static bool intel_sanitize_crtc(struct intel_crtc *crtc,
 				struct drm_modeset_acquire_ctx *ctx)
 {
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc);
 	struct intel_crtc_state *crtc_state = to_intel_crtc_state(crtc->base.state);
 	bool needs_link_reset;
 
@@ -474,7 +471,7 @@ static bool intel_sanitize_crtc(struct intel_crtc *crtc,
 		struct intel_plane *plane;
 
 		/* Disable everything but the primary plane */
-		for_each_intel_plane_on_crtc(&i915->drm, crtc, plane) {
+		for_each_intel_plane_on_crtc(display->drm, crtc, plane) {
 			const struct intel_plane_state *plane_state =
 				to_intel_plane_state(plane->base.state);
 
@@ -515,7 +512,7 @@ static bool intel_sanitize_crtc(struct intel_crtc *crtc,
 	return true;
 }
 
-static void intel_sanitize_all_crtcs(struct drm_i915_private *i915,
+static void intel_sanitize_all_crtcs(struct intel_display *display,
 				     struct drm_modeset_acquire_ctx *ctx)
 {
 	struct intel_crtc *crtc;
@@ -530,7 +527,7 @@ static void intel_sanitize_all_crtcs(struct drm_i915_private *i915,
 	for (;;) {
 		u32 old_mask = crtcs_forced_off;
 
-		for_each_intel_crtc(&i915->drm, crtc) {
+		for_each_intel_crtc(display->drm, crtc) {
 			u32 crtc_mask = drm_crtc_mask(&crtc->base);
 
 			if (crtcs_forced_off & crtc_mask)
@@ -543,7 +540,7 @@ static void intel_sanitize_all_crtcs(struct drm_i915_private *i915,
 			break;
 	}
 
-	for_each_intel_crtc(&i915->drm, crtc) {
+	for_each_intel_crtc(display->drm, crtc) {
 		struct intel_crtc_state *crtc_state =
 			to_intel_crtc_state(crtc->base.state);
 
@@ -553,7 +550,7 @@ static void intel_sanitize_all_crtcs(struct drm_i915_private *i915,
 
 static bool has_bogus_dpll_config(const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 
 	/*
 	 * Some SNB BIOSen (eg. ASUS K53SV) are known to misprogram
@@ -565,7 +562,7 @@ static bool has_bogus_dpll_config(const struct intel_crtc_state *crtc_state)
 	 * without several WARNs, but for now let's take the easy
 	 * road.
 	 */
-	return IS_SANDYBRIDGE(i915) &&
+	return display->platform.sandybridge &&
 		crtc_state->hw.active &&
 		crtc_state->shared_dpll &&
 		crtc_state->port_clock == 0;
@@ -574,13 +571,12 @@ static bool has_bogus_dpll_config(const struct intel_crtc_state *crtc_state)
 static void intel_sanitize_encoder(struct intel_encoder *encoder)
 {
 	struct intel_display *display = to_intel_display(encoder);
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct intel_connector *connector;
 	struct intel_crtc *crtc = to_intel_crtc(encoder->base.crtc);
 	struct intel_crtc_state *crtc_state = crtc ?
 		to_intel_crtc_state(crtc->base.state) : NULL;
 	struct intel_pmdemand_state *pmdemand_state =
-		to_intel_pmdemand_state(i915->display.pmdemand.obj.state);
+		to_intel_pmdemand_state(display->pmdemand.obj.state);
 
 	/*
 	 * We need to check both for a crtc link (meaning that the encoder is
@@ -591,7 +587,7 @@ static void intel_sanitize_encoder(struct intel_encoder *encoder)
 		crtc_state->hw.active;
 
 	if (crtc_state && has_bogus_dpll_config(crtc_state)) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "BIOS has misprogrammed the hardware. Disabling pipe %c\n",
 			    pipe_name(crtc->pipe));
 		has_active_crtc = false;
@@ -599,7 +595,7 @@ static void intel_sanitize_encoder(struct intel_encoder *encoder)
 
 	connector = intel_encoder_find_connector(encoder);
 	if (connector && !has_active_crtc) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "[ENCODER:%d:%s] has active connectors but no active pipe!\n",
 			    encoder->base.base.id,
 			    encoder->base.name);
@@ -616,7 +612,7 @@ static void intel_sanitize_encoder(struct intel_encoder *encoder)
 		if (crtc_state) {
 			struct drm_encoder *best_encoder;
 
-			drm_dbg_kms(&i915->drm,
+			drm_dbg_kms(display->drm,
 				    "[ENCODER:%d:%s] manually disabled\n",
 				    encoder->base.base.id,
 				    encoder->base.name);
@@ -650,18 +646,17 @@ static void intel_sanitize_encoder(struct intel_encoder *encoder)
 	/* notify opregion of the sanitized encoder state */
 	intel_opregion_notify_encoder(encoder, connector && has_active_crtc);
 
-	if (HAS_DDI(i915))
+	if (HAS_DDI(display))
 		intel_ddi_sanitize_encoder_pll_mapping(encoder);
 }
 
 /* FIXME read out full plane state for all planes */
-static void readout_plane_state(struct drm_i915_private *i915)
+static void readout_plane_state(struct intel_display *display)
 {
-	struct intel_display *display = &i915->display;
 	struct intel_plane *plane;
 	struct intel_crtc *crtc;
 
-	for_each_intel_plane(&i915->drm, plane) {
+	for_each_intel_plane(display->drm, plane) {
 		struct intel_plane_state *plane_state =
 			to_intel_plane_state(plane->base.state);
 		struct intel_crtc_state *crtc_state;
@@ -675,13 +670,13 @@ static void readout_plane_state(struct drm_i915_private *i915)
 
 		intel_set_plane_visible(crtc_state, plane_state, visible);
 
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "[PLANE:%d:%s] hw state readout: %s, pipe %c\n",
 			    plane->base.base.id, plane->base.name,
 			    str_enabled_disabled(visible), pipe_name(pipe));
 	}
 
-	for_each_intel_crtc(&i915->drm, crtc) {
+	for_each_intel_crtc(display->drm, crtc) {
 		struct intel_crtc_state *crtc_state =
 			to_intel_crtc_state(crtc->base.state);
 
@@ -689,18 +684,17 @@ static void readout_plane_state(struct drm_i915_private *i915)
 	}
 }
 
-static void intel_modeset_readout_hw_state(struct drm_i915_private *i915)
+static void intel_modeset_readout_hw_state(struct intel_display *display)
 {
-	struct intel_display *display = &i915->display;
 	struct intel_pmdemand_state *pmdemand_state =
-		to_intel_pmdemand_state(i915->display.pmdemand.obj.state);
+		to_intel_pmdemand_state(display->pmdemand.obj.state);
 	enum pipe pipe;
 	struct intel_crtc *crtc;
 	struct intel_encoder *encoder;
 	struct intel_connector *connector;
 	struct drm_connector_list_iter conn_iter;
 
-	for_each_intel_crtc(&i915->drm, crtc) {
+	for_each_intel_crtc(display->drm, crtc) {
 		struct intel_crtc_state *crtc_state =
 			to_intel_crtc_state(crtc->base.state);
 
@@ -715,15 +709,15 @@ static void intel_modeset_readout_hw_state(struct drm_i915_private *i915)
 		crtc->base.enabled = crtc_state->hw.enable;
 		crtc->active = crtc_state->hw.active;
 
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "[CRTC:%d:%s] hw state readout: %s\n",
 			    crtc->base.base.id, crtc->base.name,
 			    str_enabled_disabled(crtc_state->hw.active));
 	}
 
-	readout_plane_state(i915);
+	readout_plane_state(display);
 
-	for_each_intel_encoder(&i915->drm, encoder) {
+	for_each_intel_encoder(display->drm, encoder) {
 		struct intel_crtc_state *crtc_state = NULL;
 
 		pipe = 0;
@@ -742,7 +736,7 @@ static void intel_modeset_readout_hw_state(struct drm_i915_private *i915)
 				/* encoder should read be linked to joiner primary */
 				WARN_ON(intel_crtc_is_joiner_secondary(crtc_state));
 
-				for_each_intel_crtc_in_pipe_mask(&i915->drm, secondary_crtc,
+				for_each_intel_crtc_in_pipe_mask(display->drm, secondary_crtc,
 								 intel_crtc_joiner_secondary_pipes(crtc_state)) {
 					struct intel_crtc_state *secondary_crtc_state;
 
@@ -765,7 +759,7 @@ static void intel_modeset_readout_hw_state(struct drm_i915_private *i915)
 		if (encoder->sync_state)
 			encoder->sync_state(encoder, crtc_state);
 
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "[ENCODER:%d:%s] hw state readout: %s, pipe %c\n",
 			    encoder->base.base.id, encoder->base.name,
 			    str_enabled_disabled(encoder->base.crtc),
@@ -774,7 +768,7 @@ static void intel_modeset_readout_hw_state(struct drm_i915_private *i915)
 
 	intel_dpll_readout_hw_state(display);
 
-	drm_connector_list_iter_begin(&i915->drm, &conn_iter);
+	drm_connector_list_iter_begin(display->drm, &conn_iter);
 	for_each_intel_connector_iter(connector, &conn_iter) {
 		struct intel_crtc_state *crtc_state = NULL;
 
@@ -808,14 +802,14 @@ static void intel_modeset_readout_hw_state(struct drm_i915_private *i915)
 		if (connector->sync_state)
 			connector->sync_state(connector, crtc_state);
 
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "[CONNECTOR:%d:%s] hw state readout: %s\n",
 			    connector->base.base.id, connector->base.name,
 			    str_enabled_disabled(connector->base.encoder));
 	}
 	drm_connector_list_iter_end(&conn_iter);
 
-	for_each_intel_crtc(&i915->drm, crtc) {
+	for_each_intel_crtc(display->drm, crtc) {
 		struct intel_crtc_state *crtc_state =
 			to_intel_crtc_state(crtc->base.state);
 		struct intel_plane *plane;
@@ -838,7 +832,7 @@ static void intel_modeset_readout_hw_state(struct drm_i915_private *i915)
 			intel_crtc_copy_hw_to_uapi_state(crtc_state);
 		}
 
-		for_each_intel_plane_on_crtc(&i915->drm, crtc, plane) {
+		for_each_intel_plane_on_crtc(display->drm, crtc, plane) {
 			const struct intel_plane_state *plane_state =
 				to_intel_plane_state(plane->base.state);
 
@@ -854,14 +848,14 @@ static void intel_modeset_readout_hw_state(struct drm_i915_private *i915)
 			 * use plane->min_cdclk() :(
 			 */
 			if (plane_state->uapi.visible && plane->min_cdclk) {
-				if (crtc_state->double_wide || DISPLAY_VER(i915) >= 10)
+				if (crtc_state->double_wide || DISPLAY_VER(display) >= 10)
 					crtc_state->min_cdclk[plane->id] =
 						DIV_ROUND_UP(crtc_state->pixel_rate, 2);
 				else
 					crtc_state->min_cdclk[plane->id] =
 						crtc_state->pixel_rate;
 			}
-			drm_dbg_kms(&i915->drm,
+			drm_dbg_kms(display->drm,
 				    "[PLANE:%d:%s] min_cdclk %d kHz\n",
 				    plane->base.base.id, plane->base.name,
 				    crtc_state->min_cdclk[plane->id]);
@@ -882,11 +876,11 @@ static void intel_modeset_readout_hw_state(struct drm_i915_private *i915)
 }
 
 static void
-get_encoder_power_domains(struct drm_i915_private *i915)
+get_encoder_power_domains(struct intel_display *display)
 {
 	struct intel_encoder *encoder;
 
-	for_each_intel_encoder(&i915->drm, encoder) {
+	for_each_intel_encoder(display->drm, encoder) {
 		struct intel_crtc_state *crtc_state;
 
 		if (!encoder->get_power_domains)
@@ -904,47 +898,47 @@ get_encoder_power_domains(struct drm_i915_private *i915)
 	}
 }
 
-static void intel_early_display_was(struct drm_i915_private *i915)
+static void intel_early_display_was(struct intel_display *display)
 {
 	/*
 	 * Display WA #1185 WaDisableDARBFClkGating:glk,icl,ehl,tgl
 	 * Also known as Wa_14010480278.
 	 */
-	if (IS_DISPLAY_VER(i915, 10, 12))
-		intel_de_rmw(i915, GEN9_CLKGATE_DIS_0, 0, DARBF_GATING_DIS);
+	if (IS_DISPLAY_VER(display, 10, 12))
+		intel_de_rmw(display, GEN9_CLKGATE_DIS_0, 0, DARBF_GATING_DIS);
 
 	/*
 	 * WaRsPkgCStateDisplayPMReq:hsw
 	 * System hang if this isn't done before disabling all planes!
 	 */
-	if (IS_HASWELL(i915))
-		intel_de_rmw(i915, CHICKEN_PAR1_1, 0, FORCE_ARB_IDLE_PLANES);
+	if (display->platform.haswell)
+		intel_de_rmw(display, CHICKEN_PAR1_1, 0, FORCE_ARB_IDLE_PLANES);
 
-	if (IS_KABYLAKE(i915) || IS_COFFEELAKE(i915) || IS_COMETLAKE(i915)) {
+	if (display->platform.kabylake || display->platform.coffeelake ||
+	    display->platform.cometlake) {
 		/* Display WA #1142:kbl,cfl,cml */
-		intel_de_rmw(i915, CHICKEN_PAR1_1,
+		intel_de_rmw(display, CHICKEN_PAR1_1,
 			     KBL_ARB_FILL_SPARE_22, KBL_ARB_FILL_SPARE_22);
-		intel_de_rmw(i915, CHICKEN_MISC_2,
+		intel_de_rmw(display, CHICKEN_MISC_2,
 			     KBL_ARB_FILL_SPARE_13 | KBL_ARB_FILL_SPARE_14,
 			     KBL_ARB_FILL_SPARE_14);
 	}
 }
 
-void intel_modeset_setup_hw_state(struct drm_i915_private *i915,
+void intel_modeset_setup_hw_state(struct intel_display *display,
 				  struct drm_modeset_acquire_ctx *ctx)
 {
-	struct intel_display *display = &i915->display;
 	struct intel_encoder *encoder;
 	struct intel_crtc *crtc;
 	intel_wakeref_t wakeref;
 
 	wakeref = intel_display_power_get(display, POWER_DOMAIN_INIT);
 
-	intel_early_display_was(i915);
-	intel_modeset_readout_hw_state(i915);
+	intel_early_display_was(display);
+	intel_modeset_readout_hw_state(display);
 
 	/* HW state is read out, now we need to sanitize this mess. */
-	get_encoder_power_domains(i915);
+	get_encoder_power_domains(display);
 
 	intel_pch_sanitize(display);
 
@@ -954,7 +948,7 @@ void intel_modeset_setup_hw_state(struct drm_i915_private *i915,
 	 * intel_sanitize_plane_mapping() may need to do vblank
 	 * waits, so we need vblank interrupts restored beforehand.
 	 */
-	for_each_intel_crtc(&i915->drm, crtc) {
+	for_each_intel_crtc(display->drm, crtc) {
 		struct intel_crtc_state *crtc_state =
 			to_intel_crtc_state(crtc->base.state);
 
@@ -968,20 +962,20 @@ void intel_modeset_setup_hw_state(struct drm_i915_private *i915,
 		}
 	}
 
-	intel_fbc_sanitize(&i915->display);
+	intel_fbc_sanitize(display);
 
-	intel_sanitize_plane_mapping(i915);
+	intel_sanitize_plane_mapping(display);
 
-	for_each_intel_encoder(&i915->drm, encoder)
+	for_each_intel_encoder(display->drm, encoder)
 		intel_sanitize_encoder(encoder);
 
 	/*
 	 * Sanitizing CRTCs needs their connector atomic state to be
 	 * up-to-date, so ensure that already here.
 	 */
-	intel_modeset_update_connector_atomic_state(i915);
+	intel_modeset_update_connector_atomic_state(display);
 
-	intel_sanitize_all_crtcs(i915, ctx);
+	intel_sanitize_all_crtcs(display, ctx);
 
 	intel_dpll_sanitize_state(display);
 
@@ -990,13 +984,13 @@ void intel_modeset_setup_hw_state(struct drm_i915_private *i915,
 		intel_wm_get_hw_state(display);
 	intel_wm_sanitize(display);
 
-	for_each_intel_crtc(&i915->drm, crtc) {
+	for_each_intel_crtc(display->drm, crtc) {
 		struct intel_crtc_state *crtc_state =
 			to_intel_crtc_state(crtc->base.state);
 		struct intel_power_domain_mask put_domains;
 
 		intel_modeset_get_crtc_power_domains(crtc_state, &put_domains);
-		if (drm_WARN_ON(&i915->drm, !bitmap_empty(put_domains.bits, POWER_DOMAIN_NUM)))
+		if (drm_WARN_ON(display->drm, !bitmap_empty(put_domains.bits, POWER_DOMAIN_NUM)))
 			intel_modeset_put_crtc_power_domains(crtc, &put_domains);
 	}
 
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.h b/drivers/gpu/drm/i915/display/intel_modeset_setup.h
index 3beff67b33d0..f5e6f3ae9572 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.h
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.h
@@ -6,10 +6,10 @@
 #ifndef __INTEL_MODESET_SETUP_H__
 #define __INTEL_MODESET_SETUP_H__
 
-struct drm_i915_private;
 struct drm_modeset_acquire_ctx;
+struct intel_display;
 
-void intel_modeset_setup_hw_state(struct drm_i915_private *i915,
+void intel_modeset_setup_hw_state(struct intel_display *display,
 				  struct drm_modeset_acquire_ctx *ctx);
 
 #endif /* __INTEL_MODESET_SETUP_H__ */
-- 
2.39.5

