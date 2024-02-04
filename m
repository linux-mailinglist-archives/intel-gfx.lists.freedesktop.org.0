Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D81C5848E6F
	for <lists+intel-gfx@lfdr.de>; Sun,  4 Feb 2024 15:27:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50DB71121D3;
	Sun,  4 Feb 2024 14:27:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fOM3jyYf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 182421121DA
 for <intel-gfx@lists.freedesktop.org>; Sun,  4 Feb 2024 14:27:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707056841; x=1738592841;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IZK01uEEKk7DoB5PLAsBxt0HEK6gF66qhn4WCDSl348=;
 b=fOM3jyYfCsGTR/klIZ7g4YdZW5E4/2mmvZmfKnsqUfHNUlpUCOq4bcyL
 Yrj8OBzXWIgXWceGyQ147Tq0PsfliRHLx2I6GakRHz97GcKOhgtijpMZQ
 R6OYKsl0oeceMN+beq7ZzE0cecOAcavtC6vgSGsSm94KUE3cJTHPgKfAW
 xzU9Gn6qaeJEjTTXfXqXCOL+f3AuN/3pR47ITJtAzeQ9VegNN19SldmXC
 BP8/arMCloHdMxMMJb+9zMSIh7kepjN/ssrb3yOL2Y4PhFsZZUrVlVZQv
 VPkm8s5Q62yyOumZe7ZUiHiaiGpHo34b3jmcIoK0rvaGzzmQdWM4Qrlqy Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10973"; a="17920789"
X-IronPort-AV: E=Sophos;i="6.05,242,1701158400"; d="scan'208";a="17920789"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2024 06:27:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,242,1701158400"; d="scan'208";a="31605288"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa001.fm.intel.com with ESMTP; 04 Feb 2024 06:27:19 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: uma.shankar@intel.com, ankit.k.nautiyal@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 09/11] drm/i915/hdcp: Save acquire_ctx in intel_hdcp
Date: Sun,  4 Feb 2024 19:55:03 +0530
Message-Id: <20240204142505.1157146-10-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240204142505.1157146-1-suraj.kandpal@intel.com>
References: <20240204142505.1157146-1-suraj.kandpal@intel.com>
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

Save acquire_ctx in intel_hdcp so that it can be used later
for locking to get vcpi id without need to propate intel_atomic_state.
Furthermore it can be called from work_struct where deriving
intel_atomic_state is not possible.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 .../gpu/drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_hdcp.c         | 15 ++++++++-------
 2 files changed, 9 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 7e7a370a3b30..d7b2af07b499 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -545,6 +545,7 @@ struct intel_hdcp {
 	u64 value;
 	struct delayed_work check_work;
 	struct work_struct prop_work;
+	struct drm_modeset_acquire_ctx *acquire_ctx;
 
 	/* HDCP1.4 Encryption status */
 	bool hdcp_encrypted;
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 2b739249b60c..f6eccbd9e7ae 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -30,12 +30,13 @@
 #define KEY_LOAD_TRIES	5
 #define HDCP2_LC_RETRY_CNT			3
 
-static int intel_conn_to_vcpi(struct drm_atomic_state *state,
-			      struct intel_connector *connector)
+static int intel_conn_to_vcpi(struct intel_connector *connector)
 {
 	struct drm_dp_mst_topology_mgr *mgr;
 	struct drm_dp_mst_atomic_payload *payload;
 	struct drm_dp_mst_topology_state *mst_state;
+	struct intel_hdcp *hdcp = &connector->hdcp;
+	struct drm_modeset_acquire_ctx *acquire_ctx = hdcp->acquire_ctx;
 	int vcpi = 0;
 
 	/* For HDMI this is forced to be 0x0. For DP SST also this is 0x0. */
@@ -43,7 +44,7 @@ static int intel_conn_to_vcpi(struct drm_atomic_state *state,
 		return 0;
 	mgr = connector->port->mgr;
 
-	drm_modeset_lock(&mgr->base.lock, state->acquire_ctx);
+	drm_modeset_lock(&mgr->base.lock, acquire_ctx);
 	mst_state = to_drm_dp_mst_topology_state(mgr->base.state);
 	payload = drm_atomic_get_mst_payload_state(mst_state, connector->port);
 	if (drm_WARN_ON(mgr->dev, !payload))
@@ -2315,8 +2316,7 @@ int intel_hdcp_init(struct intel_connector *connector,
 }
 
 static int
-intel_hdcp_set_streams(struct intel_digital_port *dig_port,
-		       struct intel_atomic_state *state)
+intel_hdcp_set_streams(struct intel_digital_port *dig_port)
 {
 	struct drm_connector_list_iter conn_iter;
 	struct intel_digital_port *conn_dig_port;
@@ -2345,7 +2345,7 @@ intel_hdcp_set_streams(struct intel_digital_port *dig_port,
 			continue;
 
 		data->streams[data->k].stream_id =
-			intel_conn_to_vcpi(&state->base, connector);
+			intel_conn_to_vcpi(connector);
 		data->k++;
 
 		/* if there is only one active stream */
@@ -2400,12 +2400,13 @@ static int _intel_hdcp_enable(struct intel_atomic_state *state,
 		dig_port->hdcp_port_data.hdcp_transcoder =
 			intel_get_hdcp_transcoder(hdcp->cpu_transcoder);
 
+	hdcp->acquire_ctx = state->base.acquire_ctx;
 	/*
 	 * Considering that HDCP2.2 is more secure than HDCP1.4, If the setup
 	 * is capable of HDCP2.2, it is preferred to use HDCP2.2.
 	 */
 	if (intel_hdcp2_capable(connector)) {
-		ret = intel_hdcp_set_streams(dig_port, state);
+		ret = intel_hdcp_set_streams(dig_port);
 		if (!ret) {
 			ret = _intel_hdcp2_enable(connector);
 			if (!ret)
-- 
2.25.1

