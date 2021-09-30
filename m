Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 899B041D894
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Sep 2021 13:24:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD69C6EB75;
	Thu, 30 Sep 2021 11:24:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55ACD6EB75
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Sep 2021 11:24:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10122"; a="288819443"
X-IronPort-AV: E=Sophos;i="5.85,336,1624345200"; d="scan'208";a="288819443"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2021 04:24:47 -0700
X-IronPort-AV: E=Sophos;i="5.85,336,1624345200"; d="scan'208";a="564036346"
Received: from vmurthy-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.37.18])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2021 04:24:45 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Date: Thu, 30 Sep 2021 14:24:31 +0300
Message-Id: <c67d2fa0d97bf336a321497775b9717d85d44a51.1633000838.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1633000838.git.jani.nikula@intel.com>
References: <cover.1633000838.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/6] drm/i915/dsi: pass struct mipi_dsi_packet
 pointer, not the entire struct
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

Pass a const pointer instead of passing 32 bytes of struct
mipi_dsi_packet by value.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index c196993f0d68..11ef40230e8f 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -153,7 +153,8 @@ static bool add_payld_to_queue(struct intel_dsi_host *host, const u8 *data,
 }
 
 static int dsi_send_pkt_hdr(struct intel_dsi_host *host,
-			    struct mipi_dsi_packet pkt, bool enable_lpdt)
+			    const struct mipi_dsi_packet *packet,
+			    bool enable_lpdt)
 {
 	struct intel_dsi *intel_dsi = host->intel_dsi;
 	struct drm_i915_private *dev_priv = to_i915(intel_dsi->base.base.dev);
@@ -166,7 +167,7 @@ static int dsi_send_pkt_hdr(struct intel_dsi_host *host,
 
 	tmp = intel_de_read(dev_priv, DSI_CMD_TXHDR(dsi_trans));
 
-	if (pkt.payload)
+	if (packet->payload)
 		tmp |= PAYLOAD_PRESENT;
 	else
 		tmp &= ~PAYLOAD_PRESENT;
@@ -177,30 +178,29 @@ static int dsi_send_pkt_hdr(struct intel_dsi_host *host,
 		tmp |= LP_DATA_TRANSFER;
 
 	tmp &= ~(PARAM_WC_MASK | VC_MASK | DT_MASK);
-	tmp |= ((pkt.header[0] & VC_MASK) << VC_SHIFT);
-	tmp |= ((pkt.header[0] & DT_MASK) << DT_SHIFT);
-	tmp |= (pkt.header[1] << PARAM_WC_LOWER_SHIFT);
-	tmp |= (pkt.header[2] << PARAM_WC_UPPER_SHIFT);
+	tmp |= ((packet->header[0] & VC_MASK) << VC_SHIFT);
+	tmp |= ((packet->header[0] & DT_MASK) << DT_SHIFT);
+	tmp |= (packet->header[1] << PARAM_WC_LOWER_SHIFT);
+	tmp |= (packet->header[2] << PARAM_WC_UPPER_SHIFT);
 	intel_de_write(dev_priv, DSI_CMD_TXHDR(dsi_trans), tmp);
 
 	return 0;
 }
 
 static int dsi_send_pkt_payld(struct intel_dsi_host *host,
-			      struct mipi_dsi_packet pkt)
+			      const struct mipi_dsi_packet *packet)
 {
 	struct intel_dsi *intel_dsi = host->intel_dsi;
 	struct drm_i915_private *i915 = to_i915(intel_dsi->base.base.dev);
 
 	/* payload queue can accept *256 bytes*, check limit */
-	if (pkt.payload_length > MAX_PLOAD_CREDIT * 4) {
+	if (packet->payload_length > MAX_PLOAD_CREDIT * 4) {
 		drm_err(&i915->drm, "payload size exceeds max queue limit\n");
 		return -1;
 	}
 
 	/* load data into command payload queue */
-	if (!add_payld_to_queue(host, pkt.payload,
-				pkt.payload_length)) {
+	if (!add_payld_to_queue(host, packet->payload, packet->payload_length)) {
 		drm_err(&i915->drm, "adding payload to queue failed\n");
 		return -1;
 	}
@@ -1840,13 +1840,13 @@ static ssize_t gen11_dsi_host_transfer(struct mipi_dsi_host *host,
 
 	/* only long packet contains payload */
 	if (mipi_dsi_packet_format_is_long(msg->type)) {
-		ret = dsi_send_pkt_payld(intel_dsi_host, dsi_pkt);
+		ret = dsi_send_pkt_payld(intel_dsi_host, &dsi_pkt);
 		if (ret < 0)
 			return ret;
 	}
 
 	/* send packet header */
-	ret  = dsi_send_pkt_hdr(intel_dsi_host, dsi_pkt, enable_lpdt);
+	ret  = dsi_send_pkt_hdr(intel_dsi_host, &dsi_pkt, enable_lpdt);
 	if (ret < 0)
 		return ret;
 
-- 
2.30.2

