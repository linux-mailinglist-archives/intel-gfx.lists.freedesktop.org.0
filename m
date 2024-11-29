Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C63629DE8DD
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Nov 2024 15:45:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6380A10E4D4;
	Fri, 29 Nov 2024 14:45:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Vpph8UUp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3C5710E4CD;
 Fri, 29 Nov 2024 14:45:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732891546; x=1764427546;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bfYsH9DVP1j9PHTTCahx7z9P6CQyo46ZQDh44q95J1w=;
 b=Vpph8UUphXHHEBS7zIohiExnuUftxyDtS3okK0McK2SlGSpFQ4T1tNy4
 CAjjirwJfhkOxjAP93X3qRY9HyrM6IrF4KO5Wzpq6Y1IHu9lcP6DYIcgl
 NVo80MfybQnPsG0IuIBaYhfX9yF0mNxWuVu2Nnqr0plKZ+l9tSD+XBrnz
 KYwWnXRI9m+AoExlrWP5i6jqZk1/HTs5VDw5vWFoYGTC0gZRbqrOwfsCK
 e3oqn81S4MOnvCwgiLnCzbR1hU1he6nKEQ3z7ztrVfyHCrlYVfv7VaKA8
 0R1rK3FYwdIZC9KC8P1RWnr+wWjUawg8lyNGRr4AeHHs/znmpFNyze0+G Q==;
X-CSE-ConnectionGUID: hFn5b9eZTOqQmzxx49+KvQ==
X-CSE-MsgGUID: 0Lor4LFjTk+sTbIf0uJhwA==
X-IronPort-AV: E=McAfee;i="6700,10204,11271"; a="50650251"
X-IronPort-AV: E=Sophos;i="6.12,195,1728975600"; d="scan'208";a="50650251"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2024 06:45:46 -0800
X-CSE-ConnectionGUID: 0/5XZk8kTaqoxxFurP8YGg==
X-CSE-MsgGUID: 21XIeEQSQvmFXN5s3BTUVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,195,1728975600"; d="scan'208";a="93346736"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.241])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2024 06:45:45 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 1/5] drm/i915/dp: s/intel_encoder/encoder/
Date: Fri, 29 Nov 2024 16:45:29 +0200
Message-Id: <02cc19431ec93cb0461c95a208764449a4aaebe0.1732891498.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1732891498.git.jani.nikula@intel.com>
References: <cover.1732891498.git.jani.nikula@intel.com>
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

Use the contemporary naming convention of struct intel_encoder *encoder.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 32 ++++++++++++-------------
 1 file changed, 16 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 4471c8fcd478..b33c1544a120 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5776,8 +5776,8 @@ intel_dp_force(struct drm_connector *connector)
 {
 	struct intel_dp *intel_dp = intel_attached_dp(to_intel_connector(connector));
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
-	struct intel_encoder *intel_encoder = &dig_port->base;
-	struct drm_i915_private *dev_priv = to_i915(intel_encoder->base.dev);
+	struct intel_encoder *encoder = &dig_port->base;
+	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 
 	drm_dbg_kms(&dev_priv->drm, "[CONNECTOR:%d:%s]\n",
 		    connector->base.id, connector->name);
@@ -5907,18 +5907,18 @@ void intel_dp_encoder_flush_work(struct drm_encoder *_encoder)
 	intel_dp_aux_fini(intel_dp);
 }
 
-void intel_dp_encoder_suspend(struct intel_encoder *intel_encoder)
+void intel_dp_encoder_suspend(struct intel_encoder *encoder)
 {
-	struct intel_dp *intel_dp = enc_to_intel_dp(intel_encoder);
+	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 
 	intel_pps_vdd_off_sync(intel_dp);
 
 	intel_dp_tunnel_suspend(intel_dp);
 }
 
-void intel_dp_encoder_shutdown(struct intel_encoder *intel_encoder)
+void intel_dp_encoder_shutdown(struct intel_encoder *encoder)
 {
-	struct intel_dp *intel_dp = enc_to_intel_dp(intel_encoder);
+	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 
 	intel_pps_wait_power_cycle(intel_dp);
 }
@@ -6491,10 +6491,10 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 	struct intel_display *display = to_intel_display(dig_port);
 	struct drm_connector *connector = &intel_connector->base;
 	struct intel_dp *intel_dp = &dig_port->dp;
-	struct intel_encoder *intel_encoder = &dig_port->base;
-	struct drm_device *dev = intel_encoder->base.dev;
+	struct intel_encoder *encoder = &dig_port->base;
+	struct drm_device *dev = encoder->base.dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
-	enum port port = intel_encoder->port;
+	enum port port = encoder->port;
 	int type;
 
 	/* Initialize the work for modeset in case of link train failure */
@@ -6502,8 +6502,8 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 
 	if (drm_WARN(dev, dig_port->max_lanes < 1,
 		     "Not enough lanes (%d) for DP on [ENCODER:%d:%s]\n",
-		     dig_port->max_lanes, intel_encoder->base.base.id,
-		     intel_encoder->base.name))
+		     dig_port->max_lanes, encoder->base.base.id,
+		     encoder->base.name))
 		return false;
 
 	intel_dp->reset_link_params = true;
@@ -6512,15 +6512,15 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 	intel_dp->DP = intel_de_read(dev_priv, intel_dp->output_reg);
 	intel_dp->attached_connector = intel_connector;
 
-	if (_intel_dp_is_port_edp(dev_priv, intel_encoder->devdata, port)) {
+	if (_intel_dp_is_port_edp(dev_priv, encoder->devdata, port)) {
 		/*
 		 * Currently we don't support eDP on TypeC ports for DISPLAY_VER < 30,
 		 * although in theory it could work on TypeC legacy ports.
 		 */
-		drm_WARN_ON(dev, intel_encoder_is_tc(intel_encoder) &&
+		drm_WARN_ON(dev, intel_encoder_is_tc(encoder) &&
 			    DISPLAY_VER(dev_priv) < 30);
 		type = DRM_MODE_CONNECTOR_eDP;
-		intel_encoder->type = INTEL_OUTPUT_EDP;
+		encoder->type = INTEL_OUTPUT_EDP;
 
 		/* eDP only on port B and/or C on vlv/chv */
 		if (drm_WARN_ON(dev, (IS_VALLEYVIEW(dev_priv) ||
@@ -6543,7 +6543,7 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 	drm_dbg_kms(&dev_priv->drm,
 		    "Adding %s connector on [ENCODER:%d:%s]\n",
 		    type == DRM_MODE_CONNECTOR_eDP ? "eDP" : "DP",
-		    intel_encoder->base.base.id, intel_encoder->base.name);
+		    encoder->base.base.id, encoder->base.name);
 
 	drm_connector_init_with_ddc(dev, connector, &intel_dp_connector_funcs,
 				    type, &intel_dp->aux.ddc);
@@ -6556,7 +6556,7 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 		intel_connector->polled = DRM_CONNECTOR_POLL_HPD;
 	intel_connector->base.polled = intel_connector->polled;
 
-	intel_connector_attach_encoder(intel_connector, intel_encoder);
+	intel_connector_attach_encoder(intel_connector, encoder);
 
 	if (HAS_DDI(dev_priv))
 		intel_connector->get_hw_state = intel_ddi_connector_get_hw_state;
-- 
2.39.5

