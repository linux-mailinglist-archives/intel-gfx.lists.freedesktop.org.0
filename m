Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D4E746622A
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Dec 2021 12:17:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3682E6F497;
	Thu,  2 Dec 2021 11:17:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6F416F496
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Dec 2021 11:17:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10185"; a="223919232"
X-IronPort-AV: E=Sophos;i="5.87,281,1631602800"; d="scan'208";a="223919232"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2021 03:17:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,281,1631602800"; d="scan'208";a="560990813"
Received: from vsrini4-xps-8920.iind.intel.com (HELO localhost.localdomain)
 ([10.223.163.28])
 by fmsmga008.fm.intel.com with ESMTP; 02 Dec 2021 03:17:35 -0800
From: Vidya Srinivas <vidya.srinivas@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Dec 2021 16:38:36 +0530
Message-Id: <20211202110836.17536-1-vidya.srinivas@intel.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211201034727.1666-1-vidya.srinivas@intel.com>
References: <20211201034727.1666-1-vidya.srinivas@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Add PLANE_CUS_CTL restriction in
 max_width
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

PLANE_CUS_CTL has a restriction of 4096 width even though
PLANE_SIZE and scaler size registers supports max 5120.
Take care of this restriction in max_width.

Without this patch, when 5k content is sent on HDR plane
with NV12 content, FIFO underrun is seen and screen blanks
out.

v2: Addressed review comments from Ville. Added separate
functions for max_width - for HDR and SDR

v3: Addressed review comments from Ville. Changed names of
HDR and SDR max_width functions to icl_hdr_plane_max_width
and icl_sdr_plane_max_width

v4: Fixed paranthesis alignment. No code change

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
---
 .../drm/i915/display/skl_universal_plane.c    | 21 +++++++++++++++----
 1 file changed, 17 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 28890876bdeb..e717eb58b105 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -420,9 +420,19 @@ static int icl_plane_min_width(const struct drm_framebuffer *fb,
 	}
 }
 
-static int icl_plane_max_width(const struct drm_framebuffer *fb,
-			       int color_plane,
-			       unsigned int rotation)
+static int icl_hdr_plane_max_width(const struct drm_framebuffer *fb,
+				int color_plane,
+				unsigned int rotation)
+{
+	if (intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier))
+		return 4096;
+	else
+		return 5120;
+}
+
+static int icl_sdr_plane_max_width(const struct drm_framebuffer *fb,
+				int color_plane,
+				unsigned int rotation)
 {
 	return 5120;
 }
@@ -2108,7 +2118,10 @@ skl_universal_plane_create(struct drm_i915_private *dev_priv,
 
 	if (DISPLAY_VER(dev_priv) >= 11) {
 		plane->min_width = icl_plane_min_width;
-		plane->max_width = icl_plane_max_width;
+		if (icl_is_hdr_plane(dev_priv, plane_id))
+			plane->max_width = icl_hdr_plane_max_width;
+		else
+			plane->max_width = icl_sdr_plane_max_width;
 		plane->max_height = icl_plane_max_height;
 		plane->min_cdclk = icl_plane_min_cdclk;
 	} else if (DISPLAY_VER(dev_priv) >= 10) {
-- 
2.33.0

