Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8873C8AC72A
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Apr 2024 10:35:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA6D51128D3;
	Mon, 22 Apr 2024 08:35:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VCQiBrjf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8729E1128C3
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Apr 2024 08:35:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713774924; x=1745310924;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=APgPD4XTSb8yfYEqp5uY8CfYSm6PITaIvMWrZlIG1So=;
 b=VCQiBrjfdaSDw35KQ3Q1T3UAhptFTKWx8vWmyFc+8xtiQQb++G/3Zlz8
 8K+F1iZsWku9Dd9p42sx8WyU/1/HInf9tEdXtq6cJQRjY7VIS62LHOVF/
 4SC2816QpxpMuVzfJsFeLHXdwijNOpfCG3yfHMRjF4jsLkxK5t7AyjqfE
 m9pDuS7tgyUCKRx1+53TjJkXfqIhQSWyO1xfJkfOggCwly1MTAm4pC0H+
 0O2Z9yfzIiWcjsvLqPvw7mko5GWQIgXlafsOa2kqAw6pcEWyji9+Yet7b
 bCGi2SDhM41GWE4aRIVwKoSLoXSVKWIVMK/IfUPXqpBrg844Wuuf+Tl50 Q==;
X-CSE-ConnectionGUID: 1m1/CLB4SQiiqxd0gLHyDw==
X-CSE-MsgGUID: rRIj3MpfQgKPvuZhIM358w==
X-IronPort-AV: E=McAfee;i="6600,9927,11051"; a="9453479"
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; 
   d="scan'208";a="9453479"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2024 01:35:24 -0700
X-CSE-ConnectionGUID: YsNeaJPKR6SBNEnYmd7N6w==
X-CSE-MsgGUID: mTGZsTNqQAuFbJX33G0TDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; d="scan'208";a="24021822"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 22 Apr 2024 01:35:22 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 22 Apr 2024 11:35:21 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 09/14] drm/i915/dpio: Derive the phy from the port rather than
 pipe in encoder hooks
Date: Mon, 22 Apr 2024 11:34:52 +0300
Message-ID: <20240422083457.23815-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240422083457.23815-1-ville.syrjala@linux.intel.com>
References: <20240422083457.23815-1-ville.syrjala@linux.intel.com>
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

In the encoder hooks we are dealing primarily with the encoder,
so derive the DPIO PHY from the encoder rather than the pipe.
Technically this doesn't matter as we can't cross connect
pipes<->port across PHY boundaries, but it does conveny the
intention more accurately.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpio_phy.c | 27 ++++++++-----------
 drivers/gpu/drm/i915/vlv_sideband.c           |  1 -
 2 files changed, 11 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpio_phy.c b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
