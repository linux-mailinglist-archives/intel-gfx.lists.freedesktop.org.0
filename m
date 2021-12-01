Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54D0C46519A
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Dec 2021 16:26:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65CC46ECF7;
	Wed,  1 Dec 2021 15:26:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 605FE6ECF7
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Dec 2021 15:26:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10184"; a="233981287"
X-IronPort-AV: E=Sophos;i="5.87,278,1631602800"; d="scan'208";a="233981287"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2021 07:26:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,278,1631602800"; d="scan'208";a="654818499"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga001.fm.intel.com with SMTP; 01 Dec 2021 07:25:59 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 01 Dec 2021 17:25:58 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Dec 2021 17:25:40 +0200
Message-Id: <20211201152552.7821-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211201152552.7821-1-ville.syrjala@linux.intel.com>
References: <20211201152552.7821-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 02/14] drm/i915: Rename plane YUV order bits
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

Rename the YUV byte order bits to be a bit more consistent.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_universal_plane.c |  8 ++++----
 drivers/gpu/drm/i915/i915_reg.h                    | 14 +++++++-------
 2 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 845b99844ec6..9ff24a0e79b4 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -672,13 +672,13 @@ static u32 skl_plane_ctl_format(u32 pixel_format)
 	case DRM_FORMAT_XYUV8888:
 		return PLANE_CTL_FORMAT_XYUV;
 	case DRM_FORMAT_YUYV:
-		return PLANE_CTL_FORMAT_YUV422 | PLANE_CTL_YUV422_YUYV;
+		return PLANE_CTL_FORMAT_YUV422 | PLANE_CTL_YUV422_ORDER_YUYV;
 	case DRM_FORMAT_YVYU:
-		return PLANE_CTL_FORMAT_YUV422 | PLANE_CTL_YUV422_YVYU;
+		return PLANE_CTL_FORMAT_YUV422 | PLANE_CTL_YUV422_ORDER_YVYU;
 	case DRM_FORMAT_UYVY:
-		return PLANE_CTL_FORMAT_YUV422 | PLANE_CTL_YUV422_UYVY;
+		return PLANE_CTL_FORMAT_YUV422 | PLANE_CTL_YUV422_ORDER_UYVY;
 	case DRM_FORMAT_VYUY:
-		return PLANE_CTL_FORMAT_YUV422 | PLANE_CTL_YUV422_VYUY;
+		return PLANE_CTL_FORMAT_YUV422 | PLANE_CTL_YUV422_ORDER_VYUY;
 	case DRM_FORMAT_NV12:
 		return PLANE_CTL_FORMAT_NV12;
 	case DRM_FORMAT_P010:
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 3c0471f20e53..02d8db03c0bf 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -6966,7 +6966,7 @@ enum {
 #define   DVS_SOURCE_KEY	(1 << 22)
 #define   DVS_RGB_ORDER_XBGR	(1 << 20)
 #define   DVS_YUV_FORMAT_BT709	(1 << 18)
-#define   DVS_YUV_BYTE_ORDER_MASK (3 << 16)
+#define   DVS_YUV_ORDER_MASK	(3 << 16)
 #define   DVS_YUV_ORDER_YUYV	(0 << 16)
 #define   DVS_YUV_ORDER_UYVY	(1 << 16)
 #define   DVS_YUV_ORDER_YVYU	(2 << 16)
@@ -7045,7 +7045,7 @@ enum {
 #define   SPRITE_RGB_ORDER_RGBX		(1 << 20) /* only for 888 and 161616 */
 #define   SPRITE_YUV_TO_RGB_CSC_DISABLE	(1 << 19)
 #define   SPRITE_YUV_TO_RGB_CSC_FORMAT_BT709	(1 << 18) /* 0 is BT601 */
-#define   SPRITE_YUV_BYTE_ORDER_MASK	(3 << 16)
+#define   SPRITE_YUV_ORDER_MASK		(3 << 16)
 #define   SPRITE_YUV_ORDER_YUYV		(0 << 16)
 #define   SPRITE_YUV_ORDER_UYVY		(1 << 16)
 #define   SPRITE_YUV_ORDER_YVYU		(2 << 16)
@@ -7130,7 +7130,7 @@ enum {
 #define   SP_ALPHA_PREMULTIPLY		(1 << 23) /* CHV pipe B */
 #define   SP_SOURCE_KEY			(1 << 22)
 #define   SP_YUV_FORMAT_BT709		(1 << 18)
-#define   SP_YUV_BYTE_ORDER_MASK	(3 << 16)
+#define   SP_YUV_ORDER_MASK		(3 << 16)
 #define   SP_YUV_ORDER_YUYV		(0 << 16)
 #define   SP_YUV_ORDER_UYVY		(1 << 16)
 #define   SP_YUV_ORDER_YVYU		(2 << 16)
@@ -7271,10 +7271,10 @@ enum {
 #define   PLANE_CTL_YUV420_Y_PLANE		(1 << 19)
 #define   PLANE_CTL_YUV_TO_RGB_CSC_FORMAT_BT709	(1 << 18)
 #define   PLANE_CTL_YUV422_ORDER_MASK		(0x3 << 16)
-#define   PLANE_CTL_YUV422_YUYV			(0 << 16)
-#define   PLANE_CTL_YUV422_UYVY			(1 << 16)
-#define   PLANE_CTL_YUV422_YVYU			(2 << 16)
-#define   PLANE_CTL_YUV422_VYUY			(3 << 16)
+#define   PLANE_CTL_YUV422_ORDER_YUYV		(0 << 16)
+#define   PLANE_CTL_YUV422_ORDER_UYVY		(1 << 16)
+#define   PLANE_CTL_YUV422_ORDER_YVYU		(2 << 16)
+#define   PLANE_CTL_YUV422_ORDER_VYUY		(3 << 16)
 #define   PLANE_CTL_RENDER_DECOMPRESSION_ENABLE	(1 << 15)
 #define   PLANE_CTL_TRICKLE_FEED_DISABLE	(1 << 14)
 #define   PLANE_CTL_CLEAR_COLOR_DISABLE		(1 << 13) /* TGL+ */
-- 
2.32.0

