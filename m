Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F25C99FF0AF
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Dec 2024 17:28:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97A8110E694;
	Tue, 31 Dec 2024 16:28:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cpiSia+l";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E839310E686;
 Tue, 31 Dec 2024 16:28:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735662488; x=1767198488;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mV7MwAhqVcKQWf03BvXiapUaCNHr/kbi2/2eTgma+Vs=;
 b=cpiSia+lD4VtiJBegsm7GGTFLRQhNVdI5cq3cPNyHN80tLSgPTeKoN2t
 FJNdL9SCnbMKWgOC0gkeS8EIT51jS2314z51helYnXFTMEZy2uTLYLff5
 1oP/Bs2xN67S2rAGssG28CaaYo/8J5f5l0VcjaqObSN1L5TCfRCN3tDyW
 BIYtRq5y6HT8Wth78Gsq2rtr5iHLoE74D8WaVqMXMK8VnH+Ng+8wRYdT1
 OSpRd9O1Ei0G3+iMKNZ9vnI/XdWhpwVE7bfeL+Ts79UHaCrHatdlH2CDR
 pBgjP32fveHpNeNsnudqR6rnJvyjAXbyEjL8DGLvhJlxr6PiS1GrZcJqS w==;
X-CSE-ConnectionGUID: ZYht5OGpSxydGsUQQT8F3g==
X-CSE-MsgGUID: j4+LgvZiQA296Zw8qQ+Gdg==
X-IronPort-AV: E=McAfee;i="6700,10204,11302"; a="35251995"
X-IronPort-AV: E=Sophos;i="6.12,279,1728975600"; d="scan'208";a="35251995"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Dec 2024 08:28:08 -0800
X-CSE-ConnectionGUID: WYEQlnjoRZWrg4NGJlzw/A==
X-CSE-MsgGUID: 8F+7VTawTRO/kkVHy/sX6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,279,1728975600"; d="scan'208";a="100924974"
Received: from iklimasz-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.180])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Dec 2024 08:28:06 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, Gustavo Sousa <gustavo.sousa@intel.com>,
 ville.syrjala@linux.intel.com
Subject: [PATCH 4/4] drm/i915/display: convert global state to struct
 intel_display
Date: Tue, 31 Dec 2024 18:27:40 +0200
Message-Id: <2b5e743b285a86a59ee87085727847c758c8d552.1735662324.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1735662324.git.jani.nikula@intel.com>
References: <cover.1735662324.git.jani.nikula@intel.com>
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

Going forward, struct intel_display is the main display device
structure. Convert intel_global_state.[ch] to it.

This allows us to make intel_pmdemand.c completely independent of
i915_drv.h.

