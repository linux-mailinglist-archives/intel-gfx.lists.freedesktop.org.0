Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CED56FEF91
	for <lists+intel-gfx@lfdr.de>; Thu, 11 May 2023 12:00:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C08E10E5CD;
	Thu, 11 May 2023 10:00:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4B7A10E5C7
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 May 2023 10:00:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683799229; x=1715335229;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RTxvA4+MYWALoPczAmN5gdZRkPOaFKyFeOhHr49lIgQ=;
 b=Va4XGHznj12fSC/MTmJmehEhKzE7xJSfac4zQQubU797yQbOPTol1QBp
 R90yWwLKp9cenlWBftad9KfpvAJKaRLTAmsCSm555yOmH1i6NrsXLRtyU
 7Kov3xt0y2vLSG7zd4GUFeUTN69gjDsIWFxzBmsDXGBJYbXTrLYYfCgpq
 o4bXKdiaKVys4Mo5qjzBvUNr0RK4+LS8BZYhfgkd7LbVZHOIC2wpsdu6q
 X60tRW4y4YfesLR8FT0R5sm22Qqeqq0mHcbvX+4kW+q+FEs27XsmBWerf
 MmmZ6JoE3KYRLh2STnsyQ9h9r9iV8jH0/Vr2fIFmiS0EK3ZBUNgKw+s4P Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="349294276"
X-IronPort-AV: E=Sophos;i="5.99,266,1677571200"; d="scan'208";a="349294276"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2023 03:00:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="823907691"
X-IronPort-AV: E=Sophos;i="5.99,266,1677571200"; d="scan'208";a="823907691"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga004.jf.intel.com with ESMTP; 11 May 2023 03:00:27 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 May 2023 15:26:50 +0530
Message-Id: <20230511095650.631387-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230511095650.631387-1-suraj.kandpal@intel.com>
References: <20230511095650.631387-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/2] drm/i915/hdcp: Fix modeset locking issue
 in hdcp mst
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

Since topology state is being added to drm_atomic_state now all
drm_modeset_lock required are being taken from core this raises
an issue when we try to loop over connector and assign vcpi id to
our streams as we did not have atomic state to derive acquire_ctx
from hence we fill in stream info if dpmst encoder is found before
enabling hdcp.

--v2
-move prepare streams to beginning of intel_hdcp_enable to avoid
checking of mst encoder twice [Ankit]

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 39 ++++++++++-------------
 1 file changed, 17 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index e2c5781ad0ab..bf40d1c7aaa1 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -30,7 +30,8 @@
 #define KEY_LOAD_TRIES	5
 #define HDCP2_LC_RETRY_CNT			3
 
-static int intel_conn_to_vcpi(struct intel_connector *connector)
+static int intel_conn_to_vcpi(struct drm_atomic_state *state,
+			      struct intel_connector *connector)
 {
 	struct drm_dp_mst_topology_mgr *mgr;
 	struct drm_dp_mst_atomic_payload *payload;
@@ -42,10 +43,10 @@ static int intel_conn_to_vcpi(struct intel_connector *connector)
 		return 0;
 	mgr = connector->port->mgr;
 
-	drm_modeset_lock(&mgr->base.lock, NULL);
+	drm_modeset_lock(&mgr->base.lock, state->acquire_ctx);
 	mst_state = to_drm_dp_mst_topology_state(mgr->base.state);
 	payload = drm_atomic_get_mst_payload_state(mst_state, connector->port);
-	if (drm_WARN_ON(mgr->dev, !payload))
+	if (!payload)
 		goto out;
 
 	vcpi = payload->vcpi;
@@ -54,7 +55,6 @@ static int intel_conn_to_vcpi(struct intel_connector *connector)
 		goto out;
 	}
 out:
-	drm_modeset_unlock(&mgr->base.lock);
 	return vcpi;
 }
 
@@ -69,7 +69,8 @@ static int intel_conn_to_vcpi(struct intel_connector *connector)
  * policy to mark different content_types for different streams.
  */
 static int
-intel_hdcp_required_content_stream(struct intel_digital_port *dig_port)
+intel_hdcp_required_content_stream(struct intel_digital_port *dig_port,
+				   struct intel_atomic_state *state)
 {
 	struct drm_connector_list_iter conn_iter;
 	struct intel_digital_port *conn_dig_port;
@@ -81,9 +82,6 @@ intel_hdcp_required_content_stream(struct intel_digital_port *dig_port)
 
 	data->k = 0;
 
-	if (dig_port->hdcp_auth_status)
-		return 0;
-
 	drm_connector_list_iter_begin(&i915->drm, &conn_iter);
 	for_each_intel_connector_iter(connector, &conn_iter) {
 		if (connector->base.status == connector_status_disconnected)
@@ -99,7 +97,8 @@ intel_hdcp_required_content_stream(struct intel_digital_port *dig_port)
 		if (!enforce_type0 && !dig_port->hdcp_mst_type1_capable)
 			enforce_type0 = true;
 
-		data->streams[data->k].stream_id = intel_conn_to_vcpi(connector);
+		data->streams[data->k].stream_id =
+			intel_conn_to_vcpi(&state->base, connector);
 		data->k++;
 
 		/* if there is only one active stream */
@@ -122,7 +121,8 @@ intel_hdcp_required_content_stream(struct intel_digital_port *dig_port)
 	return 0;
 }
 
-static int intel_hdcp_prepare_streams(struct intel_connector *connector)
+static int intel_hdcp_prepare_streams(struct intel_atomic_state *state,
+				      struct intel_connector *connector)
 {
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
@@ -133,7 +133,7 @@ static int intel_hdcp_prepare_streams(struct intel_connector *connector)
 		data->k = 1;
 		data->streams[0].stream_type = hdcp->content_type;
 	} else {
-		ret = intel_hdcp_required_content_stream(dig_port);
+		ret = intel_hdcp_required_content_stream(dig_port, state);
 		if (ret)
 			return ret;
 	}
@@ -1917,14 +1917,6 @@ static int hdcp2_authenticate_and_encrypt(struct intel_connector *connector)
 	for (i = 0; i < tries && !dig_port->hdcp_auth_status; i++) {
 		ret = hdcp2_authenticate_sink(connector);
 		if (!ret) {
-			ret = intel_hdcp_prepare_streams(connector);
-			if (ret) {
-				drm_dbg_kms(&i915->drm,
-					    "Prepare streams failed.(%d)\n",
-					    ret);
-				break;
-			}
-
 			ret = hdcp2_propagate_stream_management_info(connector);
 			if (ret) {
 				drm_dbg_kms(&i915->drm,
@@ -2375,9 +2367,12 @@ int intel_hdcp_enable(struct intel_atomic_state *state,
 	 * is capable of HDCP2.2, it is preferred to use HDCP2.2.
 	 */
 	if (intel_hdcp2_capable(connector)) {
-		ret = _intel_hdcp2_enable(connector);
-		if (!ret)
-			check_link_interval = DRM_HDCP2_CHECK_PERIOD_MS;
+		if (!intel_hdcp_prepare_streams(state, connector)) {
+			ret = _intel_hdcp2_enable(connector);
+			if (!ret)
+				check_link_interval =
+					DRM_HDCP2_CHECK_PERIOD_MS;
+		}
 	}
 
 	/*
-- 
2.25.1

