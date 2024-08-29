Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F71B96462C
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Aug 2024 15:17:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCC6D10E688;
	Thu, 29 Aug 2024 13:17:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lTUZxiWB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A870410E688;
 Thu, 29 Aug 2024 13:17:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724937424; x=1756473424;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=55hQSh2b0AT9LTcXStCMajT99nyLRC1sdIamtcaD4x4=;
 b=lTUZxiWBBvZKtbT7eUPjO0G/lNriSbBWjp1/BhIXan1CyYATvjPSJpIL
 CCxedKmfhx4JAxPkl5gFa6KCaU6T+wufxclNlMrTskqUVXsaWPiOeu7N0
 pnChEnxDaN450Dc50qBbIkxUIbEQxGTH/GTK1J5+iIZWyVv2rleE+7+ix
 V2sGn3vF3ymQFbyjBnDy4n9nJqi9cfCShz4mm2pvgmM0AvMOGrYBHR+E1
 C+UAiFi6gnmRE2zSqx4dgC5NGPx5YkQtOZQj0OO/vgHxfrc6qkGeUbyIm
 5yspEEP5YHAghY/Oa5vsehTfJ9LAblO5D5rG9QKDCcqMSIIKMS3WctgGN A==;
X-CSE-ConnectionGUID: d76XKgoTQLS4mz/2FSvztQ==
X-CSE-MsgGUID: rLFNSas3RLe7iFi8EmfTHA==
X-IronPort-AV: E=McAfee;i="6700,10204,11179"; a="23667230"
X-IronPort-AV: E=Sophos;i="6.10,185,1719903600"; d="scan'208";a="23667230"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 06:17:04 -0700
X-CSE-ConnectionGUID: ZIaCY1EhQpmAYp2E6OkDug==
X-CSE-MsgGUID: itsKbDUlTiGaDiW3C65S3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,185,1719903600"; d="scan'208";a="63261473"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 06:17:01 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 04/19] drm/i915/dss: Move to struct intel_display
Date: Thu, 29 Aug 2024 18:48:12 +0530
Message-ID: <20240829131828.2350930-5-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240829131828.2350930-1-ankit.k.nautiyal@intel.com>
References: <20240829131828.2350930-1-ankit.k.nautiyal@intel.com>
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

v2: Use struct intel_display for drm Warns. (Jani)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c |  2 +-
 drivers/gpu/drm/i915/display/intel_dss.c | 22 ++++++++++++----------
 drivers/gpu/drm/i915/display/intel_dss.h |  4 ++--
 3 files changed, 15 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 7cc766043a5b..aa176f4d42c4 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -5115,7 +5115,7 @@ void intel_ddi_init(struct intel_display *display,
 		dig_port->hpd_pulse = intel_dp_hpd_pulse;
 
 		if (dig_port->dp.mso_link_count)
-			encoder->pipe_mask = intel_dss_mso_pipe_mask(dev_priv);
+			encoder->pipe_mask = intel_dss_mso_pipe_mask(display);
 	}
 
 	/*
diff --git a/drivers/gpu/drm/i915/display/intel_dss.c b/drivers/gpu/drm/i915/display/intel_dss.c
index e774f55f7008..3f7f416eb3fa 100644
--- a/drivers/gpu/drm/i915/display/intel_dss.c
+++ b/drivers/gpu/drm/i915/display/intel_dss.c
@@ -14,9 +14,11 @@
  * Splitter enable for eDP MSO is limited to certain pipes, on certain
  * platforms.
  */
-u8 intel_dss_mso_pipe_mask(struct drm_i915_private *i915)
+u8 intel_dss_mso_pipe_mask(struct intel_display *display)
 {
-	if (DISPLAY_VER(i915) > 20)
+	struct drm_i915_private *i915 = to_i915(display->drm);
+
+	if (DISPLAY_VER(display) > 20)
 		return ~0;
 	else if (IS_ALDERLAKE_P(i915))
 		return BIT(PIPE_A) | BIT(PIPE_B);
@@ -27,28 +29,28 @@ u8 intel_dss_mso_pipe_mask(struct drm_i915_private *i915)
 void intel_dss_mso_get_config(struct intel_encoder *encoder,
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
 
-	if (drm_WARN_ON(&i915->drm, !(intel_dss_mso_pipe_mask(i915) & BIT(pipe)))) {
+	if (drm_WARN_ON(display->drm, !(intel_dss_mso_pipe_mask(display) & BIT(pipe)))) {
 		pipe_config->splitter.enable = false;
 		return;
 	}
 
 	switch (dss1 & SPLITTER_CONFIGURATION_MASK) {
 	default:
-		drm_WARN(&i915->drm, true,
+		drm_WARN(display->drm, true,
 			 "Invalid splitter configuration, dss1=0x%08x\n", dss1);
 		fallthrough;
 	case SPLITTER_CONFIGURATION_2_SEGMENT:
@@ -64,12 +66,12 @@ void intel_dss_mso_get_config(struct intel_encoder *encoder,
 
 void intel_dss_mso_configure(const struct intel_crtc_state *crtc_state)
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
@@ -81,7 +83,7 @@ void intel_dss_mso_configure(const struct intel_crtc_state *crtc_state)
 			dss1 |= SPLITTER_CONFIGURATION_4_SEGMENT;
 	}
 
-	intel_de_rmw(i915, ICL_PIPE_DSS_CTL1(pipe),
+	intel_de_rmw(display, ICL_PIPE_DSS_CTL1(pipe),
 		     SPLITTER_ENABLE | SPLITTER_CONFIGURATION_MASK |
 		     OVERLAP_PIXELS_MASK, dss1);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dss.h b/drivers/gpu/drm/i915/display/intel_dss.h
index 69c61543403a..45d076d1e0d8 100644
--- a/drivers/gpu/drm/i915/display/intel_dss.h
+++ b/drivers/gpu/drm/i915/display/intel_dss.h
@@ -8,11 +8,11 @@
 
 #include "linux/types.h"
 
-struct drm_i915_private;
 struct intel_crtc_state;
+struct intel_display;
 struct intel_encoder;
 
-u8 intel_dss_mso_pipe_mask(struct drm_i915_private *i915);
+u8 intel_dss_mso_pipe_mask(struct intel_display *display);
 void intel_dss_mso_get_config(struct intel_encoder *encoder,
 			      struct intel_crtc_state *pipe_config);
 void intel_dss_mso_configure(const struct intel_crtc_state *crtc_state);
-- 
2.45.2

