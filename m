Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7694D90270E
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2024 18:49:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDEDF10E18B;
	Mon, 10 Jun 2024 16:49:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="irbnpHfJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4F8310E34E
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2024 16:49:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718038180; x=1749574180;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=yvpBpq5Jxhc5HQoxxFAug1GYau5SpxWV48GTMpVZv8Q=;
 b=irbnpHfJNTCTNOjbk6XWfpwRu0ccWbTwuiPwocwdi1YU8geTdhS1ol2p
 QxHL68SmA0m0HY9f9R6DSZX3mLiWsSQsD4RLI9zxGOo/Xkd9qI+Op+Mse
 F547i5VqWeTvxLcu1z6QVXKkm2r9JJRObzXzKNLD5CSDY3d59+uumMK13
 f/pZ7MPQ4qS/TxIUL4jJ+PoqkHOImIrOUcDMbxsafG+RZGB/hZljNsYbp
 amPnSFxUYUhI//Mt2wlIBlbvSX18lL6BO1IBNOWqFq9KVrlzcP1orPGx9
 8Hl/jHeVC00Q8hnj8OPhpr+83Xyk6f8QyWruhnIUOHBkYwY/8/M8ioQDK Q==;
X-CSE-ConnectionGUID: fqI5pd8WRk2i0ubA5ZqDrQ==
X-CSE-MsgGUID: Ec2vhlIJRyS25ef+8aETxg==
X-IronPort-AV: E=McAfee;i="6600,9927,11099"; a="18493998"
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="18493998"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2024 09:49:40 -0700
X-CSE-ConnectionGUID: j7z+S4+ETbm4OiGYYEKLiA==
X-CSE-MsgGUID: QRU8pKbSSr2oEHAWa/klBw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="39060596"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2024 09:49:39 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v3 11/21] drm/i915/dp: Use check link state work in the
 hotplug handler
Date: Mon, 10 Jun 2024 19:49:23 +0300
Message-ID: <20240610164933.2947366-12-imre.deak@intel.com>
X-Mailer: git-send-email 2.43.3
In-Reply-To: <20240610164933.2947366-1-imre.deak@intel.com>
References: <20240610164933.2947366-1-imre.deak@intel.com>
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
 drivers/gpu/drm/i915/display/intel_dp.c  | 14 ++++++++++++++
 drivers/gpu/drm/i915/display/intel_dp.h  |  1 +
 4 files changed, 21 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index 07f1e719bdfc2..913fc0ac978d9 100644
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
index 5b27410280355..e7449381d3a83 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4559,14 +4559,13 @@ intel_ddi_hotplug(struct intel_encoder *encoder,
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
index 8259d91d2d041..1e770f1bfbcd2 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5256,6 +5256,20 @@ void intel_dp_link_check(struct intel_encoder *encoder)
 	drm_WARN_ON(&i915->drm, ret);
 }
 
+void intel_dp_check_link_state(struct intel_dp *intel_dp)
+{
+	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
+	struct intel_encoder *encoder = &dig_port->base;
+
+	if (!intel_dp_is_connected(intel_dp))
+		return;
+
+	if (!intel_dp_needs_link_retrain(intel_dp))
+		return;
+
+	intel_encoder_link_check_queue_work(encoder, 0);
+}
+
 static int intel_dp_prep_phy_test(struct intel_dp *intel_dp,
 				  struct drm_modeset_acquire_ctx *ctx,
 				  u8 *pipe_mask)
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index ec4131db07439..3bb8189b9698d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -60,6 +60,7 @@ int intel_dp_get_active_pipes(struct intel_dp *intel_dp,
 int intel_dp_retrain_link(struct intel_encoder *encoder,
 			  struct drm_modeset_acquire_ctx *ctx);
 void intel_dp_link_check(struct intel_encoder *encoder);
+void intel_dp_check_link_state(struct intel_dp *intel_dp);
 void intel_dp_set_power(struct intel_dp *intel_dp, u8 mode);
 void intel_dp_configure_protocol_converter(struct intel_dp *intel_dp,
 					   const struct intel_crtc_state *crtc_state);
-- 
2.43.3

