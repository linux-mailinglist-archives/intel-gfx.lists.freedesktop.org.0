Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B489484686C
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Feb 2024 07:48:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E9DA10EA85;
	Fri,  2 Feb 2024 06:48:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k+IpgjE8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0349410EA85
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Feb 2024 06:48:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706856489; x=1738392489;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jmpjHiRNCgiE8190Lo/IuAMLOfomnS6UeBDdhiaGpRs=;
 b=k+IpgjE81H51cqlHOVRxngPI5QmJtvi90bzRjvQn8b5029IbHhL+pAcx
 66CZmUcaRFhNEvXyEtUXWeuCZv4mhdEI2uBhcCDe6T+moNDgQkOBv8PQE
 NkJ4MFQO8WSj0gSH+HNuWmW8uCu+rfC/mFB2aVjIYW0E4fyFI8l98xjTC
 0v+FiSfb0SlMalB+ag++MrGE8VkGvFrqjlNDJhAT3y7yQ0UP8UIWIoAAn
 JUmiiCbyGuJ+ytgWN33KZl0b48zM3W2cRGsfsvIvAmIUNfEEyKw/CnlQU
 VXrK54wQc+KYs9qmNTfNqYrlmCwmbYX7Zixzo4Lidn04Xb5drUtuXVKd3 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="263556"
X-IronPort-AV: E=Sophos;i="6.05,237,1701158400"; 
   d="scan'208";a="263556"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2024 22:41:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,237,1701158400"; d="scan'208";a="31084859"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa001.fm.intel.com with ESMTP; 01 Feb 2024 22:41:03 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: uma.shankar@intel.com, ankit.k.nautiyal@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 06/11] drm/i915/hdcp: HDCP Capability for the downstream device
Date: Fri,  2 Feb 2024 12:08:47 +0530
Message-Id: <20240202063852.1076862-7-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240202063852.1076862-1-suraj.kandpal@intel.com>
References: <20240202063852.1076862-1-suraj.kandpal@intel.com>
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

Currently we are only checking capability of remote device and not
immediate downstream device but during capability check we need are
concerned with only the HDCP capability of downstream device.
During i915_display_info reporting we need HDCP Capability for both
the monitors and downstream branch device if any this patch adds that.

--v2
-Use MST Hub HDCP version [Ankit]

--v3
-Redefined how we seprate remote and direct read to make sure HDMI
shim functions are not touched [Ankit]

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  | 26 +++++++++++++++----
 1 file changed, 21 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 6f2d13c8ccf7..41458f1cae38 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -188,7 +188,8 @@ static void intel_panel_info(struct seq_file *m,
 }
 
 static void intel_hdcp_info(struct seq_file *m,
-			    struct intel_connector *intel_connector)
+			    struct intel_connector *intel_connector,
+			    bool remote_req)
 {
 	bool hdcp_cap, hdcp2_cap;
 
@@ -197,8 +198,13 @@ static void intel_hdcp_info(struct seq_file *m,
 		goto out;
 	}
 
-	hdcp_cap = intel_hdcp_capable(intel_connector);
-	hdcp2_cap = intel_hdcp2_capable(intel_connector);
+	if (remote_req) {
+		intel_hdcp_remote_cap(intel_connector, &hdcp_cap,
+				      &hdcp2_cap);
+	} else {
+		hdcp_cap = intel_hdcp_capable(intel_connector);
+		hdcp2_cap = intel_hdcp2_capable(intel_connector);
+	}
 
 	if (hdcp_cap)
 		seq_puts(m, "HDCP1.4 ");
@@ -285,7 +291,12 @@ static void intel_connector_info(struct seq_file *m,
 	}
 
 	seq_puts(m, "\tHDCP version: ");
-	intel_hdcp_info(m, intel_connector);
+	intel_hdcp_info(m, intel_connector, true);
+
+	if (intel_encoder_is_mst(encoder)) {
+		seq_puts(m, "\tMST Hub HDCP version: ");
+		intel_hdcp_info(m, intel_connector, false);
+	}
 
 	seq_printf(m, "\tmax bpc: %u\n", connector->display_info.bpc);
 
@@ -1131,7 +1142,12 @@ static int i915_hdcp_sink_capability_show(struct seq_file *m, void *data)
 
 	seq_printf(m, "%s:%d HDCP version: ", connector->base.name,
 		   connector->base.base.id);
-	intel_hdcp_info(m, connector);
+	intel_hdcp_info(m, connector, true);
+
+	if (intel_encoder_is_mst(connector->encoder)) {
+		seq_puts(m, "\tMST Hub HDCP version: ");
+		intel_hdcp_info(m, connector, false);
+	}
 
 out:
 	drm_modeset_unlock(&i915->drm.mode_config.connection_mutex);
-- 
2.25.1

