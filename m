Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4064F20FED2
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2020 23:29:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F395E6E317;
	Tue, 30 Jun 2020 21:28:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 653E16E2E5;
 Tue, 30 Jun 2020 21:28:36 +0000 (UTC)
IronPort-SDR: PHQ4tuDdFrYxZ8Uu1FdAndZzo31aZ2dd0rOhmr5R41cCTFHVCVoV9qlLe1z9ks9R6syOvRWkz2
 yIZM+rRNe7iw==
X-IronPort-AV: E=McAfee;i="6000,8403,9668"; a="146386940"
X-IronPort-AV: E=Sophos;i="5.75,298,1589266800"; d="scan'208";a="146386940"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2020 14:28:36 -0700
IronPort-SDR: M2F2NlIyR3oWkY0YYxbyrmzNyEEmE9d5jYneJab/1Iuxm0bjrLStxKSo4N3nBf0McFyC/i8oqI
 dGpD3zK6Gq6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,298,1589266800"; d="scan'208";a="481066619"
Received: from hdwiyono-mobl.amr.corp.intel.com (HELO
 achrisan-DESK2.amr.corp.intel.com) ([10.254.176.225])
 by fmsmga006.fm.intel.com with ESMTP; 30 Jun 2020 14:28:35 -0700
From: Anitha Chrisanthus <anitha.chrisanthus@intel.com>
To: dri-devel@lists.freedesktop.org, anitha.chrisanthus@intel.com,
 bob.j.paauwe@intel.com, edmund.j.dea@intel.com
Date: Tue, 30 Jun 2020 14:27:17 -0700
Message-Id: <1593552491-23698-6-git-send-email-anitha.chrisanthus@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1593552491-23698-1-git-send-email-anitha.chrisanthus@intel.com>
References: <1593552491-23698-1-git-send-email-anitha.chrisanthus@intel.com>
Subject: [Intel-gfx] [PATCH 05/59] drm/kmb: Updated kmb_plane_atomic_check
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
Cc: daniel.vetter@intel.com, intel-gfx@lists.freedesktop.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Check if format is supported and size is within limits.

v2: simplified the code as per code review

Signed-off-by: Anitha Chrisanthus <anitha.chrisanthus@intel.com>
Reviewed-by: Bob Paauwe <bob.j.paauwe@intel.com>
---
 drivers/gpu/drm/kmb/kmb_plane.c | 111 +++++++++++++++++++++++-----------------
 1 file changed, 65 insertions(+), 46 deletions(-)

diff --git a/drivers/gpu/drm/kmb/kmb_plane.c b/drivers/gpu/drm/kmb/kmb_plane.c
index 9f1e44f..886229a 100644
--- a/drivers/gpu/drm/kmb/kmb_plane.c
+++ b/drivers/gpu/drm/kmb/kmb_plane.c
@@ -41,15 +41,66 @@
 #include "kmb_regs.h"
 #include "kmb_drv.h"
 
