Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F06D582BBEA
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jan 2024 08:43:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A381C10EA7A;
	Fri, 12 Jan 2024 07:43:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3EFA10EA7A
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jan 2024 07:43:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705045408; x=1736581408;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TDrM10sqZX5Ztf06/NW2p7t+H2+tlhn8LQINu4R0Icc=;
 b=E+pDySVy/YR6/BxAfrugxv2Agu0SNXaSqWQyd+qhiuttDvTD+orhx6Wh
 vA8LZsnrRmhBJoOtyzUyCLhQZO05hXrqE6OsDjBdIO+seIH0OoCobN0Vq
 v4Uh+F4sMQO7JiABEDzZhbb9nXMauEx63DrCd5wxBNFn12oUZzq/E9KFS
 IXHLeH9jwq6Zhcr+eF94FYBkJuwQLEek/A1dlUD4R/4wNRoNU4zP/onoR
 FmLyKa8zTciGgzV6QWc26X1E3kz2oNAn2e506MA9Y6b+O1L0hzqG5yaqh
 FfVNeZVX9HeevtU1lXzEDulh/38qko/TpVc+hmCVHFsNdoXZ07cFyIX4U A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10950"; a="5866973"
X-IronPort-AV: E=Sophos;i="6.04,188,1695711600"; 
   d="scan'208";a="5866973"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2024 23:43:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,188,1695711600"; d="scan'208";a="17317576"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa002.fm.intel.com with ESMTP; 11 Jan 2024 23:43:25 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 1/7] drm/i915/hdcp: Move to direct reads for HDCP
Date: Fri, 12 Jan 2024 13:11:14 +0530
Message-Id: <20240112074120.159797-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240112074120.159797-1-suraj.kandpal@intel.com>
References: <20240112074120.159797-1-suraj.kandpal@intel.com>
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

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
index 3a595cd433d4..bec49061b2e1 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
@@ -331,11 +331,11 @@ static const struct hdcp2_dp_msg_data hdcp2_dp_msg_data[] = {
 };
 
 static struct drm_dp_aux *
-intel_dp_hdcp_get_aux(struct intel_connector *connector)
+intel_dp_hdcp_get_aux(struct intel_connector *connector, bool remote_req)
 {
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 
-	if (intel_encoder_is_mst(connector->encoder))
+	if (intel_encoder_is_mst(connector->encoder) && remote_req)
 		return &connector->port->aux;
 	else
 		return &dig_port->dp.aux;
@@ -346,7 +346,7 @@ intel_dp_hdcp2_read_rx_status(struct intel_connector *connector,
 			      u8 *rx_status)
 {
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
-	struct drm_dp_aux *aux = intel_dp_hdcp_get_aux(connector);
+	struct drm_dp_aux *aux = intel_dp_hdcp_get_aux(connector, false);
 	ssize_t ret;
 
 	ret = drm_dp_dpcd_read(aux,
@@ -463,7 +463,7 @@ int intel_dp_hdcp2_write_msg(struct intel_connector *connector,
 
 	offset = hdcp2_msg_data->offset;
 
-	aux = intel_dp_hdcp_get_aux(connector);
+	aux = intel_dp_hdcp_get_aux(connector, false);
 
 	/* No msg_id in DP HDCP2.2 msgs */
 	bytes_to_write = size - 1;
@@ -490,7 +490,7 @@ static
 ssize_t get_receiver_id_list_rx_info(struct intel_connector *connector,
 				     u32 *dev_cnt, u8 *byte)
 {
-	struct drm_dp_aux *aux = intel_dp_hdcp_get_aux(connector);
+	struct drm_dp_aux *aux = intel_dp_hdcp_get_aux(connector, false);
 	ssize_t ret;
 	u8 *rx_info = byte;
 
@@ -530,7 +530,7 @@ int intel_dp_hdcp2_read_msg(struct intel_connector *connector,
 		return -EINVAL;
 	offset = hdcp2_msg_data->offset;
 
-	aux = intel_dp_hdcp_get_aux(connector);
+	aux = intel_dp_hdcp_get_aux(connector, false);
 
 	ret = intel_dp_hdcp2_wait_for_msg(connector, hdcp2_msg_data);
 	if (ret < 0)
@@ -655,7 +655,7 @@ int intel_dp_hdcp2_capable(struct intel_connector *connector,
 	u8 rx_caps[3];
 	int ret;
 
-	aux = intel_dp_hdcp_get_aux(connector);
+	aux = intel_dp_hdcp_get_aux(connector, true);
 
 	*capable = false;
 	ret = drm_dp_dpcd_read(aux,
-- 
2.25.1

