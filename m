Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1316A84482C
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jan 2024 20:42:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6037D10FC9E;
	Wed, 31 Jan 2024 19:41:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F6EF10FC9A
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Jan 2024 19:41:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706730099; x=1738266099;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jmpjHiRNCgiE8190Lo/IuAMLOfomnS6UeBDdhiaGpRs=;
 b=dusFfmBNx32XK3dp+k/SZ7+Ms5LRpUkChzQ7TIDY3j639BqwXA9343ro
 WeiQBXon3ckFL3wbv21hsit1S8LC340exHE3OzwhUm7tXjkwMIxOYwINT
 fDfr5c6MLvJ4/mwoKqKUG/P0j9AfpXbyrC8Oqqr2pney2mPpO8eGh9ljq
 f0BcHkPVFWDMk5pW0FejIYMQOv0cqpJZG96XfxZLCHtfrvU/Uy4YEW/pA
 cOP84zFymWq3a5x1UKnwVMrnT29bD+nOg7HxuBc9V24ehW0rcHDeZKV1o
 XNTCQWkjmJ8K71QxSXJtAeh0vUUCrigrMyyiPtxoX/qBsq3Bk2mrkp3Ds A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="402549780"
X-IronPort-AV: E=Sophos;i="6.05,233,1701158400"; d="scan'208";a="402549780"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2024 11:41:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="788694649"
X-IronPort-AV: E=Sophos;i="6.05,233,1701158400"; d="scan'208";a="788694649"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga002.jf.intel.com with ESMTP; 31 Jan 2024 11:41:37 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 06/10] drm/i915/hdcp: HDCP Capability for the downstream device
Date: Thu,  1 Feb 2024 01:09:25 +0530
Message-Id: <20240131193929.938748-7-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240131193929.938748-1-suraj.kandpal@intel.com>
References: <20240131193929.938748-1-suraj.kandpal@intel.com>
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

