Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B75B1423B56
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Oct 2021 12:16:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 028666F877;
	Wed,  6 Oct 2021 10:16:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE9CA6ED99
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Oct 2021 10:16:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10128"; a="206771512"
X-IronPort-AV: E=Sophos;i="5.85,350,1624345200"; d="scan'208";a="206771512"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2021 03:16:24 -0700
X-IronPort-AV: E=Sophos;i="5.85,350,1624345200"; d="scan'208";a="488434835"
Received: from roliveir-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.41.10])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2021 03:16:23 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Date: Wed,  6 Oct 2021 13:16:18 +0300
Message-Id: <20211006101618.22066-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/mst: abstract
 intel_dp_mst_source_support()
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

Add a function for checking source MST support. Drop intel_dp->can_mst
and use intel_dp->mst_mgr.cbs to indicate the same. It's the single
point of truth without additional state variables. In code, "source
support" is also self-documenting as opposed to the vague "can mst".

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_display_debugfs.c  |  5 +++--
 .../gpu/drm/i915/display/intel_display_types.h    |  1 -
 drivers/gpu/drm/i915/display/intel_dp.c           | 10 +++++-----
 drivers/gpu/drm/i915/display/intel_dp_mst.c       | 15 +++++++++++----
 drivers/gpu/drm/i915/display/intel_dp_mst.h       |  4 +++-
 5 files changed, 22 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 309d74fd86ce..bc5113589f0a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -7,12 +7,13 @@
 #include <drm/drm_fourcc.h>
 
 #include "i915_debugfs.h"
+#include "intel_de.h"
 #include "intel_display_debugfs.h"
 #include "intel_display_power.h"
-#include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_dmc.h"
 #include "intel_dp.h"
+#include "intel_dp_mst.h"
 #include "intel_drrs.h"
 #include "intel_fbc.h"
 #include "intel_hdcp.h"
@@ -1379,7 +1380,7 @@ static int i915_dp_mst_info(struct seq_file *m, void *unused)
 			continue;
 
 		dig_port = enc_to_dig_port(intel_encoder);
-		if (!dig_port->dp.can_mst)
+		if (!intel_dp_mst_source_support(&dig_port->dp))
 			continue;
 
 		seq_printf(m, "MST Source Port [ENCODER:%d:%s]\n",
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 21ce8bccc645..39e11eaec1a3 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1580,7 +1580,6 @@ struct intel_dp {
 
 	struct intel_pps pps;
 
-	bool can_mst; /* this port supports mst */
 	bool is_mst;
 	int active_mst_links;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 74a657ae131a..ee733fb24a76 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2649,7 +2649,7 @@ intel_dp_can_mst(struct intel_dp *intel_dp)
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 
 	return i915->params.enable_dp_mst &&
-		intel_dp->can_mst &&
+		intel_dp_mst_source_support(intel_dp) &&
 		drm_dp_read_mst_cap(&intel_dp->aux, intel_dp->dpcd);
 }
 
@@ -2664,10 +2664,10 @@ intel_dp_configure_mst(struct intel_dp *intel_dp)
 	drm_dbg_kms(&i915->drm,
 		    "[ENCODER:%d:%s] MST support: port: %s, sink: %s, modparam: %s\n",
 		    encoder->base.base.id, encoder->base.name,
-		    yesno(intel_dp->can_mst), yesno(sink_can_mst),
+		    yesno(intel_dp_mst_source_support(intel_dp)), yesno(sink_can_mst),
 		    yesno(i915->params.enable_dp_mst));
 
-	if (!intel_dp->can_mst)
+	if (!intel_dp_mst_source_support(intel_dp))
 		return;
 
 	intel_dp->is_mst = sink_can_mst &&
@@ -5067,7 +5067,7 @@ void intel_dp_mst_suspend(struct drm_i915_private *dev_priv)
 
 		intel_dp = enc_to_intel_dp(encoder);
 
-		if (!intel_dp->can_mst)
+		if (!intel_dp_mst_source_support(intel_dp))
 			continue;
 
 		if (intel_dp->is_mst)
@@ -5091,7 +5091,7 @@ void intel_dp_mst_resume(struct drm_i915_private *dev_priv)
 
 		intel_dp = enc_to_intel_dp(encoder);
 
-		if (!intel_dp->can_mst)
+		if (!intel_dp_mst_source_support(intel_dp))
 			continue;
 
 		ret = drm_dp_mst_topology_mgr_resume(&intel_dp->mst_mgr,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index fd0a31bc3dcd..0de0b4ff4d73 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -977,24 +977,31 @@ intel_dp_mst_encoder_init(struct intel_digital_port *dig_port, int conn_base_id)
 					   dig_port->max_lanes,
 					   max_source_rate,
 					   conn_base_id);
-	if (ret)
+	if (ret) {
+		intel_dp->mst_mgr.cbs = NULL;
 		return ret;
-
-	intel_dp->can_mst = true;
+	}
 
 	return 0;
 }
 
+bool intel_dp_mst_source_support(struct intel_dp *intel_dp)
+{
+	return intel_dp->mst_mgr.cbs;
+}
+
 void
 intel_dp_mst_encoder_cleanup(struct intel_digital_port *dig_port)
 {
 	struct intel_dp *intel_dp = &dig_port->dp;
 
-	if (!intel_dp->can_mst)
+	if (!intel_dp_mst_source_support(intel_dp))
 		return;
 
 	drm_dp_mst_topology_mgr_destroy(&intel_dp->mst_mgr);
 	/* encoders will get killed by normal cleanup */
+
+	intel_dp->mst_mgr.cbs = NULL;
 }
 
 bool intel_dp_mst_is_master_trans(const struct intel_crtc_state *crtc_state)
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.h b/drivers/gpu/drm/i915/display/intel_dp_mst.h
index 6afda4e86b3c..f7301de6cdfb 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.h
@@ -8,13 +8,15 @@
 
 #include <linux/types.h>
 
-struct intel_digital_port;
 struct intel_crtc_state;
+struct intel_digital_port;
+struct intel_dp;
 
 int intel_dp_mst_encoder_init(struct intel_digital_port *dig_port, int conn_id);
 void intel_dp_mst_encoder_cleanup(struct intel_digital_port *dig_port);
 int intel_dp_mst_encoder_active_links(struct intel_digital_port *dig_port);
 bool intel_dp_mst_is_master_trans(const struct intel_crtc_state *crtc_state);
 bool intel_dp_mst_is_slave_trans(const struct intel_crtc_state *crtc_state);
+bool intel_dp_mst_source_support(struct intel_dp *intel_dp);
 
 #endif /* __INTEL_DP_MST_H__ */
-- 
2.30.2

