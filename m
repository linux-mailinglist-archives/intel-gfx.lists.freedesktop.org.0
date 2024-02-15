Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 04FAC856085
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Feb 2024 12:01:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F14E710E600;
	Thu, 15 Feb 2024 11:01:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="R4Rwx9sS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E465B10E5FA
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Feb 2024 11:01:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707994896; x=1739530896;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Xt8DvnjP7+2Ay/hC5SFeH9DXZc1lqbdMvp9j6g8z3R0=;
 b=R4Rwx9sSpBB084p3BBJ0ut2OHvO+iaMTwHXPJ1C59ZMGeTtoa8PB+OJS
 4LK/RWweSegdJ31BrhsZdkXl3+TE71otK+vdRdFI5VLc/YFuzSmlZ0Mjj
 iVGqbZtrwATeIhr4p2HaUz6keLfiwZapBS224wTIKlQrBEzfJN0mhnohw
 YlbjbEYPWjZniN07fW1KvzACN/AZNNJOxpQ440byyNxfL7N8o5j0nLcRu
 RlPS+2aEkKqC7MhXEFNkIoWIYyEvdLYYkI5+5MXoOzzVltXC+VrksAoBf
 EueE/3kKAmn2I454qV+bJfI+7vjRvyYFIk3Dw8ooNSn57c/4SjpdR4gv/ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10984"; a="19494336"
X-IronPort-AV: E=Sophos;i="6.06,161,1705392000"; d="scan'208";a="19494336"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2024 03:01:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,161,1705392000"; 
   d="scan'208";a="3820965"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orviesa007.jf.intel.com with ESMTP; 15 Feb 2024 03:01:35 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, uma.shankar@intel.com, ankit.k.nautiyal@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 07/13] drm/i915/hdcp: HDCP Capability for the downstream device
Date: Thu, 15 Feb 2024 16:29:13 +0530
Message-Id: <20240215105919.1439549-8-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240215105919.1439549-1-suraj.kandpal@intel.com>
References: <20240215105919.1439549-1-suraj.kandpal@intel.com>
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

--v5
-No need to have the MST Hub version in i915_hdcp_sink_capability[Ankit]

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  | 21 ++++++++++++++-----
 1 file changed, 16 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 676ad082f0f5..8bc29a6f7c33 100644
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
 
@@ -1131,7 +1142,7 @@ static int i915_hdcp_sink_capability_show(struct seq_file *m, void *data)
 
 	seq_printf(m, "%s:%d HDCP version: ", connector->base.name,
 		   connector->base.base.id);
-	intel_hdcp_info(m, connector);
+	intel_hdcp_info(m, connector, false);
 
 out:
 	drm_modeset_unlock(&i915->drm.mode_config.connection_mutex);
-- 
2.25.1

