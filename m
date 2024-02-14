Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8C0485444F
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Feb 2024 09:50:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 576AC10E5D3;
	Wed, 14 Feb 2024 08:50:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EnjQ7OZQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0640B10E639
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Feb 2024 08:50:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707900631; x=1739436631;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zC7PYO0hEUF9zsUU2UXl+Qf/nTcC8712Rno1KFK4/jA=;
 b=EnjQ7OZQRYeceGsVzph2f0HtOTYV/GfwfUx8cbzMAotq85e8fVapUDZt
 d70E3owcLDH6ScHSj7bZr9oyY1sKy5mjuYerEU8fysqJPYdVUUuzypDL1
 ZYQf7IMM11IZGRiYnQol7NPo+9VPOpZOtGOcMuppPKIOm9tWsz3TutZyp
 4b3e/yb4wtweKeodwfAseg65Nui/gljxRlzEpj9pbTezMMMmsa+gC7uLw
 u7WqDl55hcb845CS+MtX8i4MXjsgtHHviindFdAVITTVhu2w9KNu5xPmX
 RF44yDKysFuqI13jb0jbvpzy1z5eo7JgFOc8gkpwETs4638DloXL9pZZX g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="13323870"
X-IronPort-AV: E=Sophos;i="6.06,159,1705392000"; d="scan'208";a="13323870"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2024 00:50:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,159,1705392000"; 
   d="scan'208";a="3295691"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa008.fm.intel.com with ESMTP; 14 Feb 2024 00:50:25 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: uma.shankar@intel.com, ankit.k.nautiyal@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 10/12] drm/i915/hdcp: Don't enable HDCP directly from
 check_link
Date: Wed, 14 Feb 2024 14:18:08 +0530
Message-Id: <20240214084810.1417186-11-suraj.kandpal@intel.com>
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
index b3217f70ea93..4b09f6afe1aa 100644
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
@@ -2069,17 +2069,6 @@ static int intel_hdcp2_check_link(struct intel_connector *connector)
 
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
@@ -2096,18 +2085,8 @@ static int intel_hdcp2_check_link(struct intel_connector *connector)
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
@@ -2346,7 +2325,7 @@ intel_hdcp_set_streams(struct intel_digital_port *dig_port,
 			continue;
 
 		data->streams[data->k].stream_id =
-			intel_conn_to_vcpi(&state->base, connector);
+			intel_conn_to_vcpi(state, connector);
 		data->k++;
 
 		/* if there is only one active stream */
-- 
2.25.1

