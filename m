Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4925463CCA
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Nov 2021 18:28:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 063EB6E02E;
	Tue, 30 Nov 2021 17:28:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 336906E02E
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Nov 2021 17:28:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10184"; a="233769129"
X-IronPort-AV: E=Sophos;i="5.87,276,1631602800"; d="scan'208";a="233769129"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2021 09:05:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,276,1631602800"; d="scan'208";a="746791727"
Received: from vsrini4-xps-8920.iind.intel.com (HELO localhost.localdomain)
 ([10.223.163.28])
 by fmsmga005.fm.intel.com with ESMTP; 30 Nov 2021 09:05:34 -0800
From: Vidya Srinivas <vidya.srinivas@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 30 Nov 2021 22:26:38 +0530
Message-Id: <20211130165638.8499-1-vidya.srinivas@intel.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211130160534.7983-1-vidya.srinivas@intel.com>
References: <20211130160534.7983-1-vidya.srinivas@intel.com>
MIME-Version: 1.0
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

Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
Signed-off-by: Yashashvi Shantam <shantam.yashashvi@intel.com>
---
 .../gpu/drm/i915/display/skl_universal_plane.c  | 17 +++++++++++++++--
 1 file changed, 15 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 28890876bdeb..d320a3ba1ade 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -420,7 +420,17 @@ static int icl_plane_min_width(const struct drm_framebuffer *fb,
 	}
 }
 
-static int icl_plane_max_width(const struct drm_framebuffer *fb,
+static int icl_plane_max_width_hdr(const struct drm_framebuffer *fb,
+			       int color_plane,
+			       unsigned int rotation)
+{
+	if (intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier))
+		return 4096;
+	else
+		return 5120;
+}
+
+static int icl_plane_max_width_sdr(const struct drm_framebuffer *fb,
 			       int color_plane,
 			       unsigned int rotation)
 {
@@ -2108,7 +2118,10 @@ skl_universal_plane_create(struct drm_i915_private *dev_priv,
 
 	if (DISPLAY_VER(dev_priv) >= 11) {
 		plane->min_width = icl_plane_min_width;
-		plane->max_width = icl_plane_max_width;
+		if (icl_is_hdr_plane(dev_priv, plane_id))
+			plane->max_width = icl_plane_max_width_hdr;
+		else
+			plane->max_width = icl_plane_max_width_sdr;
 		plane->max_height = icl_plane_max_height;
 		plane->min_cdclk = icl_plane_min_cdclk;
 	} else if (DISPLAY_VER(dev_priv) >= 10) {
-- 
2.33.0

