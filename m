Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57495A273A1
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2025 14:59:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01EE910E657;
	Tue,  4 Feb 2025 13:59:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fTW9JRk8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0717D10E654;
 Tue,  4 Feb 2025 13:59:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738677557; x=1770213557;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qBuSuq9M0evr1ZjyHRYX8qqqO0AM0AsYNIVeYfAZsLo=;
 b=fTW9JRk8yJRI8qRCNkcO7kSjbRbZ2sSmgq52jzv/b7FWSjGqctgJCoBI
 b9DqagEJJx3WSHI7x2SilpAoJyNE3YTO46fPL8Y4/IIHv/H+pPO8RXs12
 fW6EEZSl68zLREKeAYKZrzHsLnTGAuTz5oFv5IVcYQp37z5BoVhZQwwhi
 X0/dEi8exIbhx+lnVG3/X0+fodoPlN3leNoROvryGAdn619rSbrK818SF
 YilTZTWv4bdB9M1qV7kVi7ufGft3lUyUwsKRUsnTM9nhjm+V/ZYGvsRi8
 hXpFaSBz15efqp7KJOv5KAqBgajPVOfAFDyzuMy3bOqac3cNceS6sD3qk A==;
X-CSE-ConnectionGUID: THO3m7K/TO2JMUrgHRIbBQ==
X-CSE-MsgGUID: D0RU3k2ITny0wuUa8+N8aQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="39359077"
X-IronPort-AV: E=Sophos;i="6.13,258,1732608000"; d="scan'208";a="39359077"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2025 05:59:17 -0800
X-CSE-ConnectionGUID: Pk81JitxQCiV68L5/eQzqg==
X-CSE-MsgGUID: 8aDaCLJeRNmqw+gv1IcNtQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,258,1732608000"; d="scan'208";a="110484305"
Received: from dprybysh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.139])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2025 05:59:15 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH v2 6/6] drm/i915/lspcon: rename interfaces to intel_lspcon_*
 to unify
Date: Tue,  4 Feb 2025 15:58:43 +0200
Message-Id: <15e8c4133aee89181e6776a44e58f2573cfe23f2.1738677489.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1738677489.git.jani.nikula@intel.com>
References: <cover.1738677489.git.jani.nikula@intel.com>
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
index 14d81538c912..6cfd8c8c78de 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3502,7 +3502,7 @@ void intel_dp_set_power(struct intel_dp *intel_dp, u8 mode)
 	} else {
 		struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 
-		lspcon_resume(dig_port);
+		intel_lspcon_resume(dig_port);
 
 		/* Write the source OUI as early as possible */
 		intel_dp_init_source_oui(intel_dp);
@@ -3519,7 +3519,7 @@ void intel_dp_set_power(struct intel_dp *intel_dp, u8 mode)
 		}
 
 		if (ret == 1 && intel_lspcon_active(dig_port))
-			lspcon_wait_pcon_mode(dig_port);
+			intel_lspcon_wait_pcon_mode(dig_port);
 	}
 
 	if (ret != 1)
@@ -5369,7 +5369,7 @@ intel_dp_detect_dpcd(struct intel_dp *intel_dp)
 	if (drm_WARN_ON(display->drm, intel_dp_is_edp(intel_dp)))
 		return connector_status_connected;
 
-	lspcon_resume(dig_port);
+	intel_lspcon_resume(dig_port);
 
 	if (!intel_dp_get_dpcd(intel_dp))
 		return connector_status_disconnected;
@@ -5864,8 +5864,8 @@ intel_dp_connector_register(struct drm_connector *connector)
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
index 02c22a981fe1..63c1afa30b05 100644
--- a/drivers/gpu/drm/i915/display/intel_lspcon.c
+++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
@@ -126,7 +126,7 @@ static u32 get_hdr_status_reg(struct intel_lspcon *lspcon)
 		return DPCD_PARADE_LSPCON_HDR_STATUS;
 }
 
-bool lspcon_detect_hdr_capability(struct intel_digital_port *dig_port)
+bool intel_lspcon_detect_hdr_capability(struct intel_digital_port *dig_port)
 {
 	struct intel_lspcon *lspcon = &dig_port->lspcon;
 	struct intel_dp *intel_dp = lspcon_to_intel_dp(lspcon);
@@ -661,14 +661,14 @@ u32 lspcon_infoframes_enabled(struct intel_encoder *encoder,
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
@@ -714,7 +714,7 @@ u32 intel_lspcon_infoframes_enabled(struct intel_encoder *encoder,
 	return dig_port->infoframes_enabled(encoder, pipe_config);
 }
 
-void lspcon_resume(struct intel_digital_port *dig_port)
+void intel_lspcon_resume(struct intel_digital_port *dig_port)
 {
 	struct intel_display *display = to_intel_display(dig_port);
 	struct intel_lspcon *lspcon = &dig_port->lspcon;
@@ -724,7 +724,7 @@ void lspcon_resume(struct intel_digital_port *dig_port)
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

