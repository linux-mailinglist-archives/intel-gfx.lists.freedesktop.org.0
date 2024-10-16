Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73AAF9A0CAA
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2024 16:31:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A89910E726;
	Wed, 16 Oct 2024 14:31:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gVR4UFqT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4B7710E723
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Oct 2024 14:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729089114; x=1760625114;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=eZKq3gAk6FfVwfFCJUWurod8gRTcyQXr4C4sO/4kvHY=;
 b=gVR4UFqTJi8wL4q10ZWoLjYFhw4HuansLEj1fBpM1NDDk4EOLdCZBqWf
 m/Hrdc3xBAJIpFJ+hyE1SgtSdomDRz+OV9enrH0GJCsLxkBwAOWwEpweM
 o5RV2jx3lIRniVQwasE/YFUnSrtlH/iyfPYSrxya9TSPbG9RS9fkUnyAj
 dWKExSkCCDGTVqdcJHj/FZCB6iLDP0tQHZtHCtNNXXaWjYC9NYg7khLlR
 uHnH5KPhiNML4KxXE/5EneksNGekfMucX1xrEABCaSBBgTYJp5evANJFB
 q1grwdDCFRNyIUVoupyxcjXMiNWaNxrUGpk7yYpt3jcGMmIzyY5JmYqeG A==;
X-CSE-ConnectionGUID: KO0QnQI5THWKcepvsmx84Q==
X-CSE-MsgGUID: 0yf5H2xPQGazHRJ8R+TG5Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11226"; a="28630725"
X-IronPort-AV: E=Sophos;i="6.11,208,1725346800"; d="scan'208";a="28630725"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2024 07:31:54 -0700
X-CSE-ConnectionGUID: x1XouKQLSjWPJw8pXje2BA==
X-CSE-MsgGUID: 8l+tfMYUQDq/06AGe8yjHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,208,1725346800"; d="scan'208";a="78288389"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 16 Oct 2024 07:31:52 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 16 Oct 2024 17:31:51 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 6/9] drm/i915/pfit: Check pfit destination window on ILK-BDW
Date: Wed, 16 Oct 2024 17:31:31 +0300
Message-ID: <20241016143134.26903-7-ville.syrjala@linux.intel.com>
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

The ILK-BDW panel fitter has several restrictions on the
destination window size. Check for those and reject the
configuration if things aren't entirely proper.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_panel.c | 55 ++++++++++++++++++++++
 1 file changed, 55 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index 593e41907d53..d66ce8537f7d 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -383,6 +383,57 @@ void intel_panel_add_encoder_fixed_mode(struct intel_connector *connector,
 				   "current (BIOS)");
 }
 
+static int intel_pch_pfit_check_dst_window(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	const struct drm_display_mode *adjusted_mode =
+		&crtc_state->hw.adjusted_mode;
+	const struct drm_rect *dst = &crtc_state->pch_pfit.dst;
+	int width = drm_rect_width(dst);
+	int height = drm_rect_height(dst);
+	int x = dst->x1;
+	int y = dst->y1;
+
+	if (adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE &&
+	    (y & 1 || height & 1)) {
+		drm_dbg_kms(display->drm,
+			    "[CRTC:%d:%s] pfit window (" DRM_RECT_FMT ") misaligned for interlaced output\n",
+			    crtc->base.base.id, crtc->base.name, DRM_RECT_ARG(dst));
+		return -EINVAL;
+	}
+
+	/*
+	 * "Restriction : When pipe scaling is enabled, the scaled
+	 *  output must equal the pipe active area, so Pipe active
+	 *  size = (2 * PF window position) + PF window size."
+	 *
+	 * The vertical direction seems more forgiving than the
+	 * horizontal direction, but still has some issues so
+	 * let's follow the same hard rule for both.
+	 */
+	if (adjusted_mode->crtc_hdisplay != 2 * x + width ||
+	    adjusted_mode->crtc_vdisplay != 2 * y + height) {
+		drm_dbg_kms(display->drm,
+			    "[CRTC:%d:%s] pfit window (" DRM_RECT_FMT ") not centered\n",
+			    crtc->base.base.id, crtc->base.name, DRM_RECT_ARG(dst));
+		return -EINVAL;
+	}
+
+	/*
+	 * "Restriction : The X position must not be programmed
+	 *  to be 1 (28:16=0 0000 0000 0001b)."
+	 */
+	if (x == 1) {
+		drm_dbg_kms(display->drm,
+			    "[CRTC:%d:%s] pfit window (" DRM_RECT_FMT ") badly positioned\n",
+			    crtc->base.base.id, crtc->base.name, DRM_RECT_ARG(dst));
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
 static int intel_pch_pfit_check_src_size(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
@@ -575,6 +626,10 @@ static int pch_panel_fitting(struct intel_crtc_state *crtc_state,
 	if (DISPLAY_VER(display) >= 9)
 		return 0;
 
+	ret = intel_pch_pfit_check_dst_window(crtc_state);
+	if (ret)
+		return ret;
+
 	ret = intel_pch_pfit_check_src_size(crtc_state);
 	if (ret)
 		return ret;
-- 
2.45.2

