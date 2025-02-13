Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D486A34447
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2025 16:02:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B84D810EB07;
	Thu, 13 Feb 2025 15:02:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FIKojNEN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E6AF10EB01
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Feb 2025 15:02:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739458966; x=1770994966;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ypaFTR6u8Iun25iso5mXuiY6mhug1PfUhsTGqDxXdzw=;
 b=FIKojNENP8PWQBtEdetzFsX7bdQdUcsaSfXYDFYsoXS2SwuD0RXdNjTi
 79XsOHnuBj/UGL1mxI6aeynw9BRvFWUJ3DH5mQDnrPqr5n6oo1NyI4IA5
 7rZ4s0jLKKMQ9882gw9CIla41oa9zTsCIHEm2uF7l0AY5YlrVti3SeNj3
 SELZr2AKRiTq4iR2GXDZqNDdNUHqXNa0j38+YzlD6DbnHSc47Xm4e5Nmf
 hCHyX7uB7mWd2VhowNEJiLjxv1UbxlxOrpZE/JfjoSbVJAxI3N4xBAxkS
 9Xzg6KiJGla1gQwTBsuJTZi5d0hsup4qM6nvph8ZrsvfqaGVTKWiLOyLH w==;
X-CSE-ConnectionGUID: r8h2j9ZbQASaf5wWcwn6fw==
X-CSE-MsgGUID: T3u/8PW1RVuzMgzF8sMD2g==
X-IronPort-AV: E=McAfee;i="6700,10204,11344"; a="57567592"
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="57567592"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 07:02:45 -0800
X-CSE-ConnectionGUID: InYyQulBSCWy1DBJpJF57g==
X-CSE-MsgGUID: /a3NfRERRJq1ib6IgKrnng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="113349614"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 13 Feb 2025 07:02:43 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 13 Feb 2025 17:02:42 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 08/12] drm/i915: Simplify vlv_wait_port_ready() arguments
Date: Thu, 13 Feb 2025 17:02:16 +0200
Message-ID: <20250213150220.13580-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250213150220.13580-1-ville.syrjala@linux.intel.com>
References: <20250213150220.13580-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Currently vlv_wait_port_ready() takes the display+dig_port,
but all it really needs is the encoder. The display can be
dug out from therein.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c         |  2 +-
 drivers/gpu/drm/i915/display/g4x_hdmi.c       |  6 ++----
 drivers/gpu/drm/i915/display/intel_dpio_phy.c | 10 +++++-----
 drivers/gpu/drm/i915/display/intel_dpio_phy.h |  6 ++----
 4 files changed, 10 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index 0cb98cb043c6..372c3683c193 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -701,7 +701,7 @@ static void intel_enable_dp(struct intel_atomic_state *state,
 		if (display->platform.cherryview)
 			lane_mask = intel_dp_unused_lane_mask(pipe_config->lane_count);
 
-		vlv_wait_port_ready(display, dp_to_dig_port(intel_dp), lane_mask);
+		vlv_wait_port_ready(encoder, lane_mask);
 	}
 
 	intel_dp_set_power(intel_dp, DP_SET_POWER_D0);
diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i915/display/g4x_hdmi.c
index 5c5eb3d621c8..d9d1304dcc36 100644
--- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
+++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
@@ -479,7 +479,6 @@ static void vlv_hdmi_pre_enable(struct intel_atomic_state *state,
 				const struct intel_crtc_state *pipe_config,
 				const struct drm_connector_state *conn_state)
 {
-	struct intel_display *display = to_intel_display(encoder);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 
 	vlv_phy_pre_encoder_enable(encoder, pipe_config);
@@ -495,7 +494,7 @@ static void vlv_hdmi_pre_enable(struct intel_atomic_state *state,
 
 	g4x_hdmi_enable_port(encoder, pipe_config);
 
-	vlv_wait_port_ready(display, dig_port, 0x0);
+	vlv_wait_port_ready(encoder, 0x0);
 }
 
 static void vlv_hdmi_pre_pll_enable(struct intel_atomic_state *state,
@@ -556,7 +555,6 @@ static void chv_hdmi_pre_enable(struct intel_atomic_state *state,
 				const struct intel_crtc_state *pipe_config,
 				const struct drm_connector_state *conn_state)
 {
-	struct intel_display *display = to_intel_display(encoder);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 
 	chv_phy_pre_encoder_enable(encoder, pipe_config);
@@ -571,7 +569,7 @@ static void chv_hdmi_pre_enable(struct intel_atomic_state *state,
 
 	g4x_hdmi_enable_port(encoder, pipe_config);
 
-	vlv_wait_port_ready(display, dig_port, 0x0);
+	vlv_wait_port_ready(encoder, 0x0);
 
 	/* Second common lane will stay alive on its own now */
 	chv_phy_release_cl2_override(encoder);
diff --git a/drivers/gpu/drm/i915/display/intel_dpio_phy.c b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
index 968b795206b3..429f89543789 100644
--- a/drivers/gpu/drm/i915/display/intel_dpio_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
@@ -1157,16 +1157,16 @@ void vlv_phy_reset_lanes(struct intel_encoder *encoder,
 	vlv_dpio_put(dev_priv);
 }
 
-void vlv_wait_port_ready(struct intel_display *display,
-			 struct intel_digital_port *dig_port,
+void vlv_wait_port_ready(struct intel_encoder *encoder,
 			 unsigned int expected_mask)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	u32 port_mask;
 	i915_reg_t dpll_reg;
 
-	switch (dig_port->base.port) {
+	switch (encoder->port) {
 	default:
-		MISSING_CASE(dig_port->base.port);
+		MISSING_CASE(encoder->port);
 		fallthrough;
 	case PORT_B:
 		port_mask = DPLL_PORTB_READY_MASK;
@@ -1186,7 +1186,7 @@ void vlv_wait_port_ready(struct intel_display *display,
 	if (intel_de_wait(display, dpll_reg, port_mask, expected_mask, 1000))
 		drm_WARN(display->drm, 1,
 			 "timed out waiting for [ENCODER:%d:%s] port ready: got 0x%x, expected 0x%x\n",
-			 dig_port->base.base.base.id, dig_port->base.base.name,
+			 encoder->base.base.id, encoder->base.name,
 			 intel_de_read(display, dpll_reg) & port_mask,
 			 expected_mask);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dpio_phy.h b/drivers/gpu/drm/i915/display/intel_dpio_phy.h
index 15596407fe87..35baede3d6ad 100644
--- a/drivers/gpu/drm/i915/display/intel_dpio_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_dpio_phy.h
@@ -72,8 +72,7 @@ void vlv_phy_pre_encoder_enable(struct intel_encoder *encoder,
 				const struct intel_crtc_state *crtc_state);
 void vlv_phy_reset_lanes(struct intel_encoder *encoder,
 			 const struct intel_crtc_state *old_crtc_state);
-void vlv_wait_port_ready(struct intel_display *display,
-			 struct intel_digital_port *dig_port,
+void vlv_wait_port_ready(struct intel_encoder *encoder,
 			 unsigned int expected_mask);
 #else
 static inline void bxt_port_to_phy_channel(struct intel_display *display, enum port port,
@@ -173,8 +172,7 @@ static inline void vlv_phy_reset_lanes(struct intel_encoder *encoder,
 				       const struct intel_crtc_state *old_crtc_state)
 {
 }
-static inline void vlv_wait_port_ready(struct intel_display *display,
-				       struct intel_digital_port *dig_port,
+static inline void vlv_wait_port_ready(struct intel_encoder *encoder,
 				       unsigned int expected_mask)
 {
 }
-- 
2.45.3

