Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 32D7B9ADAB9
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2024 05:56:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7356210E89C;
	Thu, 24 Oct 2024 03:56:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A31uQQ3E";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A85BF10E897;
 Thu, 24 Oct 2024 03:56:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729742172; x=1761278172;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MAK5ZZJSdMSFmTInN1RsXVlegsujrnY9G0QGLv2/nfY=;
 b=A31uQQ3EWpvcCSRZaUwDjUdSel726s+Gcr2QRX0W5Q1ahujCrj2ZI/JR
 FmmcA7XXXFZ5xkMYDlIpgpasHKzltQ+YU3eMDCWzK3o/Uxu6AKiyPR8HS
 ilemeOY7u96YzEIbrNaXIHV1mQJE5RhozQpJMTT0iZ/fumSR0U8jYolot
 t0ViN+oJfXA9kjY8oHO11HzkmOP+x1hd+GUbOeh9mkg77NZ9aH5oU2eUG
 y4VfG4okFNnZJH9ka8nRxyecctGhfZzLWp3cm56q2VphZFm+48KinAGat
 M4f5x7Lj5JDRCT88JKnhrvW53ML1Eg4BRsUJ3axaNvAuIA043wu0aLGjX g==;
X-CSE-ConnectionGUID: nRzew6LISDmoAzsjjDs2PQ==
X-CSE-MsgGUID: BbXLAzQuSgqVkjHSYzy/jg==
X-IronPort-AV: E=McAfee;i="6700,10204,11234"; a="28818508"
X-IronPort-AV: E=Sophos;i="6.11,228,1725346800"; d="scan'208";a="28818508"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 20:56:11 -0700
X-CSE-ConnectionGUID: lp7JeJKLSMCRzKjJAD92RA==
X-CSE-MsgGUID: 4BywU89kQM2rjk9NAXYO+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,228,1725346800"; d="scan'208";a="80128108"
Received: from linux-lunar-lake-client-platform.iind.intel.com
 ([10.227.88.172])
 by fmviesa007.fm.intel.com with ESMTP; 23 Oct 2024 20:56:09 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, matthew.d.roper@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>,
 Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCH 1/4] drm/i915/xe3lpd: Increase resolution for plane to support
 6k
Date: Thu, 24 Oct 2024 09:25:49 +0530
Message-Id: <20241024035552.94363-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241024035552.94363-1-suraj.kandpal@intel.com>
References: <20241024035552.94363-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
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

DISPLAY_VER >= 30 onwards CRTC can now support 6k resolution.
Increase pipe and plane max width and height to reflect this
increase in resolution.

--v2
-Take care of the subsampling scenario sooner rather than later [Matt]

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c     |  5 ++++-
 .../gpu/drm/i915/display/skl_universal_plane.c   | 16 +++++++++++++++-
 2 files changed, 19 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index e1f6255e918b..37bac53f996e 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -8432,7 +8432,10 @@ intel_mode_valid_max_plane_size(struct drm_i915_private *dev_priv,
 	 * plane so let's not advertize modes that are
 	 * too big for that.
 	 */
-	if (DISPLAY_VER(dev_priv) >= 11) {
+	if (DISPLAY_VER(dev_priv) >= 30) {
+		plane_width_max = 6144 * num_joined_pipes;
+		plane_height_max = 4096;
+	} else if (DISPLAY_VER(dev_priv) >= 11) {
 		plane_width_max = 5120 * num_joined_pipes;
 		plane_height_max = 4320;
 	} else {
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 9207b7e96974..b3660c71e499 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -432,6 +432,16 @@ static int icl_plane_min_width(const struct drm_framebuffer *fb,
 	}
 }
 
+static int xe3_plane_max_width(const struct drm_framebuffer *fb,
+			       int color_plane,
+			       unsigned int rotation)
+{
+	if (intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier))
+		return 4096;
+	else
+		return 6144;
+}
+
 static int icl_hdr_plane_max_width(const struct drm_framebuffer *fb,
 				   int color_plane,
 				   unsigned int rotation)
@@ -2511,7 +2521,11 @@ skl_universal_plane_create(struct drm_i915_private *dev_priv,
 
 	intel_fbc_add_plane(skl_plane_fbc(dev_priv, pipe, plane_id), plane);
 
-	if (DISPLAY_VER(dev_priv) >= 11) {
+	if (DISPLAY_VER(dev_priv) >= 30) {
+		plane->max_width = xe3_plane_max_width;
+		plane->max_height = icl_plane_max_height;
+		plane->min_cdclk = icl_plane_min_cdclk;
+	} else if (DISPLAY_VER(dev_priv) >= 11) {
 		plane->min_width = icl_plane_min_width;
 		if (icl_is_hdr_plane(dev_priv, plane_id))
 			plane->max_width = icl_hdr_plane_max_width;
-- 
2.34.1

