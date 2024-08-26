Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 861C495EF88
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2024 13:14:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C15F10E1CF;
	Mon, 26 Aug 2024 11:14:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Bz1Ahw2a";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BA5A10E1C9;
 Mon, 26 Aug 2024 11:14:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724670847; x=1756206847;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9UijmCNqYAfTONwtO9DrKveS7ZfV7cpecHcoKQEGwLQ=;
 b=Bz1Ahw2ary7YnpVolTxxKBxapyr54vAoWhuJYcYcDBhnix6pFg6qAajb
 HdQ8PQi4all+I1F8r1Njj3964KtcuGIaXQDp9SMryqnKozm45JVFhsWIg
 tMuSJtCG9WkcFOzRxF4AEwPop0uy1UU1CZFexCbCtg0n93uCsGLKkJXuv
 RZXphBbPMa1TS6y/ttTksxGi6hhEoLKmJJbpko6cMIP7ypiIqNY4gYC4I
 M30LqU9see5UGvKL5DOpKt4nl8eiVDXnqpdZJ1CQ90CAKEGp5US47GwjG
 Egm7Pv8lUrEYK1t38YBqmo5x0u9lTRR6FBJhVOf1oCVnkHLmFtBFiifQ3 A==;
X-CSE-ConnectionGUID: ErQTNM/NQRud6qOzK3OQRA==
X-CSE-MsgGUID: kdfX16csRIu7yEQjxpcMbA==
X-IronPort-AV: E=McAfee;i="6700,10204,11175"; a="23213541"
X-IronPort-AV: E=Sophos;i="6.10,177,1719903600"; d="scan'208";a="23213541"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2024 04:14:07 -0700
X-CSE-ConnectionGUID: 5xbwbSYtRHiL2qgi/ypfKg==
X-CSE-MsgGUID: SjDoPthJQdenOtamJXUh6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,177,1719903600"; d="scan'208";a="67291318"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2024 04:14:06 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 03/12] drm/i915/dss: Move to struct intel_display
Date: Mon, 26 Aug 2024 16:45:17 +0530
Message-ID: <20240826111527.1113622-4-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240826111527.1113622-1-ankit.k.nautiyal@intel.com>
References: <20240826111527.1113622-1-ankit.k.nautiyal@intel.com>
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

Use struct intel_display instead of struct drm_i915_private.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c |  2 +-
 drivers/gpu/drm/i915/display/intel_dss.c | 22 +++++++++++-----------
 drivers/gpu/drm/i915/display/intel_dss.h |  4 ++--
 3 files changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 28ef6814c56c..de7db5a028db 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -5115,7 +5115,7 @@ void intel_ddi_init(struct intel_display *display,
 		dig_port->hpd_pulse = intel_dp_hpd_pulse;
 
 		if (dig_port->dp.mso_link_count)
-			encoder->pipe_mask = intel_dss_splitter_pipe_mask(dev_priv);
+			encoder->pipe_mask = intel_dss_splitter_pipe_mask(display);
 	}
 
 	/*
diff --git a/drivers/gpu/drm/i915/display/intel_dss.c b/drivers/gpu/drm/i915/display/intel_dss.c
index 41ea42d234f9..9cb89fe656cb 100644
--- a/drivers/gpu/drm/i915/display/intel_dss.c
+++ b/drivers/gpu/drm/i915/display/intel_dss.c
@@ -14,11 +14,11 @@
  * Splitter enable for eDP MSO is limited to certain pipes, on certain
  * platforms.
  */
-u8 intel_dss_splitter_pipe_mask(struct drm_i915_private *i915)
+u8 intel_dss_splitter_pipe_mask(struct intel_display *display)
 {
-	if (DISPLAY_VER(i915) > 20)
+	if (DISPLAY_VER(display) > 20)
 		return ~0;
-	else if (IS_ALDERLAKE_P(i915))
+	else if (IS_ALDERLAKE_P(to_i915(display->drm)))
 		return BIT(PIPE_A) | BIT(PIPE_B);
 	else
 		return BIT(PIPE_A);
@@ -27,28 +27,28 @@ u8 intel_dss_splitter_pipe_mask(struct drm_i915_private *i915)
 void intel_dss_get_mso_config(struct intel_encoder *encoder,
 			      struct intel_crtc_state *pipe_config)
 {
+	struct intel_display *display = to_intel_display(pipe_config);
 	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
 	u32 dss1;
 
-	if (!HAS_MSO(i915))
+	if (!HAS_MSO(display))
 		return;
 
-	dss1 = intel_de_read(i915, ICL_PIPE_DSS_CTL1(pipe));
+	dss1 = intel_de_read(display, ICL_PIPE_DSS_CTL1(pipe));
 
 	pipe_config->splitter.enable = dss1 & SPLITTER_ENABLE;
 	if (!pipe_config->splitter.enable)
 		return;
 
-	if (drm_WARN_ON(&i915->drm, !(intel_dss_splitter_pipe_mask(i915) & BIT(pipe)))) {
+	if (drm_WARN_ON(crtc->base.dev, !(intel_dss_splitter_pipe_mask(display) & BIT(pipe)))) {
 		pipe_config->splitter.enable = false;
 		return;
 	}
 
 	switch (dss1 & SPLITTER_CONFIGURATION_MASK) {
 	default:
-		drm_WARN(&i915->drm, true,
+		drm_WARN(crtc->base.dev, true,
 			 "Invalid splitter configuration, dss1=0x%08x\n", dss1);
 		fallthrough;
 	case SPLITTER_CONFIGURATION_2_SEGMENT:
@@ -64,12 +64,12 @@ void intel_dss_get_mso_config(struct intel_encoder *encoder,
 
 void intel_dss_configure_mso(const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
 	u32 dss1 = 0;
 
-	if (!HAS_MSO(i915))
+	if (!HAS_MSO(display))
 		return;
 
 	if (crtc_state->splitter.enable) {
@@ -81,7 +81,7 @@ void intel_dss_configure_mso(const struct intel_crtc_state *crtc_state)
 			dss1 |= SPLITTER_CONFIGURATION_4_SEGMENT;
 	}
 
-	intel_de_rmw(i915, ICL_PIPE_DSS_CTL1(pipe),
+	intel_de_rmw(display, ICL_PIPE_DSS_CTL1(pipe),
 		     SPLITTER_ENABLE | SPLITTER_CONFIGURATION_MASK |
 		     OVERLAP_PIXELS_MASK, dss1);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dss.h b/drivers/gpu/drm/i915/display/intel_dss.h
index 632a00f0ebc1..0571ee2a19f9 100644
--- a/drivers/gpu/drm/i915/display/intel_dss.h
+++ b/drivers/gpu/drm/i915/display/intel_dss.h
@@ -8,11 +8,11 @@
 
 #include "linux/types.h"
 
-struct drm_i915_private;
 struct intel_crtc_state;
+struct intel_display;
 struct intel_encoder;
 
-u8 intel_dss_splitter_pipe_mask(struct drm_i915_private *i915);
+u8 intel_dss_splitter_pipe_mask(struct intel_display *display);
 void intel_dss_get_mso_config(struct intel_encoder *encoder,
 			      struct intel_crtc_state *pipe_config);
 void intel_dss_configure_mso(const struct intel_crtc_state *crtc_state);
-- 
2.45.2

