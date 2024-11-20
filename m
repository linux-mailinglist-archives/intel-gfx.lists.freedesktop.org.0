Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD2439D3AD8
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2024 13:43:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2C8010E73E;
	Wed, 20 Nov 2024 12:43:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WiCaaL3K";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0AC810E73E;
 Wed, 20 Nov 2024 12:43:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732106614; x=1763642614;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LzjIO+yp02mK5TYxMTBeG8PFMtG+LgoA157xYwjDxgA=;
 b=WiCaaL3KSZpaZgYG278LSXX9ZJMUfNbQBhzOX3ulkozeGk34IYgfjSx2
 BzGpaSeEf8uLY1hEq9N3NPfr0VmbPQrwYqLN83Ptp1bwMfK199c/IDdt2
 uPwzEH6+wqkQ7AjQ7TVSeXn/PQeEcNt48nZ5dmbLl0d0drsAVa3VduwuN
 ZCWlNz+qmOBK6WF0qLeJVsoWhSi3RWg/cKK1XyGiqljKi0qOmbqFl+YPQ
 wHi/qrAhDGn+4tKg+NJyPfYR57zY9ph0EFsNd0vgYWNGxe83jRBcTy5+R
 0Dx664skG7ux5DhbImsVNAOgjhXMIbVflfAWEwuzs3mtseEhUngv5Hqo2 A==;
X-CSE-ConnectionGUID: wTOCSn2hTU2wjYq/nealaw==
X-CSE-MsgGUID: tBe1RkToSP2t83S7CiIHXg==
X-IronPort-AV: E=McAfee;i="6700,10204,11261"; a="42783332"
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="42783332"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 04:43:34 -0800
X-CSE-ConnectionGUID: 3zV/mcGSR8O5PJeHC1Vo6w==
X-CSE-MsgGUID: Dm/Fnns5Qri6VUtzu5AKng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="94363456"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.54])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 04:43:31 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Imre Deak <imre.deak@intel.com>
Subject: [CI 02/11] drm/i915/mst: unify MST connector function naming to
 mst_connector_*
Date: Wed, 20 Nov 2024 14:43:10 +0200
Message-Id: <3d4814a94b97fcff88722e0effd2fb5893b256af.1732106557.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1732106557.git.jani.nikula@intel.com>
References: <cover.1732106557.git.jani.nikula@intel.com>
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

