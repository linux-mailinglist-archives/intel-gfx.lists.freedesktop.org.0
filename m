Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 009823055EE
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jan 2021 09:39:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F39B46E5A2;
	Wed, 27 Jan 2021 08:39:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 737466E215
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jan 2021 08:39:09 +0000 (UTC)
IronPort-SDR: jrJ6v9fx8YpBEeheiHRK7sNywAWO3CpMxmMjPU7T1gBlYEJvfg6nt/WDH/sTOms56h40v5mwI8
 6fIrzjRLUIbg==
X-IronPort-AV: E=McAfee;i="6000,8403,9876"; a="244114791"
X-IronPort-AV: E=Sophos;i="5.79,378,1602572400"; d="scan'208";a="244114791"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 00:39:09 -0800
IronPort-SDR: Yo4pK57p4yqTEFX8W9TKVHEAdp+VlbIhPwzRjFu/wq4WcdbAKhScNQNkbmQus0O1wc1wIuXmBr
 xUaqBWYIW86Q==
X-IronPort-AV: E=Sophos;i="5.79,378,1602572400"; d="scan'208";a="362346470"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.179])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 00:39:07 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Jan 2021 13:54:36 +0530
Message-Id: <20210127082437.31339-2-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210127082437.31339-1-anshuman.gupta@intel.com>
References: <20210127082437.31339-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/hdcp: Add DP HDCP2.2 timeout to
 read entire msg
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

As documented in HDCP 2.2 DP Errata spec transmitter should abort the
authentication protocol in case transmitter has not received the
entire {AKE_Send_Cert, AKE_Send_H_prime, AKE_Send_Paring_Info} msg
within {110,7,5} miliseconds.

Adding above msg timeout values and aborting the HDCP authentication
in case it timedout to read entire msg.

https://www.digital-cp.com/sites/default/files/HDCP%202_2_DisplayPort_Errata_v3_0.pdf

Cc: Ramalingam C <ramalingam.c@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 56 +++++++++++++-------
 include/drm/drm_hdcp.h                       |  3 ++
 2 files changed, 40 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
