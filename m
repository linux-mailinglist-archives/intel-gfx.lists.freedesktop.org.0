Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D48CB866990
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Feb 2024 06:12:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45AAF10EDFC;
	Mon, 26 Feb 2024 05:12:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iMJ5sSvC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 136D610EDFC
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Feb 2024 05:12:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708924352; x=1740460352;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=D0TJqaXEI6/ZGuVx3PwDKufSSvTX54egrJ0wZAlNSyI=;
 b=iMJ5sSvC+yArf0HgHxXZE56X8oWl2jms/NKgRmHgxb1fc2hmR2TTgVbH
 gdkdAZCyq4S7PmPNghyhCSmZZfYeQ06PCpSz7irkV7QmCVSPRVpds8MYj
 l0jmymDK0z4eBXSX1i/kogLld8giuATack4a9fmqgtPRfydWFKo5rlZdq
 KfX5eLf9uzisgN2bDBdjLqBriJ/hpajuV9OBCJWmeYJc1oaa5jJSbOan4
 JQtbt03jHX5qzTYUxSZwH2DYcRHO1yOhifRYWR1z9LO4QdRhYVVpo5XrL
 9Ra9Fh4fu1ss6wC4eZP8ej/LVXzjmB++RAOQWR6tJyLWxc4/BShmJNa4D Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10995"; a="13744260"
X-IronPort-AV: E=Sophos;i="6.06,185,1705392000"; d="scan'208";a="13744260"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2024 21:12:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,185,1705392000"; 
   d="scan'208";a="6560546"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orviesa009.jf.intel.com with ESMTP; 25 Feb 2024 21:12:25 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: uma.shankar@intel.com, ankit.k.nautiyal@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 06/13] drm/i915/hdcp: Add new remote capability check shim
 function
Date: Mon, 26 Feb 2024 10:40:18 +0530
Message-ID: <20240226051017.1652970-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240223081453.1576918-8-suraj.kandpal@intel.com>
References: <20240223081453.1576918-8-suraj.kandpal@intel.com>
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

Create a remote HDCP capability shim function which can read the
remote monitor HDCP capability when in MST configuration.

--v2
-Add an assertion to make sure only mst encoder call this remote_cap
function [Ankit]

--v3
-rename remote_hdcp_cap to remote_hdcp_capability [Jani]

--v4
-fix hdcp2_prerequisite check condition
-Move intel_dp_hdcp_get_remote_capability to dp_mst shim instead of
having it in dp shim [Ankit]

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  4 +++
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c  | 27 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_hdcp.c     | 16 +++++++++++
 drivers/gpu/drm/i915/display/intel_hdcp.h     |  3 +++
 4 files changed, 50 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index b6f86129c0bc..8ce986fadd9a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -531,6 +531,10 @@ struct intel_hdcp_shim {
 	/* HDCP2.2 Link Integrity Check */
 	int (*check_2_2_link)(struct intel_digital_port *dig_port,
 			      struct intel_connector *connector);
+
+	/* HDCP remote sink cap */
+	int (*get_remote_hdcp_capability)(struct intel_connector *connector,
+					  bool *hdcp_capable, bool *hdcp2_capable);
 };
 
 struct intel_hdcp {
diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
index bf90e9024feb..eab6e9fab4e6 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
@@ -672,6 +672,32 @@ int intel_dp_hdcp2_get_capability(struct intel_connector *connector,
 	return _intel_dp_hdcp2_get_capability(aux, capable);
 }
 
+static
+int intel_dp_hdcp_get_remote_capability(struct intel_connector *connector,
+					bool *hdcp_capable,
+					bool *hdcp2_capable)
+{
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct drm_dp_aux *aux = &connector->port->aux;
+	u8 bcaps;
+	int ret;
+
+	if (!intel_encoder_is_mst(connector->encoder))
+		return -EINVAL;
+
+	ret =  _intel_dp_hdcp2_get_capability(aux, hdcp2_capable);
+	if (ret)
+		return ret;
+
+	ret = intel_dp_hdcp_read_bcaps(aux, i915, &bcaps);
+	if (ret)
+		return ret;
+
+	*hdcp_capable = bcaps & DP_BCAPS_HDCP_CAPABLE;
+
+	return 0;
+}
+
 static const struct intel_hdcp_shim intel_dp_hdcp_shim = {
 	.write_an_aksv = intel_dp_hdcp_write_an_aksv,
 	.read_bksv = intel_dp_hdcp_read_bksv,
@@ -820,6 +846,7 @@ static const struct intel_hdcp_shim intel_dp_mst_hdcp_shim = {
 	.stream_2_2_encryption = intel_dp_mst_hdcp2_stream_encryption,
 	.check_2_2_link = intel_dp_mst_hdcp2_check_link,
 	.hdcp_2_2_get_capability = intel_dp_hdcp2_get_capability,
+	.get_remote_hdcp_capability = intel_dp_hdcp_get_remote_capability,
 	.protocol = HDCP_PROTOCOL_DP,
 };
 
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index c1a32f9f1199..801b8f0495bb 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -205,6 +205,22 @@ bool intel_hdcp2_get_capability(struct intel_connector *connector)
 	return capable;
 }
 
+void intel_hdcp_get_remote_capability(struct intel_connector *connector,
+				      bool *hdcp_capable,
+				      bool *hdcp2_capable)
+{
+	struct intel_hdcp *hdcp = &connector->hdcp;
+
+	if (!hdcp->shim->get_remote_hdcp_capability)
+		return;
+
+	hdcp->shim->get_remote_hdcp_capability(connector, hdcp_capable,
+					       hdcp2_capable);
+
+	if (!intel_hdcp2_prerequisite(connector))
+		*hdcp2_capable = false;
+}
+
 static bool intel_hdcp_in_use(struct drm_i915_private *i915,
 			      enum transcoder cpu_transcoder, enum port port)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.h b/drivers/gpu/drm/i915/display/intel_hdcp.h
index aeefb3c13d2c..477f2d2bb120 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.h
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.h
@@ -40,6 +40,9 @@ void intel_hdcp_update_pipe(struct intel_atomic_state *state,
 bool is_hdcp_supported(struct drm_i915_private *i915, enum port port);
 bool intel_hdcp_get_capability(struct intel_connector *connector);
 bool intel_hdcp2_get_capability(struct intel_connector *connector);
+void intel_hdcp_get_remote_capability(struct intel_connector *connector,
+				      bool *hdcp_capable,
+				      bool *hdcp2_capable);
 void intel_hdcp_component_init(struct drm_i915_private *i915);
 void intel_hdcp_component_fini(struct drm_i915_private *i915);
 void intel_hdcp_cleanup(struct intel_connector *connector);
-- 
2.43.2

