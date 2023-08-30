Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CC3578D3A5
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Aug 2023 09:37:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BC3D10E4C6;
	Wed, 30 Aug 2023 07:37:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 107B610E4C6
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Aug 2023 07:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693381019; x=1724917019;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5PoEyltsYWb6Jdw+XOp2yeLGJmVvC53URT6kiGmjEMM=;
 b=I6wbssgTi2gwStP9fJJwYiSzizvxWK2hZ3XtT59vQvYbQKUldgXOezpG
 sW0vWfV7CMKD1jlGWwRDNtW6vUb7afC9QC61cpfeD+K0Xiz6nIV0zIrvL
 8oO1EjZ/dEMyLPz9r0JyY0w+4UaOfx0aXWhjJtyFzfuyiQCnkXNmINqZJ
 vXKofsSVxfQl7tp0uzgYgMiDG1cpu3inbfuaRvLglfYe/ryYe4Tt32TGJ
 yq1A5W3U/vQ0bt7iB8XmHqH4pcWGY1zf872JfggWhJRPiRfFf9A8Ub/CZ
 Y/PvhActAJRSK1cG/07Y3xx4dbJfMywLKZPJBKIA0PZ64708xAxWjUUvW g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10817"; a="379326138"
X-IronPort-AV: E=Sophos;i="6.02,212,1688454000"; d="scan'208";a="379326138"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2023 00:36:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10817"; a="912692478"
X-IronPort-AV: E=Sophos;i="6.02,212,1688454000"; d="scan'208";a="912692478"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga005.jf.intel.com with ESMTP; 30 Aug 2023 00:36:56 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 30 Aug 2023 13:04:37 +0530
Message-Id: <20230830073437.666263-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230830073437.666263-1-suraj.kandpal@intel.com>
References: <20230830073437.666263-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/hdcp: Use intel_connector as
 argument for hdcp_2_2_capable
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

Use intel_connector as argument instead of intel_digital_port in
hdcp_2_2_capable function and dig_port can be later derived from
connector. This will help with getting the correct hdcp version of
particular monitor in a MST setup.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h | 2 +-
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c       | 3 ++-
 drivers/gpu/drm/i915/display/intel_hdcp.c          | 3 +--
 drivers/gpu/drm/i915/display/intel_hdmi.c          | 3 ++-
 4 files changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index c62f4ec315e8..c21064794f32 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -500,7 +500,7 @@ struct intel_hdcp_shim {
 	enum hdcp_wired_protocol protocol;
 
 	/* Detects whether sink is HDCP2.2 capable */
-	int (*hdcp_2_2_capable)(struct intel_digital_port *dig_port,
+	int (*hdcp_2_2_capable)(struct intel_connector *connector,
 				bool *capable);
 
 	/* Write HDCP2.2 messages */
diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
index b0cfe759d3e5..3b579887bb99 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
@@ -648,9 +648,10 @@ int intel_dp_hdcp2_check_link(struct intel_digital_port *dig_port,
 }
 
 static
-int intel_dp_hdcp2_capable(struct intel_digital_port *dig_port,
+int intel_dp_hdcp2_capable(struct intel_connector *connector,
 			   bool *capable)
 {
+	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	u8 rx_caps[3];
 	int ret;
 
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index cb45f21f71eb..8cca4793cf92 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -163,7 +163,6 @@ bool intel_hdcp_capable(struct intel_connector *connector)
 /* Is HDCP2.2 capable on Platform and Sink */
 bool intel_hdcp2_capable(struct intel_connector *connector)
 {
-	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_hdcp *hdcp = &connector->hdcp;
 	bool capable = false;
@@ -193,7 +192,7 @@ bool intel_hdcp2_capable(struct intel_connector *connector)
 	mutex_unlock(&i915->display.hdcp.hdcp_mutex);
 
 	/* Sink's capability for HDCP2.2 */
-	hdcp->shim->hdcp_2_2_capable(dig_port, &capable);
+	hdcp->shim->hdcp_2_2_capable(connector, &capable);
 
 	return capable;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 116556d6352a..d34eba5b132c 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -1735,9 +1735,10 @@ int intel_hdmi_hdcp2_check_link(struct intel_digital_port *dig_port,
 }
 
 static
-int intel_hdmi_hdcp2_capable(struct intel_digital_port *dig_port,
+int intel_hdmi_hdcp2_capable(struct intel_connector *connector,
 			     bool *capable)
 {
+	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	u8 hdcp2_version;
 	int ret;
 
-- 
2.25.1

