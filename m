Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E36D385F212
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Feb 2024 08:46:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BB5210E73E;
	Thu, 22 Feb 2024 07:46:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HB4ue6Lj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9508B10E73E
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Feb 2024 07:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708587982; x=1740123982;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=spyZ4GAGbWFw2zPk5CF5or/Dpa3uBOeMxB7S8qTJa00=;
 b=HB4ue6LjIzFRymjmCfW1xJEEVHUiRZl3+wxoM04AFwCSFJL0YgfUox6T
 UGbDypt/68VEoez8zsr0yQyg9i/bTFx3rI5PhEKSP2Gh+PNUMcoqav1O2
 1U2xnO3psrYp1RuKhe79zHeh/NIU9VHHELiYLJFmQ/YqbgSUqT56hMXsi
 fGWoO44Z6kiVprzSh2q6nb2+0+vHVi6CspTnP2Y7clHZnZX3th1n7UfwT
 1x0JNjb0gdqGZ0fef/kBIhinvpw+rm2+kmqkyuWpIXpL4Mvt7HXhrw5Su
 7NtTCLQ1G18kdc6GRNdn5u7UBVC1K9JKHb/j+pnkEqK/SnX76eVlC1LyI A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10991"; a="2906040"
X-IronPort-AV: E=Sophos;i="6.06,177,1705392000"; 
   d="scan'208";a="2906040"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2024 23:46:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,177,1705392000"; 
   d="scan'208";a="5354153"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa009.fm.intel.com with ESMTP; 21 Feb 2024 23:46:05 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: uma.shankar@intel.com, ankit.k.nautiyal@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 06/13] drm/i915/hdcp: Add new remote capability check shim
 function
Date: Thu, 22 Feb 2024 13:13:47 +0530
Message-ID: <20240222074353.1568904-8-suraj.kandpal@intel.com>
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

Create a remote HDCP capability shim function which can read the
remote monitor HDCP capability when in MST configuration.

--v2
-Add an assertion to make sure only mst encoder call this remote_cap
function [Ankit]

--v3
-rename remote_hdcp_cap to remote_hdcp_capability [Jani]

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
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
index bf90e9024feb..553a88004cfb 100644
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
@@ -689,6 +715,7 @@ static const struct intel_hdcp_shim intel_dp_hdcp_shim = {
 	.config_stream_type = intel_dp_hdcp2_config_stream_type,
 	.check_2_2_link = intel_dp_hdcp2_check_link,
 	.hdcp_2_2_get_capability = intel_dp_hdcp2_get_capability,
+	.get_remote_hdcp_capability = intel_dp_hdcp_get_remote_capability,
 	.protocol = HDCP_PROTOCOL_DP,
 };
 
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index c1a32f9f1199..16b2b180563f 100644
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
2.43.2

