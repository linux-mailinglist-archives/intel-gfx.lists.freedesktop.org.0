Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CF04020FF29
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2020 23:31:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 126DA6E4C7;
	Tue, 30 Jun 2020 21:29:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 195FB6E329;
 Tue, 30 Jun 2020 21:28:58 +0000 (UTC)
IronPort-SDR: pRkM8p28Bq3SHvLLQtUGmPkYX+qrHK1oCow0SWbCVbnrknmFJxZ2ztEmFH6EPAtpiI8Yu0eyas
 rrPQZQKdNfYA==
X-IronPort-AV: E=McAfee;i="6000,8403,9668"; a="143867604"
X-IronPort-AV: E=Sophos;i="5.75,298,1589266800"; d="scan'208";a="143867604"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2020 14:28:58 -0700
IronPort-SDR: zypgrEA/pbBKjxnvAEGrYSb7jFi+xBrVpkTjs65O9Fe4TtufGA3GNzP450lJklkUTmIJJhGx6K
 Ga1QzKSRJwcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,298,1589266800"; d="scan'208";a="481066880"
Received: from hdwiyono-mobl.amr.corp.intel.com (HELO
 achrisan-DESK2.amr.corp.intel.com) ([10.254.176.225])
 by fmsmga006.fm.intel.com with ESMTP; 30 Jun 2020 14:28:57 -0700
From: Anitha Chrisanthus <anitha.chrisanthus@intel.com>
To: dri-devel@lists.freedesktop.org, anitha.chrisanthus@intel.com,
 bob.j.paauwe@intel.com, edmund.j.dea@intel.com
Date: Tue, 30 Jun 2020 14:28:11 -0700
Message-Id: <1593552491-23698-60-git-send-email-anitha.chrisanthus@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1593552491-23698-1-git-send-email-anitha.chrisanthus@intel.com>
References: <1593552491-23698-1-git-send-email-anitha.chrisanthus@intel.com>
Subject: [Intel-gfx] [PATCH 59/59] drm/kmb: work around for planar formats
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

Set the DMA Vstride and Line width for U and V planes to the same as the
Y plane and not the actual pitch.
Bit18 of layer config does not have any effect when U and V planes are
swapped, so swap it in the driver.

Signed-off-by: Anitha Chrisanthus <anitha.chrisanthus@intel.com>
Reviewed-by: Edmund Dea <edmund.j.dea@intel.com>
---
 drivers/gpu/drm/kmb/kmb_plane.c | 50 ++++++++++++++++++++++++-----------------
 1 file changed, 30 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/kmb/kmb_plane.c b/drivers/gpu/drm/kmb/kmb_plane.c
index e278347..eb1652d 100644
--- a/drivers/gpu/drm/kmb/kmb_plane.c
+++ b/drivers/gpu/drm/kmb/kmb_plane.c
@@ -190,6 +190,8 @@ unsigned int set_pixel_format(u32 format)
 		val = LCD_LAYER_FORMAT_RGBA8888;
 		break;
 	}
+	DRM_INFO_ONCE("%s : %d format=0x%x val=0x%x\n",
+			 __func__, __LINE__, format, val);
 	return val;
 }
 
@@ -300,38 +302,48 @@ static void kmb_plane_atomic_update(struct drm_plane *plane,
 	dev_p->fb_addr = addr[Y_PLANE];
 	kmb_write_lcd(dev_p, LCD_LAYERn_DMA_START_ADDR(plane_id),
 		      addr[Y_PLANE] + fb->offsets[0]);
+	val = set_pixel_format(fb->format->format);
+	val |= set_bits_per_pixel(fb->format);
 	/* Program Cb/Cr for planar formats */
 	if (num_planes > 1) {
-		if (fb->format->format == DRM_FORMAT_YUV420 ||
-		    fb->format->format == DRM_FORMAT_YVU420)
-			width /= 2;
-
 		kmb_write_lcd(dev_p, LCD_LAYERn_DMA_CB_LINE_VSTRIDE(plane_id),
-			      fb->pitches[LAYER_1]);
-
+				width*fb->format->cpp[0]);
 		kmb_write_lcd(dev_p, LCD_LAYERn_DMA_CB_LINE_WIDTH(plane_id),
 			      (width * fb->format->cpp[0]));
 
 		addr[U_PLANE] = drm_fb_cma_get_gem_addr(fb, plane->state,
-							U_PLANE);
-		kmb_write_lcd(dev_p, LCD_LAYERn_DMA_START_CB_ADR(plane_id),
-			      addr[U_PLANE]);
+				U_PLANE);
+		/* check if Cb/Cr is swapped*/
+		if ((num_planes == 3) && (val & LCD_LAYER_CRCB_ORDER))
+			kmb_write_lcd(dev_p,
+					LCD_LAYERn_DMA_START_CR_ADR(plane_id),
+					addr[U_PLANE]);
+		else
+			kmb_write_lcd(dev_p,
+					LCD_LAYERn_DMA_START_CB_ADR(plane_id),
+					addr[U_PLANE]);
 
 		if (num_planes == 3) {
 			kmb_write_lcd(dev_p,
-				      LCD_LAYERn_DMA_CR_LINE_VSTRIDE(plane_id),
-				      fb->pitches[LAYER_2]);
+				LCD_LAYERn_DMA_CR_LINE_VSTRIDE(plane_id),
+				((width)*fb->format->cpp[0]));
 
 			kmb_write_lcd(dev_p,
-				      LCD_LAYERn_DMA_CR_LINE_WIDTH(plane_id),
-				      (width * fb->format->cpp[0]));
+				LCD_LAYERn_DMA_CR_LINE_WIDTH(plane_id),
+				((width)*fb->format->cpp[0]));
 
 			addr[V_PLANE] = drm_fb_cma_get_gem_addr(fb,
-								plane->state,
-								V_PLANE);
-			kmb_write_lcd(dev_p,
-				      LCD_LAYERn_DMA_START_CR_ADR(plane_id),
-				      addr[V_PLANE]);
+					plane->state, V_PLANE);
+
+			/* check if Cb/Cr is swapped*/
+			if (val & LCD_LAYER_CRCB_ORDER)
+				kmb_write_lcd(dev_p,
+					LCD_LAYERn_DMA_START_CB_ADR(plane_id),
+					addr[V_PLANE]);
+			else
+				kmb_write_lcd(dev_p,
+					LCD_LAYERn_DMA_START_CR_ADR(plane_id),
+					addr[V_PLANE]);
 		}
 	}
 
@@ -340,8 +352,6 @@ static void kmb_plane_atomic_update(struct drm_plane *plane,
 	kmb_write_lcd(dev_p, LCD_LAYERn_COL_START(plane_id), crtc_x);
 	kmb_write_lcd(dev_p, LCD_LAYERn_ROW_START(plane_id), crtc_y);
 
-	val = set_pixel_format(fb->format->format);
-	val |= set_bits_per_pixel(fb->format);
 	/*CHECKME Leon drvr sets it to 100 try this for now */
 	val |= LCD_LAYER_FIFO_100;
 
-- 
2.7.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