Similar to commit 5674e700d43e ("drm/i915/mst: change naming from fake
encoders to MST stream encoders"), name all MST connector related
functions to mst_connector_*.

Reviewed-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 63 +++++++++++----------
 1 file changed, 32 insertions(+), 31 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index dab50a1ed15b..56b2db02893d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -888,8 +888,8 @@ static int mst_stream_compute_config_late(struct intel_encoder *encoder,
  * recomputation of the corresponding CRTC states.
  */
 static int
-intel_dp_mst_atomic_topology_check(struct intel_connector *connector,
-				   struct intel_atomic_state *state)
+mst_connector_atomic_topology_check(struct intel_connector *connector,
+				    struct intel_atomic_state *state)
 {
 	struct intel_display *display = to_intel_display(connector);
 	struct drm_connector_list_iter connector_list_iter;
@@ -937,8 +937,8 @@ intel_dp_mst_atomic_topology_check(struct intel_connector *connector,
 }
 
 static int
-intel_dp_mst_atomic_check(struct drm_connector *connector,
-			  struct drm_atomic_state *_state)
+mst_connector_atomic_check(struct drm_connector *connector,
+			   struct drm_atomic_state *_state)
 {
 	struct intel_atomic_state *state = to_intel_atomic_state(_state);
 	struct intel_connector *intel_connector =
@@ -949,7 +949,7 @@ intel_dp_mst_atomic_check(struct drm_connector *connector,
 	if (ret)
 		return ret;
 
-	ret = intel_dp_mst_atomic_topology_check(intel_connector, state);
+	ret = mst_connector_atomic_topology_check(intel_connector, state);
 	if (ret)
 		return ret;
 
@@ -1363,7 +1363,7 @@ static bool mst_stream_initial_fastset_check(struct intel_encoder *encoder,
 	return intel_dp_initial_fastset_check(primary_encoder, crtc_state);
 }
 
-static int intel_dp_mst_get_ddc_modes(struct drm_connector *connector)
+static int mst_connector_get_ddc_modes(struct drm_connector *connector)
 {
 	struct intel_connector *intel_connector = to_intel_connector(connector);
 	struct drm_i915_private *i915 = to_i915(intel_connector->base.dev);
@@ -1387,7 +1387,7 @@ static int intel_dp_mst_get_ddc_modes(struct drm_connector *connector)
 }
 
 static int
-intel_dp_mst_connector_late_register(struct drm_connector *connector)
+mst_connector_late_register(struct drm_connector *connector)
 {
 	struct intel_connector *intel_connector = to_intel_connector(connector);
 	int ret;
@@ -1406,7 +1406,7 @@ intel_dp_mst_connector_late_register(struct drm_connector *connector)
 }
 
 static void
-intel_dp_mst_connector_early_unregister(struct drm_connector *connector)
+mst_connector_early_unregister(struct drm_connector *connector)
 {
 	struct intel_connector *intel_connector = to_intel_connector(connector);
 
@@ -1415,27 +1415,27 @@ intel_dp_mst_connector_early_unregister(struct drm_connector *connector)
 					      intel_connector->port);
 }
 
-static const struct drm_connector_funcs intel_dp_mst_connector_funcs = {
+static const struct drm_connector_funcs mst_connector_funcs = {
 	.fill_modes = drm_helper_probe_single_connector_modes,
 	.atomic_get_property = intel_digital_connector_atomic_get_property,
 	.atomic_set_property = intel_digital_connector_atomic_set_property,
-	.late_register = intel_dp_mst_connector_late_register,
-	.early_unregister = intel_dp_mst_connector_early_unregister,
+	.late_register = mst_connector_late_register,
+	.early_unregister = mst_connector_early_unregister,
 	.destroy = intel_connector_destroy,
 	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
 	.atomic_duplicate_state = intel_digital_connector_duplicate_state,
 };
 
-static int intel_dp_mst_get_modes(struct drm_connector *connector)
+static int mst_connector_get_modes(struct drm_connector *connector)
 {
-	return intel_dp_mst_get_ddc_modes(connector);
+	return mst_connector_get_ddc_modes(connector);
 }
 
 static int
-intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
-			    struct drm_display_mode *mode,
-			    struct drm_modeset_acquire_ctx *ctx,
-			    enum drm_mode_status *status)
+mst_connector_mode_valid_ctx(struct drm_connector *connector,
+			     struct drm_display_mode *mode,
+			     struct drm_modeset_acquire_ctx *ctx,
+			     enum drm_mode_status *status)
 {
 	struct intel_display *display = to_intel_display(connector->dev);
 	struct drm_i915_private *dev_priv = to_i915(connector->dev);
@@ -1546,8 +1546,9 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
 	return 0;
 }
 
-static struct drm_encoder *intel_mst_atomic_best_encoder(struct drm_connector *connector,
-							 struct drm_atomic_state *state)
+static struct drm_encoder *
+mst_connector_atomic_best_encoder(struct drm_connector *connector,
+				  struct drm_atomic_state *state)
 {
 	struct drm_connector_state *connector_state = drm_atomic_get_new_connector_state(state,
 											 connector);
@@ -1559,8 +1560,8 @@ static struct drm_encoder *intel_mst_atomic_best_encoder(struct drm_connector *c
 }
 
 static int
-intel_dp_mst_detect(struct drm_connector *connector,
-		    struct drm_modeset_acquire_ctx *ctx, bool force)
+mst_connector_detect_ctx(struct drm_connector *connector,
+			 struct drm_modeset_acquire_ctx *ctx, bool force)
 {
 	struct intel_display *display = to_intel_display(connector->dev);
 	struct drm_i915_private *i915 = to_i915(connector->dev);
@@ -1582,12 +1583,12 @@ intel_dp_mst_detect(struct drm_connector *connector,
 				      intel_connector->port);
 }
 
-static const struct drm_connector_helper_funcs intel_dp_mst_connector_helper_funcs = {
-	.get_modes = intel_dp_mst_get_modes,
-	.mode_valid_ctx = intel_dp_mst_mode_valid_ctx,
-	.atomic_best_encoder = intel_mst_atomic_best_encoder,
-	.atomic_check = intel_dp_mst_atomic_check,
-	.detect_ctx = intel_dp_mst_detect,
+static const struct drm_connector_helper_funcs mst_connector_helper_funcs = {
+	.get_modes = mst_connector_get_modes,
+	.mode_valid_ctx = mst_connector_mode_valid_ctx,
+	.atomic_best_encoder = mst_connector_atomic_best_encoder,
+	.atomic_check = mst_connector_atomic_check,
+	.detect_ctx = mst_connector_detect_ctx,
 };
 
 static void mst_stream_encoder_destroy(struct drm_encoder *encoder)
@@ -1602,7 +1603,7 @@ static const struct drm_encoder_funcs mst_stream_encoder_funcs = {
 	.destroy = mst_stream_encoder_destroy,
 };
 
-static bool intel_dp_mst_get_hw_state(struct intel_connector *connector)
+static bool mst_connector_get_hw_state(struct intel_connector *connector)
 {
 	if (intel_attached_encoder(connector) && connector->base.state->crtc) {
 		enum pipe pipe;
@@ -1717,7 +1718,7 @@ static struct drm_connector *intel_dp_add_mst_connector(struct drm_dp_mst_topolo
 	if (!intel_connector)
 		return NULL;
 
-	intel_connector->get_hw_state = intel_dp_mst_get_hw_state;
+	intel_connector->get_hw_state = mst_connector_get_hw_state;
 	intel_connector->sync_state = intel_dp_connector_sync_state;
 	intel_connector->mst_port = intel_dp;
 	intel_connector->port = port;
@@ -1741,7 +1742,7 @@ static struct drm_connector *intel_dp_add_mst_connector(struct drm_dp_mst_topolo
 		detect_dsc_hblank_expansion_quirk(intel_connector);
 
 	connector = &intel_connector->base;
-	ret = drm_connector_init(display->drm, connector, &intel_dp_mst_connector_funcs,
+	ret = drm_connector_init(display->drm, connector, &mst_connector_funcs,
 				 DRM_MODE_CONNECTOR_DisplayPort);
 	if (ret) {
 		drm_dp_mst_put_port_malloc(port);
@@ -1749,7 +1750,7 @@ static struct drm_connector *intel_dp_add_mst_connector(struct drm_dp_mst_topolo
 		return NULL;
 	}
 
-	drm_connector_helper_add(connector, &intel_dp_mst_connector_helper_funcs);
+	drm_connector_helper_add(connector, &mst_connector_helper_funcs);
 
 	for_each_pipe(display, pipe) {
 		struct drm_encoder *enc =
-- 
2.39.5

