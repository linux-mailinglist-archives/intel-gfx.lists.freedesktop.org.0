Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 27DE97B71EE
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Oct 2023 21:43:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DBDD10E312;
	Tue,  3 Oct 2023 19:43:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0103E10E07F
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Oct 2023 19:43:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696362196; x=1727898196;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FWJhmZuokYpDSZXRqKF35fbMKeDIQMht4KIQeXjed9s=;
 b=for4U8WxNRRMxF0yKdB7RotXqgXDTshrb4tKvHWahNtbu3t/l5Lbbe1N
 36Ox+7faNoWxqvOP7d7QWFEOw3CLavY++ncdifRwEnWygg5NhKGtKq2b6
 9BfP96nNuPEqmEDaYcdfw0JW/E9HVN0EQg/T8964fgspgdusOjZrjcRtY
 kbxlEvJ5HGrWR6nL2nNK0yKzZX/06EbI856HIxDXwdOIXDHco7WxmyvCP
 odQSeTFzl2q94mPmZPhlEMrz7sb8LDCxsFNXC8pfsm+fg1BU8fzRaVbTj
 AybhviqMtM3FTi24qptRPt9ULZMCK2qsZ5jEUoj1MISX6p3w0NVufU5CZ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="380238225"
X-IronPort-AV: E=Sophos;i="6.03,198,1694761200"; d="scan'208";a="380238225"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2023 12:43:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="894623246"
X-IronPort-AV: E=Sophos;i="6.03,198,1694761200"; d="scan'208";a="894623246"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by fmsmga001.fm.intel.com with SMTP; 03 Oct 2023 12:41:46 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 03 Oct 2023 22:43:10 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 Oct 2023 22:42:55 +0300
Message-ID: <20231003194256.28569-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231003194256.28569-1-ville.syrjala@linux.intel.com>
References: <20231003194256.28569-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 5/6] drm/i915/fbc: Split plane pixel format
 checks per-platform
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

Carve up pixel_format_is_valid() into per-platform variants to
make it easier to see what limits are actually being imposed.

Note that the XRGB1555 can be dropped from the g4x+ variant
since the plane no longer supports that format anyway.

TODO: maybe go for vfuncs later

v2: Update for lnl changes

Reviewed-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com> #v1
Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com> #v1
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 47 ++++++++++++++++++++++--
 1 file changed, 43 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 8999ef3f0972..37f96a4d50f2 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -917,7 +917,7 @@ static bool stride_is_valid(const struct intel_plane_state *plane_state)
 		return i8xx_fbc_stride_is_valid(plane_state);
 }
 
-static bool pixel_format_is_valid(const struct intel_plane_state *plane_state)
+static bool i8xx_fbc_pixel_format_is_valid(const struct intel_plane_state *plane_state)
 {
 	struct drm_i915_private *i915 = to_i915(plane_state->uapi.plane->dev);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
@@ -931,20 +931,59 @@ static bool pixel_format_is_valid(const struct intel_plane_state *plane_state)
 		/* 16bpp not supported on gen2 */
 		if (DISPLAY_VER(i915) == 2)
 			return false;
+		return true;
+	default:
+		return false;
+	}
+}
+
+static bool g4x_fbc_pixel_format_is_valid(const struct intel_plane_state *plane_state)
+{
+	struct drm_i915_private *i915 = to_i915(plane_state->uapi.plane->dev);
+	const struct drm_framebuffer *fb = plane_state->hw.fb;
+
+	switch (fb->format->format) {
+	case DRM_FORMAT_XRGB8888:
+	case DRM_FORMAT_XBGR8888:
+		return true;
+	case DRM_FORMAT_RGB565:
 		/* WaFbcOnly1to1Ratio:ctg */
 		if (IS_G4X(i915))
 			return false;
 		return true;
+	default:
+		return false;
+	}
+}
+
+static bool lnl_fbc_pixel_format_is_valid(const struct intel_plane_state *plane_state)
+{
+	const struct drm_framebuffer *fb = plane_state->hw.fb;
+
+	switch (fb->format->format) {
+	case DRM_FORMAT_XRGB8888:
+	case DRM_FORMAT_XBGR8888:
 	case DRM_FORMAT_ARGB8888:
 	case DRM_FORMAT_ABGR8888:
-		if (DISPLAY_VER(i915) >= 20)
-			return true;
-		fallthrough;
+	case DRM_FORMAT_RGB565:
+		return true;
 	default:
 		return false;
 	}
 }
 
+static bool pixel_format_is_valid(const struct intel_plane_state *plane_state)
+{
+	struct drm_i915_private *i915 = to_i915(plane_state->uapi.plane->dev);
+
+	if (DISPLAY_VER(i915) >= 20)
+		return lnl_fbc_pixel_format_is_valid(plane_state);
+	else if (DISPLAY_VER(i915) >= 5 || IS_G4X(i915))
+		return g4x_fbc_pixel_format_is_valid(plane_state);
+	else
+		return i8xx_fbc_pixel_format_is_valid(plane_state);
+}
+
 static bool i8xx_fbc_rotation_is_valid(const struct intel_plane_state *plane_state)
 {
 	return plane_state->hw.rotation == DRM_MODE_ROTATE_0;
-- 
2.41.0