+/* graphics layer ( layers 2 & 3) formats, only packed formats  are supported*/
+static const u32 kmb_formats_g[] = {
+	DRM_FORMAT_RGB332,
+	DRM_FORMAT_XRGB4444, DRM_FORMAT_XBGR4444,
+	DRM_FORMAT_ARGB4444, DRM_FORMAT_ABGR4444,
+	DRM_FORMAT_XRGB1555, DRM_FORMAT_XBGR1555,
+	DRM_FORMAT_ARGB1555, DRM_FORMAT_ABGR1555,
+	DRM_FORMAT_RGB565, DRM_FORMAT_BGR565,
+	DRM_FORMAT_RGB888, DRM_FORMAT_BGR888,
+	DRM_FORMAT_XRGB8888, DRM_FORMAT_XBGR8888,
+	DRM_FORMAT_ARGB8888, DRM_FORMAT_ABGR8888,
+};
+
+#define MAX_FORMAT_G	(ARRAY_SIZE(kmb_formats_g))
+#define MAX_FORMAT_V	(ARRAY_SIZE(kmb_formats_v))
+
+/* video layer ( 0 & 1) formats, packed and planar formats are supported */
+static const u32 kmb_formats_v[] = {
+	/* packed formats */
+	DRM_FORMAT_RGB332,
+	DRM_FORMAT_XRGB4444, DRM_FORMAT_XBGR4444,
+	DRM_FORMAT_ARGB4444, DRM_FORMAT_ABGR4444,
+	DRM_FORMAT_XRGB1555, DRM_FORMAT_XBGR1555,
+	DRM_FORMAT_ARGB1555, DRM_FORMAT_ABGR1555,
+	DRM_FORMAT_RGB565, DRM_FORMAT_BGR565,
+	DRM_FORMAT_RGB888, DRM_FORMAT_BGR888,
+	DRM_FORMAT_XRGB8888, DRM_FORMAT_XBGR8888,
+	DRM_FORMAT_ARGB8888, DRM_FORMAT_ABGR8888,
+	/*planar formats */
+	DRM_FORMAT_YUV420, DRM_FORMAT_YVU420,
+	DRM_FORMAT_YUV422, DRM_FORMAT_YVU422,
+	DRM_FORMAT_YUV444, DRM_FORMAT_YVU444,
+	DRM_FORMAT_NV12, DRM_FORMAT_NV21,
+};
+
+static unsigned int check_pixel_format(struct drm_plane *plane, u32 format)
+{
+	int i;
+
+	for (i = 0; i < plane->format_count; i++) {
+		if (plane->format_types[i] == format)
+			return 0;
+	}
+	return -EINVAL;
+}
+
 static int kmb_plane_atomic_check(struct drm_plane *plane,
 				  struct drm_plane_state *state)
 {
-/* TBD below structure will be used for implementation later
- *	struct drm_crtc_state *crtc_state;
- */
-	/* TBD */
-	/* Plane based checking */
+	struct drm_framebuffer *fb;
+	int ret;
+
+	fb = state->fb;
 
+	ret = check_pixel_format(plane, fb->format->format);
+	if (ret)
+		return ret;
+
+	if (state->crtc_w > KMB_MAX_WIDTH || state->crtc_h > KMB_MAX_HEIGHT)
+		return -EINVAL;
 	return 0;
 }
 
