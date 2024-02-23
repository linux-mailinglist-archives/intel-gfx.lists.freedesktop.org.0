Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6101D860BF1
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Feb 2024 09:17:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5B5910EB22;
	Fri, 23 Feb 2024 08:16:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="f8fJy2PH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 165DA10E089
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Feb 2024 08:16:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708676214; x=1740212214;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=35pr76hbwSUzZxKcdxEhpIJCJb2XTKblks97Iioi4WU=;
 b=f8fJy2PHIZaizSz6Kh6DlkrCMfrq/vtX0/UAxddk6ef5du6FlWX84Dgn
 qA7khPFBzTyAbMDufdGONAeE/0NjZXQh62YW2F556eJNmXWjmbtPTUapp
 GaV/KEW4sDvjxuOgRtivdZXc2qhiwK0UYzsVPyHZBOl7FcsFSri+2WuoB
 y7J/yVuV42z7mRMfj1A0tgYlSnQZOyvHDYnnFcdlEw2S76Ec8MD0R5YfN
 pIOfD2VAaQIlmK196ZGLCOtkbHY5lNZ9A1CmO4eTA4q0VjDI6HO0hA9lA
 XQvVL9dXqe2Uwha1jHMdGdXNPy15bz+9Pg2/vK5pLMtHc4KdpFyZxWzB2 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10992"; a="2830007"
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; 
   d="scan'208";a="2830007"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2024 00:16:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; d="scan'208";a="10528807"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orviesa003.jf.intel.com with ESMTP; 23 Feb 2024 00:16:52 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: uma.shankar@intel.com, ankit.k.nautiyal@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 01/13] drm/i915/hdcp: Move to direct reads for HDCP
Date: Fri, 23 Feb 2024 13:44:42 +0530
Message-ID: <20240223081453.1576918-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240223081453.1576918-2-suraj.kandpal@intel.com>
References: <20240223081453.1576918-2-suraj.kandpal@intel.com>
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
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 31 ++++++--------------
 1 file changed, 9 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
index 9dff4bdfeec8..92642e8d82db 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
@@ -333,23 +333,13 @@ static const struct hdcp2_dp_msg_data hdcp2_dp_msg_data[] = {
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
@@ -458,8 +448,9 @@ int intel_dp_hdcp2_write_msg(struct intel_connector *connector,
 	unsigned int offset;
 	u8 *byte = buf;
 	ssize_t ret, bytes_to_write, len;
+	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
+	struct drm_dp_aux *aux = &dig_port->dp.aux;
 	const struct hdcp2_dp_msg_data *hdcp2_msg_data;
-	struct drm_dp_aux *aux;
 
 	hdcp2_msg_data = get_hdcp2_dp_msg_data(*byte);
 	if (!hdcp2_msg_data)
@@ -467,8 +458,6 @@ int intel_dp_hdcp2_write_msg(struct intel_connector *connector,
 
 	offset = hdcp2_msg_data->offset;
 
-	aux = intel_dp_hdcp_get_aux(connector);
-
 	/* No msg_id in DP HDCP2.2 msgs */
 	bytes_to_write = size - 1;
 	byte++;
@@ -494,7 +483,8 @@ static
 ssize_t get_receiver_id_list_rx_info(struct intel_connector *connector,
 				     u32 *dev_cnt, u8 *byte)
 {
-	struct drm_dp_aux *aux = intel_dp_hdcp_get_aux(connector);
+	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
+	struct drm_dp_aux *aux = &dig_port->dp.aux;
 	ssize_t ret;
 	u8 *rx_info = byte;
 
@@ -520,7 +510,7 @@ int intel_dp_hdcp2_read_msg(struct intel_connector *connector,
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	struct intel_hdcp *hdcp = &connector->hdcp;
-	struct drm_dp_aux *aux;
+	struct drm_dp_aux *aux = &dig_port->dp.aux;
 	unsigned int offset;
 	u8 *byte = buf;
 	ssize_t ret, bytes_to_recv, len;
@@ -534,8 +524,6 @@ int intel_dp_hdcp2_read_msg(struct intel_connector *connector,
 		return -EINVAL;
 	offset = hdcp2_msg_data->offset;
 
-	aux = intel_dp_hdcp_get_aux(connector);
-
 	ret = intel_dp_hdcp2_wait_for_msg(connector, hdcp2_msg_data);
 	if (ret < 0)
 		return ret;
@@ -655,12 +643,11 @@ static
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
2.43.2

