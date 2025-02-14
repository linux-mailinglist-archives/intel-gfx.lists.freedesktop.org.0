Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 65A3AA3602C
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2025 15:19:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99A3110ECAF;
	Fri, 14 Feb 2025 14:19:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hFJL36gD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76A3110ECAA;
 Fri, 14 Feb 2025 14:19:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739542762; x=1771078762;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jI5Pkw0zFRi7N42mjRK7ZXcGKJbsesNXaSyGb9bGkGk=;
 b=hFJL36gDSWunZ1A9gnt4oqKQJ9MfJDfZqD8EB9qqmxuvxHkzoGbaGe64
 6Hmpz2aktt9iVI/58XPZOAUYfovFT83IzXW+VvbvZdFivQn39QT+BAI+P
 7yvViiLNp71EnV5iWEZhlHJpBr0UrRAckERmMiXE5AgaJgxFkXfS7REkz
 9PoDfzyp8k4T6qSYeNJn7wIBTyCIOXMfjYNXeqTXvH73Wkt0UD2EV4h4S
 7lIMPc/fqhcX0rFSLYlh3IfGXt5gCwxY8ku7lSGC60hJA7a7Fdm6flW6Y
 F6hwIPW+cdG0DXQfyGSXUwt3LixCyuBe2xTirMmtgFwsXqXMtAJg6FQUB w==;
X-CSE-ConnectionGUID: MFX7KqjXTrm/1mcOinrHDw==
X-CSE-MsgGUID: cAeXkEpCQGyFZWMLJ9Gs5w==
X-IronPort-AV: E=McAfee;i="6700,10204,11345"; a="27892516"
X-IronPort-AV: E=Sophos;i="6.13,286,1732608000"; d="scan'208";a="27892516"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 06:19:21 -0800
X-CSE-ConnectionGUID: PPLJKzYpTRi+FeHaZwMXhg==
X-CSE-MsgGUID: IAmuMyz/QqqUu25vu7qviA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="136694383"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 06:19:17 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 10/11] drm/i915/ddi: Add a helper to enable a port
Date: Fri, 14 Feb 2025 16:20:00 +0200
Message-ID: <20250214142001.552916-11-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20250214142001.552916-1-imre.deak@intel.com>
References: <20250214142001.552916-1-imre.deak@intel.com>
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

Add a helper to enable a port instead of open-coding it.

While at it rename intel_disable_ddi_buf() to intel_ddi_buf_disable()
for consistency.

v2: (Jani)
- s/intel_enable_ddi_buf/intel_ddi_buf_enable
- s/intel_disable_ddi_buf/intel_ddi_buf_disable

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 40 +++++++++++-------------
 1 file changed, 19 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 56094a33b0c4a..5082f38b0a02e 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3076,7 +3076,18 @@ mtl_ddi_disable_d2d(struct intel_encoder *encoder)
 			port_name(port));
 }
 
