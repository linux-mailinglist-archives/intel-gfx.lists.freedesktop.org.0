Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1DCF844820
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jan 2024 20:41:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B282E10FC9C;
	Wed, 31 Jan 2024 19:41:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 095AC10FC8E
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Jan 2024 19:41:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706730098; x=1738266098;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=k5LOFzuNM07VKLMUumxwfIr6Rtz3cNGH2PEp0AdgpFo=;
 b=G2ESdmDQB2CG6v3KpUru6RqzwYT4mKNDkccfVJXbDQ69MYXivuhoka7o
 6/CfoYBTQKnAtif5gYa1XKj/1PJ3NW5cYJdcyUDZIvbxkIU0wBBBaekcW
 6WlqE7cDBtvlLLANwlwGvy939psLR2to4K+262eV2j3jXj+OiC5tWpXPA
 WRePxVwL0NtcyGrabsBXEOTTQGC07IKoUYLhhGc+c/5WVAh+THcxbpuq5
 TO6/QM60x0S/5cqhPKbbs/LCcAnskzWT02+tEULlPe/JFAELnFD5o/800
 8uWhHxVLHvEH9YXfLzY4ML6RUMzppHy0Wu7lbeq7/V6kJcNa/k1L9nbTS g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="402549778"
X-IronPort-AV: E=Sophos;i="6.05,233,1701158400"; d="scan'208";a="402549778"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2024 11:41:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="788694646"
X-IronPort-AV: E=Sophos;i="6.05,233,1701158400"; d="scan'208";a="788694646"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga002.jf.intel.com with ESMTP; 31 Jan 2024 11:41:36 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 05/10] drm/i915/hdcp: Add new remote capability check shim
 function
Date: Thu,  1 Feb 2024 01:09:24 +0530
Message-Id: <20240131193929.938748-6-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240131193929.938748-1-suraj.kandpal@intel.com>
References: <20240131193929.938748-1-suraj.kandpal@intel.com>
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

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  4 ++++
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c  | 22 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_hdcp.c     | 16 ++++++++++++++
 drivers/gpu/drm/i915/display/intel_hdcp.h     |  3 +++
 4 files changed, 45 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index ae2e8cff9d69..7e7a370a3b30 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -532,6 +532,10 @@ struct intel_hdcp_shim {
 	/* HDCP2.2 Link Integrity Check */
 	int (*check_2_2_link)(struct intel_digital_port *dig_port,
 			      struct intel_connector *connector);
+
+	/* HDCP remote sink cap */
+	int (*remote_hdcp_cap)(struct intel_connector *connector,
+			       bool *hdcp_capable, bool *hdcp2_capable);
 };
 
 struct intel_hdcp {
diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
index 261de01aa5d8..56019b29fb49 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
@@ -666,6 +666,27 @@ int intel_dp_hdcp2_capable(struct intel_connector *connector,
 	return _intel_dp_hdcp2_capable(aux, capable);
 }
 
+static
+int intel_dp_hdcp_remote_cap(struct intel_connector *connector,
+			     bool *hdcp_capable, bool *hdcp2_capable)
+{
+	struct drm_dp_aux *aux = &connector->port->aux;
+	u8 bcaps;
+	int ret;
+
+	ret =  _intel_dp_hdcp2_capable(aux, hdcp2_capable);
+	if (ret)
+		return ret;
+
+	ret = intel_dp_hdcp_read_bcaps(aux, &bcaps);
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
@@ -683,6 +704,7 @@ static const struct intel_hdcp_shim intel_dp_hdcp_shim = {
 	.config_stream_type = intel_dp_hdcp2_config_stream_type,
 	.check_2_2_link = intel_dp_hdcp2_check_link,
 	.hdcp_2_2_capable = intel_dp_hdcp2_capable,
+	.remote_hdcp_cap = intel_dp_hdcp_remote_cap,
 	.protocol = HDCP_PROTOCOL_DP,
 };
 
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 4593ac10e2fa..2b739249b60c 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -205,6 +205,22 @@ bool intel_hdcp2_capable(struct intel_connector *connector)
 	return capable;
 }
 
+void intel_hdcp_remote_cap(struct intel_connector *connector,
+			   bool *hdcp_capable,
+			   bool *hdcp2_capable)
+{
+	struct intel_hdcp *hdcp = &connector->hdcp;
+
+	/* Remote Sink's capability for HDCP */
+	if (!hdcp->shim->remote_hdcp_cap)
+		return;
+
+	hdcp->shim->remote_hdcp_cap(connector, hdcp_capable, hdcp2_capable);
+
+	if (intel_hdcp2_prerequisite(connector))
+		*hdcp2_capable = false;
+}
+
 static bool intel_hdcp_in_use(struct drm_i915_private *i915,
 			      enum transcoder cpu_transcoder, enum port port)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.h b/drivers/gpu/drm/i915/display/intel_hdcp.h
index a9c784fd9ba5..213d286ca3fa 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.h
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.h
@@ -40,6 +40,9 @@ void intel_hdcp_update_pipe(struct intel_atomic_state *state,
 bool is_hdcp_supported(struct drm_i915_private *i915, enum port port);
 bool intel_hdcp_capable(struct intel_connector *connector);
 bool intel_hdcp2_capable(struct intel_connector *connector);
+void intel_hdcp_remote_cap(struct intel_connector *connector,
+			   bool *hdcp_capable,
+			   bool *hdcp2_capable);
 void intel_hdcp_component_init(struct drm_i915_private *i915);
 void intel_hdcp_component_fini(struct drm_i915_private *i915);
 void intel_hdcp_cleanup(struct intel_connector *connector);
-- 
2.25.1

