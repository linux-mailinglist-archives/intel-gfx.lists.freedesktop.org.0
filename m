Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC1979A6B2A
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Oct 2024 15:55:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BDB110E522;
	Mon, 21 Oct 2024 13:55:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RD1wtWl8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 515A910E520;
 Mon, 21 Oct 2024 13:55:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729518952; x=1761054952;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DgkRJFm1b1Gj2GS06H4jwjLWnHy/a1qfSwmA/EkYXIY=;
 b=RD1wtWl8UDmpVTsOWhT8UNcm4j7+cjwJg5UisEV5+MA4jBXNrHIBJBW9
 /Tg44L7ydiZkVthnzqnIhJg6MxlmbWLDPIVkRSnAWNDUX/D7QLtZYQsm/
 QkS9C6vOo/j40C+msoko2BkLFL7b0JPTQyu7nT8Pu9K1GWxlXw1PjtA9X
 vAUZl5LWXzBiJuXmzm4XvnPbNeesLWSTqv8FGG8DylGMTGyUYKR5Auusf
 3rqHKusfNCMImFdzt9Xmqr5mPml728obHEaRi5pGws970xvNy6/pLWvtw
 6d6qq4mND7YJJiLLsovP7DVZPLSGqICHO5qF8/Xj3KM2sAzb5gxH+7L8X w==;
X-CSE-ConnectionGUID: eMO/lbW3RNGynXxK305F/g==
X-CSE-MsgGUID: RDOW6vDXQ3mFKizzIbkL3w==
X-IronPort-AV: E=McAfee;i="6700,10204,11232"; a="28443961"
X-IronPort-AV: E=Sophos;i="6.11,221,1725346800"; d="scan'208";a="28443961"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 06:55:47 -0700
X-CSE-ConnectionGUID: qorjTJeTTI6JFVzo7QZB1A==
X-CSE-MsgGUID: TVt25Of9SByfi3J6R672mw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,221,1725346800"; d="scan'208";a="79480465"
Received: from lbogdanm-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.222])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 06:55:44 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 maarten.lankhorst@linux.intel.com
Subject: [PATCH v4 15/15] drm/i915/vblank: use display->platform.<platform>
 instead of IS_<PLATFORM>()
Date: Mon, 21 Oct 2024 16:54:16 +0300
Message-Id: <beed4681f5b69699a5bcf50247dd3f9b451a71b4.1729518793.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1729518793.git.jani.nikula@intel.com>
References: <cover.1729518793.git.jani.nikula@intel.com>
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

Switch to using the new display->platform.<platform> members for
platform identification in display code.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vblank.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
index d18b8292be49..a95fb3349eba 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.c
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -195,7 +195,6 @@ static u32 __intel_get_crtc_scanline_from_timestamp(struct intel_crtc *crtc)
 int intel_crtc_scanline_offset(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
-	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
 
 	/*
 	 * The scanline counter increments at the leading edge of hsync.
@@ -225,7 +224,7 @@ int intel_crtc_scanline_offset(const struct intel_crtc_state *crtc_state)
 	 */
 	if (DISPLAY_VER(display) == 2)
 		return -1;
-	else if (HAS_DDI(i915) && intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
+	else if (HAS_DDI(display) && intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
 		return 2;
 	else
 		return 1;
@@ -327,14 +326,13 @@ static bool i915_get_crtc_scanoutpos(struct drm_crtc *_crtc,
 				     const struct drm_display_mode *mode)
 {
 	struct intel_display *display = to_intel_display(_crtc->dev);
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct intel_crtc *crtc = to_intel_crtc(_crtc);
 	enum pipe pipe = crtc->pipe;
 	int position;
 	int vbl_start, vbl_end, hsync_start, htotal, vtotal;
 	unsigned long irqflags;
 	bool use_scanline_counter = DISPLAY_VER(display) >= 5 ||
-		IS_G4X(dev_priv) || DISPLAY_VER(display) == 2 ||
+		display->platform.g4x || DISPLAY_VER(display) == 2 ||
 		crtc->mode_flags & I915_MODE_FLAG_USE_SCANLINE_COUNTER;
 
 	if (drm_WARN_ON(display->drm, !mode->crtc_clock)) {
@@ -603,14 +601,15 @@ void intel_vblank_evade_init(const struct intel_crtc_state *old_crtc_state,
 			     const struct intel_crtc_state *new_crtc_state,
 			     struct intel_vblank_evade_ctx *evade)
 {
+	struct intel_display *display = to_intel_display(new_crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(new_crtc_state->uapi.crtc);
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	const struct intel_crtc_state *crtc_state;
 	const struct drm_display_mode *adjusted_mode;
 
 	evade->crtc = crtc;
 
-	evade->need_vlv_dsi_wa = (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915)) &&
+	evade->need_vlv_dsi_wa = (display->platform.valleyview ||
+				  display->platform.cherryview) &&
 		intel_crtc_has_type(new_crtc_state, INTEL_OUTPUT_DSI);
 
 	/*
-- 
2.39.5

