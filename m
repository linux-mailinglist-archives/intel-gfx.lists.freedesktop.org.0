Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AC80D3FD5EF
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Sep 2021 10:52:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BEA9E8924C;
	Wed,  1 Sep 2021 08:52:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14C218924C
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Sep 2021 08:52:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10093"; a="218695096"
X-IronPort-AV: E=Sophos;i="5.84,368,1620716400"; d="scan'208";a="218695096"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2021 01:51:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,368,1620716400"; d="scan'208";a="510275902"
Received: from shawnle1-build-machine.itwn.intel.com ([10.5.253.12])
 by orsmga001.jf.intel.com with ESMTP; 01 Sep 2021 01:51:58 -0700
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Lee Shawn C <shawn.c.lee@intel.com>,
 Ville Syrjala <ville.syrjala@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Vandita Kulkarni <vandita.kulkarni@intel.com>,
 Cooper Chiou <cooper.chiou@intel.com>,
 William Tseng <william.tseng@intel.com>
Date: Wed,  1 Sep 2021 16:54:41 +0800
Message-Id: <20210901085445.427-2-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210901085445.427-1-shawn.c.lee@intel.com>
References: <20210901085445.427-1-shawn.c.lee@intel.com>
Subject: [Intel-gfx] [PATCH 1/5] drm/i915/dsi: wait for header and payload
 credit available
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

Driver should wait for free header or payload buffer in FIFO.
It would be good to wait a while for HW to release credit before
give it up to write to HW. Without sending initailize command
sets completely. It would caused MIPI display can't light up properly.

Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
Cc: Cooper Chiou <cooper.chiou@intel.com>
Cc: William Tseng <william.tseng@intel.com>
Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
Reviewed-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c | 40 ++++++++++++--------------
 1 file changed, 19 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 43ec7fcd3f5d..1780830d9909 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -54,20 +54,28 @@ static int payload_credits_available(struct drm_i915_private *dev_priv,
 		>> FREE_PLOAD_CREDIT_SHIFT;
 }
 
-static void wait_for_header_credits(struct drm_i915_private *dev_priv,
-				    enum transcoder dsi_trans)
+static bool wait_for_header_credits(struct drm_i915_private *dev_priv,
+				    enum transcoder dsi_trans, int hdr_credit)
 {
 	if (wait_for_us(header_credits_available(dev_priv, dsi_trans) >=
-			MAX_HEADER_CREDIT, 100))
+			hdr_credit, 100)) {
 		drm_err(&dev_priv->drm, "DSI header credits not released\n");
+		return false;
+	}
+
+	return true;
 }
 
-static void wait_for_payload_credits(struct drm_i915_private *dev_priv,
-				     enum transcoder dsi_trans)
+static bool wait_for_payload_credits(struct drm_i915_private *dev_priv,
+				     enum transcoder dsi_trans, int payld_credit)
 {
 	if (wait_for_us(payload_credits_available(dev_priv, dsi_trans) >=
-			MAX_PLOAD_CREDIT, 100))
+			payld_credit, 100)) {
 		drm_err(&dev_priv->drm, "DSI payload credits not released\n");
+		return false;
+	}
+
+	return true;
 }
 
 static enum transcoder dsi_port_to_transcoder(enum port port)
@@ -90,8 +98,8 @@ static void wait_for_cmds_dispatched_to_panel(struct intel_encoder *encoder)
 	/* wait for header/payload credits to be released */
 	for_each_dsi_port(port, intel_dsi->ports) {
 		dsi_trans = dsi_port_to_transcoder(port);
-		wait_for_header_credits(dev_priv, dsi_trans);
-		wait_for_payload_credits(dev_priv, dsi_trans);
+		wait_for_header_credits(dev_priv, dsi_trans, MAX_HEADER_CREDIT);
+		wait_for_payload_credits(dev_priv, dsi_trans, MAX_PLOAD_CREDIT);
 	}
 
 	/* send nop DCS command */
@@ -108,7 +116,7 @@ static void wait_for_cmds_dispatched_to_panel(struct intel_encoder *encoder)
 	/* wait for header credits to be released */
 	for_each_dsi_port(port, intel_dsi->ports) {
 		dsi_trans = dsi_port_to_transcoder(port);
-		wait_for_header_credits(dev_priv, dsi_trans);
+		wait_for_header_credits(dev_priv, dsi_trans, MAX_HEADER_CREDIT);
 	}
 
 	/* wait for LP TX in progress bit to be cleared */
@@ -126,18 +134,13 @@ static bool add_payld_to_queue(struct intel_dsi_host *host, const u8 *data,
 	struct intel_dsi *intel_dsi = host->intel_dsi;
 	struct drm_i915_private *dev_priv = to_i915(intel_dsi->base.base.dev);
 	enum transcoder dsi_trans = dsi_port_to_transcoder(host->port);
-	int free_credits;
 	int i, j;
 
 	for (i = 0; i < len; i += 4) {
 		u32 tmp = 0;
 
-		free_credits = payload_credits_available(dev_priv, dsi_trans);
-		if (free_credits < 1) {
-			drm_err(&dev_priv->drm,
-				"Payload credit not available\n");
+		if (!wait_for_payload_credits(dev_priv, dsi_trans, 1))
 			return false;
-		}
 
 		for (j = 0; j < min_t(u32, len - i, 4); j++)
 			tmp |= *data++ << 8 * j;
@@ -155,15 +158,10 @@ static int dsi_send_pkt_hdr(struct intel_dsi_host *host,
 	struct drm_i915_private *dev_priv = to_i915(intel_dsi->base.base.dev);
 	enum transcoder dsi_trans = dsi_port_to_transcoder(host->port);
 	u32 tmp;
-	int free_credits;
 
 	/* check if header credit available */
-	free_credits = header_credits_available(dev_priv, dsi_trans);
-	if (free_credits < 1) {
-		drm_err(&dev_priv->drm,
-			"send pkt header failed, not enough hdr credits\n");
+	if (!wait_for_header_credits(dev_priv, dsi_trans, 1))
 		return -1;
-	}
 
 	tmp = intel_de_read(dev_priv, DSI_CMD_TXHDR(dsi_trans));
 
-- 
2.17.1

