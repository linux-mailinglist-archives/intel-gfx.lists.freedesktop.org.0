Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BB129F0865
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2024 10:48:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5FBC10E254;
	Fri, 13 Dec 2024 09:48:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Yo81YbC7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DCCB10E254;
 Fri, 13 Dec 2024 09:48:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734083320; x=1765619320;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cBuY73jruAKZT6Oh1NAGmV+RRR305p6A7D7fEmysAYM=;
 b=Yo81YbC7UaG6w3ennrZPKew4n5rMkjyffjG/kEaF3Ao8SpQcnNzrnUkO
 WpG+o2N3/TBuaj082ldF9zmBrFHsZTjm4puUg2GxSITTLXhEt0sNlPAsv
 gTrNfmojQ5OGtvoFHkxeu8V9/HuYlQZZghUtD+l+aG8+jXq3wgHeX/frS
 a2pkuKfAo4P7Aq+j2An2pjIJxDe5z1WFRcR11+wUd9vst3ULesIqVk0fy
 0SJ6J56iaEQrK8FqoGE9QbNou+HTU2t5WdGw1ZagUKsXid+cYQWDZD+Dh
 HZkm95V52yxiz933FPMKRQ9Duu2N9ZtLk5vyMkrRwIr5mFtFy8OVO5q8n Q==;
X-CSE-ConnectionGUID: xHm6Fkr4TKCL4RkJLhJMFA==
X-CSE-MsgGUID: zd2C2rykRFSsZTnV++PETg==
X-IronPort-AV: E=McAfee;i="6700,10204,11284"; a="34671933"
X-IronPort-AV: E=Sophos;i="6.12,230,1728975600"; d="scan'208";a="34671933"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2024 01:48:39 -0800
X-CSE-ConnectionGUID: 1IarniOuS++NSp2vNpiz0g==
X-CSE-MsgGUID: ZFpUL0XeRXKnulqh56lgLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,230,1728975600"; d="scan'208";a="96378407"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.159])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2024 01:48:36 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Luca Coelho <luciano.coelho@intel.com>
Subject: [PATCH v3 1/5] drm/i915/dp: s/intel_encoder/encoder/
Date: Fri, 13 Dec 2024 11:48:21 +0200
Message-Id: <d1d3fb9254871d9a334e3f20b219bdf772426e66.1734083244.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1734083244.git.jani.nikula@intel.com>
References: <cover.1734083244.git.jani.nikula@intel.com>
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

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 32 ++++++++++++-------------
 1 file changed, 16 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index f8100c4f4d20..d1a4fb2faef1 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5771,8 +5771,8 @@ intel_dp_force(struct drm_connector *connector)
 	struct intel_display *display = to_intel_display(connector->dev);
 	struct intel_dp *intel_dp = intel_attached_dp(to_intel_connector(connector));
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
-	struct intel_encoder *intel_encoder = &dig_port->base;
-	struct drm_i915_private *dev_priv = to_i915(intel_encoder->base.dev);
+	struct intel_encoder *encoder = &dig_port->base;
+	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 
 	drm_dbg_kms(&dev_priv->drm, "[CONNECTOR:%d:%s]\n",
 		    connector->base.id, connector->name);
@@ -5902,18 +5902,18 @@ void intel_dp_encoder_flush_work(struct drm_encoder *_encoder)
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
@@ -6486,10 +6486,10 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
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
@@ -6497,8 +6497,8 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 
 	if (drm_WARN(dev, dig_port->max_lanes < 1,
 		     "Not enough lanes (%d) for DP on [ENCODER:%d:%s]\n",
-		     dig_port->max_lanes, intel_encoder->base.base.id,
-		     intel_encoder->base.name))
+		     dig_port->max_lanes, encoder->base.base.id,
+		     encoder->base.name))
 		return false;
 
 	intel_dp->reset_link_params = true;
@@ -6507,15 +6507,15 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
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
@@ -6538,7 +6538,7 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 	drm_dbg_kms(&dev_priv->drm,
 		    "Adding %s connector on [ENCODER:%d:%s]\n",
 		    type == DRM_MODE_CONNECTOR_eDP ? "eDP" : "DP",
-		    intel_encoder->base.base.id, intel_encoder->base.name);
+		    encoder->base.base.id, encoder->base.name);
 
 	drm_connector_init_with_ddc(dev, connector, &intel_dp_connector_funcs,
 				    type, &intel_dp->aux.ddc);
@@ -6551,7 +6551,7 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 		intel_connector->polled = DRM_CONNECTOR_POLL_HPD;
 	intel_connector->base.polled = intel_connector->polled;
 
-	intel_connector_attach_encoder(intel_connector, intel_encoder);
+	intel_connector_attach_encoder(intel_connector, encoder);
 
 	if (HAS_DDI(dev_priv))
 		intel_connector->get_hw_state = intel_ddi_connector_get_hw_state;
-- 
2.39.5

