Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 751C84644A0
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Dec 2021 02:44:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E72A66E20E;
	Wed,  1 Dec 2021 01:44:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90D1C6E20E
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Dec 2021 01:44:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10184"; a="223239848"
X-IronPort-AV: E=Sophos;i="5.87,277,1631602800"; d="scan'208";a="223239848"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2021 17:44:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,277,1631602800"; d="scan'208";a="500027255"
Received: from vsrini4-xps-8920.iind.intel.com (HELO localhost.localdomain)
 ([10.223.163.28])
 by orsmga007.jf.intel.com with ESMTP; 30 Nov 2021 17:44:50 -0800
From: Vidya Srinivas <vidya.srinivas@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Dec 2021 07:05:50 +0530
Message-Id: <20211201013550.32439-1-vidya.srinivas@intel.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211130171220.8622-1-vidya.srinivas@intel.com>
References: <20211130171220.8622-1-vidya.srinivas@intel.com>
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
Cc: Yashashvi Shantam <shantam.yashashvi@intel.com>
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

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
Signed-off-by: Yashashvi Shantam <shantam.yashashvi@intel.com>
---
 .../gpu/drm/i915/display/skl_universal_plane.c  | 17 +++++++++++++++--
 1 file changed, 15 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 28890876bdeb..e7205a53dc2f 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -420,7 +420,17 @@ static int icl_plane_min_width(const struct drm_framebuffer *fb,
 	}
 }
 
-static int icl_plane_max_width(const struct drm_framebuffer *fb,
+static int icl_hdr_plane_max_width(const struct drm_framebuffer *fb,
+			       int color_plane,
+			       unsigned int rotation)
+{
+	if (intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier))
+		return 4096;
+	else
+		return 5120;
+}
+
+static int icl_sdr_plane_max_width(const struct drm_framebuffer *fb,
 			       int color_plane,
 			       unsigned int rotation)
 {
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

