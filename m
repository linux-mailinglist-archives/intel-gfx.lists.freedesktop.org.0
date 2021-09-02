Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A254E3FEBD7
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Sep 2021 12:05:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3239F6E4C5;
	Thu,  2 Sep 2021 10:05:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B42B6E4C1
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Sep 2021 10:05:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10094"; a="198611198"
X-IronPort-AV: E=Sophos;i="5.84,372,1620716400"; d="scan'208";a="198611198"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2021 03:05:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,372,1620716400"; d="scan'208";a="510920629"
Received: from shawnle1-build-machine.itwn.intel.com ([10.5.253.12])
 by orsmga001.jf.intel.com with ESMTP; 02 Sep 2021 03:05:42 -0700
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 vandita.kulkarni@intel.com, cooper.chiou@intel.com,
 william.tseng@intel.com, Lee Shawn C <shawn.c.lee@intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>
Date: Thu,  2 Sep 2021 18:08:48 +0800
Message-Id: <20210902100851.21719-3-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210902100851.21719-1-shawn.c.lee@intel.com>
References: <20210902100851.21719-1-shawn.c.lee@intel.com>
Subject: [Intel-gfx] [v2 2/5] drm/i915/dsi: refine send MIPI DCS command
 sequence
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

According to chapter "Sending Commands to the Panel" in bspec #29738
and #49188. If driver try to send DCS long pakcet, we have to program
TX payload register at first. And configure TX header HW register later.
DSC long packet would not be sent properly if we don't follow this
sequence.

Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
Cc: Cooper Chiou <cooper.chiou@intel.com>
Cc: William Tseng <william.tseng@intel.com>
Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
Reviewed-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 44289003b709..060bc8fb0d30 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1831,11 +1831,6 @@ static ssize_t gen11_dsi_host_transfer(struct mipi_dsi_host *host,
 	if (msg->flags & MIPI_DSI_MSG_USE_LPM)
 		enable_lpdt = true;
 
-	/* send packet header */
-	ret  = dsi_send_pkt_hdr(intel_dsi_host, dsi_pkt, enable_lpdt);
-	if (ret < 0)
-		return ret;
-
 	/* only long packet contains payload */
 	if (mipi_dsi_packet_format_is_long(msg->type)) {
 		ret = dsi_send_pkt_payld(intel_dsi_host, dsi_pkt);
@@ -1843,6 +1838,11 @@ static ssize_t gen11_dsi_host_transfer(struct mipi_dsi_host *host,
 			return ret;
 	}
 
+	/* send packet header */
+	ret  = dsi_send_pkt_hdr(intel_dsi_host, dsi_pkt, enable_lpdt);
+	if (ret < 0)
+		return ret;
+
 	//TODO: add payload receive code if needed
 
 	ret = sizeof(dsi_pkt.header) + dsi_pkt.payload_length;
-- 
2.17.1

