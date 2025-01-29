Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF038A224EF
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jan 2025 21:02:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2806E10E8B0;
	Wed, 29 Jan 2025 20:01:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XtQvziQh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9401510E89A;
 Wed, 29 Jan 2025 20:01:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738180913; x=1769716913;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=3x3/9ZidmbfgPxhdDKLCgL4PzXhXMvSG42IwgElzJLA=;
 b=XtQvziQh3AK8nJs/wr2Mph/rGjDQ+APNBZspsCZA3DzBmLYqQKgQexXU
 EGzKImXQtMs+xc3ctfspqRrO0283i53iB1rn061s6m+RKzpkr01eKhPTY
 2YZH3ZAigk+a+B9GAGLlk6aDq2C9mgTN0SWbcCprYiG5N/GhF9lSm+ljU
 jJkZ/nzpqn1YxYBKebIDSH2vL/VHK93fgarec1oDplmkpi2ef+l5P+bGd
 IqW73kvOYEBTUGfu61kZBbUBc3yGgi32LNkLxSGgDg1K4LIXzeZDSbjc6
 lirQze2WO9maZg2KGqk/oiLWK3e+ttzid125zt7k/D2kE6WcbLRZY7LMo g==;
X-CSE-ConnectionGUID: Fz+KyuuzRcOPAHQD9WcYmA==
X-CSE-MsgGUID: lMm/R9KZT9uEUfSoREDWIQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11330"; a="38977710"
X-IronPort-AV: E=Sophos;i="6.13,244,1732608000"; d="scan'208";a="38977710"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2025 12:01:38 -0800
X-CSE-ConnectionGUID: EsL5ojutT5ilL0buDEtt/w==
X-CSE-MsgGUID: bMUSaT6mSHCba3LUR0hOZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="113750906"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2025 12:01:36 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH 10/17] drm/i915/ddi: Add a helper to enable a port
Date: Wed, 29 Jan 2025 22:02:14 +0200
Message-ID: <20250129200221.2508101-11-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20250129200221.2508101-1-imre.deak@intel.com>
References: <20250129200221.2508101-1-imre.deak@intel.com>
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

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 34 +++++++++++-------------
 1 file changed, 16 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 73702ccbb3773..ddb182550ad0f 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3057,6 +3057,17 @@ mtl_ddi_disable_d2d_link(struct intel_encoder *encoder)
 			port_name(port));
 }
 
+static void intel_enable_ddi_buf(struct intel_encoder *encoder, u32 buf_ctl)
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
 static void intel_disable_ddi_buf(struct intel_encoder *encoder,
 				  const struct intel_crtc_state *crtc_state)
 {
@@ -3375,7 +3386,7 @@ static void intel_ddi_enable_hdmi(struct intel_atomic_state *state,
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	struct drm_connector *connector = conn_state->connector;
 	enum port port = encoder->port;
-	u32 buf_ctl;
+	u32 buf_ctl = 0;
 
 	if (!intel_hdmi_handle_sink_scrambling(encoder, connector,
 					       crtc_state->hdmi_high_tmds_clock_ratio,
@@ -3440,8 +3451,6 @@ static void intel_ddi_enable_hdmi(struct intel_atomic_state *state,
 	 * is filled with lane count, already set in the crtc_state.
 	 * The same is required to be filled in PORT_BUF_CTL for C10/20 Phy.
 	 */
-	buf_ctl = DDI_BUF_CTL_ENABLE;
-
 	if (dig_port->lane_reversal)
 		buf_ctl |= DDI_BUF_PORT_REVERSAL;
 	if (dig_port->ddi_a_4_lanes)
@@ -3467,9 +3476,7 @@ static void intel_ddi_enable_hdmi(struct intel_atomic_state *state,
 		buf_ctl |= DDI_BUF_CTL_TC_PHY_OWNERSHIP;
 	}
 
-	intel_de_write(dev_priv, DDI_BUF_CTL(port), buf_ctl);
-
-	intel_wait_ddi_buf_active(encoder);
+	intel_enable_ddi_buf(encoder, buf_ctl);
 }
 
 static void intel_ddi_enable(struct intel_atomic_state *state,
@@ -3692,7 +3699,6 @@ static void mtl_ddi_prepare_link_retrain(struct intel_dp *intel_dp,
 	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	struct intel_encoder *encoder = &dig_port->base;
-	enum port port = encoder->port;
 	u32 dp_tp_ctl;
 
 	/*
@@ -3726,15 +3732,11 @@ static void mtl_ddi_prepare_link_retrain(struct intel_dp *intel_dp,
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
+	intel_enable_ddi_buf(encoder, intel_dp->DP);
+	intel_dp->DP |= DDI_BUF_CTL_ENABLE;
 }
 
 static void intel_ddi_prepare_link_retrain(struct intel_dp *intel_dp,
@@ -3743,7 +3745,6 @@ static void intel_ddi_prepare_link_retrain(struct intel_dp *intel_dp,
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	struct intel_encoder *encoder = &dig_port->base;
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	enum port port = encoder->port;
 	u32 dp_tp_ctl;
 
 	dp_tp_ctl = intel_de_read(dev_priv, dp_tp_ctl_reg(encoder, crtc_state));
@@ -3766,11 +3767,8 @@ static void intel_ddi_prepare_link_retrain(struct intel_dp *intel_dp,
 	    (intel_tc_port_in_dp_alt_mode(dig_port) || intel_tc_port_in_legacy_mode(dig_port)))
 		adlp_tbt_to_dp_alt_switch_wa(encoder);
 
+	intel_enable_ddi_buf(encoder, intel_dp->DP);
 	intel_dp->DP |= DDI_BUF_CTL_ENABLE;
-	intel_de_write(dev_priv, DDI_BUF_CTL(port), intel_dp->DP);
-	intel_de_posting_read(dev_priv, DDI_BUF_CTL(port));
-
-	intel_wait_ddi_buf_active(encoder);
 }
 
 static void intel_ddi_set_link_train(struct intel_dp *intel_dp,
-- 
2.44.2

