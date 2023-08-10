Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9E637771FA
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Aug 2023 09:56:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E94410E4E9;
	Thu, 10 Aug 2023 07:56:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0576610E4E9
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Aug 2023 07:56:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691654190; x=1723190190;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PJ0Skzs7hrh5GGpdYmyBJ6fkeVaSyPMfewlhZnA3b6k=;
 b=Xw5U3SS1aKj844NuYhPkQuYdKH0uzvG1tqEG/SOr1xat35PwQMr897OL
 y+W5T/03xcN6+ckELeo6jl5TGpri4gdElb4rYK78tQlSFv9Xd9nYfWUGc
 ofAa/CwqSv1mPlQc3SeqjsO/WusUJaWEpo1QcirraNp80U7Ml1zSO22Sm
 BZ+biwls+48jnSKDu6dF+ycOtDn7cyC04AAaMy+2UQ7XFDf9N68eKx53H
 rlKqnKvrHXL+bZbUx6uXSXqV+Fs4rkkQk+ocB7xWo2+62c8D9yaq0QtkZ
 /5tQeOHvceikOmOpbfwujOl7AqisGhy0jpSBLHqoXWN0+uteqNTBEaJPq g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10797"; a="351629044"
X-IronPort-AV: E=Sophos;i="6.01,161,1684825200"; d="scan'208";a="351629044"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2023 00:49:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10797"; a="735307935"
X-IronPort-AV: E=Sophos;i="6.01,161,1684825200"; d="scan'208";a="735307935"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga007.fm.intel.com with ESMTP; 10 Aug 2023 00:49:54 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Aug 2023 13:17:57 +0530
Message-Id: <20230810074758.154968-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230810074758.154968-1-suraj.kandpal@intel.com>
References: <20230810074758.154968-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/4] drm/i915/hdcp: Propagate aux info in DP
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
Let us clean that up and send drm_dp_aux instead n functions:
intel_dp_hdcp2_wait_for_msg, get_receiver_id_list_rx_info,
intel_dp_hdcp2_read_rx_status this optimises mst scenarios where
aux ends up being remote and not stored in dig_port.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 43 ++++++++++++--------
 1 file changed, 25 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
index 6cd42363837a..5304aa73b23f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
@@ -331,13 +331,13 @@ static const struct hdcp2_dp_msg_data hdcp2_dp_msg_data[] = {
 };
 
 static int