index f372e25edab4..f7cc5cbcabc6 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
@@ -292,39 +292,42 @@ struct hdcp2_dp_msg_data {
 	u8 msg_id;
 	u32 offset;
 	bool msg_detectable;
+	bool msg_can_timedout;
 	u32 timeout;
 	u32 timeout2; /* Added for non_paired situation */
+	/* Timeout to read entire msg */
+	u32 msg_read_timeout;
 };
 
 static const struct hdcp2_dp_msg_data hdcp2_dp_msg_data[] = {
-	{ HDCP_2_2_AKE_INIT, DP_HDCP_2_2_AKE_INIT_OFFSET, false, 0, 0 },
+	{ HDCP_2_2_AKE_INIT, DP_HDCP_2_2_AKE_INIT_OFFSET, false, false, 0, 0, 0},
 	{ HDCP_2_2_AKE_SEND_CERT, DP_HDCP_2_2_AKE_SEND_CERT_OFFSET,
-	  false, HDCP_2_2_CERT_TIMEOUT_MS, 0 },
+	  false, true, HDCP_2_2_CERT_TIMEOUT_MS, 0, HDCP_2_2_DP_CERT_READ_TIMEOUT_MS},
 	{ HDCP_2_2_AKE_NO_STORED_KM, DP_HDCP_2_2_AKE_NO_STORED_KM_OFFSET,
-	  false, 0, 0 },
+	  false, false, 0, 0, 0 },
 	{ HDCP_2_2_AKE_STORED_KM, DP_HDCP_2_2_AKE_STORED_KM_OFFSET,
-	  false, 0, 0 },
+	  false, false, 0, 0, 0 },
 	{ HDCP_2_2_AKE_SEND_HPRIME, DP_HDCP_2_2_AKE_SEND_HPRIME_OFFSET,
-	  true, HDCP_2_2_HPRIME_PAIRED_TIMEOUT_MS,
-	  HDCP_2_2_HPRIME_NO_PAIRED_TIMEOUT_MS },
+	  true, true, HDCP_2_2_HPRIME_PAIRED_TIMEOUT_MS,
+	  HDCP_2_2_HPRIME_NO_PAIRED_TIMEOUT_MS, HDCP_2_2_DP_HPRIME_READ_TIMEOUT_MS},
 	{ HDCP_2_2_AKE_SEND_PAIRING_INFO,
-	  DP_HDCP_2_2_AKE_SEND_PAIRING_INFO_OFFSET, true,
-	  HDCP_2_2_PAIRING_TIMEOUT_MS, 0 },
-	{ HDCP_2_2_LC_INIT, DP_HDCP_2_2_LC_INIT_OFFSET, false, 0, 0 },
+	  DP_HDCP_2_2_AKE_SEND_PAIRING_INFO_OFFSET, true, true,
+	  HDCP_2_2_PAIRING_TIMEOUT_MS, 0, HDCP_2_2_DP_PAIRING_READ_TIMEOUT_MS },
+	{ HDCP_2_2_LC_INIT, DP_HDCP_2_2_LC_INIT_OFFSET, false, false, 0, 0, 0 },
 	{ HDCP_2_2_LC_SEND_LPRIME, DP_HDCP_2_2_LC_SEND_LPRIME_OFFSET,
-	  false, HDCP_2_2_DP_LPRIME_TIMEOUT_MS, 0 },
-	{ HDCP_2_2_SKE_SEND_EKS, DP_HDCP_2_2_SKE_SEND_EKS_OFFSET, false,
-	  0, 0 },
+	  false, false, HDCP_2_2_DP_LPRIME_TIMEOUT_MS, 0, 0 },
+	{ HDCP_2_2_SKE_SEND_EKS, DP_HDCP_2_2_SKE_SEND_EKS_OFFSET, false, false,
+	  0, 0, 0 },
 	{ HDCP_2_2_REP_SEND_RECVID_LIST,
-	  DP_HDCP_2_2_REP_SEND_RECVID_LIST_OFFSET, true,
-	  HDCP_2_2_RECVID_LIST_TIMEOUT_MS, 0 },
-	{ HDCP_2_2_REP_SEND_ACK, DP_HDCP_2_2_REP_SEND_ACK_OFFSET, false,
-	  0, 0 },
+	  DP_HDCP_2_2_REP_SEND_RECVID_LIST_OFFSET, true, false,
+	  HDCP_2_2_RECVID_LIST_TIMEOUT_MS, 0, 0 },
+	{ HDCP_2_2_REP_SEND_ACK, DP_HDCP_2_2_REP_SEND_ACK_OFFSET, false, false,
+	  0, 0, 0 },
 	{ HDCP_2_2_REP_STREAM_MANAGE,
-	  DP_HDCP_2_2_REP_STREAM_MANAGE_OFFSET, false,
-	  0, 0 },
+	  DP_HDCP_2_2_REP_STREAM_MANAGE_OFFSET, false, false,
+	  0, 0, 0},
 	{ HDCP_2_2_REP_STREAM_READY, DP_HDCP_2_2_REP_STREAM_READY_OFFSET,
-	  false, HDCP_2_2_STREAM_READY_TIMEOUT_MS, 0 },
+	  false, false, HDCP_2_2_STREAM_READY_TIMEOUT_MS, 0, 0 },
 /* local define to shovel this through the write_2_2 interface */
 #define HDCP_2_2_ERRATA_DP_STREAM_TYPE	50
 	{ HDCP_2_2_ERRATA_DP_STREAM_TYPE,
@@ -513,6 +516,8 @@ int intel_dp_hdcp2_read_msg(struct intel_digital_port *dig_port,
 	u8 *byte = buf;
 	ssize_t ret, bytes_to_recv, len;
 	const struct hdcp2_dp_msg_data *hdcp2_msg_data;
+	ktime_t msg_end;
+	bool msg_expired;
 
 	hdcp2_msg_data = get_hdcp2_dp_msg_data(msg_id);
 	if (!hdcp2_msg_data)
@@ -539,6 +544,11 @@ int intel_dp_hdcp2_read_msg(struct intel_digital_port *dig_port,
 		len = bytes_to_recv > DP_AUX_MAX_PAYLOAD_BYTES ?
 		      DP_AUX_MAX_PAYLOAD_BYTES : bytes_to_recv;
 
+		/* Entire msg read timeout since initiate of msg read */
+		if (bytes_to_recv == size - 1)
+			msg_end = ktime_add_ms(ktime_get_raw(),
+					       hdcp2_msg_data->msg_read_timeout);
+
 		ret = drm_dp_dpcd_read(&dig_port->dp.aux, offset,
 				       (void *)byte, len);
 		if (ret < 0) {
@@ -551,6 +561,14 @@ int intel_dp_hdcp2_read_msg(struct intel_digital_port *dig_port,
 		byte += ret;
 		offset += ret;
 	}
+
+	msg_expired = ktime_after(ktime_get_raw(), msg_end);
+	if (msg_expired && hdcp2_msg_data->msg_can_timedout) {
+		drm_dbg_kms(&i915->drm, "msg_id %d, entire msg read timeout(mSec): %d\n",
+			    msg_id, hdcp2_msg_data->msg_read_timeout);
+		return -ETIMEDOUT;
+	}
+
 	byte = buf;
 	*byte = msg_id;
 
diff --git a/include/drm/drm_hdcp.h b/include/drm/drm_hdcp.h
index ac22c246542a..2b165a0f434f 100644
--- a/include/drm/drm_hdcp.h
+++ b/include/drm/drm_hdcp.h
@@ -224,9 +224,12 @@ struct hdcp2_rep_stream_ready {
 
 /* HDCP2.2 TIMEOUTs in mSec */
 #define HDCP_2_2_CERT_TIMEOUT_MS		100
+#define HDCP_2_2_DP_CERT_READ_TIMEOUT_MS	110
 #define HDCP_2_2_HPRIME_NO_PAIRED_TIMEOUT_MS	1000
 #define HDCP_2_2_HPRIME_PAIRED_TIMEOUT_MS	200
+#define HDCP_2_2_DP_HPRIME_READ_TIMEOUT_MS	7
 #define HDCP_2_2_PAIRING_TIMEOUT_MS		200
+#define HDCP_2_2_DP_PAIRING_READ_TIMEOUT_MS	5
 #define	HDCP_2_2_HDMI_LPRIME_TIMEOUT_MS		20
 #define HDCP_2_2_DP_LPRIME_TIMEOUT_MS		7
 #define HDCP_2_2_RECVID_LIST_TIMEOUT_MS		3000
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
