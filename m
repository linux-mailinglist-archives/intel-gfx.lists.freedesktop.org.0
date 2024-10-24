Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CF409AE64C
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2024 15:28:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 010A410E947;
	Thu, 24 Oct 2024 13:28:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KRoOJ0j2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F5BC10E947;
 Thu, 24 Oct 2024 13:28:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729776506; x=1761312506;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6IFGVB24c4d1MW9R05Let9Gp0ASFdURJ3DSYofx1Nko=;
 b=KRoOJ0j2M/sUFrzHOoLA7bctR1j5z749XFYEdHCn+mPDf6u4SiPsiEyb
 p4NGutwxAdfLAa5AHMBnLx6U88uygqNQzqh/4fcfjiZh3EFq83x+7BUbT
 FX3RjCEHuA4g6mXJQHee+RVUv/gtJ+6QgJPazy2R/xEZ8solSM27UYb99
 1FM3CG7cpZzqyjms5RIbt5aFBEu6AoRMpdSW+3h/xXaIpfaZZ/JlP9UBz
 jYA34zJpFM+btmGmkND9MrG12SiGJplpuUAgwcJtIwNMu6kk2UBeFFUj9
 UpDURsJ/IuE1V4ccrv54lZcDZjyOH3w5kp5FFCawSaTwxC3zKMrAYhefU Q==;
X-CSE-ConnectionGUID: ax7DpdS3ScKcEdhrBctnpg==
X-CSE-MsgGUID: hQOUGTRsRtGVNjaSrkeV3w==
X-IronPort-AV: E=McAfee;i="6700,10204,11235"; a="28841275"
X-IronPort-AV: E=Sophos;i="6.11,229,1725346800"; d="scan'208";a="28841275"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 06:28:26 -0700
X-CSE-ConnectionGUID: Wn+yVfoQQvmwymbEQQPerg==
X-CSE-MsgGUID: 7D8aJ9RPQpKSGNF15rw3Pw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,229,1725346800"; d="scan'208";a="118052975"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 06:28:24 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com,
	jani.nikula@intel.com
Subject: [PATCH v2 08/12] drm/i915/display: convert vlv_wait_port_ready() to
 struct intel_display
Date: Thu, 24 Oct 2024 16:27:38 +0300
Message-Id: <aff436f42efa667175dde75156059bf2abdb35e7.1729776384.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1729776384.git.jani.nikula@intel.com>
References: <cover.1729776384.git.jani.nikula@intel.com>
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

struct intel_display will replace struct drm_i915_private as the main
device pointer for display code. Switch vlv_wait_port_ready() over to
it. The main motivation to do just one function is to stop passing i915
to intel_de_wait(), so its generic wrapper can be removed.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c        |  3 +--
 drivers/gpu/drm/i915/display/g4x_hdmi.c      |  9 ++++-----
 drivers/gpu/drm/i915/display/intel_display.c | 12 ++++++------
 drivers/gpu/drm/i915/display/intel_display.h |  2 +-
 4 files changed, 12 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index 440fb3002f28..a22781d21110 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -706,8 +706,7 @@ static void intel_enable_dp(struct intel_atomic_state *state,
 		if (IS_CHERRYVIEW(dev_priv))
 			lane_mask = intel_dp_unused_lane_mask(pipe_config->lane_count);
 
-		vlv_wait_port_ready(dev_priv, dp_to_dig_port(intel_dp),
-				    lane_mask);
+		vlv_wait_port_ready(display, dp_to_dig_port(intel_dp), lane_mask);
 	}
 
 	intel_dp_set_power(intel_dp, DP_SET_POWER_D0);
diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i915/display/g4x_hdmi.c
index 46f23bdb4c17..d1a7d0d57c6b 100644
--- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
+++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
@@ -480,8 +480,8 @@ static void vlv_hdmi_pre_enable(struct intel_atomic_state *state,
 				const struct intel_crtc_state *pipe_config,
 				const struct drm_connector_state *conn_state)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 
 	vlv_phy_pre_encoder_enable(encoder, pipe_config);
 
@@ -496,7 +496,7 @@ static void vlv_hdmi_pre_enable(struct intel_atomic_state *state,
 
 	g4x_hdmi_enable_port(encoder, pipe_config);
 
-	vlv_wait_port_ready(dev_priv, dig_port, 0x0);
+	vlv_wait_port_ready(display, dig_port, 0x0);
 }
 
 static void vlv_hdmi_pre_pll_enable(struct intel_atomic_state *state,
@@ -557,9 +557,8 @@ static void chv_hdmi_pre_enable(struct intel_atomic_state *state,
 				const struct intel_crtc_state *pipe_config,
 				const struct drm_connector_state *conn_state)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
-	struct drm_device *dev = encoder->base.dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
 
 	chv_phy_pre_encoder_enable(encoder, pipe_config);
 
@@ -573,7 +572,7 @@ static void chv_hdmi_pre_enable(struct intel_atomic_state *state,
 
 	g4x_hdmi_enable_port(encoder, pipe_config);
 
-	vlv_wait_port_ready(dev_priv, dig_port, 0x0);
+	vlv_wait_port_ready(display, dig_port, 0x0);
 
 	/* Second common lane will stay alive on its own now */
 	chv_phy_release_cl2_override(encoder);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 2479ca0a02d9..53e81b0030d4 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -474,7 +474,7 @@ static void assert_planes_disabled(struct intel_crtc *crtc)
 		assert_plane_disabled(plane);
 }
 
-void vlv_wait_port_ready(struct drm_i915_private *dev_priv,
+void vlv_wait_port_ready(struct intel_display *display,
 			 struct intel_digital_port *dig_port,
 			 unsigned int expected_mask)
 {
@@ -487,11 +487,11 @@ void vlv_wait_port_ready(struct drm_i915_private *dev_priv,
 		fallthrough;
 	case PORT_B:
 		port_mask = DPLL_PORTB_READY_MASK;
-		dpll_reg = DPLL(dev_priv, 0);
+		dpll_reg = DPLL(display, 0);
 		break;
 	case PORT_C:
 		port_mask = DPLL_PORTC_READY_MASK;
-		dpll_reg = DPLL(dev_priv, 0);
+		dpll_reg = DPLL(display, 0);
 		expected_mask <<= 4;
 		break;
 	case PORT_D:
@@ -500,11 +500,11 @@ void vlv_wait_port_ready(struct drm_i915_private *dev_priv,
 		break;
 	}
 
-	if (intel_de_wait(dev_priv, dpll_reg, port_mask, expected_mask, 1000))
-		drm_WARN(&dev_priv->drm, 1,
+	if (intel_de_wait(display, dpll_reg, port_mask, expected_mask, 1000))
+		drm_WARN(display->drm, 1,
 			 "timed out waiting for [ENCODER:%d:%s] port ready: got 0x%x, expected 0x%x\n",
 			 dig_port->base.base.base.id, dig_port->base.base.name,
-			 intel_de_read(dev_priv, dpll_reg) & port_mask,
+			 intel_de_read(display, dpll_reg) & port_mask,
 			 expected_mask);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 61e1df878de9..51fd8d109f7c 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -492,7 +492,7 @@ bool intel_encoder_is_tc(struct intel_encoder *encoder);
 enum tc_port intel_encoder_to_tc(struct intel_encoder *encoder);
 
 int ilk_get_lanes_required(int target_clock, int link_bw, int bpp);
-void vlv_wait_port_ready(struct drm_i915_private *dev_priv,
+void vlv_wait_port_ready(struct intel_display *display,
 			 struct intel_digital_port *dig_port,
 			 unsigned int expected_mask);
 
-- 
2.39.5

