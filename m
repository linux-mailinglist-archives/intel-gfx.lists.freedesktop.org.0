Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8C6A30498F
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Jan 2021 21:08:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 723A489D1D;
	Tue, 26 Jan 2021 20:08:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7651089D1D
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Jan 2021 20:08:24 +0000 (UTC)
IronPort-SDR: N1KK6M4o797mdu8+xUOv3CYk03e7IraUkAYdAZtyIsvx5Xs2zVqCeXIdwB5rT+9ovupLVSsXyL
 KG4h1L5sCunQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9876"; a="177393095"
X-IronPort-AV: E=Sophos;i="5.79,377,1602572400"; d="scan'208";a="177393095"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2021 12:08:24 -0800
IronPort-SDR: 0LdLdkThxwC6SJMeI0GhuDWnyJaflqbstezty1Hsf8mGp7H6cOoaJr23Bzi/J9T/gBuQHqkO5A
 addWYb5ko7Lg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,377,1602572400"; d="scan'208";a="573040978"
Received: from jhli-desk1.jf.intel.com ([10.54.74.156])
 by orsmga005.jf.intel.com with ESMTP; 26 Jan 2021 12:08:24 -0800
From: Juston Li <juston.li@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Jan 2021 12:08:04 -0800
Message-Id: <20210126200805.2499944-2-juston.li@intel.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210126200805.2499944-1-juston.li@intel.com>
References: <20210126200805.2499944-1-juston.li@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/hdcp: read RxInfo once when
 reading Send_Pairing_Info
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
Cc: seanpaul@chromium.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Previously when reading Send_Pairing_Info, RxInfo by itself was read
once to retrieve the DEVICE_COUNT and then a second time when reading
the RepeaterAuth_Send_ReceiverID_List which contains RxInfo.

On a couple HDCP 2.2 docks, this second read attempt on RxInfo fails
due to no Ack response. This behavior doesn't seem to be defined but
regardless we can fix it by reading RxInfo once and storing it before
reading the rest of RepeaterAuth_Send_ReceiverID_List once we know the
size.

Modify get_receiver_id_list_size() to read and store RxInfo in the
message buffer and also parse DEVICE_COUNT so we know the size of
RepeaterAuth_Send_ReceiverID_List.

Afterwards, retrieve the rest of the message at the offset for
seq_num_V.

Signed-off-by: Juston Li <juston.li@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 31 ++++++++++----------
 include/drm/drm_dp_helper.h                  |  2 +-
 2 files changed, 17 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
index 56a1a0ed20fe..e312aa8038ff 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
@@ -475,11 +475,10 @@ int intel_dp_hdcp2_write_msg(struct intel_digital_port *dig_port,
 }
 
 static
