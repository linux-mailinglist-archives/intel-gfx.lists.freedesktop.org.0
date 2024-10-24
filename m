Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6C389AE4EB
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2024 14:35:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E399110E91F;
	Thu, 24 Oct 2024 12:35:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kcCdTaRA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89EC610E91F;
 Thu, 24 Oct 2024 12:35:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729773309; x=1761309309;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=B0a7iq0OPpmF8hT/Yp5UdeexllVHUUULCWLHIWPuVaw=;
 b=kcCdTaRAoTYQtKb1a/8HkxOCUC+IG+xYVA3ET5J6qc9O9hHKYItN4h/C
 4T00t7vocE2MiTdVBf1kdmL6Qdz43+zW7V2uuEB2ORNrBtcEC3TkAdG6V
 2IeYvOwl8uH3gHTIkNP2KgIAN7OhQtfd8SCz04B6nggZDVDtUC6NHGH3w
 2cQA0Y3H29iU8OYyvn0JKQw1sPw6Ta2DIaNt6ocesHBCSpK2e1nqc52fx
 Lz2thLVy30J/H/CksBxgzQVBivedqaSIY4K3C6KJg3Bw4a3YSM4ukHsqN
 MLaJUHIABYZ6UDSqMFR2phev/mGb9miP9TCDCj3ysscY5r8J/KYmXXos/ w==;
X-CSE-ConnectionGUID: N/pC7HakTr6eEvvqTGy0Cg==
X-CSE-MsgGUID: NKUt1CB4TT+UsKyzsxQaKQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="51942993"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="51942993"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 05:35:09 -0700
X-CSE-ConnectionGUID: rHuzGFKZS9qgt3pOMuEidg==
X-CSE-MsgGUID: fj5fOFzpT3evF2kIINODgw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,229,1725346800"; d="scan'208";a="81001376"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 05:35:08 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 maarten.lankhorst@linux.intel.com
Subject: [CI v4 v4 16/16] drm/i915/vblank: use display->platform.<platform>
 instead of IS_<PLATFORM>()
Date: Thu, 24 Oct 2024 15:33:42 +0300
Message-Id: <ad2e842069962f2bf611f62a98b325803f0009d9.1729773149.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1729773149.git.jani.nikula@intel.com>
References: <cover.1729773149.git.jani.nikula@intel.com>
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