index e4a04c9b5b19..4fafac534967 100644
--- a/drivers/gpu/drm/i915/display/intel_dpio_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
@@ -719,9 +719,8 @@ void chv_set_phy_signal_level(struct intel_encoder *encoder,
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	enum dpio_channel ch = vlv_dig_port_to_channel(dig_port);
-	enum dpio_phy phy = vlv_pipe_to_phy(crtc->pipe);
+	enum dpio_phy phy = vlv_dig_port_to_phy(dig_port);
 	u32 val;
 	int i;
 
@@ -814,9 +813,9 @@ void chv_data_lane_soft_reset(struct intel_encoder *encoder,
 			      bool reset)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	enum dpio_channel ch = vlv_dig_port_to_channel(enc_to_dig_port(encoder));
-	enum dpio_phy phy = vlv_pipe_to_phy(crtc->pipe);
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
+	enum dpio_channel ch = vlv_dig_port_to_channel(dig_port);
+	enum dpio_phy phy = vlv_dig_port_to_phy(dig_port);
 	u32 val;
 
 	val = vlv_dpio_read(dev_priv, phy, VLV_PCS01_DW0(ch));
@@ -861,7 +860,7 @@ void chv_phy_pre_pll_enable(struct intel_encoder *encoder,
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	enum dpio_channel ch = vlv_dig_port_to_channel(dig_port);
-	enum dpio_phy phy = vlv_pipe_to_phy(crtc->pipe);
+	enum dpio_phy phy = vlv_dig_port_to_phy(dig_port);
 	enum pipe pipe = crtc->pipe;
 	unsigned int lane_mask =
 		intel_dp_unused_lane_mask(crtc_state->lane_count);
@@ -941,9 +940,8 @@ void chv_phy_pre_encoder_enable(struct intel_encoder *encoder,
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	enum dpio_channel ch = vlv_dig_port_to_channel(dig_port);
-	enum dpio_phy phy = vlv_pipe_to_phy(crtc->pipe);
+	enum dpio_phy phy = vlv_dig_port_to_phy(dig_port);
 	int data, i, stagger;
 	u32 val;
 
@@ -1030,8 +1028,8 @@ void chv_phy_post_pll_disable(struct intel_encoder *encoder,
 			      const struct intel_crtc_state *old_crtc_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	enum dpio_phy phy = vlv_dig_port_to_phy(enc_to_dig_port(encoder));
 	enum pipe pipe = to_intel_crtc(old_crtc_state->uapi.crtc)->pipe;
-	enum dpio_phy phy = vlv_pipe_to_phy(pipe);
 	u32 val;
 
 	vlv_dpio_get(dev_priv);
@@ -1068,9 +1066,8 @@ void vlv_set_phy_signal_level(struct intel_encoder *encoder,
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	enum dpio_channel ch = vlv_dig_port_to_channel(dig_port);
-	enum dpio_phy phy = vlv_pipe_to_phy(crtc->pipe);
+	enum dpio_phy phy = vlv_dig_port_to_phy(dig_port);
 
 	vlv_dpio_get(dev_priv);
 
@@ -1095,9 +1092,8 @@ void vlv_phy_pre_pll_enable(struct intel_encoder *encoder,
 {
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	enum dpio_channel ch = vlv_dig_port_to_channel(dig_port);
-	enum dpio_phy phy = vlv_pipe_to_phy(crtc->pipe);
+	enum dpio_phy phy = vlv_dig_port_to_phy(dig_port);
 
 	/* Program Tx lane resets to default */
 	vlv_dpio_get(dev_priv);
@@ -1127,8 +1123,8 @@ void vlv_phy_pre_encoder_enable(struct intel_encoder *encoder,
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	enum dpio_channel ch = vlv_dig_port_to_channel(dig_port);
+	enum dpio_phy phy = vlv_dig_port_to_phy(dig_port);
 	enum pipe pipe = crtc->pipe;
-	enum dpio_phy phy = vlv_pipe_to_phy(pipe);
 	u32 val;
 
 	vlv_dpio_get(dev_priv);
@@ -1154,9 +1150,8 @@ void vlv_phy_reset_lanes(struct intel_encoder *encoder,
 {
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
 	enum dpio_channel ch = vlv_dig_port_to_channel(dig_port);
-	enum dpio_phy phy = vlv_pipe_to_phy(crtc->pipe);
+	enum dpio_phy phy = vlv_dig_port_to_phy(dig_port);
 
 	vlv_dpio_get(dev_priv);
 	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW0(ch), 0x00000000);
diff --git a/drivers/gpu/drm/i915/vlv_sideband.c b/drivers/gpu/drm/i915/vlv_sideband.c
index ffa195560d0d..68291412f4cb 100644
--- a/drivers/gpu/drm/i915/vlv_sideband.c
+++ b/drivers/gpu/drm/i915/vlv_sideband.c
@@ -9,7 +9,6 @@
 #include "vlv_sideband.h"
 
 #include "display/intel_dpio_phy.h"
-#include "display/intel_display_types.h"
 
 /*
  * IOSF sideband, see VLV2_SidebandMsg_HAS.docx and
-- 
2.43.2

