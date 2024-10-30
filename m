Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AFF19B5A1F
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2024 03:53:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40EE910E734;
	Wed, 30 Oct 2024 02:53:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YfxlpSEK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 84C3010E734;
 Wed, 30 Oct 2024 02:53:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730256801; x=1761792801;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=3aPLga+Fu+ea83YkvQxI4jhFtv4IjB1v10olx2G/mdc=;
 b=YfxlpSEK9F2oN9UqzSZyhRd2Mgkq8FPLJZjElGPSV4AdmH0UVYVBYt74
 xHKA548MuK6uWlGLI42L7wPBIsMBS4qKUzUAk6EoAUy2gZDgGCvqnqlSX
 BS/dtq/+ljlBeeBYYLQ3tSWzQgkasqP7nCVrFF5un08EXX8nqxTln80QJ
 vqIrnheYrKnmmx5cYiwFcw0+9OX82ZSFmoFd0tAHW85fFSe3iO+spiUMX
 R4Q0AKwJD1h3viQqAebp5wAzmu+ruxxfmYGOkLZKwXa1YTMiTD3XgBAbH
 F9+RgB9N0FrCh8wPhFbbiy0SSNP4d1WVhu54hu3GjqeuWos15Pkz2MXXF A==;
X-CSE-ConnectionGUID: ujAUqipbQOexrIVQz3tdzQ==
X-CSE-MsgGUID: 3GJ5B+FySKKiZfi7czYuQA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="30136303"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="30136303"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 19:53:21 -0700
X-CSE-ConnectionGUID: KxsX+01ORKK1WoA5PVOBTQ==
X-CSE-MsgGUID: wSRKX2vpS+W49Ex5YM2iGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,243,1725346800"; d="scan'208";a="82979543"
Received: from unknown (HELO kandpal-X299-UD4-Pro.iind.intel.com)
 ([10.190.239.10])
 by orviesa008.jf.intel.com with ESMTP; 29 Oct 2024 19:53:18 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Suraj Kandpal <suraj.kandpal@intel.com>,
 Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Subject: [PATCH] drm/i915/hdcp: Add the loop only for DP encoders
Date: Wed, 30 Oct 2024 08:23:04 +0530
Message-Id: <20241030025304.317977-1-suraj.kandpal@intel.com>
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

Add the loop on the first read/write we do to give docks and dp encoders
some extra time to get their HDCP DPCD registers ready only for
DP/DPMST encoders as this issue is only observed here no need to burden
other encoders with extra retries as this causes the HDMI connector to
have some other timing issue and fails HDCP authentication.

--v2
-Add intent of patch [Chaitanya]
-Add reasoning for loop [Jani]
-Make sure we forfiet the 50ms wait for non DP/DPMST encoders.

Fixes: 9d5a05f86d2f ("drm/i915/hdcp: Retry first read and writes to downstream")
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 36 +++++++++++++++--------
 1 file changed, 23 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index ed6aa87403e2..c8ba69c51cce 100644
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
@@ -1513,31 +1515,39 @@ static int hdcp2_authentication_key_exchange(struct intel_connector *connector)
 	} msgs;
 	const struct intel_hdcp_shim *shim = hdcp->shim;
 	size_t size;
-	int ret, i;
+	bool is_dp_encoder;
+	int ret, i, max_retries;
 
 	/* Init for seq_num */
 	hdcp->seq_num_v = 0;
 	hdcp->seq_num_m = 0;
 
+	is_dp_encoder =	intel_encoder_is_dp(&dig_port->base) ||
+		intel_encoder_is_mst(&dig_port->base);
+	if (is_dp_encoder)
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
-		if (!intel_hdcp2_get_capability(connector)) {
+	for (i = 0; i < max_retries; i++) {
+		if (!intel_hdcp2_get_capability(connector) && is_dp_encoder) {
 			msleep(50);
 			continue;
 		}
-- 
2.34.1

