Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B05201ADC9C
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2020 13:58:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60A2D6EBA8;
	Fri, 17 Apr 2020 11:58:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D64F6EBA8;
 Fri, 17 Apr 2020 11:58:10 +0000 (UTC)
IronPort-SDR: mYAYN4Y9AaQFQZTLydPuPkiYe8iKZ65rvuLL//A37RJ9LU+Vr6EaXMFVaUyfnNQyRQSr2E+bTy
 py+KB0QE9X6A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2020 04:58:09 -0700
IronPort-SDR: tuze6G2wrB9S++zhJSeLLppsoTpgy1S1DeTJuKBaXpBVGgKaFGK7J7jAzrwUCi0K6LFULCIYS0
 CYosNUiwWBnQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,394,1580803200"; d="scan'208";a="279491938"
Received: from elewis-mobl.ger.corp.intel.com (HELO
 helsinki.ger.corp.intel.com) ([10.251.94.8])
 by orsmga008.jf.intel.com with ESMTP; 17 Apr 2020 04:58:07 -0700
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Apr 2020 15:00:27 +0300
Message-Id: <20200417120040.3432332-2-gwan-gyeong.mun@intel.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200417120040.3432332-1-gwan-gyeong.mun@intel.com>
References: <20200417120040.3432332-1-gwan-gyeong.mun@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v10 01/14] video/hdmi: Add Unpack only function
 for DRM infoframe
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
Cc: linux-fbdev@vger.kernel.org, jani.nikula@intel.com,
 dri-devel@lists.freedesktop.org, laurent.pinchart@ideasonboard.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

It adds an unpack only function for DRM infoframe for dynamic range and
mastering infoframe readout.
It unpacks the information data block contained in the binary buffer into
a structured frame of the HDMI Dynamic Range and Mastering (DRM)
information frame.

In contrast to hdmi_drm_infoframe_unpack() function, it does not verify
a checksum.

It can be used for unpacking a DP HDR Metadata Infoframe SDP case.
DP HDR Metadata Infoframe SDP uses the same Dynamic Range and Mastering
(DRM) information (CTA-861-G spec.) such as HDMI DRM infoframe.
But DP SDP header and payload structure are different from HDMI DRM
Infoframe. Therefore unpacking DRM infoframe for DP requires skipping of
a verifying checksum.

v9: Add clear comments to hdmi_drm_infoframe_unpack_only() and
    hdmi_drm_infoframe_unpack() (Laurent Pinchart)

Signed-off-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
---
 drivers/video/hdmi.c | 65 +++++++++++++++++++++++++++++++-------------
 include/linux/hdmi.h |  2 ++
 2 files changed, 48 insertions(+), 19 deletions(-)

diff --git a/drivers/video/hdmi.c b/drivers/video/hdmi.c
index 856a8c4e84a2..e70792b3e367 100644
--- a/drivers/video/hdmi.c
+++ b/drivers/video/hdmi.c
@@ -1768,20 +1768,21 @@ hdmi_vendor_any_infoframe_unpack(union hdmi_vendor_any_infoframe *frame,
 }
 
 /**
- * hdmi_drm_infoframe_unpack() - unpack binary buffer to a HDMI DRM infoframe
+ * hdmi_drm_infoframe_unpack_only() - unpack binary buffer of CTA-861-G DRM
+ *                                    infoframe DataBytes to a HDMI DRM
+ *                                    infoframe
  * @frame: HDMI DRM infoframe
  * @buffer: source buffer
  * @size: size of buffer
  *
- * Unpacks the information contained in binary @buffer into a structured
- * @frame of the HDMI Dynamic Range and Mastering (DRM) information frame.
- * Also verifies the checksum as required by section 5.3.5 of the HDMI 1.4
- * specification.
+ * Unpacks CTA-861-G DRM infoframe DataBytes contained in the binary @buffer
+ * into a structured @frame of the HDMI Dynamic Range and Mastering (DRM)
+ * infoframe.
  *
  * Returns 0 on success or a negative error code on failure.
  */
