Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1525C1456FE
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jan 2020 14:45:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AC0E6E52C;
	Wed, 22 Jan 2020 13:45:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72F296F50B;
 Wed, 22 Jan 2020 13:45:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Jan 2020 05:45:36 -0800
X-IronPort-AV: E=Sophos;i="5.70,350,1574150400"; d="scan'208";a="400013288"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Jan 2020 05:45:33 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: dri-devel@lists.freedesktop.org
Date: Wed, 22 Jan 2020 15:45:08 +0200
Message-Id: <0425b3a0629265d98d5652207a9f9a9a4e3bb77b.1579700414.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1579700414.git.jani.nikula@intel.com>
References: <cover.1579700414.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 2/7] drm/dsc: add helper for calculating rc
 buffer size from DPCD
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org,
 Alex Deucher <alexdeucher@gmail.com>, Harry Wentland <hwentlan@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add a helper for calculating the rc buffer size from the DCPD offsets
DP_DSC_RC_BUF_BLK_SIZE and DP_DSC_RC_BUF_SIZE.

Cc: Alex Deucher <alexdeucher@gmail.com>
Cc: Harry Wentland <hwentlan@amd.com>
Cc: Manasi Navare <manasi.d.navare@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/drm_dsc.c | 27 +++++++++++++++++++++++++++
 include/drm/drm_dsc.h     |  1 +
 2 files changed, 28 insertions(+)

diff --git a/drivers/gpu/drm/drm_dsc.c b/drivers/gpu/drm/drm_dsc.c
index 09afbc01ea94..ff602f7ec65b 100644
--- a/drivers/gpu/drm/drm_dsc.c
+++ b/drivers/gpu/drm/drm_dsc.c
@@ -49,6 +49,33 @@ void drm_dsc_dp_pps_header_init(struct dp_sdp_header *pps_header)
 }
 EXPORT_SYMBOL(drm_dsc_dp_pps_header_init);
 
+/**
+ * drm_dsc_dp_rc_buffer_size - get rc buffer size in bytes
+ * @rc_buffer_block_size: block size code, according to DPCD offset 62h
+ * @rc_buffer_size: number of blocks - 1, according to DPCD offset 63h
+ *
+ * return:
+ * buffer size in bytes, or 0 on invalid input
+ */
+int drm_dsc_dp_rc_buffer_size(u8 rc_buffer_block_size, u8 rc_buffer_size)
+{
+	int size = 1024 * (rc_buffer_size + 1);
+
+	switch (rc_buffer_block_size) {
+	case DP_DSC_RC_BUF_BLK_SIZE_1:
+		return 1 * size;
+	case DP_DSC_RC_BUF_BLK_SIZE_4:
+		return 4 * size;
+	case DP_DSC_RC_BUF_BLK_SIZE_16:
+		return 16 * size;
+	case DP_DSC_RC_BUF_BLK_SIZE_64:
+		return 64 * size;
+	default:
+		return 0;
+	}
+}
+EXPORT_SYMBOL(drm_dsc_dp_rc_buffer_size);
+
 /**
  * drm_dsc_pps_payload_pack() - Populates the DSC PPS
  *
diff --git a/include/drm/drm_dsc.h b/include/drm/drm_dsc.h
index 887954cbfc60..537a68330840 100644
--- a/include/drm/drm_dsc.h
+++ b/include/drm/drm_dsc.h
@@ -602,6 +602,7 @@ struct drm_dsc_pps_infoframe {
 } __packed;
 
 void drm_dsc_dp_pps_header_init(struct dp_sdp_header *pps_header);
+int drm_dsc_dp_rc_buffer_size(u8 rc_buffer_block_size, u8 rc_buffer_size);
 void drm_dsc_pps_payload_pack(struct drm_dsc_picture_parameter_set *pps_sdp,
 				const struct drm_dsc_config *dsc_cfg);
 int drm_dsc_compute_rc_parameters(struct drm_dsc_config *vdsc_cfg);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
