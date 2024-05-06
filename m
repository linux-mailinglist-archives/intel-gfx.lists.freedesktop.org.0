Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 910CB8BCE95
	for <lists+intel-gfx@lfdr.de>; Mon,  6 May 2024 14:57:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2970A10F750;
	Mon,  6 May 2024 12:57:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jLKmF6ZE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3802010F750;
 Mon,  6 May 2024 12:57:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715000247; x=1746536247;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Abhl3teA+ljzbyLXLR/wPKDQgOsPQiV5a5951fHgEp8=;
 b=jLKmF6ZEqEhnLnQ1NPc7VNfOvBt4ionlKpofMNjNjd9KnFJXMdtWKo2H
 rgE1ZQq3E8w2JhW/uA9KgYxnlrU70wa6CquRFIQQGSAmooZ43Sq8G7w99
 BOS7wsBUNf2cfQi5mG0ox+qJD4zaIPOCPCpYADhp/X2SQLYbrJwObBd0c
 dEwKfiM2EHGYX3+7ckDQKHoKQtSAPEegJsOFdK3QS/CFEf3p/OPHjqUCt
 8V2KjAhSw8jtO9GGDonggiZ9k128LYub7p0ROrM7XBsWbbdMSi9OfhFg/
 A6rI33hIWwLJW/VzkmnbgNcuT3Na5JwaEisxWxS7+gk10mouypgsJhfQU Q==;
X-CSE-ConnectionGUID: oxS3dcUOSn2ouWpIHLxkpg==
X-CSE-MsgGUID: WBah+K6ETLeXSoxAu26tdA==
X-IronPort-AV: E=McAfee;i="6600,9927,11065"; a="10865320"
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="10865320"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 05:57:27 -0700
X-CSE-ConnectionGUID: 6PFP9ZI2QSWrQIxLaUvs2A==
X-CSE-MsgGUID: ESU4LjItR6KIS1C6xghHNA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="28164944"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 06 May 2024 05:57:25 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 06 May 2024 15:57:24 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 2/9] drm/i915: Clean up skl+ plane stride limits
Date: Mon,  6 May 2024 15:57:11 +0300
Message-ID: <20240506125718.26001-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240506125718.26001-1-ville.syrjala@linux.intel.com>
References: <20240506125718.26001-1-ville.syrjala@linux.intel.com>
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

skl_plane_max_stride() is pretty messy. Streamline it and
split it into clear skl+ vs. adl+ variants.

TODO: Deal with icl and tgl strude limits properly

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/skl_universal_plane.c    | 65 +++++++++++--------
 1 file changed, 37 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 0a8e781a3648..b8103d6ebc1f 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -461,41 +461,46 @@ static int icl_plane_max_height(const struct drm_framebuffer *fb,
 }
 
 static unsigned int
-skl_plane_max_stride(struct intel_plane *plane,
-		     u32 pixel_format, u64 modifier,
-		     unsigned int rotation)
+plane_max_stride(struct intel_plane *plane,
+		 u32 pixel_format, u64 modifier,
+		 unsigned int rotation,
+		 unsigned int max_pixels,
+		 unsigned int max_bytes)
 {
-	struct drm_i915_private *i915 = to_i915(plane->base.dev);
 	const struct drm_format_info *info = drm_format_info(pixel_format);
 	int cpp = info->cpp[0];
-	int max_horizontal_pixels = 8192;
-	int max_stride_bytes;
-
-	if (DISPLAY_VER(i915) >= 13) {
-		/*
-		 * The stride in bytes must not exceed of the size
-		 * of 128K bytes. For pixel formats of 64bpp will allow
-		 * for a 16K pixel surface.
-		 */
-		max_stride_bytes = 131072;
-		if (cpp == 8)
-			max_horizontal_pixels = 16384;
-		else
-			max_horizontal_pixels = 65536;
-	} else {
-		/*
-		 * "The stride in bytes must not exceed the
-		 * of the size of 8K pixels and 32K bytes."
-		 */
-		max_stride_bytes = 32768;
-	}
 
 	if (drm_rotation_90_or_270(rotation))
-		return min(max_horizontal_pixels, max_stride_bytes / cpp);
+		return min(max_pixels, max_bytes / cpp);
 	else
-		return min(max_horizontal_pixels * cpp, max_stride_bytes);
+		return min(max_pixels * cpp, max_bytes);
 }
 
+static unsigned int
+adl_plane_max_stride(struct intel_plane *plane,
+		     u32 pixel_format, u64 modifier,
+		     unsigned int rotation)
+{
+	unsigned int max_pixels = 65536; /* PLANE_OFFSET limit */
+	unsigned int max_bytes = 128 * 1024;
+
+	return plane_max_stride(plane, pixel_format,
+				modifier, rotation,
+				max_pixels, max_bytes);
+}
+
+static unsigned int
+skl_plane_max_stride(struct intel_plane *plane,
+		     u32 pixel_format, u64 modifier,
+		     unsigned int rotation)
+{
+	unsigned int max_pixels = 8192; /* PLANE_OFFSET limit */
+	unsigned int max_bytes = 32 * 1024;
+
+	return plane_max_stride(plane, pixel_format,
+				modifier, rotation,
+				max_pixels, max_bytes);
+}
 
 /* Preoffset values for YUV to RGB Conversion */
 #define PREOFF_YUV_TO_RGB_HI		0x1800
@@ -2357,7 +2362,11 @@ skl_universal_plane_create(struct drm_i915_private *dev_priv,
 		plane->min_cdclk = skl_plane_min_cdclk;
 	}
 
-	plane->max_stride = skl_plane_max_stride;
+	if (DISPLAY_VER(dev_priv) >= 13)
+		plane->max_stride = adl_plane_max_stride;
+	else
+		plane->max_stride = skl_plane_max_stride;
+
 	if (DISPLAY_VER(dev_priv) >= 11) {
 		plane->update_noarm = icl_plane_update_noarm;
 		plane->update_arm = icl_plane_update_arm;
-- 
2.43.2