-static void intel_disable_ddi_buf(struct intel_encoder *encoder,
+static void intel_ddi_buf_enable(struct intel_encoder *encoder, u32 buf_ctl)
+{
+	struct intel_display *display = to_intel_display(encoder);
+	enum port port = encoder->port;
+
+	intel_de_write(display, DDI_BUF_CTL(port), buf_ctl | DDI_BUF_CTL_ENABLE);
+	intel_de_posting_read(display, DDI_BUF_CTL(port));
+
+	intel_wait_ddi_buf_active(encoder);
+}
+
+static void intel_ddi_buf_disable(struct intel_encoder *encoder,
 				  const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(encoder);
@@ -3140,7 +3151,7 @@ static void intel_ddi_post_disable_dp(struct intel_atomic_state *state,
 			intel_ddi_disable_transcoder_clock(old_crtc_state);
 	}
 
-	intel_disable_ddi_buf(encoder, old_crtc_state);
+	intel_ddi_buf_disable(encoder, old_crtc_state);
 
 	intel_dp_sink_set_fec_ready(intel_dp, old_crtc_state, false);
 
@@ -3189,7 +3200,7 @@ static void intel_ddi_post_disable_hdmi(struct intel_atomic_state *state,
 	if (DISPLAY_VER(dev_priv) < 12)
 		intel_ddi_disable_transcoder_clock(old_crtc_state);
 
-	intel_disable_ddi_buf(encoder, old_crtc_state);
+	intel_ddi_buf_disable(encoder, old_crtc_state);
 
 	if (DISPLAY_VER(dev_priv) >= 12)
 		intel_ddi_disable_transcoder_clock(old_crtc_state);
@@ -3396,7 +3407,7 @@ static void intel_ddi_enable_hdmi(struct intel_atomic_state *state,
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	struct drm_connector *connector = conn_state->connector;
 	enum port port = encoder->port;
-	u32 buf_ctl;
+	u32 buf_ctl = 0;
 
 	if (!intel_hdmi_handle_sink_scrambling(encoder, connector,
 					       crtc_state->hdmi_high_tmds_clock_ratio,
@@ -3461,8 +3472,6 @@ static void intel_ddi_enable_hdmi(struct intel_atomic_state *state,
 	 * is filled with lane count, already set in the crtc_state.
 	 * The same is required to be filled in PORT_BUF_CTL for C10/20 Phy.
 	 */
-	buf_ctl = DDI_BUF_CTL_ENABLE;
-
 	if (dig_port->lane_reversal)
 		buf_ctl |= DDI_BUF_PORT_REVERSAL;
 	if (dig_port->ddi_a_4_lanes)
@@ -3488,9 +3497,7 @@ static void intel_ddi_enable_hdmi(struct intel_atomic_state *state,
 		buf_ctl |= DDI_BUF_CTL_TC_PHY_OWNERSHIP;
 	}
 
-	intel_de_write(dev_priv, DDI_BUF_CTL(port), buf_ctl);
-
-	intel_wait_ddi_buf_active(encoder);
+	intel_ddi_buf_enable(encoder, buf_ctl);
 }
 
 static void intel_ddi_enable(struct intel_atomic_state *state,
@@ -3714,7 +3721,6 @@ static void mtl_ddi_prepare_link_retrain(struct intel_dp *intel_dp,
 	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	struct intel_encoder *encoder = &dig_port->base;
-	enum port port = encoder->port;
 	u32 dp_tp_ctl;
 
 	/*
@@ -3748,15 +3754,11 @@ static void mtl_ddi_prepare_link_retrain(struct intel_dp *intel_dp,
 	mtl_port_buf_ctl_program(encoder, crtc_state);
 
 	/* 6.i Configure and enable DDI_CTL_DE to start sending valid data to port slice */
-	intel_dp->DP |= DDI_BUF_CTL_ENABLE;
 	if (DISPLAY_VER(display) >= 20)
 		intel_dp->DP |= XE2LPD_DDI_BUF_D2D_LINK_ENABLE;
 
-	intel_de_write(display, DDI_BUF_CTL(port), intel_dp->DP);
-	intel_de_posting_read(display, DDI_BUF_CTL(port));
-
-	/* 6.j Poll for PORT_BUF_CTL Idle Status == 0, timeout after 100 us */
-	intel_wait_ddi_buf_active(encoder);
+	intel_ddi_buf_enable(encoder, intel_dp->DP);
+	intel_dp->DP |= DDI_BUF_CTL_ENABLE;
 }
 
 static void intel_ddi_prepare_link_retrain(struct intel_dp *intel_dp,
@@ -3766,7 +3768,6 @@ static void intel_ddi_prepare_link_retrain(struct intel_dp *intel_dp,
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	struct intel_encoder *encoder = &dig_port->base;
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	enum port port = encoder->port;
 	u32 dp_tp_ctl;
 
 	dp_tp_ctl = intel_de_read(dev_priv, dp_tp_ctl_reg(encoder, crtc_state));
@@ -3789,11 +3790,8 @@ static void intel_ddi_prepare_link_retrain(struct intel_dp *intel_dp,
 	    (intel_tc_port_in_dp_alt_mode(dig_port) || intel_tc_port_in_legacy_mode(dig_port)))
 		adlp_tbt_to_dp_alt_switch_wa(encoder);
 
+	intel_ddi_buf_enable(encoder, intel_dp->DP);
 	intel_dp->DP |= DDI_BUF_CTL_ENABLE;
-	intel_de_write(dev_priv, DDI_BUF_CTL(port), intel_dp->DP);
-	intel_de_posting_read(dev_priv, DDI_BUF_CTL(port));
-
-	intel_wait_ddi_buf_active(encoder);
 }
 
 static void intel_ddi_set_link_train(struct intel_dp *intel_dp,
-- 
2.44.2