Cc: Gustavo Sousa <gustavo.sousa@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c       |  3 +-
 drivers/gpu/drm/i915/display/intel_cdclk.c    |  3 +-
 .../drm/i915/display/intel_display_driver.c   |  4 +-
 .../gpu/drm/i915/display/intel_global_state.c | 42 +++++++++----------
 .../gpu/drm/i915/display/intel_global_state.h |  6 +--
 drivers/gpu/drm/i915/display/intel_pmdemand.c |  6 +--
 drivers/gpu/drm/i915/display/skl_watermark.c  |  3 +-
 7 files changed, 33 insertions(+), 34 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 08e8a67ca74c..23edc81741de 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -1447,13 +1447,14 @@ static const struct intel_global_state_funcs intel_bw_funcs = {
 
 int intel_bw_init(struct drm_i915_private *i915)
 {
+	struct intel_display *display = &i915->display;
 	struct intel_bw_state *state;
 
 	state = kzalloc(sizeof(*state), GFP_KERNEL);
 	if (!state)
 		return -ENOMEM;
 
-	intel_atomic_global_obj_init(i915, &i915->display.bw.obj,
+	intel_atomic_global_obj_init(display, &display->bw.obj,
 				     &state->base, &intel_bw_funcs);
 
 	/*
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 3506e576bf6b..c7a603589412 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -3217,14 +3217,13 @@ int intel_cdclk_state_set_joined_mbus(struct intel_atomic_state *state, bool joi
 
 int intel_cdclk_init(struct intel_display *display)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct intel_cdclk_state *cdclk_state;
 
 	cdclk_state = kzalloc(sizeof(*cdclk_state), GFP_KERNEL);
 	if (!cdclk_state)
 		return -ENOMEM;
 
-	intel_atomic_global_obj_init(dev_priv, &display->cdclk.obj,
+	intel_atomic_global_obj_init(display, &display->cdclk.obj,
 				     &cdclk_state->base, &intel_cdclk_funcs);
 
 	return 0;
diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index c4cfb0406fa2..1aa0b298c278 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -163,9 +163,7 @@ static void intel_mode_config_init(struct intel_display *display)
 
 static void intel_mode_config_cleanup(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
-
-	intel_atomic_global_obj_cleanup(i915);
+	intel_atomic_global_obj_cleanup(display);
 	drm_mode_config_cleanup(display->drm);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_global_state.c b/drivers/gpu/drm/i915/display/intel_global_state.c
index cbcd1e91b7be..8a49e2bb37fa 100644
--- a/drivers/gpu/drm/i915/display/intel_global_state.c
+++ b/drivers/gpu/drm/i915/display/intel_global_state.c
@@ -75,7 +75,7 @@ intel_atomic_global_state_get(struct intel_global_state *obj_state)
 	return obj_state;
 }
 
-void intel_atomic_global_obj_init(struct drm_i915_private *dev_priv,
+void intel_atomic_global_obj_init(struct intel_display *display,
 				  struct intel_global_obj *obj,
 				  struct intel_global_state *state,
 				  const struct intel_global_state_funcs *funcs)
@@ -88,26 +88,26 @@ void intel_atomic_global_obj_init(struct drm_i915_private *dev_priv,
 
 	obj->state = state;
 	obj->funcs = funcs;
-	list_add_tail(&obj->head, &dev_priv->display.global.obj_list);
+	list_add_tail(&obj->head, &display->global.obj_list);
 }
 
-void intel_atomic_global_obj_cleanup(struct drm_i915_private *dev_priv)
+void intel_atomic_global_obj_cleanup(struct intel_display *display)
 {
 	struct intel_global_obj *obj, *next;
 
-	list_for_each_entry_safe(obj, next, &dev_priv->display.global.obj_list, head) {
+	list_for_each_entry_safe(obj, next, &display->global.obj_list, head) {
 		list_del(&obj->head);
 
-		drm_WARN_ON(&dev_priv->drm, kref_read(&obj->state->ref) != 1);
+		drm_WARN_ON(display->drm, kref_read(&obj->state->ref) != 1);
 		intel_atomic_global_state_put(obj->state);
 	}
 }
 
-static void assert_global_state_write_locked(struct drm_i915_private *dev_priv)
+static void assert_global_state_write_locked(struct intel_display *display)
 {
 	struct intel_crtc *crtc;
 
-	for_each_intel_crtc(&dev_priv->drm, crtc)
+	for_each_intel_crtc(display->drm, crtc)
 		drm_modeset_lock_assert_held(&crtc->base.mutex);
 }
 
@@ -126,23 +126,23 @@ static bool modeset_lock_is_held(struct drm_modeset_acquire_ctx *ctx,
 
 static void assert_global_state_read_locked(struct intel_atomic_state *state)
 {
+	struct intel_display *display = to_intel_display(state);
 	struct drm_modeset_acquire_ctx *ctx = state->base.acquire_ctx;
-	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 	struct intel_crtc *crtc;
 
-	for_each_intel_crtc(&dev_priv->drm, crtc) {
+	for_each_intel_crtc(display->drm, crtc) {
 		if (modeset_lock_is_held(ctx, &crtc->base.mutex))
 			return;
 	}
 
-	drm_WARN(&dev_priv->drm, 1, "Global state not read locked\n");
+	drm_WARN(display->drm, 1, "Global state not read locked\n");
 }
 
 struct intel_global_state *
 intel_atomic_get_global_obj_state(struct intel_atomic_state *state,
 				  struct intel_global_obj *obj)
 {
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	int index, num_objs, i;
 	size_t size;
 	struct __intel_global_objs_state *arr;
@@ -184,7 +184,7 @@ intel_atomic_get_global_obj_state(struct intel_atomic_state *state,
 
 	state->num_global_objs = num_objs;
 
-	drm_dbg_atomic(&i915->drm, "Added new global object %p state %p to %p\n",
+	drm_dbg_atomic(display->drm, "Added new global object %p state %p to %p\n",
 		       obj, obj_state, state);
 
 	return obj_state;
@@ -218,14 +218,14 @@ intel_atomic_get_new_global_obj_state(struct intel_atomic_state *state,
 
 void intel_atomic_swap_global_state(struct intel_atomic_state *state)
 {
-	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	struct intel_global_state *old_obj_state, *new_obj_state;
 	struct intel_global_obj *obj;
 	int i;
 
 	for_each_oldnew_global_obj_in_state(state, obj, old_obj_state,
 					    new_obj_state, i) {
-		drm_WARN_ON(&dev_priv->drm, obj->state != old_obj_state);
+		drm_WARN_ON(display->drm, obj->state != old_obj_state);
 
 		/*
 		 * If the new state wasn't modified (and properly
@@ -234,7 +234,7 @@ void intel_atomic_swap_global_state(struct intel_atomic_state *state)
 		if (!new_obj_state->changed)
 			continue;
 
-		assert_global_state_write_locked(dev_priv);
+		assert_global_state_write_locked(display);
 
 		old_obj_state->state = state;
 		new_obj_state->state = NULL;
@@ -265,10 +265,10 @@ void intel_atomic_clear_global_state(struct intel_atomic_state *state)
 int intel_atomic_lock_global_state(struct intel_global_state *obj_state)
 {
 	struct intel_atomic_state *state = obj_state->state;
-	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	struct intel_crtc *crtc;
 
-	for_each_intel_crtc(&dev_priv->drm, crtc) {
+	for_each_intel_crtc(display->drm, crtc) {
 		int ret;
 
 		ret = drm_modeset_lock(&crtc->base.mutex,
@@ -298,10 +298,10 @@ int intel_atomic_serialize_global_state(struct intel_global_state *obj_state)
 bool
 intel_atomic_global_state_is_serialized(struct intel_atomic_state *state)
 {
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	struct intel_crtc *crtc;
 
-	for_each_intel_crtc(&i915->drm, crtc)
+	for_each_intel_crtc(display->drm, crtc)
 		if (!intel_atomic_get_new_crtc_state(state, crtc))
 			return false;
 	return true;
@@ -344,7 +344,7 @@ intel_atomic_global_state_setup_commit(struct intel_atomic_state *state)
 int
 intel_atomic_global_state_wait_for_dependencies(struct intel_atomic_state *state)
 {
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	const struct intel_global_state *old_obj_state;
 	struct intel_global_obj *obj;
 	int i;
@@ -358,7 +358,7 @@ intel_atomic_global_state_wait_for_dependencies(struct intel_atomic_state *state
 
 		ret = wait_for_completion_timeout(&commit->done, 10 * HZ);
 		if (ret == 0) {
-			drm_err(&i915->drm, "global state timed out\n");
+			drm_err(display->drm, "global state timed out\n");
 			return -ETIMEDOUT;
 		}
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_global_state.h b/drivers/gpu/drm/i915/display/intel_global_state.h
index 6506a8e32972..d42fb2547ee9 100644
--- a/drivers/gpu/drm/i915/display/intel_global_state.h
+++ b/drivers/gpu/drm/i915/display/intel_global_state.h
@@ -9,8 +9,8 @@
 #include <linux/kref.h>
 #include <linux/list.h>
 
-struct drm_i915_private;
 struct intel_atomic_state;
+struct intel_display;
 struct intel_global_obj;
 struct intel_global_state;
 
@@ -69,11 +69,11 @@ struct __intel_global_objs_state {
 	struct intel_global_state *state, *old_state, *new_state;
 };
 
-void intel_atomic_global_obj_init(struct drm_i915_private *dev_priv,
+void intel_atomic_global_obj_init(struct intel_display *display,
 				  struct intel_global_obj *obj,
 				  struct intel_global_state *state,
 				  const struct intel_global_state_funcs *funcs);
-void intel_atomic_global_obj_cleanup(struct drm_i915_private *dev_priv);
+void intel_atomic_global_obj_cleanup(struct intel_display *display);
 
 struct intel_global_state *
 intel_atomic_get_global_obj_state(struct intel_atomic_state *state,
diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c b/drivers/gpu/drm/i915/display/intel_pmdemand.c
index 9373cf2885ab..975520322136 100644
--- a/drivers/gpu/drm/i915/display/intel_pmdemand.c
+++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
@@ -5,14 +5,15 @@
 
 #include <linux/bitops.h>
 
-#include "i915_drv.h"
 #include "i915_reg.h"
+#include "i915_utils.h"
 #include "intel_atomic.h"
 #include "intel_bw.h"
 #include "intel_cdclk.h"
 #include "intel_de.h"
 #include "intel_display_trace.h"
 #include "intel_pmdemand.h"
+#include "intel_step.h"
 #include "skl_watermark.h"
 
 struct pmdemand_params {
@@ -115,14 +116,13 @@ intel_atomic_get_new_pmdemand_state(struct intel_atomic_state *state)
 
 int intel_pmdemand_init(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct intel_pmdemand_state *pmdemand_state;
 
 	pmdemand_state = kzalloc(sizeof(*pmdemand_state), GFP_KERNEL);
 	if (!pmdemand_state)
 		return -ENOMEM;
 
-	intel_atomic_global_obj_init(i915, &display->pmdemand.obj,
+	intel_atomic_global_obj_init(display, &display->pmdemand.obj,
 				     &pmdemand_state->base,
 				     &intel_pmdemand_funcs);
 
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 29e8ea91c858..5e6f2afe3cfe 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3326,13 +3326,14 @@ intel_atomic_get_dbuf_state(struct intel_atomic_state *state)
 
 int intel_dbuf_init(struct drm_i915_private *i915)
 {
+	struct intel_display *display = &i915->display;
 	struct intel_dbuf_state *dbuf_state;
 
 	dbuf_state = kzalloc(sizeof(*dbuf_state), GFP_KERNEL);
 	if (!dbuf_state)
 		return -ENOMEM;
 
-	intel_atomic_global_obj_init(i915, &i915->display.dbuf.obj,
+	intel_atomic_global_obj_init(display, &display->dbuf.obj,
 				     &dbuf_state->base, &intel_dbuf_funcs);
 
 	return 0;
-- 
2.39.5

