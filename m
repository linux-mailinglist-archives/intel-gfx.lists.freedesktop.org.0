Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C68C950A7A
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Aug 2024 18:41:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41EFC10E392;
	Tue, 13 Aug 2024 16:41:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="me0tKNj7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A563010E391;
 Tue, 13 Aug 2024 16:41:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723567299; x=1755103299;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0WpX+ZtQTBNQyJg+Fe8IqYJKydi9FTXFVTwWvs03Yks=;
 b=me0tKNj7+/ySV+spKu+Rh5g8a6iNr/UQU2eqSBQYpEsX3OjY4dt0vTu0
 b808qWGa0mB/EErGHn8EHIqv8Z7eCdsXgaqejp3cdyVVHAhIWXMyHJQCq
 La35MlpOQxzso8jQPwoLZZjeAFRscPlDOZ2T140PrFdgeBm2Nf8tIpsOK
 qbQ5NGHYngqTQneCPLqjWnYCeV7jQebNQJw2ejl4vNmwRgx9sV+57ye+Z
 cFwY3TgWXmrPvriXOyI8Mr/Bmq6OdUQ9oRdBGXSCrgaa+aiWwC3c8/lg8
 V18JWAZst2jJG80VTgZuOAuAtuSPYrErao6v+7vxUenp4abRl0opeOU3s Q==;
X-CSE-ConnectionGUID: WZuoDEpWRq2+2pjkUzbskg==
X-CSE-MsgGUID: joo9sfBkRLqA+Z7BK1m03g==
X-IronPort-AV: E=McAfee;i="6700,10204,11163"; a="21714821"
X-IronPort-AV: E=Sophos;i="6.09,286,1716274800"; d="scan'208";a="21714821"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2024 09:41:38 -0700
X-CSE-ConnectionGUID: BjxX2giRSqKLO6Aqyo34pg==
X-CSE-MsgGUID: geHHlodDRMec4iF3ZQ/8wg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,286,1716274800"; d="scan'208";a="58611768"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.234])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2024 09:41:37 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 3/7] drm/i915/display: convert intel_load_detect.c to struct
 intel_display
Date: Tue, 13 Aug 2024 19:41:19 +0300
Message-Id: <20240813164123.2674462-3-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240813164123.2674462-1-jani.nikula@intel.com>
References: <20240813164123.2674462-1-jani.nikula@intel.com>
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

Going forward, struct intel_display shall replace struct
drm_i915_private as the main display device data pointer type. Convert
intel_load_detect.[ch] to struct intel_display.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_load_detect.c  | 27 +++++++++----------
 1 file changed, 13 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_load_detect.c b/drivers/gpu/drm/i915/display/intel_load_detect.c
index d5a0aecf3e8f..b457c69dc0be 100644
--- a/drivers/gpu/drm/i915/display/intel_load_detect.c
+++ b/drivers/gpu/drm/i915/display/intel_load_detect.c
@@ -48,23 +48,22 @@ struct drm_atomic_state *
 intel_load_detect_get_pipe(struct drm_connector *connector,
 			   struct drm_modeset_acquire_ctx *ctx)
 {
+	struct intel_display *display = to_intel_display(connector->dev);
 	struct intel_encoder *encoder =
 		intel_attached_encoder(to_intel_connector(connector));
 	struct intel_crtc *possible_crtc;
 	struct intel_crtc *crtc = NULL;
-	struct drm_device *dev = encoder->base.dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
-	struct drm_mode_config *config = &dev->mode_config;
+	struct drm_mode_config *config = &display->drm->mode_config;
 	struct drm_atomic_state *state = NULL, *restore_state = NULL;
 	struct drm_connector_state *connector_state;
 	struct intel_crtc_state *crtc_state;
 	int ret;
 
-	drm_dbg_kms(&dev_priv->drm, "[CONNECTOR:%d:%s], [ENCODER:%d:%s]\n",
+	drm_dbg_kms(display->drm, "[CONNECTOR:%d:%s], [ENCODER:%d:%s]\n",
 		    connector->base.id, connector->name,
 		    encoder->base.base.id, encoder->base.name);
 
-	drm_WARN_ON(dev, !drm_modeset_is_locked(&config->connection_mutex));
+	drm_WARN_ON(display->drm, !drm_modeset_is_locked(&config->connection_mutex));
 
 	/*
 	 * Algorithm gets a little messy:
@@ -89,7 +88,7 @@ intel_load_detect_get_pipe(struct drm_connector *connector,
 	}
 
 	/* Find an unused one (if possible) */
-	for_each_intel_crtc(dev, possible_crtc) {
+	for_each_intel_crtc(display->drm, possible_crtc) {
 		if (!(encoder->base.possible_crtcs &
 		      drm_crtc_mask(&possible_crtc->base)))
 			continue;
@@ -111,15 +110,15 @@ intel_load_detect_get_pipe(struct drm_connector *connector,
 	 * If we didn't find an unused CRTC, don't use any.
 	 */
 	if (!crtc) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "no pipe available for load-detect\n");
 		ret = -ENODEV;
 		goto fail;
 	}
 
 found:
-	state = drm_atomic_state_alloc(dev);
-	restore_state = drm_atomic_state_alloc(dev);
+	state = drm_atomic_state_alloc(display->drm);
+	restore_state = drm_atomic_state_alloc(display->drm);
 	if (!state || !restore_state) {
 		ret = -ENOMEM;
 		goto fail;
@@ -164,7 +163,7 @@ intel_load_detect_get_pipe(struct drm_connector *connector,
 	if (!ret)
 		ret = drm_atomic_add_affected_planes(restore_state, &crtc->base);
 	if (ret) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "Failed to create a copy of old state to restore: %i\n",
 			    ret);
 		goto fail;
@@ -172,7 +171,7 @@ intel_load_detect_get_pipe(struct drm_connector *connector,
 
 	ret = drm_atomic_commit(state);
 	if (ret) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "failed to set mode on load-detect pipe\n");
 		goto fail;
 	}
@@ -204,13 +203,13 @@ void intel_load_detect_release_pipe(struct drm_connector *connector,
 				    struct drm_atomic_state *state,
 				    struct drm_modeset_acquire_ctx *ctx)
 {
+	struct intel_display *display = to_intel_display(connector->dev);
 	struct intel_encoder *intel_encoder =
 		intel_attached_encoder(to_intel_connector(connector));
-	struct drm_i915_private *i915 = to_i915(intel_encoder->base.dev);
 	struct drm_encoder *encoder = &intel_encoder->base;
 	int ret;
 
-	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s], [ENCODER:%d:%s]\n",
+	drm_dbg_kms(display->drm, "[CONNECTOR:%d:%s], [ENCODER:%d:%s]\n",
 		    connector->base.id, connector->name,
 		    encoder->base.id, encoder->name);
 
@@ -219,7 +218,7 @@ void intel_load_detect_release_pipe(struct drm_connector *connector,
 
 	ret = drm_atomic_helper_commit_duplicated_state(state, ctx);
 	if (ret)
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "Couldn't release load detect pipe: %i\n", ret);
 	drm_atomic_state_put(state);
 }
-- 
2.39.2

