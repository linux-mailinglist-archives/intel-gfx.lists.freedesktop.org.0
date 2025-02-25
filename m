Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B915FA446DB
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2025 17:50:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9548310E761;
	Tue, 25 Feb 2025 16:50:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="W46AV1YL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C543D10E778;
 Tue, 25 Feb 2025 16:50:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740502212; x=1772038212;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=j+dAtHlor9FSDd83nasxkjxXh35rjqijGdP4fT6sdDw=;
 b=W46AV1YLztjXABjfELJnvfdpikOQm9z5zjDU2xCTF/lctYpxeBHcOAfh
 URFqxClgc4wTewAI05jdI3MCDcEWNvutn1E/acyXcdjR2KQblRZheKTHZ
 y0GrdVQNWdCOQm9AG09+iS6vxxl8zinHRkL+TmuY2YUWAO2j202yhMwmY
 dFcVnIMcMAzArQBHgcULvhdy9h0B6O88a+NOC2eYSrw4ZOYVMtwigQbVk
 efGvDKeLqjzHuc8YXeYc3L8ccyOcwdkFiIVZR3aWBCrSKFOfvhNpcB+bM
 smGsyfrDlO8QdPiImYjPB9BzEz7cbFyeSn0yI/j9b1Yf/SQIo2dxVamwi Q==;
X-CSE-ConnectionGUID: NQjSRb19Ray1sPFhgFgKvw==
X-CSE-MsgGUID: tpVozZTeT5GGLcVBh58RGA==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="52741780"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="52741780"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 08:50:12 -0800
X-CSE-ConnectionGUID: MholsrQ8TKW8/6B/A8VBMA==
X-CSE-MsgGUID: vzsS9J77QLWK6pNKDu+gCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="121691925"
Received: from monicael-mobl3 (HELO localhost) ([10.245.246.246])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 08:50:10 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 11/12] drm/i915/ddi: convert intel_wait_ddi_buf_idle() to
 struct intel_display
Date: Tue, 25 Feb 2025 18:49:12 +0200
Message-Id: <2fe5c63f3a7f9861e3bd063b7355aafe32298f37.1740502116.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1740502116.git.jani.nikula@intel.com>
References: <cover.1740502116.git.jani.nikula@intel.com>
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

Convert the intel_ddi.[ch] interfaces to struct intel_display. Postpone
further conversion to avoid conflicts.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 9 +++------
 drivers/gpu/drm/i915/display/intel_ddi.h | 4 +---
 drivers/gpu/drm/i915/display/intel_fdi.c | 6 ++++--
 3 files changed, 8 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 5b13f8e02fa9..581ef134799d 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -187,11 +187,8 @@ static i915_reg_t intel_ddi_buf_status_reg(struct intel_display *display, enum p
 		return DDI_BUF_CTL(port);
 }
 
-void intel_wait_ddi_buf_idle(struct drm_i915_private *dev_priv,
-			     enum port port)
+void intel_wait_ddi_buf_idle(struct intel_display *display, enum port port)
 {
-	struct intel_display *display = &dev_priv->display;
-
 	/*
 	 * Bspec's platform specific timeouts:
 	 * MTL+   : 100 us
@@ -3096,7 +3093,7 @@ static void intel_ddi_buf_disable(struct intel_encoder *encoder,
 	intel_de_rmw(dev_priv, DDI_BUF_CTL(port), DDI_BUF_CTL_ENABLE, 0);
 
 	if (DISPLAY_VER(display) >= 14)
-		intel_wait_ddi_buf_idle(dev_priv, port);
+		intel_wait_ddi_buf_idle(display, port);
 
 	mtl_ddi_disable_d2d(encoder);
 
@@ -3108,7 +3105,7 @@ static void intel_ddi_buf_disable(struct intel_encoder *encoder,
 	intel_ddi_disable_fec(encoder, crtc_state);
 
 	if (DISPLAY_VER(display) < 14)
-		intel_wait_ddi_buf_idle(dev_priv, port);
+		intel_wait_ddi_buf_idle(display, port);
 
 	intel_ddi_wait_for_fec_status(encoder, crtc_state, false);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.h b/drivers/gpu/drm/i915/display/intel_ddi.h
index 2faadd1441e2..353eb04079e9 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.h
+++ b/drivers/gpu/drm/i915/display/intel_ddi.h
@@ -9,7 +9,6 @@
 #include "i915_reg_defs.h"
 
 struct drm_connector_state;
-struct drm_i915_private;
 struct intel_atomic_state;
 struct intel_bios_encoder_data;
 struct intel_connector;
@@ -54,8 +53,7 @@ void hsw_ddi_get_config(struct intel_encoder *encoder,
 struct intel_shared_dpll *icl_ddi_combo_get_pll(struct intel_encoder *encoder);
 void hsw_prepare_dp_ddi_buffers(struct intel_encoder *encoder,
 				const struct intel_crtc_state *crtc_state);
-void intel_wait_ddi_buf_idle(struct drm_i915_private *dev_priv,
-			     enum port port);
+void intel_wait_ddi_buf_idle(struct intel_display *display, enum port port);
 void intel_ddi_init(struct intel_display *display,
 		    const struct intel_bios_encoder_data *devdata);
 bool intel_ddi_get_hw_state(struct intel_encoder *encoder, enum pipe *pipe);
diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i915/display/intel_fdi.c
index 024d0c7e0a88..7e67b3881fd0 100644
--- a/drivers/gpu/drm/i915/display/intel_fdi.c
+++ b/drivers/gpu/drm/i915/display/intel_fdi.c
@@ -886,6 +886,7 @@ static void ivb_manual_fdi_link_train(struct intel_crtc *crtc,
 void hsw_fdi_link_train(struct intel_encoder *encoder,
 			const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	u32 temp, i, rx_ctl_val;
@@ -992,7 +993,7 @@ void hsw_fdi_link_train(struct intel_encoder *encoder,
 		intel_de_rmw(dev_priv, DP_TP_CTL(PORT_E), DP_TP_CTL_ENABLE, 0);
 		intel_de_posting_read(dev_priv, DP_TP_CTL(PORT_E));
 
-		intel_wait_ddi_buf_idle(dev_priv, PORT_E);
+		intel_wait_ddi_buf_idle(display, PORT_E);
 
 		/* Reset FDI_RX_MISC pwrdn lanes */
 		intel_de_rmw(dev_priv, FDI_RX_MISC(PIPE_A),
@@ -1011,6 +1012,7 @@ void hsw_fdi_link_train(struct intel_encoder *encoder,
 
 void hsw_fdi_disable(struct intel_encoder *encoder)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 
 	/*
@@ -1021,7 +1023,7 @@ void hsw_fdi_disable(struct intel_encoder *encoder)
 	 */
 	intel_de_rmw(dev_priv, FDI_RX_CTL(PIPE_A), FDI_RX_ENABLE, 0);
 	intel_de_rmw(dev_priv, DDI_BUF_CTL(PORT_E), DDI_BUF_CTL_ENABLE, 0);
-	intel_wait_ddi_buf_idle(dev_priv, PORT_E);
+	intel_wait_ddi_buf_idle(display, PORT_E);
 	intel_ddi_disable_clock(encoder);
 	intel_de_rmw(dev_priv, FDI_RX_MISC(PIPE_A),
 		     FDI_RX_PWRDN_LANE1_MASK | FDI_RX_PWRDN_LANE0_MASK,
-- 
2.39.5

