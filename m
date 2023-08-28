Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0092978A5CC
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Aug 2023 08:35:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 547C510E219;
	Mon, 28 Aug 2023 06:35:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 349AD10E218
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Aug 2023 06:35:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693204540; x=1724740540;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BCEgmbZBMpnF8LdcbLt9YxpekbfFBWJHzR4NIx8WINA=;
 b=mS1Jrakpi98NSK+Si97aeNOF1qxcGkyqsrumNd45EHJZKRFbCKkBlnEy
 tMx6oTr1NYOSMX7UzLrD2c5De1yK4oHRBCRtfV0YtFUJGrT7yuW4d2a00
 bETS5v1Hq/L/N+wXiTO1epdpwXdyyTvzcuY3WLjamzCKoGcKM6OoqH8wZ
 uQvRjYsPLkhEtEDIbLWDZxEUPeoNWgwqUEFY8JR3u+wxsiFalQllx6TD/
 AtoGgaGZouA/Rek3IZMa1hjMIhIvd/8qEc2t8Ru1pHAtMNyjVyJXRXFf8
 lP8DmN05J0yENoJAEzBzhrD/pt8D64NAgbzBzQVIszrSQCFEsG64wNFWP g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10815"; a="461395939"
X-IronPort-AV: E=Sophos;i="6.02,207,1688454000"; d="scan'208";a="461395939"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2023 23:35:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10815"; a="911930508"
X-IronPort-AV: E=Sophos;i="6.02,207,1688454000"; d="scan'208";a="911930508"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga005.jf.intel.com with ESMTP; 27 Aug 2023 23:35:37 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 28 Aug 2023 12:04:00 +0530
Message-Id: <20230828063401.600414-4-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230828063401.600414-1-suraj.kandpal@intel.com>
References: <20230828063401.600414-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 3/4] drm/i915/hdcp: Send the correct aux for
 DPMST HDCP scenario
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
Cc: Arun R Murthy <arun.r.mruthy@intel.com>, uma.shakar@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Up until now we were sending the base aux stored in dig_port which
is not correct as this causes an issue when monitor is connected via
a DPMST hub causing it to be remote hence we end up seeing AUX
failures so let's send the remote aux in case of DPMST.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Arun R Murthy <arun.r.mruthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 27 +++++++++++++++-----
 1 file changed, 20 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
index 59ef77476cb9..df68fd8f2eed 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
@@ -330,15 +330,26 @@ static const struct hdcp2_dp_msg_data hdcp2_dp_msg_data[] = {
 	  0, 0 },
 };
 
+static struct drm_dp_aux *
+intel_dp_hdcp_get_aux(struct intel_connector *connector)
+{
+	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
+
+	if (intel_encoder_is_mst(connector->encoder))
+		return &connector->port->aux;
+	else
+		return &dig_port->dp.aux;
+}
+
 static int
 intel_dp_hdcp2_read_rx_status(struct intel_connector *connector,
 			      u8 *rx_status)
 {
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
-	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
+	struct drm_dp_aux *aux = intel_dp_hdcp_get_aux(connector);
 	ssize_t ret;
 
-	ret = drm_dp_dpcd_read(&dig_port->dp.aux,
+	ret = drm_dp_dpcd_read(aux,
 			       DP_HDCP_2_2_REG_RXSTATUS_OFFSET, rx_status,
 			       HDCP_2_2_DP_RXSTATUS_LEN);
 	if (ret != HDCP_2_2_DP_RXSTATUS_LEN) {
@@ -440,7 +451,6 @@ static
 int intel_dp_hdcp2_write_msg(struct intel_connector *connector,
 			     void *buf, size_t size)
 {
-	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	unsigned int offset;
 	u8 *byte = buf;
 	ssize_t ret, bytes_to_write, len;
@@ -453,7 +463,7 @@ int intel_dp_hdcp2_write_msg(struct intel_connector *connector,
 
 	offset = hdcp2_msg_data->offset;
 
-	aux = &dig_port->dp.aux;
+	aux = intel_dp_hdcp_get_aux(connector);
 
 	/* No msg_id in DP HDCP2.2 msgs */
 	bytes_to_write = size - 1;
@@ -480,11 +490,11 @@ static
 ssize_t get_receiver_id_list_rx_info(struct intel_connector *connector,
 				     u32 *dev_cnt, u8 *byte)
 {
-	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
+	struct drm_dp_aux *aux = intel_dp_hdcp_get_aux(connector);
 	ssize_t ret;
 	u8 *rx_info = byte;
 
-	ret = drm_dp_dpcd_read(&dig_port->dp.aux,
+	ret = drm_dp_dpcd_read(aux,
 			       DP_HDCP_2_2_REG_RXINFO_OFFSET,
 			       (void *)rx_info, HDCP_2_2_RXINFO_LEN);
 	if (ret != HDCP_2_2_RXINFO_LEN)
@@ -506,6 +516,7 @@ int intel_dp_hdcp2_read_msg(struct intel_connector *connector,
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	struct intel_hdcp *hdcp = &connector->hdcp;
+	struct drm_dp_aux *aux;
 	unsigned int offset;
 	u8 *byte = buf;
 	ssize_t ret, bytes_to_recv, len;
@@ -519,6 +530,8 @@ int intel_dp_hdcp2_read_msg(struct intel_connector *connector,
 		return -EINVAL;
 	offset = hdcp2_msg_data->offset;
 
+	aux = intel_dp_hdcp_get_aux(connector);
+
 	ret = intel_dp_hdcp2_wait_for_msg(connector, hdcp2_msg_data);
 	if (ret < 0)
 		return ret;
@@ -551,7 +564,7 @@ int intel_dp_hdcp2_read_msg(struct intel_connector *connector,
 			msg_end = ktime_add_ms(ktime_get_raw(),
 					       hdcp2_msg_data->msg_read_timeout);
 
-		ret = drm_dp_dpcd_read(&dig_port->dp.aux, offset,
+		ret = drm_dp_dpcd_read(aux, offset,
 				       (void *)byte, len);
 		if (ret < 0) {
 			drm_dbg_kms(&i915->drm, "msg_id %d, ret %zd\n",
-- 
2.25.1

