Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7317A3EB12E
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Aug 2021 09:14:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 804246E54C;
	Fri, 13 Aug 2021 07:14:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC0FA6E54C
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Aug 2021 07:14:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10074"; a="215509531"
X-IronPort-AV: E=Sophos;i="5.84,318,1620716400"; d="scan'208";a="215509531"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2021 00:14:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,318,1620716400"; d="scan'208";a="571727808"
Received: from linux-z370-aorus-gaming-5.iind.intel.com ([10.223.34.160])
 by orsmga004.jf.intel.com with ESMTP; 13 Aug 2021 00:14:22 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Date: Fri, 13 Aug 2021 12:31:20 +0530
Message-Id: <20210813070121.48530-6-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210813070121.48530-1-ankit.k.nautiyal@intel.com>
References: <20210813070121.48530-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 5/6] video/hdmi: Add AVI version 3 defined in
 CTA-861-G
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

CTA-861-G adds AVI Infoframe version 3 for sending VIC codes 193-219
and IDO defined new colorspace information.

Specifically, bits 5-7 of Data Byte 1 is used for representing
colorspaces instead of bits 5-6 in version 2.
Similarly the bits 0-7 of Data Byte 4 is to be used to accommodate
VICs between 193-219, as compared to 0-6 in version 2.

This patch adds a new helper function to set the AVI version
to 3 if any of the above information is added to the
AVI infoframe. It also calls this function to set the appropriate
version while computing avi infoframes for i915 driver.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdmi.c |  1 +
 drivers/video/hdmi.c                      | 29 ++++++++++++++++++++---
 include/linux/hdmi.h                      |  1 +
 3 files changed, 28 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 0fbcdddb7ad5..0950d48e4e5f 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -751,6 +751,7 @@ bool intel_hdmi_compute_avi_infoframe(struct intel_encoder *encoder,
 
 	/* TODO: handle pixel repetition for YCBCR420 outputs */
 
+	hdmi_avi_infoframe_set_version(frame);
 	ret = hdmi_avi_infoframe_check(frame);
 	if (drm_WARN_ON(encoder->base.dev, ret))
 		return false;
diff --git a/drivers/video/hdmi.c b/drivers/video/hdmi.c
index f8e325cccfee..aab8900efa24 100644
--- a/drivers/video/hdmi.c
+++ b/drivers/video/hdmi.c
@@ -50,6 +50,20 @@ static void hdmi_infoframe_set_checksum(void *buffer, size_t size)
 	ptr[3] = hdmi_infoframe_checksum(buffer, size);
 }
 
+/**
+ * hdmi_avi_infoframe_set_version() - fill the HDMI AVI infoframe
+ *				      version information
+ * @frame: HDMI AVI infoframe
+ */
+void
+hdmi_avi_infoframe_set_version(struct hdmi_avi_infoframe *frame)
+{
+	if (frame->video_code > 127 ||
+	    frame->colorspace == HDMI_COLORSPACE_IDO_DEFINED)
+		frame->version = 3;
+}
+EXPORT_SYMBOL(hdmi_avi_infoframe_set_version);
+
 /**
  * hdmi_avi_infoframe_init() - initialize an HDMI AVI infoframe
  * @frame: HDMI AVI infoframe
@@ -67,10 +81,17 @@ EXPORT_SYMBOL(hdmi_avi_infoframe_init);
 static int hdmi_avi_infoframe_check_only(const struct hdmi_avi_infoframe *frame)
 {
 	if (frame->type != HDMI_INFOFRAME_TYPE_AVI ||
-	    frame->version != 2 ||
 	    frame->length != HDMI_AVI_INFOFRAME_SIZE)
 		return -EINVAL;
 
+	if (frame->video_code > 127 ||
+	    frame->colorspace == HDMI_COLORSPACE_IDO_DEFINED) {
+		if (frame->version != 3)
+			return -EINVAL;
+	} else if (frame->version != 2) {
+		return -EINVAL;
+	}
+
 	if (frame->picture_aspect > HDMI_PICTURE_ASPECT_16_9)
 		return -EINVAL;
 
@@ -159,7 +180,7 @@ ssize_t hdmi_avi_infoframe_pack_only(const struct hdmi_avi_infoframe *frame,
 	if (frame->itc)
 		ptr[2] |= BIT(7);
 
-	ptr[3] = frame->video_code & 0x7f;
+	ptr[3] = frame->video_code;
 
 	ptr[4] = ((frame->ycc_quantization_range & 0x3) << 6) |
 		 ((frame->content_type & 0x3) << 4) |
@@ -1583,12 +1604,14 @@ int hdmi_avi_infoframe_unpack_only(struct hdmi_avi_infoframe *frame,
 	frame->quantization_range = (ptr[2] >> 2) & 0x3;
 	frame->nups = ptr[2] & 0x3;
 
-	frame->video_code = ptr[3] & 0x7f;
+	frame->video_code = ptr[3];
 	frame->ycc_quantization_range = (ptr[4] >> 6) & 0x3;
 	frame->content_type = (ptr[4] >> 4) & 0x3;
 
 	frame->pixel_repeat = ptr[4] & 0xf;
 
+	hdmi_avi_infoframe_set_version(frame);
+
 	return 0;
 }
 EXPORT_SYMBOL(hdmi_avi_infoframe_unpack_only);
diff --git a/include/linux/hdmi.h b/include/linux/hdmi.h
index dda209fb77e3..2fe012670ad3 100644
--- a/include/linux/hdmi.h
+++ b/include/linux/hdmi.h
@@ -438,5 +438,6 @@ int hdmi_infoframe_unpack(union hdmi_infoframe *frame,
 			  const void *buffer, size_t size);
 void hdmi_infoframe_log(const char *level, struct device *dev,
 			const union hdmi_infoframe *frame);
+void hdmi_avi_infoframe_set_version(struct hdmi_avi_infoframe *frame);
 
 #endif /* _DRM_HDMI_H */
-- 
2.25.1

