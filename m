Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 106528C5B93
	for <lists+intel-gfx@lfdr.de>; Tue, 14 May 2024 21:14:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7065010E8CC;
	Tue, 14 May 2024 19:14:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O4XvYA4+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BBD010E859
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 May 2024 19:14:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715714067; x=1747250067;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=hRG/9LbobfkRz6i5dajpTqkvq7Ui//uUUSlrGk9uAgo=;
 b=O4XvYA4+OPKn1fvwjPx+FBEAma+W9z9dU+az8UtlGPoRQXhrVTUgGqLL
 mWnFDh9KGO9NFn4Rk4CSTuMoObkGRq0UQQPhf7cJEMANWw3JIxU75XDux
 frUIia41dBi3GEh2GJX757IaEw2kUee7Ppi8lTfHnySHSTZmFhXUpnIG8
 iuWPZdOVArC08TR0nXQYp4GYOdmjR6nMqe7UmseRODWNOa0qRt34dKLLB
 9oy70Scn6NI6BZBi0c1rZq/NswFybij/LPGLXwKBOGANabvqc7wQRXsWP
 vdK7itdpB2vFsrkqMKRdaCQkbvrPCqZHt9CgCDQl+YbZLc0emuXHCqWda g==;
X-CSE-ConnectionGUID: teLlaYQqQUS0u+btGR8ZDg==
X-CSE-MsgGUID: UlN3vlDlRQOdLsHKjoDrIQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11073"; a="23124993"
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="23124993"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2024 12:14:27 -0700
X-CSE-ConnectionGUID: oEN1MiM3Qj2UFiYM3H6VAA==
X-CSE-MsgGUID: 7GdNWT63Qxa4f8jMAI07SQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="30724618"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2024 12:14:25 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 11/20] drm/i915/dp: Use check link state work in the hotplug
 handler
Date: Tue, 14 May 2024 22:14:09 +0300
Message-ID: <20240514191418.2863344-12-imre.deak@intel.com>
X-Mailer: git-send-email 2.43.3
In-Reply-To: <20240514191418.2863344-1-imre.deak@intel.com>
References: <20240514191418.2863344-1-imre.deak@intel.com>
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
 drivers/gpu/drm/i915/display/intel_dp.c  |  6 ++++++
 drivers/gpu/drm/i915/display/intel_dp.h  |  1 +
 4 files changed, 13 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index 06ec04e667e32..fd353472ebe66 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -1159,9 +1159,7 @@ intel_dp_hotplug(struct intel_encoder *encoder,
 		 struct intel_connector *connector)
 {
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
-	struct drm_modeset_acquire_ctx ctx;
 	enum intel_hotplug_state state;
-	int ret;
 
 	if (intel_dp->compliance.test_active &&
 	    intel_dp->compliance.test_type == DP_TEST_LINK_PHY_TEST_PATTERN) {
@@ -1172,23 +1170,7 @@ intel_dp_hotplug(struct intel_encoder *encoder,
 
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
index 170ba01786cf8..c6602962e6a84 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4534,14 +4534,13 @@ intel_ddi_hotplug(struct intel_encoder *encoder,
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
index e0f1d020033ce..e47c4daafa348 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5256,6 +5256,12 @@ void intel_dp_queue_link_check(struct intel_dp *intel_dp, int delay_ms)
 			 &intel_dp->check_link_work, msecs_to_jiffies(delay_ms));
 }
 
+void intel_dp_check_link_state(struct intel_dp *intel_dp)
+{
+	if (intel_dp_needs_link_retrain(intel_dp))
+		intel_dp_queue_link_check(intel_dp, 0);
+}
+
 static int intel_dp_prep_phy_test(struct intel_dp *intel_dp,
 				  struct drm_modeset_acquire_ctx *ctx,
 				  u8 *pipe_mask)
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 9d75a9446df58..afebe0e889c32 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -56,6 +56,7 @@ int intel_dp_get_active_pipes(struct intel_dp *intel_dp,
 			      u8 *pipe_mask);
 int intel_dp_retrain_link(struct intel_encoder *encoder,
 			  struct drm_modeset_acquire_ctx *ctx);
+void intel_dp_check_link_state(struct intel_dp *intel_dp);
 void intel_dp_queue_link_check(struct intel_dp *intel_dp, int delay_ms);
 void intel_dp_set_power(struct intel_dp *intel_dp, u8 mode);
 void intel_dp_configure_protocol_converter(struct intel_dp *intel_dp,
-- 
2.43.3

