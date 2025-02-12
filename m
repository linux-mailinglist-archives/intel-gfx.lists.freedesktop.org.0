Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5661A32BE5
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 17:37:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8829510E920;
	Wed, 12 Feb 2025 16:37:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gjMV6kGv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B24510E920;
 Wed, 12 Feb 2025 16:37:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739378268; x=1770914268;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yLfh0s1k5QixN2DgPIcVG4FyS2/JXOpBIZXLgFiLDD4=;
 b=gjMV6kGvs9MlMRItoN7+wIOXH0IgOiAgpewnEcC5JWRv2lCHspSvV8Rh
 FApZXSdjx7/v/bQz1e+/JQTjwi0FN9pq/46CpoyE2A7X3MtbyeTwVHmb8
 iO6/YCKRBUCyV+Dy3hEroEYkrzyXof/Cx67HJkx8WoppRuoqVf9LJ1/2d
 GpmCUZBGo7KJ5kZMl5e0TpFwcSH9MwQPTFSkGcb9xUHWwmuNt8LFtzyIC
 njG0EVpvIeIm5U6cNZR4QN69cScz+Ykm466z1LZ4w5OhNnAiZ5jiOvK8t
 9Ux8wWXvKDEUncYwNsMvfViE2MwMGvr/na2UyDJ0GInBfG2sN4uBoXtJ0 g==;
X-CSE-ConnectionGUID: CQ/IH7qARmeNCARNhsbyqA==
X-CSE-MsgGUID: jN1TLv8NSWSAZWvVm3Jvaw==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="51479965"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="51479965"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 08:37:46 -0800
X-CSE-ConnectionGUID: FgbhZvqhT+SZbRrYhZcifg==
X-CSE-MsgGUID: rUh4RhHcS1uACgEj3ojunQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="113080757"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.167])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 08:37:44 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 11/14] drm/i915/dsi: convert platform checks to
 display->platform.<platform> style
Date: Wed, 12 Feb 2025 18:36:40 +0200
Message-Id: <493e4c550f9c515e2e82df1afd8a74a24156e76e.1739378096.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1739378095.git.jani.nikula@intel.com>
References: <cover.1739378095.git.jani.nikula@intel.com>
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

These are stragglers from a time the display->platform mechanism didn't
exist. Finish the conversion.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c | 11 ++++-------
 1 file changed, 4 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 1f0ff4000658..e84a362b54c9 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -345,7 +345,6 @@ static void gen11_dsi_program_esc_clk_div(struct intel_encoder *encoder,
 					  const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(encoder);
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 	enum port port;
 	int afe_clk_khz;
@@ -354,7 +353,7 @@ static void gen11_dsi_program_esc_clk_div(struct intel_encoder *encoder,
 
 	afe_clk_khz = afe_clk(encoder, crtc_state);
 
-	if (IS_ALDERLAKE_S(dev_priv) || IS_ALDERLAKE_P(dev_priv)) {
+	if (display->platform.alderlake_s || display->platform.alderlake_p) {
 		theo_word_clk = DIV_ROUND_UP(afe_clk_khz, 8 * DSI_MAX_ESC_CLK);
 		act_word_clk = max(3, theo_word_clk + (theo_word_clk + 1) % 2);
 		esc_clk_div_m = act_word_clk * 8;
@@ -375,7 +374,7 @@ static void gen11_dsi_program_esc_clk_div(struct intel_encoder *encoder,
 		intel_de_posting_read(display, ICL_DPHY_ESC_CLK_DIV(port));
 	}
 
-	if (IS_ALDERLAKE_S(dev_priv) || IS_ALDERLAKE_P(dev_priv)) {
+	if (display->platform.alderlake_s || display->platform.alderlake_p) {
 		for_each_dsi_port(port, intel_dsi->ports) {
 			intel_de_write(display, ADL_MIPIO_DW(port, 8),
 				       esc_clk_div_m_phy & TX_ESC_CLK_DIV_PHY);
@@ -426,7 +425,6 @@ static void gen11_dsi_power_up_lanes(struct intel_encoder *encoder)
 static void gen11_dsi_config_phy_lanes_sequence(struct intel_encoder *encoder)
 {
 	struct intel_display *display = to_intel_display(encoder);
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 	enum phy phy;
 	u32 tmp;
@@ -451,7 +449,7 @@ static void gen11_dsi_config_phy_lanes_sequence(struct intel_encoder *encoder)
 		intel_de_write(display, ICL_PORT_TX_DW2_GRP(phy), tmp);
 
 		/* For EHL, TGL, set latency optimization for PCS_DW1 lanes */
-		if (IS_JASPERLAKE(dev_priv) || IS_ELKHARTLAKE(dev_priv) ||
+		if (display->platform.jasperlake || display->platform.elkhartlake ||
 		    (DISPLAY_VER(display) >= 12)) {
 			intel_de_rmw(display, ICL_PORT_PCS_DW1_AUX(phy),
 				     LATENCY_OPTIM_MASK, LATENCY_OPTIM_VAL(0));
@@ -533,7 +531,6 @@ gen11_dsi_setup_dphy_timings(struct intel_encoder *encoder,
 			     const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(encoder);
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 	enum port port;
 	enum phy phy;
@@ -563,7 +560,7 @@ gen11_dsi_setup_dphy_timings(struct intel_encoder *encoder,
 		}
 	}
 
-	if (IS_JASPERLAKE(dev_priv) || IS_ELKHARTLAKE(dev_priv)) {
+	if (display->platform.jasperlake || display->platform.elkhartlake) {
 		for_each_dsi_phy(phy, intel_dsi->phys)
 			intel_de_rmw(display, ICL_DPHY_CHKN(phy),
 				     0, ICL_DPHY_CHKN_AFE_OVER_PPI_STRAP);
-- 
2.39.5

