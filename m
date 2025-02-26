Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 093B1A45B1A
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2025 11:01:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79F0910E8B8;
	Wed, 26 Feb 2025 10:01:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WzEY62Ej";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0778310E8B9;
 Wed, 26 Feb 2025 10:01:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740564113; x=1772100113;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/ZbvDvwqhLrWW11c2bdQdWosbHRGMajsPx5R9iSEgoc=;
 b=WzEY62EjjFRK4r6cMX5gtLwpNZKetEn68TGGRrhkbXHEKEoIjd4U04YM
 uwYmEJBtYEJHfTQhV33SXfNRILVF8i6d7EkYsPdn7DMCU3kikpv7Lcx9H
 MtcgA8rlrBud0eVvQu5fJLY8rcJ6obfR5dhamDYPygxcijJf+WUPPmhVs
 uGi+/SONXWh/nTl8rcDTZQxu7VlQwkoWcllmj2WLwnlwi9xf9LWHHDVR1
 Bn+8gg0kUbA+0E7ladYa9cpVpXP2xFH4YJT4JX1YXVM3a1nANzgLuXR+3
 XJDNNX0CL9M8GFbJHRmsax7CJIRNnohVGH+RO1TUCvlEobDt0WToDjSMa A==;
X-CSE-ConnectionGUID: AmOU4XPQTfaFmLQgWx0JnA==
X-CSE-MsgGUID: Kqdn835vShyMcpVKeRD3cg==
X-IronPort-AV: E=McAfee;i="6700,10204,11356"; a="28995174"
X-IronPort-AV: E=Sophos;i="6.13,316,1732608000"; d="scan'208";a="28995174"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2025 02:01:52 -0800
X-CSE-ConnectionGUID: DfHqiwrFQ/6lVya+/6vdqA==
X-CSE-MsgGUID: m4rseTfORkyVkFAj40A1UA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,316,1732608000"; d="scan'208";a="121758144"
Received: from dprybysh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.74])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2025 02:01:49 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 4/5] drm/i915/pfit: convert moved code to struct intel_display
Date: Wed, 26 Feb 2025 12:01:10 +0200
Message-Id: <9967c49291c725037c3266832db4d9d8451dfa38.1740564009.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1740564009.git.jani.nikula@intel.com>
References: <cover.1740564009.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

The recently relocated ilk/i9xx panel fitter code is still using struct
drm_i915_private. Convert to struct intel_display.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_pfit.c | 51 +++++++++++------------
 1 file changed, 25 insertions(+), 26 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_pfit.c b/drivers/gpu/drm/i915/display/intel_pfit.c
index 5e4a6ef2ff8d..fa271c87de05 100644
--- a/drivers/gpu/drm/i915/display/intel_pfit.c
+++ b/drivers/gpu/drm/i915/display/intel_pfit.c
@@ -3,7 +3,6 @@
  * Copyright © 2024 Intel Corporation
  */
 
-#include "i915_drv.h"
 #include "i915_reg.h"
 #include "i915_utils.h"
 #include "intel_de.h"
