Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 624F01505D2
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2020 13:04:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B81FE6EBDE;
	Mon,  3 Feb 2020 12:04:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B85A06EBDE;
 Mon,  3 Feb 2020 12:04:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Feb 2020 04:04:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,397,1574150400"; d="scan'208";a="219357424"
Received: from unknown (HELO helsinki.fi.intel.com) ([10.237.66.150])
 by orsmga007.jf.intel.com with ESMTP; 03 Feb 2020 04:04:22 -0800
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  3 Feb 2020 14:04:20 +0200
Message-Id: <20200203120421.113744-1-gwan-gyeong.mun@intel.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm: Add a detailed DP HDMI branch info on
 debugfs
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
Cc: dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

When DP downstream has HDMI branch, it checks below functionality and
shows supports. It follows DP 1.4a spec; Table 2-161: Address Mapping
within DPCD Receiver Capability Field (DPCD Addresses 00000h
through 000FFh).

Added flags for DP downstream:
YCBCR422_PASS_THROUGH_SUPPORT, YCBCR420_PASS_THROUGH_SUPPORT,
CONVERSION_FROM_YCBCR444_TO_YCBCR422_SUPPORT and
CONVERSION_FROM_YCBCR444_TO_YCBCR420_SUPPORT.

Signed-off-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
---
 drivers/gpu/drm/drm_dp_helper.c | 19 +++++++++++++++++++
 include/drm/drm_dp_helper.h     |  5 +++++
 2 files changed, 24 insertions(+)

diff --git a/drivers/gpu/drm/drm_dp_helper.c b/drivers/gpu/drm/drm_dp_helper.c
index 5a103e9b3c86..cb6dcfb13127 100644
--- a/drivers/gpu/drm/drm_dp_helper.c
+++ b/drivers/gpu/drm/drm_dp_helper.c
@@ -531,6 +531,25 @@ void drm_dp_downstream_debug(struct seq_file *m,
 
 		if (bpc > 0)
 			seq_printf(m, "\t\tMax bpc: %d\n", bpc);
+
+		if (type == DP_DS_PORT_TYPE_HDMI) {
+			bool ycbcr422_passthru = port_cap[3] &
+						 DP_DS_YCBCR422_PASSTHRU_SUPPORT;
+			bool ycbcr420_passthru = port_cap[3] &
+						 DP_DS_YCBCR420_PASSTHRU_SUPPORT;
+			bool ycbcr422_convert = port_cap[3] &
+						DP_DS_CONV_YCBCR444_TO_YCBCR422_SUPPORT;
+			bool ycbcr420_convert = port_cap[3] &
+						DP_DS_CONV_YCBCR444_TO_YCBCR420_SUPPORT;
+			seq_printf(m, "\t\tHDMI YCbCr 4:2:2 pass-through support: %s\n",
+				   ycbcr422_passthru ? "yes" : "no");
+			seq_printf(m, "\t\tHDMI YCbCr 4:2:0  pass-through support: %s\n",
+				   ycbcr420_passthru ? "yes" : "no");
+			seq_printf(m, "\t\tHDMI YCbCr 4:4:4 to YCbCr 4:2:2 Convert support: %s\n",
+				   ycbcr422_convert ? "yes" : "no");
+			seq_printf(m, "\t\tHDMI YCbCr 4:4:4 to YCbCr 4:2:0 Convert support: %s\n",
+				   ycbcr420_convert ? "yes" : "no");
+		}
 	}
 }
 EXPORT_SYMBOL(drm_dp_downstream_debug);
diff --git a/include/drm/drm_dp_helper.h b/include/drm/drm_dp_helper.h
index 262faf9e5e94..d61eadaba769 100644
--- a/include/drm/drm_dp_helper.h
+++ b/include/drm/drm_dp_helper.h
@@ -391,6 +391,11 @@
 # define DP_DS_10BPC		            1
 # define DP_DS_12BPC		            2
 # define DP_DS_16BPC		            3
+/* offset 3 for HDMI */
+# define DP_DS_YCBCR422_PASSTHRU_SUPPORT    (1 << 1) /* 1.4 */
+# define DP_DS_YCBCR420_PASSTHRU_SUPPORT    (1 << 2)
+# define DP_DS_CONV_YCBCR444_TO_YCBCR422_SUPPORT (1 << 3)
+# define DP_DS_CONV_YCBCR444_TO_YCBCR420_SUPPORT (1 << 4)
 
 #define DP_MAX_DOWNSTREAM_PORTS		    0x10
 
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
