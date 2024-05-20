Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E9C08CA265
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2024 20:58:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10CC610E881;
	Mon, 20 May 2024 18:58:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JFTqylXC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 246F710E4F9
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2024 18:58:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716231510; x=1747767510;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=pS4kqmPz9Fpm4dwfUIlAzNI7SXv3QcR3LK/aWPMfOUk=;
 b=JFTqylXCH6Xz02lh2zYxDQNV/9kibbaxoiW7jE3d1mQufSkTo/ZrlMjw
 duNe/89hAr7Uf29Oe6Lf9IKtFms32x6/hoN5ED2igxYcHXh2+aK4Z+Vhb
 tk2BI6F4qBtxNhgrvoNl51s8pS8Ty0id91HIWozm3jGBW/ZKqapFT2RMW
 bYRzS7i4dra9IZTWVKdrwXoOLf1X+BHrLbikDrHJk4mQh0yQrjP2gNDPa
 V5gjzybhQv9PxrVrT4yqlmEenmCufkFfy5jwnPfnJL101qonDN+dGO4DG
 ZYfhEBDupMkEXUC2yQMQfZ2XJk0MLmbPrIb61OYCuLwY3cMpl4JbX8fHZ A==;
X-CSE-ConnectionGUID: aV04ORIuQcmZneXtgGGynQ==
X-CSE-MsgGUID: 0lsE14YOQQ+X7biULVkMPQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11078"; a="16218539"
X-IronPort-AV: E=Sophos;i="6.08,175,1712646000"; d="scan'208";a="16218539"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 11:58:30 -0700
X-CSE-ConnectionGUID: 0BzCdWoSQySAaBURfUqABg==
X-CSE-MsgGUID: HDzFm2+xRbye6HtfEqa9Ww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,175,1712646000"; d="scan'208";a="37213861"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 11:58:29 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 11/21] drm/i915/dp: Use check link state work in the
 hotplug handler
Date: Mon, 20 May 2024 21:58:09 +0300
Message-ID: <20240520185822.3725844-12-imre.deak@intel.com>
X-Mailer: git-send-email 2.43.3
In-Reply-To: <20240520185822.3725844-1-imre.deak@intel.com>
References: <20240520185822.3725844-1-imre.deak@intel.com>
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

Simplify things by retraining a DP link if a bad link is detected in the
hotplug handler from the encoder's check link state work, similarly to
how this is done after a modeset link training failure.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c    | 20 +-------------------
 drivers/gpu/drm/i915/display/intel_ddi.c | 11 +++++------
 drivers/gpu/drm/i915/display/intel_dp.c  |  8 ++++++++
 drivers/gpu/drm/i915/display/intel_dp.h  |  1 +
 4 files changed, 15 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index 0d7424a7581e6..1f3b6b3956a1c 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -1160,9 +1160,7 @@ intel_dp_hotplug(struct intel_encoder *encoder,
 		 struct intel_connector *connector)
 {
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
-	struct drm_modeset_acquire_ctx ctx;
 	enum intel_hotplug_state state;
-	int ret;
 
 	if (intel_dp->compliance.test_active &&
 	    intel_dp->compliance.test_type == DP_TEST_LINK_PHY_TEST_PATTERN) {
@@ -1173,23 +1171,7 @@ intel_dp_hotplug(struct intel_encoder *encoder,
 
 	state = intel_encoder_hotplug(encoder, connector);
 
-	drm_modeset_acquire_init(&ctx, 0);
-
-	for (;;) {
-		ret = intel_dp_retrain_link(encoder, &ctx);
-
-		if (ret == -EDEADLK) {
-			drm_modeset_backoff(&ctx);
-			continue;
-		}
-
-		break;
-	}
-
-	drm_modeset_drop_locks(&ctx);
-	drm_modeset_acquire_fini(&ctx);
-	drm_WARN(encoder->base.dev, ret,
-		 "Acquiring modeset locks failed with %i\n", ret);
+	intel_dp_check_link_state(intel_dp);
 
 	/*
 	 * Keeping it consistent with intel_ddi_hotplug() and
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 58e57a7704811..ea24404724075 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4566,14 +4566,13 @@ intel_ddi_hotplug(struct intel_encoder *encoder,
 	state = intel_encoder_hotplug(encoder, connector);
 
 	if (!intel_tc_port_link_reset(dig_port)) {
-		intel_modeset_lock_ctx_retry(&ctx, NULL, 0, ret) {
-			if (connector->base.connector_type == DRM_MODE_CONNECTOR_HDMIA)
+		if (connector->base.connector_type == DRM_MODE_CONNECTOR_HDMIA) {
+			intel_modeset_lock_ctx_retry(&ctx, NULL, 0, ret)
 				ret = intel_hdmi_reset_link(encoder, &ctx);
-			else
-				ret = intel_dp_retrain_link(encoder, &ctx);
+			drm_WARN_ON(encoder->base.dev, ret);
+		} else {
+			intel_dp_check_link_state(intel_dp);
 		}
-
-		drm_WARN_ON(encoder->base.dev, ret);
 	}
 
 	/*
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 87f9f12814b93..ff4ed6bb520d8 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5064,6 +5064,14 @@ intel_dp_needs_link_retrain(struct intel_dp *intel_dp)
 	return !intel_dp_link_ok(intel_dp, link_status);
 }
 
+void intel_dp_check_link_state(struct intel_dp *intel_dp)
+{
+	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
+
+	if (intel_dp_needs_link_retrain(intel_dp))
+		intel_ddi_queue_link_check(dig_port, 0);
+}
+
 static bool intel_dp_has_connector(struct intel_dp *intel_dp,
 				   const struct drm_connector_state *conn_state)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 24777c035e2ad..3fa53ac601d58 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -57,6 +57,7 @@ void intel_dp_set_link_params(struct intel_dp *intel_dp,
 int intel_dp_get_active_pipes(struct intel_dp *intel_dp,
 			      struct drm_modeset_acquire_ctx *ctx,
 			      u8 *pipe_mask);
+void intel_dp_check_link_state(struct intel_dp *intel_dp);
 int intel_dp_retrain_link(struct intel_encoder *encoder,
 			  struct drm_modeset_acquire_ctx *ctx);
 void intel_dp_set_power(struct intel_dp *intel_dp, u8 mode);
-- 
2.43.3

