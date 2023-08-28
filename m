Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E51B78A5CE
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Aug 2023 08:35:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30DEB10E21A;
	Mon, 28 Aug 2023 06:35:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C067B10E218
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Aug 2023 06:35:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693204537; x=1724740537;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=d6m6liq2jAp6ba9gFDgnIKn4mRcVkpOrMzOAILAawLk=;
 b=iXMeDBYgj8TwKwH/nnp/zG/v+6ECq6qoTYcbnPD4ehpVKlHIz63s2qOo
 JZD7X7TfQ9MhkiDiVfS8kF8irDlGzuWLIM1SrV4CyIniakXVGg1i3kGE0
 rBymBmFE32yhwIIn9WWEbb/5Ib7xe0GOhU8R0bPJds8SJn1nWYDzjuOmj
 qwYOABIHXxoEcE3zRT231pQmqTQN8dhXZriZEE2VxXGnPCQub5iqqFZiK
 9CQ90/opuNdHrpKthCgw2IRpalLhNFQl7b78+KKChBcT6lDR2kixSBHa7
 mbxRULKk562iriH/ISkUQzPJNVOAA53V68GA52NMGWWBEJiJ+wp/Na79X g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10815"; a="461395934"
X-IronPort-AV: E=Sophos;i="6.02,207,1688454000"; d="scan'208";a="461395934"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2023 23:35:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10815"; a="911930500"
X-IronPort-AV: E=Sophos;i="6.02,207,1688454000"; d="scan'208";a="911930500"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga005.jf.intel.com with ESMTP; 27 Aug 2023 23:35:35 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 28 Aug 2023 12:03:59 +0530
Message-Id: <20230828063401.600414-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230828063401.600414-1-suraj.kandpal@intel.com>
References: <20230828063401.600414-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 2/4] drm/i915/hdcp: Propagate aux info in DP
 HDCP functions
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
Cc: uma.shakar@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We were propagating dig_port info to dp hdcp2 specific functions.
Let us clean that up and send intel_connector in the following
functions: intel_dp_hdcp2_wait_for_msg, get_receiver_id_list_rx_info,
intel_dp_hdcp2_read_rx_status.
This optimises mst scenarios where aux ends up being remote and not
stored in dig_port and dig_port can always be derived from
intel_connector if needed.

--v2
-Fix Typo [Arun]
-Dont pass drm_dp core structures [Arun]
-Fix commit message styling [Arun]

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 39 +++++++++++---------
 1 file changed, 22 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
index 6cd42363837a..59ef77476cb9 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
@@ -331,10 +331,11 @@ static const struct hdcp2_dp_msg_data hdcp2_dp_msg_data[] = {
 };
 
 static int
