Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3262F9B3AC5
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2024 20:50:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 054D710E558;
	Mon, 28 Oct 2024 19:50:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="J1sZaAyw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 429E410E559;
 Mon, 28 Oct 2024 19:50:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730145026; x=1761681026;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=B0a7iq0OPpmF8hT/Yp5UdeexllVHUUULCWLHIWPuVaw=;
 b=J1sZaAywNPgnfmnnt699T6JK/tGBAiAzzMGoIr7HnfrXxcjJZFyyTSiF
 OjGcnwKt3xe7Ybo6mlGcwNGOSH4ilWUX/pi79hX+iOLC/XRz0VIVb47Cx
 531pfrBpFegfuCTzJF8WxFrfqTx8g3n5ENjiiFvQjhLqd5kz1L80r6jw5
 /vuc0YB7L4+10d2gkHJZCMZR6A75X1+WxJ97no/MctDPljljH3Hwf0Y1/
 EXoqYsJCQXql+uY2o1lG7LRfycczFwOku138Yue0qPaiSLtTX1h+XPLd0
 Iwb+hC2P+yywYN6v5NL+u9hDquhUOGEmM5/I3O4tSY2NIFCUTFdtCsQPU g==;
X-CSE-ConnectionGUID: liiY0qEKSYCrhgS4igHcWA==
X-CSE-MsgGUID: 4wpOWtaASQuTVnwHZ3eu4w==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="40858030"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="40858030"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 12:50:26 -0700
X-CSE-ConnectionGUID: iPVIEwdSSO6nGSyZFpgD7g==
X-CSE-MsgGUID: fJ3sYp/tQUqeZ40NpitAww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="86860049"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.21])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 12:50:23 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 maarten.lankhorst@linux.intel.com
Subject: [CI RESEND v4 v4 16/16] drm/i915/vblank: use
 display->platform.<platform> instead of IS_<PLATFORM>()
Date: Mon, 28 Oct 2024 21:48:49 +0200
Message-Id: <ed7295a7246bf00d8ae39f78c78dcc842c6939d9.1730144869.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1730144869.git.jani.nikula@intel.com>
References: <cover.1730144869.git.jani.nikula@intel.com>
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

v2: Split out an unrelated hunk to a separate patch (Rodrigo)

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vblank.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
index 9278d0b2ae74..a95fb3349eba 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.c
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -326,14 +326,13 @@ static bool i915_get_crtc_scanoutpos(struct drm_crtc *_crtc,
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
@@ -602,14 +601,15 @@ void intel_vblank_evade_init(const struct intel_crtc_state *old_crtc_state,
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

