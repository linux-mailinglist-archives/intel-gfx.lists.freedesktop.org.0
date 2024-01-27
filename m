Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 145CA83EBA4
	for <lists+intel-gfx@lfdr.de>; Sat, 27 Jan 2024 08:18:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8856410E598;
	Sat, 27 Jan 2024 07:18:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DADA010E598
 for <intel-gfx@lists.freedesktop.org>; Sat, 27 Jan 2024 07:18:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706339924; x=1737875924;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GVbnRyeB0rN1F8c7BeBGAT0P6UEgD5qbn1jbu/NmVRo=;
 b=dFi2XxTHHdl5HKuulQBDA0cjKTqIWWRwgKrFLaYMFOn/n4iuD+pCy+7S
 dsV6qMvp3mNmUWehh7x8pPg9cCrEI3idSxj1WXonQnOfSXY/9D1MgZWKw
 6BqLuEqA+KeLr49Pr2zC6c0qokHvEuun1Tw2rDWmvaKk4ZCca/BDYwE5m
 CT2ratK0EG8Dsxm2q1EBS6iuNFBuUtOLMVsk1hdiJknlMRrTtOv9Qgdgx
 7GzzTlHPds8h34TDE/uLJoZ/szvXOQd1oBNTJPPQCPN8nrFf052FfLVFh
 VkW1KYUDv51+y8rp1jIpMzxSIh6LbJFFOS6/KEkmJgwAG9JdnwQFknlxc Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10964"; a="2528283"
X-IronPort-AV: E=Sophos;i="6.05,220,1701158400"; 
   d="scan'208";a="2528283"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2024 23:18:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,220,1701158400"; 
   d="scan'208";a="2970483"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orviesa004.jf.intel.com with ESMTP; 26 Jan 2024 23:18:42 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 1/6] drm/i915/hdcp: Move to direct reads for HDCP
Date: Sat, 27 Jan 2024 12:46:35 +0530
Message-Id: <20240127071640.850392-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240127071640.850392-1-suraj.kandpal@intel.com>
References: <20240127071640.850392-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

Even for MST scenarios we need to do direct reads only on the
immediate downstream device the rest of the authentication is taken
care by that device. Remote reads will only be used to check
capability of the monitors in MST topology.

--v2
-Add fixes tag [Ankit]
-Derive aux where needed rather than through a function [Ankit]

Fixes: ae4f902bb344 ("drm/i915/hdcp: Send the correct aux for DPMST HDCP scenario")
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 31 ++++++--------------
 1 file changed, 9 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
index 3a595cd433d4..defc90936317 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
@@ -330,23 +330,13 @@ static const struct hdcp2_dp_msg_data hdcp2_dp_msg_data[] = {
 	  0, 0 },
 };
 
-static struct drm_dp_aux *
-intel_dp_hdcp_get_aux(struct intel_connector *connector)
-{
-	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
-
-	if (intel_encoder_is_mst(connector->encoder))
-		return &connector->port->aux;
-	else
-		return &dig_port->dp.aux;
-}
-
 static int
 intel_dp_hdcp2_read_rx_status(struct intel_connector *connector,
 			      u8 *rx_status)
 {
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
-	struct drm_dp_aux *aux = intel_dp_hdcp_get_aux(connector);
+	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
+	struct drm_dp_aux *aux = &dig_port->dp.aux;
 	ssize_t ret;
 
 	ret = drm_dp_dpcd_read(aux,
@@ -454,8 +444,9 @@ int intel_dp_hdcp2_write_msg(struct intel_connector *connector,
 	unsigned int offset;
 	u8 *byte = buf;
 	ssize_t ret, bytes_to_write, len;
+	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
+	struct drm_dp_aux *aux = &dig_port->dp.aux;
 	const struct hdcp2_dp_msg_data *hdcp2_msg_data;
-	struct drm_dp_aux *aux;
 
 	hdcp2_msg_data = get_hdcp2_dp_msg_data(*byte);
 	if (!hdcp2_msg_data)
@@ -463,8 +454,6 @@ int intel_dp_hdcp2_write_msg(struct intel_connector *connector,
 
 	offset = hdcp2_msg_data->offset;
 
-	aux = intel_dp_hdcp_get_aux(connector);
-
 	/* No msg_id in DP HDCP2.2 msgs */
 	bytes_to_write = size - 1;
 	byte++;
@@ -490,7 +479,8 @@ static
 ssize_t get_receiver_id_list_rx_info(struct intel_connector *connector,
 				     u32 *dev_cnt, u8 *byte)
 {
-	struct drm_dp_aux *aux = intel_dp_hdcp_get_aux(connector);
+	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
+	struct drm_dp_aux *aux = &dig_port->dp.aux;
 	ssize_t ret;
 	u8 *rx_info = byte;
 
@@ -516,7 +506,7 @@ int intel_dp_hdcp2_read_msg(struct intel_connector *connector,
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	struct intel_hdcp *hdcp = &connector->hdcp;
-	struct drm_dp_aux *aux;
+	struct drm_dp_aux *aux = &dig_port->dp.aux;
 	unsigned int offset;
 	u8 *byte = buf;
 	ssize_t ret, bytes_to_recv, len;
@@ -530,8 +520,6 @@ int intel_dp_hdcp2_read_msg(struct intel_connector *connector,
 		return -EINVAL;
 	offset = hdcp2_msg_data->offset;
 
-	aux = intel_dp_hdcp_get_aux(connector);
-
 	ret = intel_dp_hdcp2_wait_for_msg(connector, hdcp2_msg_data);
 	if (ret < 0)
 		return ret;
@@ -651,12 +639,11 @@ static
 int intel_dp_hdcp2_capable(struct intel_connector *connector,
 			   bool *capable)
 {
-	struct drm_dp_aux *aux;
+	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
+	struct drm_dp_aux *aux = &dig_port->dp.aux;
 	u8 rx_caps[3];
 	int ret;
 
-	aux = intel_dp_hdcp_get_aux(connector);
-
 	*capable = false;
 	ret = drm_dp_dpcd_read(aux,
 			       DP_HDCP_2_2_REG_RX_CAPS_OFFSET,
-- 
2.25.1

