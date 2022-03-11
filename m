Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DAD94D6788
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Mar 2022 18:25:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55E3E10E6AD;
	Fri, 11 Mar 2022 17:25:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85B0610E692
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Mar 2022 17:25:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647019501; x=1678555501;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=AcGa75ww+A4CA2stxPcJZRHf/ERZ7PzBVYpXFfhBJBQ=;
 b=PID4gky+oD5zv3e7I2rvyKPGN4zU6oxDlf+/V4LE3XvFo7cCXXVhsxoP
 sL+4xRFDKdEWchMKfJok2ZMf0zf38nZh2FOgrexWNmOGKum9jY+Q2hslb
 Hbb49sXpq8S8eO4e/MhLeUcsrE+U7LtHsbHnU796qyDs77F6EKM2fI4cT
 5vD2/2mGJ31OUO1RucBNACsJAo0f5dtcekCWdpl+zedoUfD96e+/fWSV9
 kZAdgefIr1oUNf9HmUX7K1LawbHNAKt2cymsmVMic0/Mp7kPQA+ZFvkgb
 evzRCODZ0mFtR1t7pGk9SnO5Gt9/UQAtMgJNyYsTcjZUGZSwXBFwdgf/I Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10283"; a="316336746"
X-IronPort-AV: E=Sophos;i="5.90,174,1643702400"; d="scan'208";a="316336746"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2022 09:25:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,174,1643702400"; d="scan'208";a="548516895"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga007.fm.intel.com with SMTP; 11 Mar 2022 09:24:58 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 11 Mar 2022 19:24:58 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 11 Mar 2022 19:24:22 +0200
Message-Id: <20220311172428.14685-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220311172428.14685-1-ville.syrjala@linux.intel.com>
References: <20220311172428.14685-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 10/16] drm/i915: Introduce
 intel_drrs_type_str()
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Add helper to get the drrs type as a string, and use it
in a couple of places. Also pimp the debugfs output a bit
while at it.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  | 19 +++++++------------
 drivers/gpu/drm/i915/display/intel_drrs.c     | 19 +++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_drrs.h     |  2 ++
 3 files changed, 26 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 2a6fd15b1471..3edf3eb01240 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -22,6 +22,7 @@
 #include "intel_fbdev.h"
 #include "intel_hdcp.h"
 #include "intel_hdmi.h"
+#include "intel_panel.h"
 #include "intel_pm.h"
 #include "intel_psr.h"
 #include "intel_sprite.h"
@@ -1143,23 +1144,17 @@ static void drrs_status_per_crtc(struct seq_file *m,
 {
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	struct i915_drrs *drrs = &dev_priv->drrs;
-	struct drm_connector *connector;
+	struct intel_connector *connector;
 	struct drm_connector_list_iter conn_iter;
 
 	drm_connector_list_iter_begin(dev, &conn_iter);
-	drm_for_each_connector_iter(connector, &conn_iter) {
-		bool supported = false;
-
-		if (connector->state->crtc != &crtc->base)
+	for_each_intel_connector_iter(connector, &conn_iter) {
+		if (connector->base.state->crtc != &crtc->base)
 			continue;
 
-		seq_printf(m, "%s:\n", connector->name);
-
-		if (connector->connector_type == DRM_MODE_CONNECTOR_eDP &&
-		    dev_priv->vbt.drrs_type == DRRS_TYPE_SEAMLESS)
-			supported = true;
-
-		seq_printf(m, "\tDRRS Supported: %s\n", str_yes_no(supported));
+		seq_printf(m, "[CONNECTOR:%d:%s] DRRS type: %s\n",
+			   connector->base.base.id, connector->base.name,
+			   intel_drrs_type_str(intel_panel_drrs_type(connector)));
 	}
 	drm_connector_list_iter_end(&conn_iter);
 
diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
index c663df51a84a..12ae1deea15f 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.c
+++ b/drivers/gpu/drm/i915/display/intel_drrs.c
@@ -47,6 +47,20 @@
  * requested by userspace.
  */
 
+const char *intel_drrs_type_str(enum drrs_type drrs_type)
+{
+	static const char * const str[] = {
+		[DRRS_TYPE_NONE] = "none",
+		[DRRS_TYPE_STATIC] = "static",
+		[DRRS_TYPE_SEAMLESS] = "seamless",
+	};
+
+	if (drrs_type >= ARRAY_SIZE(str))
+		return "<invalid>";
+
+	return str[drrs_type];
+}
+
 static bool can_enable_drrs(struct intel_connector *connector,
 			    const struct intel_crtc_state *pipe_config)
 {
@@ -461,8 +475,9 @@ intel_drrs_init(struct intel_connector *connector,
 
 	dev_priv->drrs.refresh_rate = DRRS_REFRESH_RATE_HIGH;
 	drm_dbg_kms(&dev_priv->drm,
-		    "[CONNECTOR:%d:%s] seamless DRRS supported\n",
-		    connector->base.base.id, connector->base.name);
+		    "[CONNECTOR:%d:%s] %s DRRS supported\n",
+		    connector->base.base.id, connector->base.name,
+		    intel_drrs_type_str(dev_priv->vbt.drrs_type));
 
 	return downclock_mode;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_drrs.h b/drivers/gpu/drm/i915/display/intel_drrs.h
index 6bca7692f59f..d3dff44dc3b1 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.h
+++ b/drivers/gpu/drm/i915/display/intel_drrs.h
@@ -8,6 +8,7 @@
 
 #include <linux/types.h>
 
+enum drrs_type;
 struct drm_i915_private;
 struct intel_atomic_state;
 struct intel_crtc;
@@ -15,6 +16,7 @@ struct intel_crtc_state;
 struct intel_connector;
 struct intel_dp;
 
+const char *intel_drrs_type_str(enum drrs_type drrs_type);
 void intel_drrs_enable(struct intel_dp *intel_dp,
 		       const struct intel_crtc_state *crtc_state);
 void intel_drrs_disable(struct intel_dp *intel_dp,
-- 
2.34.1

