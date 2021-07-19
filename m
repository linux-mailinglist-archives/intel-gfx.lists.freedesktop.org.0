Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 285953CCE53
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Jul 2021 09:16:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C4D06E0AA;
	Mon, 19 Jul 2021 07:16:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14E5E6E0AA
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Jul 2021 07:16:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10049"; a="209103126"
X-IronPort-AV: E=Sophos;i="5.84,251,1620716400"; d="scan'208";a="209103126"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2021 00:16:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,251,1620716400"; d="scan'208";a="631817022"
Received: from shawnle1-build-machine.itwn.intel.com ([10.5.253.12])
 by orsmga005.jf.intel.com with ESMTP; 19 Jul 2021 00:16:39 -0700
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 19 Jul 2021 15:22:21 +0800
Message-Id: <20210719072222.13369-5-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210719072222.13369-1-shawn.c.lee@intel.com>
References: <20210719072222.13369-1-shawn.c.lee@intel.com>
Subject: [Intel-gfx] [PATCH 4/5] drm/i915/dsi: refine send MIPI DCS command
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
Cc: Cooper Chiou <cooper.chiou@intel.com>,
 William Tseng <william.tseng@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
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
---
 drivers/gpu/drm/i915/display/icl_dsi.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 1780830d9909..60413bbf565f 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1807,11 +1807,6 @@ static ssize_t gen11_dsi_host_transfer(struct mipi_dsi_host *host,
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
@@ -1819,6 +1814,11 @@ static ssize_t gen11_dsi_host_transfer(struct mipi_dsi_host *host,
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

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
