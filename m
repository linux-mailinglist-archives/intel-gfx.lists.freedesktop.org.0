Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 598CD9656B0
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2024 07:08:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBD0710E7DE;
	Fri, 30 Aug 2024 05:08:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UXaFNfAT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0E9710E7DA;
 Fri, 30 Aug 2024 05:08:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724994510; x=1756530510;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GMl0F1lvZAZ5PdqpkMiG2OGc/NO3bk2Rgm2WsaYHvDw=;
 b=UXaFNfAT1Wz9aFECcfuE5l7T/1w3IhyB1/8bKhEypvAIc4YL0C48DPcS
 Huy/VZZIMpSfmmnTHBF8LTJQ77LksuQf3yzmnzKcq6IO9LuOamQ3WU+sj
 72I+tSPUrGRaSi5WO8IJ3+JWfo9gD2R3ZrhFpzAfJyoPZeF4vnUS5U7d1
 ceXlpowLe7Im7gYzKIcxhOq81vvOBiMeJeABIQgJZoizH5klVQRCt5xVU
 QwWlp5Oiu6SLYcDXetl/BWbmB9AfXupnmH0BAiivRsP2YUQsM7HLcsR/2
 0yW99AljP6rQZ9+7CwGuP/3MOux9FOflsGLeXdQMC9vKFzl+lQjUULAF6 Q==;
X-CSE-ConnectionGUID: ovf5r4imSmOVvw0nid1lEg==
X-CSE-MsgGUID: 5nTdtjBLS9KlH73TwHffaA==
X-IronPort-AV: E=McAfee;i="6700,10204,11179"; a="23421677"
X-IronPort-AV: E=Sophos;i="6.10,187,1719903600"; d="scan'208";a="23421677"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 22:08:30 -0700
X-CSE-ConnectionGUID: Xg5ieX6cSvOCAnYyGATmQg==
X-CSE-MsgGUID: /jDVNGgdQrSpC1SG3NYlLQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,187,1719903600"; d="scan'208";a="94610238"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 22:08:28 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 06/19] drm/i915/icl_dsi: Use intel_display in
 configure_dual_link_mode
Date: Fri, 30 Aug 2024 10:39:36 +0530
Message-ID: <20240830050950.2528450-7-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240830050950.2528450-1-ankit.k.nautiyal@intel.com>
References: <20240830050950.2528450-1-ankit.k.nautiyal@intel.com>
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

Replace struct drm_i915_private with struct intel_display in
configure_dual_link_mode.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 2f94644f51f3..79e149d51cb2 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -278,12 +278,12 @@ static void configure_dual_link_mode(struct intel_encoder *encoder,
 				     const struct intel_crtc_state *pipe_config,
 				     u8 dual_link, u8 pixel_overlap)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	i915_reg_t dss_ctl1_reg, dss_ctl2_reg;
 	u32 dss_ctl1;
 
 	/* FIXME: Move all DSS handling to intel_vdsc.c */
-	if (DISPLAY_VER(dev_priv) >= 12) {
+	if (DISPLAY_VER(display) >= 12) {
 		struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
 
 		dss_ctl1_reg = ICL_PIPE_DSS_CTL1(crtc->pipe);
@@ -293,7 +293,7 @@ static void configure_dual_link_mode(struct intel_encoder *encoder,
 		dss_ctl2_reg = DSS_CTL2;
 	}
 
-	dss_ctl1 = intel_de_read(dev_priv, dss_ctl1_reg);
+	dss_ctl1 = intel_de_read(display, dss_ctl1_reg);
 	dss_ctl1 |= SPLITTER_ENABLE;
 	dss_ctl1 &= ~OVERLAP_PIXELS_MASK;
 	dss_ctl1 |= OVERLAP_PIXELS(pixel_overlap);
@@ -308,19 +308,19 @@ static void configure_dual_link_mode(struct intel_encoder *encoder,
 		dl_buffer_depth = hactive / 2 + pixel_overlap;
 
 		if (dl_buffer_depth > MAX_DL_BUFFER_TARGET_DEPTH)
-			drm_err(&dev_priv->drm,
+			drm_err(display->drm,
 				"DL buffer depth exceed max value\n");
 
 		dss_ctl1 &= ~LEFT_DL_BUF_TARGET_DEPTH_MASK;
 		dss_ctl1 |= LEFT_DL_BUF_TARGET_DEPTH(dl_buffer_depth);
-		intel_de_rmw(dev_priv, dss_ctl2_reg, RIGHT_DL_BUF_TARGET_DEPTH_MASK,
+		intel_de_rmw(display, dss_ctl2_reg, RIGHT_DL_BUF_TARGET_DEPTH_MASK,
 			     RIGHT_DL_BUF_TARGET_DEPTH(dl_buffer_depth));
 	} else {
 		/* Interleave */
 		dss_ctl1 |= DUAL_LINK_MODE_INTERLEAVE;
 	}
 
-	intel_de_write(dev_priv, dss_ctl1_reg, dss_ctl1);
+	intel_de_write(display, dss_ctl1_reg, dss_ctl1);
 }
 
 /* aka DSI 8X clock */
-- 
2.45.2