-intel_dp_hdcp2_read_rx_status(struct intel_digital_port *dig_port,
+intel_dp_hdcp2_read_rx_status(struct drm_i915_private *i915,
+			      struct drm_dp_aux *aux,
 			      u8 *rx_status)
 {
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	ssize_t ret;
 
-	ret = drm_dp_dpcd_read(&dig_port->dp.aux,
+	ret = drm_dp_dpcd_read(aux,
 			       DP_HDCP_2_2_REG_RXSTATUS_OFFSET, rx_status,
 			       HDCP_2_2_DP_RXSTATUS_LEN);
 	if (ret != HDCP_2_2_DP_RXSTATUS_LEN) {
@@ -350,14 +350,15 @@ intel_dp_hdcp2_read_rx_status(struct intel_digital_port *dig_port,
 }
 
 static
-int hdcp2_detect_msg_availability(struct intel_digital_port *dig_port,
+int hdcp2_detect_msg_availability(struct drm_i915_private *i915,
+				  struct drm_dp_aux *aux,
 				  u8 msg_id, bool *msg_ready)
 {
 	u8 rx_status;
 	int ret;
 
 	*msg_ready = false;
-	ret = intel_dp_hdcp2_read_rx_status(dig_port, &rx_status);
+	ret = intel_dp_hdcp2_read_rx_status(i915, aux, &rx_status);
 	if (ret < 0)
 		return ret;
 
@@ -383,12 +384,10 @@ int hdcp2_detect_msg_availability(struct intel_digital_port *dig_port,
 }
 
 static ssize_t
-intel_dp_hdcp2_wait_for_msg(struct intel_digital_port *dig_port,
+intel_dp_hdcp2_wait_for_msg(struct drm_i915_private *i915, struct drm_dp_aux *aux,
+			    struct intel_hdcp *hdcp,
 			    const struct hdcp2_dp_msg_data *hdcp2_msg_data)
 {
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
-	struct intel_dp *dp = &dig_port->dp;
-	struct intel_hdcp *hdcp = &dp->attached_connector->hdcp;
 	u8 msg_id = hdcp2_msg_data->msg_id;
 	int ret, timeout;
 	bool msg_ready = false;
@@ -411,7 +410,7 @@ intel_dp_hdcp2_wait_for_msg(struct intel_digital_port *dig_port,
 		 * the timeout at wait for CP_IRQ.
 		 */
 		intel_dp_hdcp_wait_for_cp_irq(hdcp, timeout);
-		ret = hdcp2_detect_msg_availability(dig_port,
+		ret = hdcp2_detect_msg_availability(i915, aux,
 						    msg_id, &msg_ready);
 		if (!msg_ready)
 			ret = -ETIMEDOUT;
@@ -445,6 +444,7 @@ int intel_dp_hdcp2_write_msg(struct intel_connector *connector,
 	u8 *byte = buf;
 	ssize_t ret, bytes_to_write, len;
 	const struct hdcp2_dp_msg_data *hdcp2_msg_data;
+	struct drm_dp_aux *aux;
 
 	hdcp2_msg_data = get_hdcp2_dp_msg_data(*byte);
 	if (!hdcp2_msg_data)
@@ -452,6 +452,8 @@ int intel_dp_hdcp2_write_msg(struct intel_connector *connector,
 
 	offset = hdcp2_msg_data->offset;
 
+	aux = &dig_port->dp.aux;
+
 	/* No msg_id in DP HDCP2.2 msgs */
 	bytes_to_write = size - 1;
 	byte++;
@@ -460,7 +462,7 @@ int intel_dp_hdcp2_write_msg(struct intel_connector *connector,
 		len = bytes_to_write > DP_AUX_MAX_PAYLOAD_BYTES ?
 				DP_AUX_MAX_PAYLOAD_BYTES : bytes_to_write;
 
-		ret = drm_dp_dpcd_write(&dig_port->dp.aux,
+		ret = drm_dp_dpcd_write(aux,
 					offset, (void *)byte, len);
 		if (ret < 0)
 			return ret;
@@ -474,12 +476,12 @@ int intel_dp_hdcp2_write_msg(struct intel_connector *connector,
 }
 
 static
-ssize_t get_receiver_id_list_rx_info(struct intel_digital_port *dig_port, u32 *dev_cnt, u8 *byte)
+ssize_t get_receiver_id_list_rx_info(struct drm_dp_aux *aux, u32 *dev_cnt, u8 *byte)
 {
 	ssize_t ret;
 	u8 *rx_info = byte;
 
-	ret = drm_dp_dpcd_read(&dig_port->dp.aux,
+	ret = drm_dp_dpcd_read(aux,
 			       DP_HDCP_2_2_REG_RXINFO_OFFSET,
 			       (void *)rx_info, HDCP_2_2_RXINFO_LEN);
 	if (ret != HDCP_2_2_RXINFO_LEN)
@@ -501,7 +503,8 @@ int intel_dp_hdcp2_read_msg(struct intel_connector *connector,
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	struct intel_dp *dp = &dig_port->dp;
-	struct intel_hdcp *hdcp = &dp->attached_connector->hdcp;
+	struct intel_hdcp *hdcp = &connector->hdcp;
+	struct drm_dp_aux *aux;
 	unsigned int offset;
 	u8 *byte = buf;
 	ssize_t ret, bytes_to_recv, len;
@@ -515,7 +518,9 @@ int intel_dp_hdcp2_read_msg(struct intel_connector *connector,
 		return -EINVAL;
 	offset = hdcp2_msg_data->offset;
 
-	ret = intel_dp_hdcp2_wait_for_msg(dig_port, hdcp2_msg_data);
+	aux = &dp->aux;
+
+	ret = intel_dp_hdcp2_wait_for_msg(i915, aux, hdcp, hdcp2_msg_data);
 	if (ret < 0)
 		return ret;
 
@@ -525,7 +530,7 @@ int intel_dp_hdcp2_read_msg(struct intel_connector *connector,
 	byte++;
 
 	if (msg_id == HDCP_2_2_REP_SEND_RECVID_LIST) {
-		ret = get_receiver_id_list_rx_info(dig_port, &dev_cnt, byte);
+		ret = get_receiver_id_list_rx_info(aux, &dev_cnt, byte);
 		if (ret < 0)
 			return ret;
 
@@ -547,7 +552,7 @@ int intel_dp_hdcp2_read_msg(struct intel_connector *connector,
 			msg_end = ktime_add_ms(ktime_get_raw(),
 					       hdcp2_msg_data->msg_read_timeout);
 
-		ret = drm_dp_dpcd_read(&dig_port->dp.aux, offset,
+		ret = drm_dp_dpcd_read(aux, offset,
 				       (void *)byte, len);
 		if (ret < 0) {
 			drm_dbg_kms(&i915->drm, "msg_id %d, ret %zd\n",
@@ -606,10 +611,12 @@ static
 int intel_dp_hdcp2_check_link(struct intel_digital_port *dig_port,
 			      struct intel_connector *connector)
 {
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	u8 rx_status;
 	int ret;
 
-	ret = intel_dp_hdcp2_read_rx_status(dig_port, &rx_status);
+	ret = intel_dp_hdcp2_read_rx_status(i915, &dig_port->dp.aux,
+					    &rx_status);
 	if (ret)
 		return ret;
 
-- 
2.25.1

