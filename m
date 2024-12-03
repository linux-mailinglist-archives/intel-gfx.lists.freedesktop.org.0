Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D4BCD9E27CC
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2024 17:41:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B9E510EAB2;
	Tue,  3 Dec 2024 16:41:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NgIfDEV9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5117F10EAAE
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Dec 2024 16:41:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733244088; x=1764780088;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=x+up0kWaXps5YZ2JA0eHCuxnSnfQYH/GSMLmWBOSO2U=;
 b=NgIfDEV9mEaJhUNzw3guQ7tTxWK9aLI4DWf4Zi8p4ZZginCyLUXauR0R
 O6+fD+m/+Evi2DPqXvbqJ/6qiv9A6fO0EqDaeS8olIwwxgvOqlE0YsyGE
 cPRhbW773Fi6oB+p0R8AdMoztAyhX/OUeADDuvU6Ad7y7GufjzCfK1CzU
 JGA/UVI5iiBGAEr3wNv7sSs8YpRHUx4TG4Ur1NajJdQ54tThoMmYnH1tK
 aIg8MQ9ikxNg53lr0WZeXtNaqhGikcVWTypX2uYJm8Zy/AbuJr9jDOg20
 vEZ6L6rYhxzGuBBD08WN5hVQNS2wPwRMQPqdDb9ff1+t9yE5sWYvPGgHl Q==;
X-CSE-ConnectionGUID: nLS2+5loRhKwYxR+d9YUUA==
X-CSE-MsgGUID: RdwgvefURnuVf0ITn+P6yg==
X-IronPort-AV: E=McAfee;i="6700,10204,11275"; a="33347532"
X-IronPort-AV: E=Sophos;i="6.12,205,1728975600"; d="scan'208";a="33347532"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2024 08:41:28 -0800
X-CSE-ConnectionGUID: gbWnd4IwRz2lWIbdJo/kjg==
X-CSE-MsgGUID: OweyXxtwQEGDfasghiGvpw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,205,1728975600"; d="scan'208";a="93580543"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.135])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2024 08:41:27 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 6/6] drm/i915/lspcon: rename interfaces to intel_lspcon_* to
 unify
Date: Tue,  3 Dec 2024 18:40:56 +0200
Message-Id: <10c174653dc07f5e9fdfe1109bdc5d065efacbb9.1733243959.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1733243959.git.jani.nikula@intel.com>
References: <cover.1733243959.git.jani.nikula@intel.com>
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

Rename all the main functions to have intel_lspcon_ prefix. Keep the
infoframes hooks named lspcon_ for now, and grouped together, as there'd
be a clash with intel_lspcon_infoframes_enabled().

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 10 +++++-----
 drivers/gpu/drm/i915/display/intel_lspcon.c | 10 +++++-----
 drivers/gpu/drm/i915/display/intel_lspcon.h | 14 ++++++++------
 3 files changed, 18 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 537476e456d3..9b95a1e1f664 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3499,7 +3499,7 @@ void intel_dp_set_power(struct intel_dp *intel_dp, u8 mode)
 	} else {
 		struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 
-		lspcon_resume(dig_port);
+		intel_lspcon_resume(dig_port);
 
 		/* Write the source OUI as early as possible */
 		intel_dp_init_source_oui(intel_dp);
@@ -3516,7 +3516,7 @@ void intel_dp_set_power(struct intel_dp *intel_dp, u8 mode)
 		}
 
 		if (ret == 1 && intel_lspcon_active(dig_port))
-			lspcon_wait_pcon_mode(dig_port);
+			intel_lspcon_wait_pcon_mode(dig_port);
 	}
 
 	if (ret != 1)
@@ -5352,7 +5352,7 @@ intel_dp_detect_dpcd(struct intel_dp *intel_dp)
 	if (drm_WARN_ON(&i915->drm, intel_dp_is_edp(intel_dp)))
 		return connector_status_connected;
 
-	lspcon_resume(dig_port);
+	intel_lspcon_resume(dig_port);
 
 	if (!intel_dp_get_dpcd(intel_dp))
 		return connector_status_disconnected;
@@ -5851,8 +5851,8 @@ intel_dp_connector_register(struct drm_connector *connector)
 	 * ToDo: Clean this up to handle lspcon init and resume more
 	 * efficiently and streamlined.
 	 */
