Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B46A441D895
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Sep 2021 13:24:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C9676EB78;
	Thu, 30 Sep 2021 11:24:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E8F06EB76
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Sep 2021 11:24:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10122"; a="288819452"
X-IronPort-AV: E=Sophos;i="5.85,336,1624345200"; d="scan'208";a="288819452"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2021 04:24:52 -0700
X-IronPort-AV: E=Sophos;i="5.85,336,1624345200"; d="scan'208";a="520315620"
Received: from vmurthy-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.37.18])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2021 04:24:50 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Date: Thu, 30 Sep 2021 14:24:32 +0300
Message-Id: <f74f7462a36e76070db6b4c01616d0eb663b9938.1633000838.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1633000838.git.jani.nikula@intel.com>
References: <cover.1633000838.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/6] drm/i915/dsi: fuse dsi_send_pkt_payld() and
 add_payld_to_queue()
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

Having two functions for this seems like excess duplication and
parameter juggling. Merge them together.

While at it, drop the extra error message, as wait_for_payload_credits()
already prints an error, and switch from incidental -EPERM (i.e. -1) to
actual error codes.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c | 43 +++++++++-----------------
 1 file changed, 15 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 11ef40230e8f..0daa90058ee3 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -129,27 +129,35 @@ static void wait_for_cmds_dispatched_to_panel(struct intel_encoder *encoder)
 	}
 }
 
-static bool add_payld_to_queue(struct intel_dsi_host *host, const u8 *data,
-			       u32 len)
+static int dsi_send_pkt_payld(struct intel_dsi_host *host,
+			      const struct mipi_dsi_packet *packet)
 {
 	struct intel_dsi *intel_dsi = host->intel_dsi;
-	struct drm_i915_private *dev_priv = to_i915(intel_dsi->base.base.dev);
+	struct drm_i915_private *i915 = to_i915(intel_dsi->base.base.dev);
 	enum transcoder dsi_trans = dsi_port_to_transcoder(host->port);
+	const u8 *data = packet->payload;
+	u32 len = packet->payload_length;
 	int i, j;
 
+	/* payload queue can accept *256 bytes*, check limit */
+	if (len > MAX_PLOAD_CREDIT * 4) {
+		drm_err(&i915->drm, "payload size exceeds max queue limit\n");
+		return -EINVAL;
+	}
+
 	for (i = 0; i < len; i += 4) {
 		u32 tmp = 0;
 
-		if (!wait_for_payload_credits(dev_priv, dsi_trans, 1))
-			return false;
+		if (!wait_for_payload_credits(i915, dsi_trans, 1))
+			return -EBUSY;
 
 		for (j = 0; j < min_t(u32, len - i, 4); j++)
 			tmp |= *data++ << 8 * j;
 
-		intel_de_write(dev_priv, DSI_CMD_TXPYLD(dsi_trans), tmp);
+		intel_de_write(i915, DSI_CMD_TXPYLD(dsi_trans), tmp);
 	}
 
-	return true;
+	return 0;
 }
 
 static int dsi_send_pkt_hdr(struct intel_dsi_host *host,
@@ -187,27 +195,6 @@ static int dsi_send_pkt_hdr(struct intel_dsi_host *host,
 	return 0;
 }
 
-static int dsi_send_pkt_payld(struct intel_dsi_host *host,
-			      const struct mipi_dsi_packet *packet)
-{
-	struct intel_dsi *intel_dsi = host->intel_dsi;
-	struct drm_i915_private *i915 = to_i915(intel_dsi->base.base.dev);
-
-	/* payload queue can accept *256 bytes*, check limit */
-	if (packet->payload_length > MAX_PLOAD_CREDIT * 4) {
-		drm_err(&i915->drm, "payload size exceeds max queue limit\n");
-		return -1;
-	}
-
-	/* load data into command payload queue */
-	if (!add_payld_to_queue(host, packet->payload, packet->payload_length)) {
-		drm_err(&i915->drm, "adding payload to queue failed\n");
-		return -1;
-	}
-
-	return 0;
-}
-
 void icl_dsi_frame_update(struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-- 
2.30.2

