Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE51B855A01
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Feb 2024 06:07:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B57410E1C0;
	Thu, 15 Feb 2024 05:07:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FfXnq7RI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDC6F10E1C0
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Feb 2024 05:07:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707973666; x=1739509666;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gRJx+jDSLc9/44wn4ShYhIz4TT3uJhXNVpRpsQ/bpwk=;
 b=FfXnq7RIumPs93e0QitKOkkQBn99fe68Bw6ds2R8PhIuhti4fGa6Z85I
 2ya5b9QzcMwBbuheKPqCs3ZT6+KB9uJD8ZDiDfnr+3M5os2KLCMg8KMRZ
 07QlHv7uhXeWNjfqEWpa0X/arMPdyefLnA5cxfaabGJ4qQfrxRpnYdu5t
 5Gc6QN+fGgR3hQadUYLrdeEpZ7wwxnycKiQgMlmYIVv0YhgXddGSTcZT9
 ep3YDpmK1Td3nQ3xBojP9UpuPabUUkt/ZsiTwWFSwCR+jtUnsFS7SbP4n
 uhX5P+IxtE2jlSDhEUMFyFX+9F5h8xgerxkfThjsRhzaoCItOLoe8cwBk w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10984"; a="5877250"
X-IronPort-AV: E=Sophos;i="6.06,161,1705392000"; 
   d="scan'208";a="5877250"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2024 21:07:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,161,1705392000"; 
   d="scan'208";a="8084195"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orviesa003.jf.intel.com with ESMTP; 14 Feb 2024 21:07:43 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, uma.shankar@intel.com, ankit.k.nautiyal@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 10/12] drm/i915/hdcp: Don't enable HDCP directly from
 check_link
Date: Thu, 15 Feb 2024 10:35:22 +0530
Message-Id: <20240215050524.1425206-11-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240215050524.1425206-1-suraj.kandpal@intel.com>
References: <20240215050524.1425206-1-suraj.kandpal@intel.com>
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

Whenever LIC fails instead of moving from ENABLED to DESIRED
CP property we directly enable HDCP without informing the userspace
of this failure in link integrity check.
Now we will just update the value to DESIRED send the event to
userspace and then continue with the normal flow of HDCP enablement.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 31 ++++-------------------
 1 file changed, 5 insertions(+), 26 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 16b2b180563f..b22dbc6494e0 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -30,7 +30,7 @@
 #define KEY_LOAD_TRIES	5
 #define HDCP2_LC_RETRY_CNT			3
 
-static int intel_conn_to_vcpi(struct drm_atomic_state *state,
+static int intel_conn_to_vcpi(struct intel_atomic_state *state,
 			      struct intel_connector *connector)
 {
 	struct drm_dp_mst_topology_mgr *mgr;
@@ -43,7 +43,7 @@ static int intel_conn_to_vcpi(struct drm_atomic_state *state,
 		return 0;
 	mgr = connector->port->mgr;
 
-	drm_modeset_lock(&mgr->base.lock, state->acquire_ctx);
+	drm_modeset_lock(&mgr->base.lock, state->base.acquire_ctx);
 	mst_state = to_drm_dp_mst_topology_state(mgr->base.state);
 	payload = drm_atomic_get_mst_payload_state(mst_state, connector->port);
 	if (drm_WARN_ON(mgr->dev, !payload))
@@ -2068,17 +2068,6 @@ static int intel_hdcp2_check_link(struct intel_connector *connector)
 
 		drm_dbg_kms(&i915->drm,
 			    "HDCP2.2 Downstream topology change\n");
-		ret = hdcp2_authenticate_repeater_topology(connector);
-		if (!ret) {
-			intel_hdcp_update_value(connector,
-					DRM_MODE_CONTENT_PROTECTION_ENABLED,
-					true);
-			goto out;
-		}
-		drm_dbg_kms(&i915->drm,
-			    "[CONNECTOR:%d:%s] Repeater topology auth failed.(%d)\n",
-			    connector->base.base.id, connector->base.name,
-			    ret);
 	} else {
 		drm_dbg_kms(&i915->drm,
 			    "[CONNECTOR:%d:%s] HDCP2.2 link failed, retrying auth\n",
@@ -2095,18 +2084,8 @@ static int intel_hdcp2_check_link(struct intel_connector *connector)
 		goto out;
 	}
 
-	ret = _intel_hdcp2_enable(connector);
-	if (ret) {
-		drm_dbg_kms(&i915->drm,
-			    "[CONNECTOR:%d:%s] Failed to enable hdcp2.2 (%d)\n",
-			    connector->base.base.id, connector->base.name,
-			    ret);
-		intel_hdcp_update_value(connector,
-					DRM_MODE_CONTENT_PROTECTION_DESIRED,
-					true);
-		goto out;
-	}
-
+	intel_hdcp_update_value(connector,
+				DRM_MODE_CONTENT_PROTECTION_DESIRED, true);
 out:
 	mutex_unlock(&dig_port->hdcp_mutex);
 	mutex_unlock(&hdcp->mutex);
@@ -2345,7 +2324,7 @@ intel_hdcp_set_streams(struct intel_digital_port *dig_port,
 			continue;
 
 		data->streams[data->k].stream_id =
-			intel_conn_to_vcpi(&state->base, connector);
+			intel_conn_to_vcpi(state, connector);
 		data->k++;
 
 		/* if there is only one active stream */
-- 
2.25.1