@@ -557,8 +556,8 @@ int intel_pfit_compute_config(struct intel_crtc_state *crtc_state,
 
 void ilk_pfit_enable(const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	const struct drm_rect *dst = &crtc_state->pch_pfit.dst;
 	enum pipe pipe = crtc->pipe;
 	int width = drm_rect_width(dst);
@@ -573,22 +572,22 @@ void ilk_pfit_enable(const struct intel_crtc_state *crtc_state)
 	 * Force use of hard-coded filter coefficients as some pre-programmed
 	 * values are broken, e.g. x201.
 	 */
-	if (IS_IVYBRIDGE(dev_priv) || IS_HASWELL(dev_priv))
-		intel_de_write_fw(dev_priv, PF_CTL(pipe), PF_ENABLE |
+	if (display->platform.ivybridge || display->platform.haswell)
+		intel_de_write_fw(display, PF_CTL(pipe), PF_ENABLE |
 				  PF_FILTER_MED_3x3 | PF_PIPE_SEL_IVB(pipe));
 	else
-		intel_de_write_fw(dev_priv, PF_CTL(pipe), PF_ENABLE |
+		intel_de_write_fw(display, PF_CTL(pipe), PF_ENABLE |
 				  PF_FILTER_MED_3x3);
-	intel_de_write_fw(dev_priv, PF_WIN_POS(pipe),
+	intel_de_write_fw(display, PF_WIN_POS(pipe),
 			  PF_WIN_XPOS(x) | PF_WIN_YPOS(y));
-	intel_de_write_fw(dev_priv, PF_WIN_SZ(pipe),
+	intel_de_write_fw(display, PF_WIN_SZ(pipe),
 			  PF_WIN_XSIZE(width) | PF_WIN_YSIZE(height));
 }
 
 void ilk_pfit_disable(const struct intel_crtc_state *old_crtc_state)
 {
+	struct intel_display *display = to_intel_display(old_crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
 
 	/*
@@ -598,31 +597,31 @@ void ilk_pfit_disable(const struct intel_crtc_state *old_crtc_state)
 	if (!old_crtc_state->pch_pfit.enabled)
 		return;
 
-	intel_de_write_fw(dev_priv, PF_CTL(pipe), 0);
-	intel_de_write_fw(dev_priv, PF_WIN_POS(pipe), 0);
-	intel_de_write_fw(dev_priv, PF_WIN_SZ(pipe), 0);
+	intel_de_write_fw(display, PF_CTL(pipe), 0);
+	intel_de_write_fw(display, PF_WIN_POS(pipe), 0);
+	intel_de_write_fw(display, PF_WIN_SZ(pipe), 0);
 }
 
 void ilk_pfit_get_config(struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	u32 ctl, pos, size;
 	enum pipe pipe;
 
-	ctl = intel_de_read(dev_priv, PF_CTL(crtc->pipe));
+	ctl = intel_de_read(display, PF_CTL(crtc->pipe));
 	if ((ctl & PF_ENABLE) == 0)
 		return;
 
-	if (IS_IVYBRIDGE(dev_priv) || IS_HASWELL(dev_priv))
+	if (display->platform.ivybridge || display->platform.haswell)
 		pipe = REG_FIELD_GET(PF_PIPE_SEL_MASK_IVB, ctl);
 	else
 		pipe = crtc->pipe;
 
 	crtc_state->pch_pfit.enabled = true;
 
-	pos = intel_de_read(dev_priv, PF_WIN_POS(crtc->pipe));
-	size = intel_de_read(dev_priv, PF_WIN_SZ(crtc->pipe));
+	pos = intel_de_read(display, PF_WIN_POS(crtc->pipe));
+	size = intel_de_read(display, PF_WIN_SZ(crtc->pipe));
 
 	drm_rect_init(&crtc_state->pch_pfit.dst,
 		      REG_FIELD_GET(PF_WIN_XPOS_MASK, pos),
@@ -635,7 +634,7 @@ void ilk_pfit_get_config(struct intel_crtc_state *crtc_state)
 	 * ivb/hsw (since we don't use the higher upscaling modes which
 	 * differentiates them) so just WARN about this case for now.
 	 */
-	drm_WARN_ON(&dev_priv->drm, pipe != crtc->pipe);
+	drm_WARN_ON(display->drm, pipe != crtc->pipe);
 }
 
 void i9xx_pfit_enable(const struct intel_crtc_state *crtc_state)
@@ -680,31 +679,31 @@ void i9xx_pfit_disable(const struct intel_crtc_state *old_crtc_state)
 	intel_de_write(display, PFIT_CONTROL(display), 0);
 }
 
-static bool i9xx_has_pfit(struct drm_i915_private *dev_priv)
+static bool i9xx_has_pfit(struct intel_display *display)
 {
-	if (IS_I830(dev_priv))
+	if (display->platform.i830)
 		return false;
 
-	return DISPLAY_VER(dev_priv) >= 4 ||
-		IS_PINEVIEW(dev_priv) || IS_MOBILE(dev_priv);
+	return DISPLAY_VER(display) >= 4 ||
+		display->platform.pineview || display->platform.mobile;
 }
 
 void i9xx_pfit_get_config(struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum pipe pipe;
 	u32 tmp;
 
-	if (!i9xx_has_pfit(dev_priv))
+	if (!i9xx_has_pfit(display))
 		return;
 
-	tmp = intel_de_read(dev_priv, PFIT_CONTROL(dev_priv));
+	tmp = intel_de_read(display, PFIT_CONTROL(display));
 	if (!(tmp & PFIT_ENABLE))
 		return;
 
 	/* Check whether the pfit is attached to our pipe. */
-	if (DISPLAY_VER(dev_priv) >= 4)
+	if (DISPLAY_VER(display) >= 4)
 		pipe = REG_FIELD_GET(PFIT_PIPE_MASK, tmp);
 	else
 		pipe = PIPE_B;
@@ -714,5 +713,5 @@ void i9xx_pfit_get_config(struct intel_crtc_state *crtc_state)
 
 	crtc_state->gmch_pfit.control = tmp;
 	crtc_state->gmch_pfit.pgm_ratios =
-		intel_de_read(dev_priv, PFIT_PGM_RATIOS(dev_priv));
+		intel_de_read(display, PFIT_PGM_RATIOS(display));
 }
-- 
2.39.5