-ssize_t get_receiver_id_list_size(struct intel_digital_port *dig_port)
+ssize_t get_receiver_id_list_rx_info(struct intel_digital_port *dig_port, u32 *dev_cnt, u8 *byte)
 {
-	u8 rx_info[HDCP_2_2_RXINFO_LEN];
-	u32 dev_cnt;
 	ssize_t ret;
+	u8 *rx_info = byte;
 
 	ret = drm_dp_dpcd_read(&dig_port->dp.aux,
 			       DP_HDCP_2_2_REG_RXINFO_OFFSET,
@@ -487,15 +486,11 @@ ssize_t get_receiver_id_list_size(struct intel_digital_port *dig_port)
 	if (ret != HDCP_2_2_RXINFO_LEN)
 		return ret >= 0 ? -EIO : ret;
 
-	dev_cnt = (HDCP_2_2_DEV_COUNT_HI(rx_info[0]) << 4 |
+	*dev_cnt = (HDCP_2_2_DEV_COUNT_HI(rx_info[0]) << 4 |
 		   HDCP_2_2_DEV_COUNT_LO(rx_info[1]));
 
-	if (dev_cnt > HDCP_2_2_MAX_DEVICE_COUNT)
-		dev_cnt = HDCP_2_2_MAX_DEVICE_COUNT;
-
-	ret = sizeof(struct hdcp2_rep_send_receiverid_list) -
-		HDCP_2_2_RECEIVER_IDS_MAX_LEN +
-		(dev_cnt * HDCP_2_2_RECEIVER_ID_LEN);
+	if (*dev_cnt > HDCP_2_2_MAX_DEVICE_COUNT)
+		*dev_cnt = HDCP_2_2_MAX_DEVICE_COUNT;
 
 	return ret;
 }
@@ -504,13 +499,14 @@ static
 int intel_dp_hdcp2_read_msg(struct intel_digital_port *dig_port,
 			    u8 msg_id, void *buf, size_t size)
 {
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	struct intel_dp *dp = &dig_port->dp;
 	struct intel_hdcp *hdcp = &dp->attached_connector->hdcp;
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	unsigned int offset;
 	u8 *byte = buf;
 	ssize_t ret, bytes_to_recv, len;
 	const struct hdcp2_dp_msg_data *hdcp2_msg_data;
+	u32 dev_cnt;
 
 	hdcp2_msg_data = get_hdcp2_dp_msg_data(msg_id);
 	if (!hdcp2_msg_data)
@@ -523,17 +519,22 @@ int intel_dp_hdcp2_read_msg(struct intel_digital_port *dig_port,
 
 	hdcp->cp_irq_count_cached = atomic_read(&hdcp->cp_irq_count);
 
+	/* DP adaptation msgs has no msg_id */
+	byte++;
+
 	if (msg_id == HDCP_2_2_REP_SEND_RECVID_LIST) {
-		ret = get_receiver_id_list_size(dig_port);
+		ret = get_receiver_id_list_rx_info(dig_port, &dev_cnt, byte);
 		if (ret < 0)
 			return ret;
 
-		size = ret;
+		byte += ret;
+		size = sizeof(struct hdcp2_rep_send_receiverid_list) -
+		HDCP_2_2_RXINFO_LEN - HDCP_2_2_RECEIVER_IDS_MAX_LEN +
+		(dev_cnt * HDCP_2_2_RECEIVER_ID_LEN);
 	}
-	bytes_to_recv = size - 1;
 
 	/* DP adaptation msgs has no msg_id */
-	byte++;
+	bytes_to_recv = size - 1;
 
 	while (bytes_to_recv) {
 		len = bytes_to_recv > DP_AUX_MAX_PAYLOAD_BYTES ?
diff --git a/include/drm/drm_dp_helper.h b/include/drm/drm_dp_helper.h
index edffd1dcca3e..3b42392394ba 100644
--- a/include/drm/drm_dp_helper.h
+++ b/include/drm/drm_dp_helper.h
@@ -1388,7 +1388,7 @@ enum drm_dp_phy {
 #define DP_HDCP_2_2_LC_INIT_OFFSET		DP_HDCP_2_2_REG_RN_OFFSET
 #define DP_HDCP_2_2_LC_SEND_LPRIME_OFFSET	DP_HDCP_2_2_REG_LPRIME_OFFSET
 #define DP_HDCP_2_2_SKE_SEND_EKS_OFFSET		DP_HDCP_2_2_REG_EDKEY_KS_OFFSET
-#define DP_HDCP_2_2_REP_SEND_RECVID_LIST_OFFSET	DP_HDCP_2_2_REG_RXINFO_OFFSET
+#define DP_HDCP_2_2_REP_SEND_RECVID_LIST_OFFSET	DP_HDCP_2_2_REG_SEQ_NUM_V_OFFSET
 #define DP_HDCP_2_2_REP_SEND_ACK_OFFSET		DP_HDCP_2_2_REG_V_OFFSET
 #define DP_HDCP_2_2_REP_STREAM_MANAGE_OFFSET	DP_HDCP_2_2_REG_SEQ_NUM_M_OFFSET
 #define DP_HDCP_2_2_REP_STREAM_READY_OFFSET	DP_HDCP_2_2_REG_MPRIME_OFFSET
-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
