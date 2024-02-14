Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 79CE685444B
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Feb 2024 09:50:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C193110E469;
	Wed, 14 Feb 2024 08:50:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="U/mHNAb3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9E7C10E469
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Feb 2024 08:50:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707900621; x=1739436621;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zVidBMXYa9w9zSWKUGyekDpB4ABfGCyA7gbJBkzNgEs=;
 b=U/mHNAb3Ta6YNLxXJ6uze6f8ES4tZbBTBMKChSOOyVJ7pWefrN2j/i8r
 9hCDngKDD/Yla0zfc1qZ8qeGfkHOgbrbms94WMsXKe151EkKV75h+6Jxc
 Pie5O87zN0hDygPup/sUgiIcNwimzYEv7uIdb4d0nGqtFcyLQ92lmXzjB
 hwULkUIo6VnoUA9Cz/d4EAfUGp5u93TS1tnFGa5gEXn1sKX75xCx1sHmB
 M46IcT/v3ZQxf+LVZxCowk/QErU6TRglmtvjMFklge+9K3NTf/7Tiv2D1
 avhWn29kkiofXzEAF3Qd+0Z1NVVBYuT/UE6ZygFzNXAyB2EjLQu8Chk2a w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="13323629"
X-IronPort-AV: E=Sophos;i="6.06,159,1705392000"; d="scan'208";a="13323629"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2024 00:50:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,159,1705392000"; 
   d="scan'208";a="3295669"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa008.fm.intel.com with ESMTP; 14 Feb 2024 00:50:19 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: uma.shankar@intel.com, ankit.k.nautiyal@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 07/12] drm/i915/hdcp: HDCP Capability for the downstream device
Date: Wed, 14 Feb 2024 14:18:05 +0530
Message-Id: <20240214084810.1417186-8-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240214084810.1417186-1-suraj.kandpal@intel.com>
References: <20240214084810.1417186-1-suraj.kandpal@intel.com>
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

--v4
- Fix the conditions so that hdcp_info with remote_req true is sent
only when encoder is mst [Ankit]

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  | 25 +++++++++++++++----
 1 file changed, 20 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 676ad082f0f5..8fee1508b0eb 100644
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
 
@@ -197,8 +198,14 @@ static void intel_hdcp_info(struct seq_file *m,
 		goto out;
 	}
 
-	hdcp_cap = intel_hdcp_get_capability(intel_connector);
-	hdcp2_cap = intel_hdcp2_get_capability(intel_connector);
+	if (remote_req) {
+		intel_hdcp_get_remote_capability(intel_connector,
+						 &hdcp_cap,
+						 &hdcp2_cap);
+	} else {
+		hdcp_cap = intel_hdcp_get_capability(intel_connector);
+		hdcp2_cap = intel_hdcp2_get_capability(intel_connector);
+	}
 
 	if (hdcp_cap)
 		seq_puts(m, "HDCP1.4 ");
@@ -285,7 +292,11 @@ static void intel_connector_info(struct seq_file *m,
 	}
 
 	seq_puts(m, "\tHDCP version: ");
-	intel_hdcp_info(m, intel_connector);
+	if (intel_encoder_is_mst(encoder)) {
+		intel_hdcp_info(m, intel_connector, true);
+		seq_puts(m, "\tMST Hub HDCP version: ");
+	}
+	intel_hdcp_info(m, intel_connector, false);
 
 	seq_printf(m, "\tmax bpc: %u\n", connector->display_info.bpc);
 
@@ -1131,7 +1142,11 @@ static int i915_hdcp_sink_capability_show(struct seq_file *m, void *data)
 
 	seq_printf(m, "%s:%d HDCP version: ", connector->base.name,
 		   connector->base.base.id);
-	intel_hdcp_info(m, connector);
+	if (intel_encoder_is_mst(connector->encoder)) {
+		intel_hdcp_info(m, connector, true);
+		seq_puts(m, "\tMST Hub HDCP version: ");
+	}
+	intel_hdcp_info(m, connector, false);
 
 out:
 	drm_modeset_unlock(&i915->drm.mode_config.connection_mutex);
-- 
2.25.1

