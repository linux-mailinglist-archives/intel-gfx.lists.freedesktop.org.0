Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 668EB4554D2
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Nov 2021 07:33:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E0216EC16;
	Thu, 18 Nov 2021 06:33:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FBD46EC16
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Nov 2021 06:33:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10171"; a="257903212"
X-IronPort-AV: E=Sophos;i="5.87,243,1631602800"; d="scan'208";a="257903212"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2021 22:33:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,243,1631602800"; d="scan'208";a="550001750"
Received: from vsrini4-xps-8920.iind.intel.com (HELO localhost.localdomain)
 ([10.223.163.28])
 by fmsmga008.fm.intel.com with ESMTP; 17 Nov 2021 22:33:52 -0800
From: Vidya Srinivas <vidya.srinivas@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 18 Nov 2021 11:55:16 +0530
Message-Id: <20211118062516.22535-1-vidya.srinivas@intel.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Reject 5k on HDR planes for planar fb
 formats
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
Reject 5k on HDR plane for planar formats like NV12
to let the user space know about it.

Without this patch, when 5k content is sent on HDR plane
with NV12 content, FIFO underrun is seen and screen blanks
out. Issue is seen on both TGL and ADL platforms.

Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
Signed-off-by: Yashashvi Shantam <shantam.yashashvi@intel.com>
---
 drivers/gpu/drm/i915/display/skl_scaler.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index 37eabeff8197..e2e52f5dca3b 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -86,6 +86,7 @@ static u16 skl_scaler_calc_phase(int sub, int scale, bool chroma_cosited)
 #define ICL_MAX_DST_H 4096
 #define SKL_MIN_YUV_420_SRC_W 16
 #define SKL_MIN_YUV_420_SRC_H 16
+#define MAX_CUSCTL_W 4096
 
 static int
 skl_update_scaler(struct intel_crtc_state *crtc_state, bool force_detach,
@@ -221,6 +222,14 @@ int skl_update_scaler_plane(struct intel_crtc_state *crtc_state,
 	bool force_detach = !fb || !plane_state->uapi.visible;
 	bool need_scaler = false;
 
+	/* PLANE_CUS_CTL size max 4096 */
+	if (icl_is_hdr_plane(dev_priv, intel_plane->id) &&
+	    fb && intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier) &&
+	    (drm_rect_width(&plane_state->uapi.src) >> 16) > MAX_CUSCTL_W) {
+		DRM_ERROR("HDR chroma upsampler size exceeds limits\n");
+		return -EINVAL;
+	}
+
 	/* Pre-gen11 and SDR planes always need a scaler for planar formats. */
 	if (!icl_is_hdr_plane(dev_priv, intel_plane->id) &&
 	    fb && intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier))
-- 
2.33.0