@@ -58,36 +109,36 @@ unsigned int set_pixel_format(u32 format)
 	unsigned int val = 0;
 
 	switch (format) {
-	/*planar formats */
+		/*planar formats */
 	case DRM_FORMAT_YUV444:
 		val = LCD_LAYER_FORMAT_YCBCR444PLAN | LCD_LAYER_PLANAR_STORAGE;
 		break;
 	case DRM_FORMAT_YVU444:
 		val = LCD_LAYER_FORMAT_YCBCR444PLAN | LCD_LAYER_PLANAR_STORAGE
-			| LCD_LAYER_CRCB_ORDER;
+		    | LCD_LAYER_CRCB_ORDER;
 		break;
 	case DRM_FORMAT_YUV422:
 		val = LCD_LAYER_FORMAT_YCBCR422PLAN | LCD_LAYER_PLANAR_STORAGE;
 		break;
 	case DRM_FORMAT_YVU422:
 		val = LCD_LAYER_FORMAT_YCBCR422PLAN | LCD_LAYER_PLANAR_STORAGE
-		       | LCD_LAYER_CRCB_ORDER;
+		    | LCD_LAYER_CRCB_ORDER;
 		break;
 	case DRM_FORMAT_YUV420:
 		val = LCD_LAYER_FORMAT_YCBCR420PLAN | LCD_LAYER_PLANAR_STORAGE;
 		break;
 	case DRM_FORMAT_YVU420:
 		val = LCD_LAYER_FORMAT_YCBCR420PLAN | LCD_LAYER_PLANAR_STORAGE
-		       | LCD_LAYER_CRCB_ORDER;
+		    | LCD_LAYER_CRCB_ORDER;
 		break;
 	case DRM_FORMAT_NV12:
 		val = LCD_LAYER_FORMAT_NV12 | LCD_LAYER_PLANAR_STORAGE;
 		break;
 	case DRM_FORMAT_NV21:
 		val = LCD_LAYER_FORMAT_NV12 | LCD_LAYER_PLANAR_STORAGE
-		       | LCD_LAYER_CRCB_ORDER;
+		    | LCD_LAYER_CRCB_ORDER;
 		break;
-	/* packed formats */
+		/* packed formats */
 	case DRM_FORMAT_RGB332:
 		val = LCD_LAYER_FORMAT_RGB332;
 		break;
@@ -147,7 +198,7 @@ unsigned int set_bits_per_pixel(const struct drm_format_info *format)
 	unsigned int val = 0;
 
 	for (i = 0; i < format->num_planes; i++)
-		bpp += 8*format->cpp[i];
+		bpp += 8 * format->cpp[i];
 
 	switch (bpp) {
 	case 8:
@@ -191,8 +242,8 @@ static void kmb_plane_atomic_update(struct drm_plane *plane,
 	crtc_x = plane->state->crtc_x;
 	crtc_y = plane->state->crtc_y;
 
-	kmb_write(lcd, LCD_LAYERn_WIDTH(plane_id), src_w-1);
-	kmb_write(lcd, LCD_LAYERn_HEIGHT(plane_id), src_h-1);
+	kmb_write(lcd, LCD_LAYERn_WIDTH(plane_id), src_w - 1);
+	kmb_write(lcd, LCD_LAYERn_HEIGHT(plane_id), src_h - 1);
 	kmb_write(lcd, LCD_LAYERn_COL_START(plane_id), crtc_x);
 	kmb_write(lcd, LCD_LAYERn_ROW_START(plane_id), crtc_y);
 
@@ -315,38 +366,6 @@ static const struct drm_plane_funcs kmb_plane_funcs = {
 	.atomic_destroy_state = kmb_destroy_plane_state,
 };
 
-/* graphics layer ( layers 2 & 3) formats, only packed formats  are supported*/
-static const u32 kmb_formats_g[] = {
-	DRM_FORMAT_RGB332,
-	DRM_FORMAT_XRGB4444, DRM_FORMAT_XBGR4444,
-	DRM_FORMAT_ARGB4444, DRM_FORMAT_ABGR4444,
-	DRM_FORMAT_XRGB1555, DRM_FORMAT_XBGR1555,
-	DRM_FORMAT_ARGB1555, DRM_FORMAT_ABGR1555,
-	DRM_FORMAT_RGB565, DRM_FORMAT_BGR565,
-	DRM_FORMAT_RGB888, DRM_FORMAT_BGR888,
-	DRM_FORMAT_XRGB8888, DRM_FORMAT_XBGR8888,
-	DRM_FORMAT_ARGB8888, DRM_FORMAT_ABGR8888,
-};
-
-/* video layer (0 & 1) formats, packed and planar formats are supported */
-static const u32 kmb_formats_v[] = {
-	/* packed formats */
-	DRM_FORMAT_RGB332,
-	DRM_FORMAT_XRGB4444, DRM_FORMAT_XBGR4444,
-	DRM_FORMAT_ARGB4444, DRM_FORMAT_ABGR4444,
-	DRM_FORMAT_XRGB1555, DRM_FORMAT_XBGR1555,
-	DRM_FORMAT_ARGB1555, DRM_FORMAT_ABGR1555,
-	DRM_FORMAT_RGB565, DRM_FORMAT_BGR565,
-	DRM_FORMAT_RGB888, DRM_FORMAT_BGR888,
-	DRM_FORMAT_XRGB8888, DRM_FORMAT_XBGR8888,
-	DRM_FORMAT_ARGB8888, DRM_FORMAT_ABGR8888,
-	/*planar formats */
-	DRM_FORMAT_YUV420, DRM_FORMAT_YVU420,
-	DRM_FORMAT_YUV422, DRM_FORMAT_YVU422,
-	DRM_FORMAT_YUV444, DRM_FORMAT_YVU444,
-	DRM_FORMAT_NV12, DRM_FORMAT_NV21,
-};
-
 struct kmb_plane *kmb_plane_init(struct drm_device *drm)
 {
 	struct kmb_drm_private *lcd = drm->dev_private;
-- 
2.7.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