-static int hdmi_drm_infoframe_unpack(struct hdmi_drm_infoframe *frame,
-				     const void *buffer, size_t size)
+int hdmi_drm_infoframe_unpack_only(struct hdmi_drm_infoframe *frame,
+				   const void *buffer, size_t size)
 {
 	const u8 *ptr = buffer;
 	const u8 *temp;
@@ -1790,23 +1791,13 @@ static int hdmi_drm_infoframe_unpack(struct hdmi_drm_infoframe *frame,
 	int ret;
 	int i;
 
-	if (size < HDMI_INFOFRAME_SIZE(DRM))
-		return -EINVAL;
-
-	if (ptr[0] != HDMI_INFOFRAME_TYPE_DRM ||
-	    ptr[1] != 1 ||
-	    ptr[2] != HDMI_DRM_INFOFRAME_SIZE)
-		return -EINVAL;
-
-	if (hdmi_infoframe_checksum(buffer, HDMI_INFOFRAME_SIZE(DRM)) != 0)
+	if (size < HDMI_DRM_INFOFRAME_SIZE)
 		return -EINVAL;
 
 	ret = hdmi_drm_infoframe_init(frame);
 	if (ret)
 		return ret;
 
-	ptr += HDMI_INFOFRAME_HEADER_SIZE;
-
 	frame->eotf = ptr[0] & 0x7;
 	frame->metadata_type = ptr[1] & 0x7;
 
@@ -1814,7 +1805,7 @@ static int hdmi_drm_infoframe_unpack(struct hdmi_drm_infoframe *frame,
 	for (i = 0; i < 3; i++) {
 		x_lsb = *temp++;
 		x_msb = *temp++;
-		frame->display_primaries[i].x =  (x_msb << 8) | x_lsb;
+		frame->display_primaries[i].x = (x_msb << 8) | x_lsb;
 		y_lsb = *temp++;
 		y_msb = *temp++;
 		frame->display_primaries[i].y = (y_msb << 8) | y_lsb;
@@ -1830,6 +1821,42 @@ static int hdmi_drm_infoframe_unpack(struct hdmi_drm_infoframe *frame,
 
 	return 0;
 }
+EXPORT_SYMBOL(hdmi_drm_infoframe_unpack_only);
+
+/**
+ * hdmi_drm_infoframe_unpack() - unpack binary buffer to a HDMI DRM infoframe
+ * @frame: HDMI DRM infoframe
+ * @buffer: source buffer
+ * @size: size of buffer
+ *
+ * Unpacks the CTA-861-G DRM infoframe contained in the binary @buffer into
+ * a structured @frame of the HDMI Dynamic Range and Mastering (DRM)
+ * infoframe. It also verifies the checksum as required by section 5.3.5 of
+ * the HDMI 1.4 specification.
+ *
+ * Returns 0 on success or a negative error code on failure.
+ */
+static int hdmi_drm_infoframe_unpack(struct hdmi_drm_infoframe *frame,
+				     const void *buffer, size_t size)
+{
+	const u8 *ptr = buffer;
+	int ret;
+
+	if (size < HDMI_INFOFRAME_SIZE(DRM))
+		return -EINVAL;
+
+	if (ptr[0] != HDMI_INFOFRAME_TYPE_DRM ||
+	    ptr[1] != 1 ||
+	    ptr[2] != HDMI_DRM_INFOFRAME_SIZE)
+		return -EINVAL;
+
+	if (hdmi_infoframe_checksum(buffer, HDMI_INFOFRAME_SIZE(DRM)) != 0)
+		return -EINVAL;
+
+	ret = hdmi_drm_infoframe_unpack_only(frame, ptr + HDMI_INFOFRAME_HEADER_SIZE,
+					     size - HDMI_INFOFRAME_HEADER_SIZE);
+	return ret;
+}
 
 /**
  * hdmi_infoframe_unpack() - unpack binary buffer to a HDMI infoframe
diff --git a/include/linux/hdmi.h b/include/linux/hdmi.h
index 9613d796cfb1..50c31f1a0a2d 100644
--- a/include/linux/hdmi.h
+++ b/include/linux/hdmi.h
@@ -219,6 +219,8 @@ ssize_t hdmi_drm_infoframe_pack(struct hdmi_drm_infoframe *frame, void *buffer,
 ssize_t hdmi_drm_infoframe_pack_only(const struct hdmi_drm_infoframe *frame,
 				     void *buffer, size_t size);
 int hdmi_drm_infoframe_check(struct hdmi_drm_infoframe *frame);
+int hdmi_drm_infoframe_unpack_only(struct hdmi_drm_infoframe *frame,
+				   const void *buffer, size_t size);
 
 enum hdmi_spd_sdi {
 	HDMI_SPD_SDI_UNKNOWN,
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
