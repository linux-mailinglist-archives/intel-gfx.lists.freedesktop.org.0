Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 04698848BF0
	for <lists+intel-gfx@lfdr.de>; Sun,  4 Feb 2024 08:48:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D45EA1120FA;
	Sun,  4 Feb 2024 07:48:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NqZLRia0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E90AC1120F6
 for <intel-gfx@lists.freedesktop.org>; Sun,  4 Feb 2024 07:48:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707032932; x=1738568932;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=G/hrLaB75Ckq9Ej1RP+ipXMt4UMNt6j3G2bWZVcyWTk=;
 b=NqZLRia0p4/MeBr/4N+eMN414ryias9GqgZA2zrv/Q7kTX9SAAENuDHY
 iSUWEQddeXxmAKogmTfM5JHG28TLI1YszhpRssCOIm59dPl4mas36SMwM
 4Ib8eFYN8Trn2Tf/PWfMDrk/OYxDRg8c7zoD8ufmip7H0zJlJ11NjIduV
 5h7cGyqGZdO5OB3BZBC6rFGlQAf5+QkCscNsljo/+3r6Nw/8WD+FY+8zV
 QUPIvOzEMkTWzWmcBFi9JLWL5+XXQUbTxhfvy/CCZFQiqoJuU2OusZ/c5
 3vmcPUgvuotz4Rra9kkNPJxWt38gczlm77ACk9wE5HFcDql5n1mSmmSjE A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10973"; a="279241"
X-IronPort-AV: E=Sophos;i="6.05,242,1701158400"; 
   d="scan'208";a="279241"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2024 23:41:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,242,1701158400"; 
   d="scan'208";a="5067682"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa004.fm.intel.com with ESMTP; 03 Feb 2024 23:41:46 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: uma.shankar@intel.com, ankit.k.nautiyal@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 06/11] drm/i915/hdcp: HDCP Capability for the downstream device
Date: Sun,  4 Feb 2024 13:09:31 +0530
Message-Id: <20240204073936.1135848-7-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240204073936.1135848-1-suraj.kandpal@intel.com>
References: <20240204073936.1135848-1-suraj.kandpal@intel.com>
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
 .../drm/i915/display/intel_display_debugfs.c  | 24 +++++++++++++++----
 1 file changed, 19 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 6f2d13c8ccf7..a51857dc4ece 100644
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
@@ -285,7 +291,11 @@ static void intel_connector_info(struct seq_file *m,
 	}
 
 	seq_puts(m, "\tHDCP version: ");
-	intel_hdcp_info(m, intel_connector);
+	if (intel_encoder_is_mst(encoder)) {
+		intel_hdcp_info(m, intel_connector, true);
+		seq_puts(m, "\tMST Hub HDCP version: ");
+	}
+	intel_hdcp_info(m, intel_connector, false);
 
 	seq_printf(m, "\tmax bpc: %u\n", connector->display_info.bpc);
 
@@ -1131,7 +1141,11 @@ static int i915_hdcp_sink_capability_show(struct seq_file *m, void *data)
 
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

