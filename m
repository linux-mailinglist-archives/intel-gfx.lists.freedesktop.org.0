Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE83E85F20C
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Feb 2024 08:46:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68A3010E896;
	Thu, 22 Feb 2024 07:46:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fFd4bpNq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B822010E73E
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Feb 2024 07:45:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708587959; x=1740123959;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=35pr76hbwSUzZxKcdxEhpIJCJb2XTKblks97Iioi4WU=;
 b=fFd4bpNqgeuCe4Tohy2AFZovCLbJBlOljIv7D7cSZUIiZ9M+cLeB3+8x
 EtTMfFJZ5AZyMMjbNCkf2FzpiDWnAsVF7Z38XvThcUks5TkYqKwLpQQF2
 0wgba/rh7yzh0OKzi5rLSKh4o9NOTxNVmP8p1Tdz9LinO9mpw1tqpnqv4
 uhSgKgObrmhPA1e16AHipCi4b1juj3h1Lqwr4ozT2mg78iR/c8+42tniD
 Ti4hvU4aP0BOOCFagAUUDgA/xZYkSkYrFiAVeug9VFbSDdEQfW8t7czel
 lr1H3RKWyoudPwELYRWuugxEHAWE7uGaU5LxpzCd+EqWcCMp6BbBiLAPC Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10991"; a="2906007"
X-IronPort-AV: E=Sophos;i="6.06,177,1705392000"; 
   d="scan'208";a="2906007"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2024 23:45:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,177,1705392000"; 
   d="scan'208";a="5354122"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa009.fm.intel.com with ESMTP; 21 Feb 2024 23:45:56 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: uma.shankar@intel.com, ankit.k.nautiyal@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 01/13] drm/i915/hdcp: Move to direct reads for HDCP
Date: Thu, 22 Feb 2024 13:13:42 +0530
Message-ID: <20240222074353.1568904-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240222074353.1568904-2-suraj.kandpal@intel.com>
References: <20240222074353.1568904-2-suraj.kandpal@intel.com>
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

