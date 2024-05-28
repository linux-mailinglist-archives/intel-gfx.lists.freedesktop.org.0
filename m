Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C27728D2390
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2024 20:57:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E11910EBBA;
	Tue, 28 May 2024 18:57:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ahKo2RK6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6ED010EBBA
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2024 18:56:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716922618; x=1748458618;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=A1t4umHowCEF/7wFTJrlfpG16OPZVcwIGvky5r9vbsQ=;
 b=ahKo2RK6fFWDm6ILekqvR5XYuP/08hZAnPsXd9LAQlsnC+P3l7g3WcTG
 tsmDqFQwS1M/dDZo9PfTccovWZXZkaZwHk5Upqa4eYwB6qfuTJRRheD9/
 XtoY3mkFOhNtJR5A/wQuLt+3Kvk4Nqjdnv9UYZ/QiKJ039CKU/PE0gQJ+
 111p1VeWOi//6JbEXRP3blpfYHZyeBfoDV0ifbiji2/3SCL8nkBYU1SfF
 7TA7y53UYsQVVtQ1BAtzOQxCiZJZfXG2/PdkkNnJr6dqO2GHwpzFTlco+
 Xe9SrUPdNDA/2xugIhMjoA22K3alncwc2DUMJYuAnPdwSOsilAy5PbVs+ Q==;
X-CSE-ConnectionGUID: QW/dw5pHSWe+me/Lc8l8Ng==
X-CSE-MsgGUID: c1LzfdgmSNCkz2lgwDFZsA==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="35815208"
X-IronPort-AV: E=Sophos;i="6.08,196,1712646000"; d="scan'208";a="35815208"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 11:56:58 -0700
X-CSE-ConnectionGUID: bHub4+ooT5ytF7ahfh5LRw==
X-CSE-MsgGUID: W6fnAHU3SJG6Ts/WXIQ0Uw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,196,1712646000"; d="scan'208";a="35144468"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 28 May 2024 11:56:56 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 28 May 2024 21:56:55 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 3/7] drm/i915: Extract intel_mode_vtotal()
Date: Tue, 28 May 2024 21:56:43 +0300
Message-ID: <20240528185647.7765-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.1
In-Reply-To: <20240528185647.7765-1-ville.syrjala@linux.intel.com>
References: <20240528185647.7765-1-ville.syrjala@linux.intel.com>
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

We have several copies of code calculating the hardware's
idea of vtotal. Pull that to a helper, similar to
intel_mode_vblank_{start,end}().

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vblank.c | 40 +++++++++------------
 drivers/gpu/drm/i915/display/intel_vblank.h |  1 +
 2 files changed, 18 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
index ba56015f2c40..31fa5867e1a7 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.c
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -207,9 +207,7 @@ static int __intel_get_crtc_scanline(struct intel_crtc *crtc)
 	if (crtc->mode_flags & I915_MODE_FLAG_GET_SCANLINE_FROM_TIMESTAMP)
 		return __intel_get_crtc_scanline_from_timestamp(crtc);
 
-	vtotal = mode->crtc_vtotal;
-	if (mode->flags & DRM_MODE_FLAG_INTERLACE)
-		vtotal /= 2;
+	vtotal = intel_mode_vtotal(mode);
 
 	position = intel_de_read_fw(dev_priv, PIPEDSL(pipe)) & PIPEDSL_LINE_MASK;
 
@@ -249,11 +247,7 @@ int intel_crtc_scanline_to_hw(struct intel_crtc *crtc, int scanline)
 {
 	const struct drm_vblank_crtc *vblank = drm_crtc_vblank_crtc(&crtc->base);
 	const struct drm_display_mode *mode = &vblank->hwmode;
-	int vtotal;
-
-	vtotal = mode->crtc_vtotal;
-	if (mode->flags & DRM_MODE_FLAG_INTERLACE)
-		vtotal /= 2;
+	int vtotal = intel_mode_vtotal(mode);
 
 	return (scanline + vtotal - crtc->scanline_offset) % vtotal;
 }
@@ -310,13 +304,10 @@ static bool i915_get_crtc_scanoutpos(struct drm_crtc *_crtc,
 
 	htotal = mode->crtc_htotal;
 	hsync_start = mode->crtc_hsync_start;
-	vtotal = mode->crtc_vtotal;
+	vtotal = intel_mode_vtotal(mode);
 	vbl_start = intel_mode_vblank_start(mode);
 	vbl_end = intel_mode_vblank_end(mode);
 
-	if (mode->flags & DRM_MODE_FLAG_INTERLACE)
-		vtotal /= 2;
-
 	/*
 	 * Enter vblank critical section, as we will do multiple
 	 * timing critical raw register reads, potentially with
@@ -508,19 +499,12 @@ static int intel_crtc_scanline_offset(const struct intel_crtc_state *crtc_state)
 	 * However if queried just before the start of vblank we'll get an
 	 * answer that's slightly in the future.
 	 */
-	if (DISPLAY_VER(i915) == 2) {
-		int vtotal;
-
-		vtotal = adjusted_mode->crtc_vtotal;
-		if (adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE)
-			vtotal /= 2;
-
-		return vtotal - 1;
-	} else if (HAS_DDI(i915) && intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
+	if (DISPLAY_VER(i915) == 2)
+		return intel_mode_vtotal(adjusted_mode) - 1;
+	else if (HAS_DDI(i915) && intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
 		return 2;
-	} else {
+	else
 		return 1;
-	}
 }
 
 void intel_crtc_update_active_timings(const struct intel_crtc_state *crtc_state,
@@ -592,6 +576,16 @@ int intel_mode_vblank_end(const struct drm_display_mode *mode)
 	return vblank_end;
 }
 
+int intel_mode_vtotal(const struct drm_display_mode *mode)
+{
+	int vtotal = mode->crtc_vtotal;
+
+	if (mode->flags & DRM_MODE_FLAG_INTERLACE)
+		vtotal /= 2;
+
+	return vtotal;
+}
+
 void intel_vblank_evade_init(const struct intel_crtc_state *old_crtc_state,
 			     const struct intel_crtc_state *new_crtc_state,
 			     struct intel_vblank_evade_ctx *evade)
diff --git a/drivers/gpu/drm/i915/display/intel_vblank.h b/drivers/gpu/drm/i915/display/intel_vblank.h
index 6f11fd070f19..b51ae2c1039e 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.h
+++ b/drivers/gpu/drm/i915/display/intel_vblank.h
@@ -22,6 +22,7 @@ struct intel_vblank_evade_ctx {
 
 int intel_mode_vblank_start(const struct drm_display_mode *mode);
 int intel_mode_vblank_end(const struct drm_display_mode *mode);
+int intel_mode_vtotal(const struct drm_display_mode *mode);
 
 void intel_vblank_evade_init(const struct intel_crtc_state *old_crtc_state,
 			     const struct intel_crtc_state *new_crtc_state,
-- 
2.44.1

