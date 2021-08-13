Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D1CA3EB12D
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Aug 2021 09:14:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B45E36E550;
	Fri, 13 Aug 2021 07:14:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A12436E54C
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Aug 2021 07:14:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10074"; a="215509506"
X-IronPort-AV: E=Sophos;i="5.84,318,1620716400"; d="scan'208";a="215509506"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2021 00:14:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,318,1620716400"; d="scan'208";a="571727784"
Received: from linux-z370-aorus-gaming-5.iind.intel.com ([10.223.34.160])
 by orsmga004.jf.intel.com with ESMTP; 13 Aug 2021 00:14:19 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Date: Fri, 13 Aug 2021 12:31:18 +0530
Message-Id: <20210813070121.48530-4-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210813070121.48530-1-ankit.k.nautiyal@intel.com>
References: <20210813070121.48530-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 3/6] video/hdmi: Separate function for
 unpacking AVI Infoframe Data
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

Currently while unpacking the AVI Infoframe, the Infoframe Headers
and data are checked in same unpack function.

This patch separates the unpacking of AVI infoframe Data only,
so that it can be used for the DP cases, where the AVI Infoframe is
encapsulated in DP SDP packets. In such a case we need to only
unpack the data bytes as the header bits for DP SDP will be different.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/video/hdmi.c | 65 ++++++++++++++++++++++++++++++++------------
 include/linux/hdmi.h |  2 ++
 2 files changed, 49 insertions(+), 18 deletions(-)

diff --git a/drivers/video/hdmi.c b/drivers/video/hdmi.c
index 947be761dfa4..f8e325cccfee 100644
--- a/drivers/video/hdmi.c
+++ b/drivers/video/hdmi.c
@@ -1537,38 +1537,30 @@ void hdmi_infoframe_log(const char *level,
 EXPORT_SYMBOL(hdmi_infoframe_log);
 
 /**
- * hdmi_avi_infoframe_unpack() - unpack binary buffer to a HDMI AVI infoframe
+ * hdmi_avi_infoframe_unpack_only() - unpack binary buffer of CTA-861-G AVI
+ *                                    infoframe DataBytes to a HDMI AVI
+ *                                    infoframe
  * @frame: HDMI AVI infoframe
  * @buffer: source buffer
  * @size: size of buffer
  *
- * Unpacks the information contained in binary @buffer into a structured
- * @frame of the HDMI Auxiliary Video (AVI) information frame.
- * Also verifies the checksum as required by section 5.3.5 of the HDMI 1.4
- * specification.
+ * Unpacks CTA-861-G AVI infoframe DataBytes contained in the binary @buffer
+ * into a structured @frame of the HDMI Auxiliary Video Information (AVI)
+ * infoframe.
  *
  * Returns 0 on success or a negative error code on failure.
  */
-static int hdmi_avi_infoframe_unpack(struct hdmi_avi_infoframe *frame,
-				     const void *buffer, size_t size)
+
+int hdmi_avi_infoframe_unpack_only(struct hdmi_avi_infoframe *frame,
+				   const void *buffer, size_t size)
 {
 	const u8 *ptr = buffer;
 
-	if (size < HDMI_INFOFRAME_SIZE(AVI))
-		return -EINVAL;
-
-	if (ptr[0] != HDMI_INFOFRAME_TYPE_AVI ||
-	    ptr[1] != 2 ||
-	    ptr[2] != HDMI_AVI_INFOFRAME_SIZE)
-		return -EINVAL;
-
-	if (hdmi_infoframe_checksum(buffer, HDMI_INFOFRAME_SIZE(AVI)) != 0)
+	if (size < HDMI_AVI_INFOFRAME_SIZE)
 		return -EINVAL;
 
 	hdmi_avi_infoframe_init(frame);
 
-	ptr += HDMI_INFOFRAME_HEADER_SIZE;
-
 	frame->colorspace = (ptr[0] >> 5) & 0x3;
 	if (ptr[0] & 0x10)
 		frame->active_aspect = ptr[1] & 0xf;
@@ -1599,6 +1591,43 @@ static int hdmi_avi_infoframe_unpack(struct hdmi_avi_infoframe *frame,
 
 	return 0;
 }
+EXPORT_SYMBOL(hdmi_avi_infoframe_unpack_only);
+
+/**
+ * hdmi_avi_infoframe_unpack() - unpack binary buffer to a HDMI AVI infoframe
+ * @frame: HDMI AVI infoframe
+ * @buffer: source buffer
+ * @size: size of buffer
+ *
+ * Unpacks the information contained in binary @buffer into a structured
+ * @frame of the HDMI Auxiliary Video (AVI) information frame.
+ * Also verifies the checksum as required by section 5.3.5 of the HDMI 1.4
+ * specification.
+ *
+ * Returns 0 on success or a negative error code on failure.
+ */
+static int hdmi_avi_infoframe_unpack(struct hdmi_avi_infoframe *frame,
+				     const void *buffer, size_t size)
+{
+	const u8 *ptr = buffer;
+	int ret;
+
+	if (size < HDMI_INFOFRAME_SIZE(AVI))
+		return -EINVAL;
+
+	if (ptr[0] != HDMI_INFOFRAME_TYPE_AVI ||
+	    ptr[1] != 2 ||
+	    ptr[2] != HDMI_AVI_INFOFRAME_SIZE)
+		return -EINVAL;
+
+	if (hdmi_infoframe_checksum(buffer, HDMI_INFOFRAME_SIZE(AVI)) != 0)
+		return -EINVAL;
+
+	ret = hdmi_avi_infoframe_unpack_only(frame, ptr + HDMI_INFOFRAME_HEADER_SIZE,
+					     size - HDMI_INFOFRAME_HEADER_SIZE);
+
+	return ret;
+}
 
 /**
  * hdmi_spd_infoframe_unpack() - unpack binary buffer to a HDMI SPD infoframe
diff --git a/include/linux/hdmi.h b/include/linux/hdmi.h
index c8ec982ff498..dda209fb77e3 100644
--- a/include/linux/hdmi.h
+++ b/include/linux/hdmi.h
@@ -222,6 +222,8 @@ ssize_t hdmi_drm_infoframe_pack_only(const struct hdmi_drm_infoframe *frame,
 int hdmi_drm_infoframe_check(struct hdmi_drm_infoframe *frame);
 int hdmi_drm_infoframe_unpack_only(struct hdmi_drm_infoframe *frame,
 				   const void *buffer, size_t size);
+int hdmi_avi_infoframe_unpack_only(struct hdmi_avi_infoframe *frame,
+				   const void *buffer, size_t size);
 
 enum hdmi_spd_sdi {
 	HDMI_SPD_SDI_UNKNOWN,
-- 
2.25.1

