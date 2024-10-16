Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A2699A0CA1
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2024 16:31:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C99E10E71D;
	Wed, 16 Oct 2024 14:31:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NPlyR9qf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1AF8210E71D
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Oct 2024 14:31:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729089100; x=1760625100;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=nlyRcJy+tBDiZa+mUH73YFxbdmtc4Q1+a7dW4T5iuDg=;
 b=NPlyR9qfY+XKnTibXOPELYOKUduoZQ4wHBnD43zfDMzql/fPNEg/BL9g
 3dxJ1aokW0+KLdTpUHBj9UamCKPOJuMiqfB5oHSVYlVlLENyDoFfv3eWK
 8xGJWfbY0DJP6B3kP+1XrsBTqzizlUDXm74gjuigKVpUpVM9y6HK8wyLV
 n2zs/JMZwn0eayWBRoHOFC7SgdlcCP9br7uqI4wcvT/qT0DeDquWVS3Sa
 438zPu9QzzDTlILgSTPZkONBp68utvf0k6hV8yCF/Gn0/paLlNcbwz4ob
 Gz4AZaZANCpMQjBObLvdCI6mYBoRf7C0pNFZPBKBujy7G2dv9VagxC0Xn Q==;
X-CSE-ConnectionGUID: A2bQ3JXFQeGmdeTi7HdS0Q==
X-CSE-MsgGUID: E6W3MH7uRf+RhgaXmckaSw==
X-IronPort-AV: E=McAfee;i="6700,10204,11226"; a="28630696"
X-IronPort-AV: E=Sophos;i="6.11,208,1725346800"; d="scan'208";a="28630696"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2024 07:31:40 -0700
X-CSE-ConnectionGUID: LVk7GKYYRIO/KSHbL5Rzww==
X-CSE-MsgGUID: GoQ4X3YOQMyrpp0xALyfNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,208,1725346800"; d="scan'208";a="78288370"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 16 Oct 2024 07:31:38 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 16 Oct 2024 17:31:37 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 1/9] drm/i915/pfit: Check pipe source size against pfit limits
 on ILK-BDW
Date: Wed, 16 Oct 2024 17:31:26 +0300
Message-ID: <20241016143134.26903-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241016143134.26903-1-ville.syrjala@linux.intel.com>
References: <20241016143134.26903-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The ILK-BDW panel fitter imposes extra limits on the maximum
pipe source size we can use. Check for that.

Only HSW/BDW are really affected by this since on older platforms
the max hdisplay/vdisplay matches the max PIPESRC. But we'll
put in the limits for all the platforms just to keep things
clear.

Note that pch_panel_fitting() is also used on SKL+, but we'll
skip the checks for those as it's all supposed to be handled
in the unified scaler code.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_panel.c | 52 +++++++++++++++++++++-
 1 file changed, 51 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index 71454ddef20f..b77017144818 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -383,15 +383,54 @@ void intel_panel_add_encoder_fixed_mode(struct intel_connector *connector,
 				   "current (BIOS)");
 }
 
+static int intel_pch_pfit_check_src_size(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	int pipe_src_w = drm_rect_width(&crtc_state->pipe_src);
+	int pipe_src_h = drm_rect_height(&crtc_state->pipe_src);
+	int max_src_w, max_src_h;
+
+	if (DISPLAY_VER(display) >= 8) {
+		max_src_w = 4096;
+		max_src_h = 4096;
+	} else if (DISPLAY_VER(display) >= 7) {
+		/*
+		 * PF0 7x5 capable
+		 * PF1 3x3 capable (could be switched to 7x5
+		 *                  mode on HSW when PF2 unused)
+		 * PF2 3x3 capable
+		 *
+		 * This assumes we use a 1:1 mapping between pipe and PF.
+		 */
+		max_src_w = crtc->pipe == PIPE_A ? 4096 : 2048;
+		max_src_h = 4096;
+	} else {
+		max_src_w = 4096;
+		max_src_h = 4096;
+	}
+
+	if (pipe_src_w > max_src_w || pipe_src_h > max_src_h) {
+		drm_dbg_kms(display->drm,
+			    "[CRTC:%d:%s] source size (%dx%d) exceeds pfit max (%dx%d)\n",
+			    crtc->base.base.id, crtc->base.name,
+			    pipe_src_w, pipe_src_h, max_src_w, max_src_h);
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
 /* adjusted_mode has been preset to be the panel's fixed mode */
 static int pch_panel_fitting(struct intel_crtc_state *crtc_state,
 			     const struct drm_connector_state *conn_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	const struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
 	int pipe_src_w = drm_rect_width(&crtc_state->pipe_src);
 	int pipe_src_h = drm_rect_height(&crtc_state->pipe_src);
-	int x, y, width, height;
+	int ret, x, y, width, height;
 
 	/* Native modes don't need fitting */
 	if (adjusted_mode->crtc_hdisplay == pipe_src_w &&
@@ -453,6 +492,17 @@ static int pch_panel_fitting(struct intel_crtc_state *crtc_state,
 		      x, y, width, height);
 	crtc_state->pch_pfit.enabled = true;
 
+	/*
+	 * SKL+ have unified scalers for pipes/planes so the
+	 * checks are done in a single place for all scalers.
+	 */
+	if (DISPLAY_VER(display) >= 9)
+		return 0;
+
+	ret = intel_pch_pfit_check_src_size(crtc_state);
+	if (ret)
+		return ret;
+
 	return 0;
 }
 
-- 
2.45.2