-	if (lspcon_init(dig_port)) {
-		if (lspcon_detect_hdr_capability(dig_port))
+	if (intel_lspcon_init(dig_port)) {
+		if (intel_lspcon_detect_hdr_capability(dig_port))
 			drm_connector_attach_hdr_output_metadata_property(connector);
 	}
 
diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/drm/i915/display/intel_lspcon.c
index add2461f4a13..1d3108c7011c 100644
--- a/drivers/gpu/drm/i915/display/intel_lspcon.c
+++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
@@ -125,7 +125,7 @@ static u32 get_hdr_status_reg(struct intel_lspcon *lspcon)
 		return DPCD_PARADE_LSPCON_HDR_STATUS;
 }
 
-bool lspcon_detect_hdr_capability(struct intel_digital_port *dig_port)
+bool intel_lspcon_detect_hdr_capability(struct intel_digital_port *dig_port)
 {
 	struct intel_lspcon *lspcon = &dig_port->lspcon;
 	struct intel_dp *intel_dp = lspcon_to_intel_dp(lspcon);
@@ -659,14 +659,14 @@ u32 lspcon_infoframes_enabled(struct intel_encoder *encoder,
 	return val;
 }
 
-void lspcon_wait_pcon_mode(struct intel_digital_port *dig_port)
+void intel_lspcon_wait_pcon_mode(struct intel_digital_port *dig_port)
 {
 	struct intel_lspcon *lspcon = &dig_port->lspcon;
 
 	lspcon_wait_mode(lspcon, DRM_LSPCON_MODE_PCON);
 }
 
-bool lspcon_init(struct intel_digital_port *dig_port)
+bool intel_lspcon_init(struct intel_digital_port *dig_port)
 {
 	struct intel_display *display = to_intel_display(dig_port);
 	struct intel_dp *intel_dp = &dig_port->dp;
@@ -712,7 +712,7 @@ u32 intel_lspcon_infoframes_enabled(struct intel_encoder *encoder,
 	return dig_port->infoframes_enabled(encoder, pipe_config);
 }
 
-void lspcon_resume(struct intel_digital_port *dig_port)
+void intel_lspcon_resume(struct intel_digital_port *dig_port)
 {
 	struct intel_display *display = to_intel_display(dig_port);
 	struct intel_lspcon *lspcon = &dig_port->lspcon;
@@ -722,7 +722,7 @@ void lspcon_resume(struct intel_digital_port *dig_port)
 		return;
 
 	if (!lspcon->active) {
-		if (!lspcon_init(dig_port)) {
+		if (!intel_lspcon_init(dig_port)) {
 			drm_err(display->drm, "LSPCON init failed on port %c\n",
 				port_name(dig_port->base.port));
 			return;
diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.h b/drivers/gpu/drm/i915/display/intel_lspcon.h
index 20581af1ddb2..41d142a5c440 100644
--- a/drivers/gpu/drm/i915/display/intel_lspcon.h
+++ b/drivers/gpu/drm/i915/display/intel_lspcon.h
@@ -13,11 +13,15 @@ struct intel_crtc_state;
 struct intel_digital_port;
 struct intel_encoder;
 
-bool lspcon_init(struct intel_digital_port *dig_port);
+bool intel_lspcon_init(struct intel_digital_port *dig_port);
 bool intel_lspcon_active(struct intel_digital_port *dig_port);
-bool lspcon_detect_hdr_capability(struct intel_digital_port *dig_port);
-void lspcon_resume(struct intel_digital_port *dig_port);
-void lspcon_wait_pcon_mode(struct intel_digital_port *dig_port);
+bool intel_lspcon_detect_hdr_capability(struct intel_digital_port *dig_port);
+void intel_lspcon_resume(struct intel_digital_port *dig_port);
+void intel_lspcon_wait_pcon_mode(struct intel_digital_port *dig_port);
+u32 intel_lspcon_infoframes_enabled(struct intel_encoder *encoder,
+				    const struct intel_crtc_state *pipe_config);
+
+/* digital port infoframes hooks */
 void lspcon_write_infoframe(struct intel_encoder *encoder,
 			    const struct intel_crtc_state *crtc_state,
 			    unsigned int type,
@@ -32,7 +36,5 @@ void lspcon_set_infoframes(struct intel_encoder *encoder,
 			   const struct drm_connector_state *conn_state);
 u32 lspcon_infoframes_enabled(struct intel_encoder *encoder,
 			      const struct intel_crtc_state *pipe_config);
-u32 intel_lspcon_infoframes_enabled(struct intel_encoder *encoder,
-				    const struct intel_crtc_state *pipe_config);
 
 #endif /* __INTEL_LSPCON_H__ */
-- 
2.39.5