-intel_dp_hdcp2_read_rx_status(struct intel_digital_port *dig_port,
+intel_dp_hdcp2_read_rx_status(struct intel_connector *connector,
 			      u8 *rx_status)
 {
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	ssize_t ret;
 
 	ret = drm_dp_dpcd_read(&dig_port->dp.aux,
@@ -350,14 +351,14 @@ intel_dp_hdcp2_read_rx_status(struct intel_digital_port *dig_port,
 }
 
 static
-int hdcp2_detect_msg_availability(struct intel_digital_port *dig_port,
+int hdcp2_detect_msg_availability(struct intel_connector *connector,
 				  u8 msg_id, bool *msg_ready)
 {
 	u8 rx_status;
 	int ret;
 
 	*msg_ready = false;
-	ret = intel_dp_hdcp2_read_rx_status(dig_port, &rx_status);
+	ret = intel_dp_hdcp2_read_rx_status(connector, &rx_status);
 	if (ret < 0)
 		return ret;
 
@@ -383,12 +384,11 @@ int hdcp2_detect_msg_availability(struct intel_digital_port *dig_port,
 }
 
 static ssize_t
-intel_dp_hdcp2_wait_for_msg(struct intel_digital_port *dig_port,
+intel_dp_hdcp2_wait_for_msg(struct intel_connector *connector,
 			    const struct hdcp2_dp_msg_data *hdcp2_msg_data)
 {
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
-	struct intel_dp *dp = &dig_port->dp;
-	struct intel_hdcp *hdcp = &dp->attached_connector->hdcp;
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_hdcp *hdcp = &connector->hdcp;
 	u8 msg_id = hdcp2_msg_data->msg_id;
 	int ret, timeout;
 	bool msg_ready = false;
@@ -411,8 +411,8 @@ intel_dp_hdcp2_wait_for_msg(struct intel_digital_port *dig_port,
 		 * the timeout at wait for CP_IRQ.
 		 */
 		intel_dp_hdcp_wait_for_cp_irq(hdcp, timeout);
-		ret = hdcp2_detect_msg_availability(dig_port,
-						    msg_id, &msg_ready);
+		ret = hdcp2_detect_msg_availability(connector, msg_id,
+						    &msg_ready);
 		if (!msg_ready)
 			ret = -ETIMEDOUT;
 	}
@@ -445,6 +445,7 @@ int intel_dp_hdcp2_write_msg(struct intel_connector *connector,
 	u8 *byte = buf;
 	ssize_t ret, bytes_to_write, len;
 	const struct hdcp2_dp_msg_data *hdcp2_msg_data;
+	struct drm_dp_aux *aux;
 
 	hdcp2_msg_data = get_hdcp2_dp_msg_data(*byte);
 	if (!hdcp2_msg_data)
@@ -452,6 +453,8 @@ int intel_dp_hdcp2_write_msg(struct intel_connector *connector,
 
 	offset = hdcp2_msg_data->offset;
 
+	aux = &dig_port->dp.aux;
+
 	/* No msg_id in DP HDCP2.2 msgs */
 	bytes_to_write = size - 1;
 	byte++;
@@ -460,7 +463,7 @@ int intel_dp_hdcp2_write_msg(struct intel_connector *connector,
 		len = bytes_to_write > DP_AUX_MAX_PAYLOAD_BYTES ?
 				DP_AUX_MAX_PAYLOAD_BYTES : bytes_to_write;
 
-		ret = drm_dp_dpcd_write(&dig_port->dp.aux,
+		ret = drm_dp_dpcd_write(aux,
 					offset, (void *)byte, len);
 		if (ret < 0)
 			return ret;
@@ -474,8 +477,10 @@ int intel_dp_hdcp2_write_msg(struct intel_connector *connector,
 }
 
 static
-ssize_t get_receiver_id_list_rx_info(struct intel_digital_port *dig_port, u32 *dev_cnt, u8 *byte)
+ssize_t get_receiver_id_list_rx_info(struct intel_connector *connector,
+				     u32 *dev_cnt, u8 *byte)
 {
+	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	ssize_t ret;
 	u8 *rx_info = byte;
 
@@ -500,8 +505,7 @@ int intel_dp_hdcp2_read_msg(struct intel_connector *connector,
 {
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
-	struct intel_dp *dp = &dig_port->dp;
-	struct intel_hdcp *hdcp = &dp->attached_connector->hdcp;
+	struct intel_hdcp *hdcp = &connector->hdcp;
 	unsigned int offset;
 	u8 *byte = buf;
 	ssize_t ret, bytes_to_recv, len;
@@ -515,7 +519,7 @@ int intel_dp_hdcp2_read_msg(struct intel_connector *connector,
 		return -EINVAL;
 	offset = hdcp2_msg_data->offset;
 
-	ret = intel_dp_hdcp2_wait_for_msg(dig_port, hdcp2_msg_data);
+	ret = intel_dp_hdcp2_wait_for_msg(connector, hdcp2_msg_data);
 	if (ret < 0)
 		return ret;
 
@@ -525,7 +529,7 @@ int intel_dp_hdcp2_read_msg(struct intel_connector *connector,
 	byte++;
 
 	if (msg_id == HDCP_2_2_REP_SEND_RECVID_LIST) {
-		ret = get_receiver_id_list_rx_info(dig_port, &dev_cnt, byte);
+		ret = get_receiver_id_list_rx_info(connector, &dev_cnt, byte);
 		if (ret < 0)
 			return ret;
 
@@ -609,7 +613,8 @@ int intel_dp_hdcp2_check_link(struct intel_digital_port *dig_port,
 	u8 rx_status;
 	int ret;
 
-	ret = intel_dp_hdcp2_read_rx_status(dig_port, &rx_status);
+	ret = intel_dp_hdcp2_read_rx_status(connector,
+					    &rx_status);
 	if (ret)
 		return ret;
 
-- 
2.25.1

