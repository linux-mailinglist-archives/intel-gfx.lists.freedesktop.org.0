Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E6B367B71F0
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Oct 2023 21:43:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D33C10E318;
	Tue,  3 Oct 2023 19:43:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4356510E07F
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Oct 2023 19:43:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696362195; x=1727898195;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6wDL94p+Ddu7ZxH30uUzYlPddS6YYfsHSUMQcb5FOms=;
 b=IOk+j8YSu4R2pXEZAoaWpLUoUGnkeS+hI8DvjC+Bn2c0qgDuz80zUQPf
 0LvaFj0qdXc8ZKaZumgMVOUTN08FY6xSsp0IQD07dVs13Lxoaaaxqo39E
 08nc1wEL84VlO0Dy4SYg1Brkx1kQ4VTWemjTkd4WXN0Ge2LQjPuFzCwkQ
 1T2VO8Xnkxlgi7Dt/k/e+LEOcBeNyVUmOAWkMkgYB9QQfUWOP4GVerKsy
 0zZRev1WUU8XmRnq+Y/9xHHDMGvDNXLZstDzaiNZ40JUGcCLybzPO0GH9
 kpTOlTyAFgeeAp+0TagkT4Yp3qFdQPSKgEKCTTXkTpRJ24V4Rxq1E5AYK Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="380238211"
X-IronPort-AV: E=Sophos;i="6.03,198,1694761200"; d="scan'208";a="380238211"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2023 12:43:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="894623227"
X-IronPort-AV: E=Sophos;i="6.03,198,1694761200"; d="scan'208";a="894623227"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by fmsmga001.fm.intel.com with SMTP; 03 Oct 2023 12:41:36 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 03 Oct 2023 22:43:00 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 Oct 2023 22:42:52 +0300
Message-ID: <20231003194256.28569-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231003194256.28569-1-ville.syrjala@linux.intel.com>
References: <20231003194256.28569-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/6] drm/i915/fbc: Split plane stride checks
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

Carve up stride_is_valid() into per-platform variants to
make it easier to see what limits are actually being imposed.

TODO: maybe go for vfuncs later

Reviewed-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 64 ++++++++++++++++++------
 1 file changed, 49 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index f12ea170b748..dc334b9d993f 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -853,36 +853,70 @@ void intel_fbc_cleanup(struct drm_i915_private *i915)
 	}
 }
 
-static bool stride_is_valid(const struct intel_plane_state *plane_state)
+static bool i8xx_fbc_stride_is_valid(const struct intel_plane_state *plane_state)
 {
-	struct drm_i915_private *i915 = to_i915(plane_state->uapi.plane->dev);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
 	unsigned int stride = intel_fbc_plane_stride(plane_state) *
 		fb->format->cpp[0];
 
-	/* This should have been caught earlier. */
-	if (drm_WARN_ON_ONCE(&i915->drm, (stride & (64 - 1)) != 0))
-		return false;
+	return stride == 4096 || stride == 8192;
+}
 
-	/* Below are the additional FBC restrictions. */
-	if (stride < 512)
-		return false;
+static bool i965_fbc_stride_is_valid(const struct intel_plane_state *plane_state)
+{
+	const struct drm_framebuffer *fb = plane_state->hw.fb;
+	unsigned int stride = intel_fbc_plane_stride(plane_state) *
+		fb->format->cpp[0];
 
-	if (DISPLAY_VER(i915) == 2 || DISPLAY_VER(i915) == 3)
-		return stride == 4096 || stride == 8192;
+	return stride >= 2048 && stride <= 16384;
+}
 
-	if (DISPLAY_VER(i915) == 4 && !IS_G4X(i915) &&
-	    (stride < 2048 || stride > 16384))
-		return false;
+static bool g4x_fbc_stride_is_valid(const struct intel_plane_state *plane_state)
+{
+	return true;
+}
+
+static bool skl_fbc_stride_is_valid(const struct intel_plane_state *plane_state)
+{
+	const struct drm_framebuffer *fb = plane_state->hw.fb;
+	unsigned int stride = intel_fbc_plane_stride(plane_state) *
+		fb->format->cpp[0];
 
 	/* Display WA #1105: skl,bxt,kbl,cfl,glk */
-	if ((DISPLAY_VER(i915) == 9 || IS_GEMINILAKE(i915)) &&
-	    fb->modifier == DRM_FORMAT_MOD_LINEAR && stride & 511)
+	if (fb->modifier == DRM_FORMAT_MOD_LINEAR && stride & 511)
 		return false;
 
 	return true;
 }
 
+static bool icl_fbc_stride_is_valid(const struct intel_plane_state *plane_state)
+{
+	return true;
+}
+
+static bool stride_is_valid(const struct intel_plane_state *plane_state)
+{
+	struct drm_i915_private *i915 = to_i915(plane_state->uapi.plane->dev);
+	const struct drm_framebuffer *fb = plane_state->hw.fb;
+	unsigned int stride = intel_fbc_plane_stride(plane_state) *
+		fb->format->cpp[0];
+
+	/* This should have been caught earlier. */
+	if (drm_WARN_ON_ONCE(&i915->drm, (stride & (64 - 1)) != 0))
+		return false;
+
+	if (DISPLAY_VER(i915) >= 11)
+		return icl_fbc_stride_is_valid(plane_state);
+	else if (DISPLAY_VER(i915) >= 9)
+		return skl_fbc_stride_is_valid(plane_state);
+	else if (DISPLAY_VER(i915) >= 5 || IS_G4X(i915))
+		return g4x_fbc_stride_is_valid(plane_state);
+	else if (DISPLAY_VER(i915) == 4)
+		return i965_fbc_stride_is_valid(plane_state);
+	else
+		return i8xx_fbc_stride_is_valid(plane_state);
+}
+
 static bool pixel_format_is_valid(const struct intel_plane_state *plane_state)
 {
 	struct drm_i915_private *i915 = to_i915(plane_state->uapi.plane->dev);
-- 
2.41.0

