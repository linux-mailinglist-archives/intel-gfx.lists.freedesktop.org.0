Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EA3933105CB
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Feb 2021 08:26:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FEB36EE00;
	Fri,  5 Feb 2021 07:26:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12D696EE00
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Feb 2021 07:26:15 +0000 (UTC)
IronPort-SDR: 7QCWAWgVjHhs99dVUyJbZoeaekNvJZNbQR89O9pSR5FRMGCpSxK9ixOWH7nTCtcQowfrxarWM0
 x2h37NsRCyGw==
X-IronPort-AV: E=McAfee;i="6000,8403,9885"; a="177886112"
X-IronPort-AV: E=Sophos;i="5.81,154,1610438400"; d="scan'208";a="177886112"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2021 23:26:13 -0800
IronPort-SDR: uJ0CFvBWdi8xgzmQpG0xHnvWSW8m1PcAvdvwfLNRuBN7tmxG8tywHm2n6tyZk+dcIFupubpEDH
 xb2874NJ4qQw==
X-IronPort-AV: E=Sophos;i="5.81,154,1610438400"; d="scan'208";a="393738866"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.179])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2021 23:26:10 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  5 Feb 2021 12:40:44 +0530
Message-Id: <20210205071044.865-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/hdcp: Show connector hdcp capability
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Show only connector hdcp capability in i915_display_info
instead of platform and sink.

There are some platforms which don't support HDCP 2.2
yet, those are not HDCP 2.2 capable but those platform
should show up the connector capability in i915_display_info.

Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_debugfs.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index d62b18d5ecd8..8a028f943da5 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -605,6 +605,7 @@ static void intel_panel_info(struct seq_file *m, struct intel_panel *panel)
 static void intel_hdcp_info(struct seq_file *m,
 			    struct intel_connector *intel_connector)
 {
+	struct intel_digital_port *dig_port = intel_attached_dig_port(intel_connector);
 	bool hdcp_cap, hdcp2_cap;
 
 	if (!intel_connector->hdcp.shim) {
@@ -613,7 +614,8 @@ static void intel_hdcp_info(struct seq_file *m,
 	}
 
 	hdcp_cap = intel_hdcp_capable(intel_connector);
-	hdcp2_cap = intel_hdcp2_capable(intel_connector);
+	/* Sink's capability for HDCP2.2 */
+	intel_connector->hdcp.shim->hdcp_2_2_capable(dig_port, &hdcp2_cap);
 
 	if (hdcp_cap)
 		seq_puts(m, "HDCP1.4 ");
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
