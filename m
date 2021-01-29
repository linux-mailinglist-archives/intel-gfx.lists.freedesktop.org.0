Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 20D773086EC
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Jan 2021 09:16:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74D736EA9B;
	Fri, 29 Jan 2021 08:16:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CDD06EAAD
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Jan 2021 08:16:22 +0000 (UTC)
IronPort-SDR: zYV04UxtVEJQHzN2S2w5sDWsU+MMabwnrOp4hm6H9jo9WLwbsqFSnyptMZ7GXCSY1UrJ8IkEWo
 r+sfXeLt6bpw==
X-IronPort-AV: E=McAfee;i="6000,8403,9878"; a="199228335"
X-IronPort-AV: E=Sophos;i="5.79,384,1602572400"; d="scan'208";a="199228335"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2021 00:16:20 -0800
IronPort-SDR: dVmckrITY7XILPdt9bvl0kUWa5/aDR2wODXC5rj3oDEjEGnpopFckA/63KC2kBccHNYwj8rGTQ
 SJLv/EELrILQ==
X-IronPort-AV: E=Sophos;i="5.79,384,1602572400"; d="scan'208";a="352069918"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.179])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2021 00:16:19 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 29 Jan 2021 13:30:43 +0530
Message-Id: <20210129080043.24614-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/debugfs: HDCP capability enc NULL check
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

DP-MST connector encoder initializes at modeset
Adding a connector->encoder NULL check in order to
avoid any NULL pointer dereference.
intel_hdcp_enable() already handle this but debugfs
can also invoke the intel_{hdcp,hdcp2_capable}.
Handling it gracefully.

Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index ae1371c36a32..58af323d189a 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -135,11 +135,16 @@ int intel_hdcp_read_valid_bksv(struct intel_digital_port *dig_port,
 /* Is HDCP1.4 capable on Platform and Sink */
 bool intel_hdcp_capable(struct intel_connector *connector)
 {
-	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
+	struct intel_digital_port *dig_port;
 	const struct intel_hdcp_shim *shim = connector->hdcp.shim;
 	bool capable = false;
 	u8 bksv[5];
 
+	if (!connector->encoder)
+		return -ENODEV;
+
+	dig_port = intel_attached_dig_port(connector);
+
 	if (!shim)
 		return capable;
 
@@ -156,11 +161,16 @@ bool intel_hdcp_capable(struct intel_connector *connector)
 /* Is HDCP2.2 capable on Platform and Sink */
 bool intel_hdcp2_capable(struct intel_connector *connector)
 {
-	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
+	struct intel_digital_port *dig_port;
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	struct intel_hdcp *hdcp = &connector->hdcp;
 	bool capable = false;
 
+	if (!connector->encoder)
+		return -ENODEV;
+
+	dig_port = intel_attached_dig_port(connector);
+
 	/* I915 support for HDCP2.2 */
 	if (!hdcp->hdcp2_supported)
 		return false;
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
