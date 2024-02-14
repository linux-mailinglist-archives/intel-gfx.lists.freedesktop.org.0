Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F12B385444D
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Feb 2024 09:50:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE9D610E647;
	Wed, 14 Feb 2024 08:50:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XDch2yQF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0015C10E5CB
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Feb 2024 08:50:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707900619; x=1739436619;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yEUkcSbL9cXhAWevYPpe4xeLrB4OuhThQvcyRpO7YS0=;
 b=XDch2yQFrgI5o70nkDEZfmYUakMaTWNxkGPh3ryf7DzixF0KSpswiMYP
 ZHs00FvlrpsMf3C2AsNuyqxxZ4BVhlsI++LzStDUlO8EhlL2fii1ZsBRJ
 MwPAWHERibBxrRW78Vz8B+sQ54V3TedJFIv1gl+zRn2UHwu2ARM4Le61l
 75/rd4vbZhRhD3LY2jeV4OY755s8tCyO6jSntGmUAC2FWMb6iyFPAOW7I
 pcof/6ycqzYfMLaWCW9AYMp2eG1rUx1D0T9X3ZZqlISxH2a52P6+5YjFa
 VriLFsJg8jjmNuddRO7t/UM6ibacWMErmmwpsOmOATNXj/OwFiWfl2Q44 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="13323626"
X-IronPort-AV: E=Sophos;i="6.06,159,1705392000"; d="scan'208";a="13323626"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2024 00:50:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,159,1705392000"; 
   d="scan'208";a="3295658"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa008.fm.intel.com with ESMTP; 14 Feb 2024 00:50:17 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: uma.shankar@intel.com, ankit.k.nautiyal@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 06/12] drm/i915/hdcp: Add new remote capability check shim
 function
Date: Wed, 14 Feb 2024 14:18:04 +0530
Message-Id: <20240214084810.1417186-7-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240214084810.1417186-1-suraj.kandpal@intel.com>
References: <20240214084810.1417186-1-suraj.kandpal@intel.com>
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

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  4 +++
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c  | 27 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_hdcp.c     | 17 ++++++++++++
 drivers/gpu/drm/i915/display/intel_hdcp.h     |  3 +++
 4 files changed, 51 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index b77070d0897c..9becc5da8731 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -532,6 +532,10 @@ struct intel_hdcp_shim {
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
index 91736c7e3c83..c32303e7a059 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
@@ -668,6 +668,32 @@ int intel_dp_hdcp2_get_capability(struct intel_connector *connector,
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
@@ -685,6 +711,7 @@ static const struct intel_hdcp_shim intel_dp_hdcp_shim = {
 	.config_stream_type = intel_dp_hdcp2_config_stream_type,
 	.check_2_2_link = intel_dp_hdcp2_check_link,
 	.hdcp_2_2_get_capability = intel_dp_hdcp2_get_capability,
+	.get_remote_hdcp_capability = intel_dp_hdcp_get_remote_capability,
 	.protocol = HDCP_PROTOCOL_DP,
 };
 
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index c1a32f9f1199..b3217f70ea93 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -205,6 +205,23 @@ bool intel_hdcp2_get_capability(struct intel_connector *connector)
 	return capable;
 }
 
+void intel_hdcp_get_remote_capability(struct intel_connector *connector,
+				      bool *hdcp_capable,
+				      bool *hdcp2_capable)
+{
+	struct intel_hdcp *hdcp = &connector->hdcp;
+
+	/* Remote Sink's capability for HDCP */
+	if (!hdcp->shim->get_remote_hdcp_capability)
+		return;
+
+	hdcp->shim->get_remote_hdcp_capability(connector, hdcp_capable,
+					       hdcp2_capable);
+
+	if (intel_hdcp2_prerequisite(connector))
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
2.25.1

