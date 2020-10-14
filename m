Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 37D4328D970
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Oct 2020 07:03:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 981C26E9CD;
	Wed, 14 Oct 2020 05:03:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E12696E9CD
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Oct 2020 05:03:49 +0000 (UTC)
IronPort-SDR: Qd5iSsu//YH5ohj6jozuWXPD7PB7aa2MFsP+2GguPdusfDG+L9smCyy2j6PP6Mo0sAiZOJMXLI
 ydbnlcJfgfwg==
X-IronPort-AV: E=McAfee;i="6000,8403,9773"; a="166099990"
X-IronPort-AV: E=Sophos;i="5.77,373,1596524400"; d="scan'208";a="166099990"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2020 22:03:49 -0700
IronPort-SDR: bT0zHaPM7e58c2hf17scCLVu8WVR7cDwQMB9oAB8NnazbnryxMjrItwlw2rNxPyTE7PGLVYi3V
 LqXXOdqnlowQ==
X-IronPort-AV: E=Sophos;i="5.77,373,1596524400"; d="scan'208";a="351376394"
Received: from genxfsim-desktop.iind.intel.com ([10.223.74.178])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2020 22:03:47 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 14 Oct 2020 10:22:49 +0530
Message-Id: <20201014045252.13608-11-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201014045252.13608-1-anshuman.gupta@intel.com>
References: <20201014045252.13608-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 10/13] drm/i915/hdcp: Pass connector to
 check_2_2_link
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
Cc: seanpaul@chromium.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This requires for HDCP 2.2 MST check link.

Cc: Ramalingam C <ramalingam.c@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h | 3 ++-
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c       | 3 ++-
 drivers/gpu/drm/i915/display/intel_hdcp.c          | 2 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c          | 3 ++-
 4 files changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 79750daa83aa..c395a202dbca 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -375,7 +375,8 @@ struct intel_hdcp_shim {
 				  bool is_repeater, u8 type);
 
 	/* HDCP2.2 Link Integrity Check */
-	int (*check_2_2_link)(struct intel_digital_port *dig_port);
+	int (*check_2_2_link)(struct intel_digital_port *dig_port,
+			      struct intel_connector *connector);
 };
 
 struct intel_hdcp {
diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
index 384e384cb9e2..a0c62e363c39 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
@@ -585,7 +585,8 @@ int intel_dp_hdcp2_config_stream_type(struct intel_digital_port *dig_port,
 }
 
 static
-int intel_dp_hdcp2_check_link(struct intel_digital_port *dig_port)
+int intel_dp_hdcp2_check_link(struct intel_digital_port *dig_port,
+			      struct intel_connector *connector)
 {
 	u8 rx_status;
 	int ret;
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index b36b87941c1a..5e9c5f330c70 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -1927,7 +1927,7 @@ static int intel_hdcp2_check_link(struct intel_connector *connector)
 		goto out;
 	}
 
-	ret = hdcp->shim->check_2_2_link(dig_port);
+	ret = hdcp->shim->check_2_2_link(dig_port, connector);
 	if (ret == HDCP_LINK_PROTECTED) {
 		if (hdcp->value != DRM_MODE_CONTENT_PROTECTION_UNDESIRED) {
 			intel_hdcp_update_value(connector,
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 0788de04711b..bd0d91101464 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -1734,7 +1734,8 @@ int intel_hdmi_hdcp2_read_msg(struct intel_digital_port *dig_port,
 }
 
 static
-int intel_hdmi_hdcp2_check_link(struct intel_digital_port *dig_port)
+int intel_hdmi_hdcp2_check_link(struct intel_digital_port *dig_port,
+				struct intel_connector *connector)
 {
 	u8 rx_status[HDCP_2_2_HDMI_RXSTATUS_LEN];
 	int ret;
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
