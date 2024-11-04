Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F1439BABA3
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Nov 2024 05:00:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51F5610E368;
	Mon,  4 Nov 2024 04:00:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TJlp2Pbh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74D8910E368;
 Mon,  4 Nov 2024 04:00:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730692805; x=1762228805;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=cScCVLCqXqj8Gs5twdw5y8e++NKcroV3tABhXiRr8hg=;
 b=TJlp2PbhPteRLfhCgwsIFEXJ//gmgqCyqioaIohmxIqSYiY74sG/zkhk
 oJL9lG23OGFd1CTD76BJhS5wkGhyi/OOKjdNY4gI0Cw3ptqYbhDTIoPIu
 nh2tdm1Kt997HSqvy7K5492CrxGhIQis1J1XYXdcSOXSB/kE3F8td+Dy7
 uyF+07EaHwnxIE3RbAbvsBtSRv6PFyS3ChbLLG4RVTSTgdisbpPNurNL7
 Nwo1yhfNz2hfc4LhzaE67VhUjdrJ19VEoEN/gCkHGKPj0EzU0+KMI4OF9
 ek8v2GUPLCe8y0+NOdYxsGS35zFRgaU65w55w3t3CsMDCeoVzkfW8vtz+ Q==;
X-CSE-ConnectionGUID: OY1dg5NNTxqHBiaEeTW+pA==
X-CSE-MsgGUID: BGhLPO9BQ8uk186rJrJ4LQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="34072165"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="34072165"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2024 20:00:05 -0800
X-CSE-ConnectionGUID: eVBJbvX5QTWodQrxqoRD4A==
X-CSE-MsgGUID: seqLmIQCQLiq6CrsNCJLWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,256,1725346800"; d="scan'208";a="83414667"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa009.jf.intel.com with ESMTP; 03 Nov 2024 20:00:03 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>,
 Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Subject: [PATCH] drm/i915/hdcp: Fix when the first read and write are retried
Date: Mon,  4 Nov 2024 09:29:51 +0530
Message-Id: <20241104035951.517837-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
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

Make sure that the first read/write in hdcp2_authentication_key_exchange
are only retried when we have either DP/DPMST encoder connected,
since we do this to give docks and dp encoders some extra time to
get their HDCP DPCD registers ready only for DP/DPMST encoders as
this issue is only observed here no need to burden other encoders
with extra retries as this causes the HDMI connector to have some
other timing issue and fails HDCP authentication.

--v2
-Add intent of patch [Chaitanya]
-Add reasoning for loop [Jani]
-Make sure we forfiet the 50ms wait for non DP/DPMST encoders.

--v3
-Remove the is_dp_encoder check [Jani/Chaitanya]
-Make the commit message more clearer [Jani]

Fixes: 9d5a05f86d2f ("drm/i915/hdcp: Retry first read and writes to downstream")
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 32 ++++++++++++++---------
 1 file changed, 20 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index f6d42ec6949e..f57e4dba2873 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -1503,6 +1503,8 @@ static int hdcp2_deauthenticate_port(struct intel_connector *connector)
 static int hdcp2_authentication_key_exchange(struct intel_connector *connector)
 {
 	struct intel_display *display = to_intel_display(connector);
+	struct intel_digital_port *dig_port =
+		intel_attached_dig_port(connector);
 	struct intel_hdcp *hdcp = &connector->hdcp;
 	union {
 		struct hdcp2_ake_init ake_init;
@@ -1513,30 +1515,36 @@ static int hdcp2_authentication_key_exchange(struct intel_connector *connector)
 	} msgs;
 	const struct intel_hdcp_shim *shim = hdcp->shim;
 	size_t size;
-	int ret, i;
+	int ret, i, max_retries;
 
 	/* Init for seq_num */
 	hdcp->seq_num_v = 0;
 	hdcp->seq_num_m = 0;
 
+	if (intel_encoder_is_dp(&dig_port->base) ||
+	    intel_encoder_is_mst(&dig_port->base))
+		max_retries = 10;
+	else
+		max_retries = 1;
+
 	ret = hdcp2_prepare_ake_init(connector, &msgs.ake_init);
 	if (ret < 0)
 		return ret;
 
 	/*
 	 * Retry the first read and write to downstream at least 10 times
-	 * with a 50ms delay if not hdcp2 capable(dock decides to stop advertising
-	 * hdcp2 capability for some reason). The reason being that
-	 * during suspend resume dock usually keeps the HDCP2 registers inaccesible
-	 * causing AUX error. This wouldn't be a big problem if the userspace
-	 * just kept retrying with some delay while it continues to play low
-	 * value content but most userpace applications end up throwing an error
-	 * when it receives one from KMD. This makes sure we give the dock
-	 * and the sink devices to complete its power cycle and then try HDCP
-	 * authentication. The values of 10 and delay of 50ms was decided based
-	 * on multiple trial and errors.
+	 * with a 50ms delay if not hdcp2 capable for DP/DPMST encoders
+	 * (dock decides to stop advertising hdcp2 capability for some reason).
+	 * The reason being that during suspend resume dock usually keeps the
+	 * HDCP2 registers inaccesible causing AUX error. This wouldn't be a
+	 * big problem if the userspace just kept retrying with some delay while
+	 * it continues to play low value content but most userpace applications
+	 * end up throwing an error when it receives one from KMD. This makes
+	 * sure we give the dock and the sink devices to complete its power cycle
+	 * and then try HDCP authentication. The values of 10 and delay of 50ms
+	 * was decided based on multiple trial and errors.
 	 */
-	for (i = 0; i < 10; i++) {
+	for (i = 0; i < max_retries; i++) {
 		if (!intel_hdcp2_get_capability(connector)) {
 			msleep(50);
 			continue;
-- 
2.34.1

