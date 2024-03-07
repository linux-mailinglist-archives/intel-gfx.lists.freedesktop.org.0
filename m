Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C6788747A2
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Mar 2024 06:31:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 293C210F277;
	Thu,  7 Mar 2024 05:31:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EJo6VnFu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D826C10F277
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Mar 2024 05:31:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709789497; x=1741325497;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=aqRL7C9GqEogFnYJ1nLiqG//1p/JQtkK9+E2FdHlViY=;
 b=EJo6VnFuJSaC4d+Qn3Y1kYgnmsSo68c87RjVluBErslKrUbXS76G4mKZ
 yfXPxbwDF4U/YKtaXa2ishNKX9VFL/aDtyU9b8Iojynazb1waco5gcTRX
 MeJCNjxl/XoFs7d45uBnTtKvqBEyrrnONcwfkr7VaL9d/NE+Zl6SRUXs1
 CEIco4LJ5ApKqbXEHKVdOGrZLEhVGiZJ9BaBIswTwzMLC75nBrkTVhMbM
 Kctng5XMu3F79tcM1qm1/ibNQaYsFZ1FeNJbjr1TX3/6Q9CSYIrRgEypK
 UU4IXMIVD2UIsgRgDYMxXLmZXsGt/CFFmCr9CJtx86OLao9UWOwfa/pGK g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11005"; a="4611191"
X-IronPort-AV: E=Sophos;i="6.06,209,1705392000"; 
   d="scan'208";a="4611191"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2024 21:31:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,209,1705392000"; d="scan'208";a="14555246"
Received: from vsrini4-xps-8920.iind.intel.com (HELO localhost.localdomain)
 ([10.223.163.48])
 by fmviesa003.fm.intel.com with ESMTP; 06 Mar 2024 21:31:34 -0800
From: Vidya Srinivas <vidya.srinivas@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: khaled.almahallawy@intel.com, navaremanasi@chromium.org,
 stanislav.lisovskiy@intel.com, uma.shankar@intel.com,
 shawn.c.lee@intel.com, Vidya Srinivas <vidya.srinivas@intel.com>
Subject: [PATCH 1/1] drm/i915: Allow bigjoiner for MST
Date: Thu,  7 Mar 2024 10:43:43 +0530
Message-Id: <20240307051343.26155-2-vidya.srinivas@intel.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20240307051343.26155-1-vidya.srinivas@intel.com>
References: <20240307051343.26155-1-vidya.srinivas@intel.com>
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

We need bigjoiner support with MST functionality
for MST monitor resolutions > 5K to work.
Adding support for the same.

v2: Addressed review comments from Jani.
Revert rejection of MST bigjoiner modes and add
functionality

v3: Fixed pipe_mismatch WARN for mst_master_transcoder
Credits-to: Manasi Navare <navaremanasi@chromium.org>

Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c    |  6 ++++--
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 17 +++++++++--------
 2 files changed, 13 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index c587a8efeafc..41998022ed07 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3902,9 +3902,11 @@ static void intel_ddi_read_func_ctl(struct intel_encoder *encoder,
 		pipe_config->lane_count =
 			((temp & DDI_PORT_WIDTH_MASK) >> DDI_PORT_WIDTH_SHIFT) + 1;
 
-		if (DISPLAY_VER(dev_priv) >= 12)
-			pipe_config->mst_master_transcoder =
+		if (DISPLAY_VER(dev_priv) >= 12) {
+			if (!intel_crtc_is_bigjoiner_slave(pipe_config))
+				pipe_config->mst_master_transcoder =
 					REG_FIELD_GET(TRANS_DDI_MST_TRANSPORT_SELECT_MASK, temp);
+		}
 
 		intel_cpu_transcoder_get_m1_n1(crtc, cpu_transcoder,
 					       &pipe_config->dp_m_n);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index db1254b036f1..c5e7293c13eb 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -525,6 +525,7 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_atomic_state *state = to_intel_atomic_state(conn_state->state);
+	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
 	struct intel_dp_mst_encoder *intel_mst = enc_to_mst(encoder);
 	struct intel_dp *intel_dp = &intel_mst->primary->dp;
 	const struct intel_connector *connector =
@@ -542,6 +543,10 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
 	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
 		return -EINVAL;
 
+	if (intel_dp_need_bigjoiner(intel_dp, adjusted_mode->crtc_hdisplay,
+				    adjusted_mode->crtc_clock))
+		pipe_config->bigjoiner_pipes = GENMASK(crtc->pipe + 1, crtc->pipe);
+
 	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
 	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
 	pipe_config->has_pch_encoder = false;
@@ -1330,12 +1335,6 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
 	 *   corresponding link capabilities of the sink) in case the
 	 *   stream is uncompressed for it by the last branch device.
 	 */
-	if (mode_rate > max_rate || mode->clock > max_dotclk ||
-	    drm_dp_calc_pbn_mode(mode->clock, min_bpp << 4) > port->full_pbn) {
-		*status = MODE_CLOCK_HIGH;
-		return 0;
-	}
-
 	if (mode->clock < 10000) {
 		*status = MODE_CLOCK_LOW;
 		return 0;
@@ -1349,8 +1348,10 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
 	if (intel_dp_need_bigjoiner(intel_dp, mode->hdisplay, target_clock)) {
 		bigjoiner = true;
 		max_dotclk *= 2;
+	}
 
-		/* TODO: add support for bigjoiner */
+	if (mode_rate > max_rate || mode->clock > max_dotclk ||
+	    drm_dp_calc_pbn_mode(mode->clock, min_bpp << 4) > port->full_pbn) {
 		*status = MODE_CLOCK_HIGH;
 		return 0;
 	}
@@ -1397,7 +1398,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
 		return 0;
 	}
 
-	*status = intel_mode_valid_max_plane_size(dev_priv, mode, false);
+	*status = intel_mode_valid_max_plane_size(dev_priv, mode, bigjoiner);
 	return 0;
 }
 
-- 
2.33.0

