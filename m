Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B43D831854A
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Feb 2021 07:45:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E40ED6E3F9;
	Thu, 11 Feb 2021 06:45:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 035256E3F9
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Feb 2021 06:45:09 +0000 (UTC)
IronPort-SDR: jIceL6B3x7Y56b/lWBi6XMe/0MvKUIjyBph7ej3m69D9lpBz8gajlbXwwJSWN4U06kleniMNzc
 k3qhxA/O+8vQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9891"; a="246266745"
X-IronPort-AV: E=Sophos;i="5.81,169,1610438400"; d="scan'208";a="246266745"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2021 22:45:09 -0800
IronPort-SDR: 2U0k/CpHhAlAUazsoO31R9/odVeOxJlmUx9o2ZyD0syn6yea39WRb2VEVqB3zr39rTFbW5wI7L
 nTl4IhU7wVFw==
X-IronPort-AV: E=Sophos;i="5.81,169,1610438400"; d="scan'208";a="359879538"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.179])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2021 22:45:07 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Feb 2021 11:59:49 +0530
Message-Id: <20210211062949.7045-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210129080043.24614-1-anshuman.gupta@intel.com>
References: <20210129080043.24614-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915/debugfs: HDCP capability enc NULL
 check
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

v2:
- Use necessary lock and NULL check in
  i915_hdcp_sink_capability_show. [Imre]

Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 .../gpu/drm/i915/display/intel_display_debugfs.c | 16 ++++++++++++++--
 1 file changed, 14 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index d6e4a9237bda..ed5e2f65b171 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -2198,14 +2198,26 @@ DEFINE_SHOW_ATTRIBUTE(i915_panel);
 static int i915_hdcp_sink_capability_show(struct seq_file *m, void *data)
 {
 	struct drm_connector *connector = m->private;
+	struct drm_i915_private *i915 = to_i915(connector->dev);
 	struct intel_connector *intel_connector = to_intel_connector(connector);
+	int ret;
 
-	if (connector->status != connector_status_connected)
-		return -ENODEV;
+	ret = drm_modeset_lock_single_interruptible(&i915->drm.mode_config.connection_mutex);
+	if (ret)
+		return ret;
+
+	if (!connector->encoder || connector->status != connector_status_connected) {
+		ret = -ENODEV;
+		goto out;
+	}
 
 	seq_printf(m, "%s:%d HDCP version: ", connector->name,
 		   connector->base.id);
 	intel_hdcp_info(m, intel_connector);
+out:
+	drm_modeset_unlock(&i915->drm.mode_config.connection_mutex);
+	if (ret)
+		return ret;
 
 	return 0;
 }
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
