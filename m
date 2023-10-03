Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C6C287B71EF
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Oct 2023 21:43:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70FF210E317;
	Tue,  3 Oct 2023 19:43:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC39F10E07F
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Oct 2023 19:43:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696362195; x=1727898195;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LUeaVlnkjimPNPjkCGmh2L5JDoufExSYLtgFXZRJvq4=;
 b=M36AUOmnRdThZfOXZxPkjKmPksHCtQLS9AemCE7Kg5Qn+LUMAYLj4rOL
 /U7Jidd0Z8LN1PpPZjrW33HbakRFVzUW8pNWl8xJ3o6uQ/YTMKiQf21cW
 wHedki9DrVorqW5EOlIMgApGC5v78yzVvq5NIDQ++swDuTXszfrfoWigK
 ALQrMxDC71W4xVaGi7R5DZnKmzey/RnkkCoNPMl3EbVPbRFwi1/aP16ks
 nNx0JXdVWxVFkhjRQixv9Qy65XepDPRXcg28fxbt4xkCoJHNxg7NR3rT0
 fBAyjuQkuSX/j9Toevjodjo3enkoS0KLWgCvWHvqCj2Fv4PPCsp2Gae12 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="380238215"
X-IronPort-AV: E=Sophos;i="6.03,198,1694761200"; d="scan'208";a="380238215"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2023 12:43:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="894623236"
X-IronPort-AV: E=Sophos;i="6.03,198,1694761200"; d="scan'208";a="894623236"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by fmsmga001.fm.intel.com with SMTP; 03 Oct 2023 12:41:40 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 03 Oct 2023 22:43:03 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 Oct 2023 22:42:53 +0300
Message-ID: <20231003194256.28569-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231003194256.28569-1-ville.syrjala@linux.intel.com>
References: <20231003194256.28569-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 3/6] drm/i915/fbc: Split plane tiling checks
 per-platform
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

Carve up tiling_is_valid() into per-platform variants to
make it easier to see what limits are actually being imposed.

TODO: maybe go for vfuncs later

Reviewed-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 21 ++++++++++++++++++---
 1 file changed, 18 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index dc334b9d993f..ce6eefaba501 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -994,16 +994,21 @@ static bool intel_fbc_hw_tracking_covers_screen(const struct intel_plane_state *
 	return effective_w <= max_w && effective_h <= max_h;
 }
 
-static bool tiling_is_valid(const struct intel_plane_state *plane_state)
+static bool i8xx_fbc_tiling_valid(const struct intel_plane_state *plane_state)
+{
+	const struct drm_framebuffer *fb = plane_state->hw.fb;
+
+	return fb->modifier == I915_FORMAT_MOD_X_TILED;
+}
+
+static bool skl_fbc_tiling_valid(const struct intel_plane_state *plane_state)
 {
-	struct drm_i915_private *i915 = to_i915(plane_state->uapi.plane->dev);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
 
 	switch (fb->modifier) {
 	case DRM_FORMAT_MOD_LINEAR:
 	case I915_FORMAT_MOD_Y_TILED:
 	case I915_FORMAT_MOD_Yf_TILED:
-		return DISPLAY_VER(i915) >= 9;
 	case I915_FORMAT_MOD_4_TILED:
 	case I915_FORMAT_MOD_X_TILED:
 		return true;
@@ -1012,6 +1017,16 @@ static bool tiling_is_valid(const struct intel_plane_state *plane_state)
 	}
 }
 
+static bool tiling_is_valid(const struct intel_plane_state *plane_state)
+{
+	struct drm_i915_private *i915 = to_i915(plane_state->uapi.plane->dev);
+
+	if (DISPLAY_VER(i915) >= 9)
+		return skl_fbc_tiling_valid(plane_state);
+	else
+		return i8xx_fbc_tiling_valid(plane_state);
+}
+
 static void intel_fbc_update_state(struct intel_atomic_state *state,
 				   struct intel_crtc *crtc,
 				   struct intel_plane *plane)
-- 
2.41.0

