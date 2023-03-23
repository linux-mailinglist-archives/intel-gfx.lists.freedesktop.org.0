Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A587D6C6AB6
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Mar 2023 15:21:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC72710EABE;
	Thu, 23 Mar 2023 14:20:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8318D10EAB0
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Mar 2023 14:20:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679581247; x=1711117247;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=MPREvNvLSKyKB9VfLuHf4tlkTxIN0lNExxTa2etk9Og=;
 b=PEfY3DL79np+N3ypM4bc/UMQQmOZAkNsF8KevoahDTUQliCyLTK4mjli
 tnwYDQRU48oTUHDz9cNZr4qoAHfPN8zn77VNT6nOfAtiiEKnGHKODScDV
 9VA44UwfQBiRWZPCo3XECC15bOYQaErvU28c8eAr3St3KGECd8uIcZCyx
 0Iut2D6ZR0UcwgdzwUek9gMB8VL+q03Q7jFU6l7FQz+QcmPUMi2/FfrL5
 2hO4CNiprsVSPKud8RHBGAEqDKT+eUux3Lgaby8yIeLMe/NMYyC1CPP0U
 7aZkUp6WYxNDrlTXOx8s/H+k3RDBHf3Kb7NVBLZx2kFFLGYlSp2Yhs7xW Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="327892267"
X-IronPort-AV: E=Sophos;i="5.98,285,1673942400"; d="scan'208";a="327892267"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 07:20:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="746722637"
X-IronPort-AV: E=Sophos;i="5.98,285,1673942400"; d="scan'208";a="746722637"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 07:20:46 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Mar 2023 16:20:13 +0200
Message-Id: <20230323142035.1432621-8-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20230323142035.1432621-1-imre.deak@intel.com>
References: <20230323142035.1432621-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 07/29] drm/i915/tc: Move the intel_tc_port
 struct declaration to intel_tc.c
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

Move the intel_tc_port struct to intel_tc.c for better isolation. This
requires allocating the struct dynamically.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c      |  7 +--
 .../drm/i915/display/intel_display_types.h    |  4 +-
 drivers/gpu/drm/i915/display/intel_tc.c       | 45 +++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_tc.h       | 30 +------------
 4 files changed, 49 insertions(+), 37 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 73240cf78c8bf..dac3ec8fbbc11 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3843,7 +3843,7 @@ static void intel_ddi_encoder_destroy(struct drm_encoder *encoder)
 
 	intel_dp_encoder_flush_work(encoder);
 	if (intel_phy_is_tc(i915, phy))
-		intel_tc_port_flush_work(dig_port);
+		intel_tc_port_cleanup(dig_port);
 	intel_display_power_flush_work(i915);
 
 	drm_encoder_cleanup(encoder);
@@ -4284,7 +4284,7 @@ static void intel_ddi_encoder_shutdown(struct intel_encoder *encoder)
 	if (!intel_phy_is_tc(i915, phy))
 		return;
 
-	intel_tc_port_flush_work(dig_port);
+	intel_tc_port_cleanup(dig_port);
 }
 
 #define port_tc_name(port) ((port) - PORT_TC1 + '1')
@@ -4541,7 +4541,8 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 				    is_legacy ? "legacy" : "non-legacy");
 		}
 
-		intel_tc_port_init(dig_port, is_legacy);
+		if (intel_tc_port_init(dig_port, is_legacy) < 0)
+			goto err;
 
 		encoder->update_prepare = intel_ddi_update_prepare;
 		encoder->update_complete = intel_ddi_update_complete;
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 0130c7b7f0232..ce24e58b2a825 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -54,13 +54,13 @@
 #include "intel_display_power.h"
 #include "intel_dpll_mgr.h"
 #include "intel_wm_types.h"
-#include "intel_tc.h"
 
 struct drm_printer;
 struct __intel_global_objs_state;
 struct intel_ddi_buf_trans;
 struct intel_fbc;
 struct intel_connector;
+struct intel_tc_port;
 
 /*
  * Display related stuff
@@ -1781,7 +1781,7 @@ struct intel_digital_port {
 	intel_wakeref_t ddi_io_wakeref;
 	intel_wakeref_t aux_wakeref;
 
-	struct intel_tc_port tc;
+	struct intel_tc_port *tc;
 
 	/* protects num_hdcp_streams reference count, hdcp_port_data and hdcp_auth_status */
 	struct mutex hdcp_mutex;
diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index 48a59a675cd57..2a04c5ea44ade 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -15,6 +15,28 @@
 #include "intel_mg_phy_regs.h"
 #include "intel_tc.h"
 
+enum tc_port_mode {
+	TC_PORT_DISCONNECTED,
+	TC_PORT_TBT_ALT,
+	TC_PORT_DP_ALT,
+	TC_PORT_LEGACY,
+};
+
+struct intel_tc_port {
+	struct intel_digital_port *dig_port;
+	struct mutex lock;	/* protects the TypeC port mode */
+	intel_wakeref_t lock_wakeref;
+	enum intel_display_power_domain lock_power_domain;
+	struct delayed_work disconnect_phy_work;
+	int link_refcount;
+	bool legacy_port:1;
+	char port_name[8];
+	enum tc_port_mode mode;
+	enum tc_port_mode init_mode;
+	enum phy_fia phy_fia;
+	u8 phy_fia_idx;
+};
+
 static u32 tc_phy_hpd_live_status(struct intel_tc_port *tc);
 static bool tc_phy_is_ready(struct intel_tc_port *tc);
 static bool tc_phy_take_ownership(struct intel_tc_port *tc, bool take);
@@ -36,7 +58,7 @@ static const char *tc_port_mode_name(enum tc_port_mode mode)
 
 static struct intel_tc_port *to_tc_port(struct intel_digital_port *dig_port)
 {
-	return &dig_port->tc;
+	return dig_port->tc;
 }
 
 static struct drm_i915_private *tc_to_i915(struct intel_tc_port *tc)
@@ -1158,16 +1180,21 @@ tc_port_load_fia_params(struct drm_i915_private *i915, struct intel_tc_port *tc)
 	}
 }
 
-void intel_tc_port_init(struct intel_digital_port *dig_port, bool is_legacy)
+int intel_tc_port_init(struct intel_digital_port *dig_port, bool is_legacy)
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
-	struct intel_tc_port *tc = to_tc_port(dig_port);
+	struct intel_tc_port *tc;
 	enum port port = dig_port->base.port;
 	enum tc_port tc_port = intel_port_to_tc(i915, port);
 
 	if (drm_WARN_ON(&i915->drm, tc_port == TC_PORT_NONE))
-		return;
+		return -EINVAL;
+
+	tc = kzalloc(sizeof(*tc), GFP_KERNEL);
+	if (!tc)
+		return -ENOMEM;
 
+	dig_port->tc = tc;
 	tc->dig_port = dig_port;
 
 	snprintf(tc->port_name, sizeof(tc->port_name),
@@ -1181,4 +1208,14 @@ void intel_tc_port_init(struct intel_digital_port *dig_port, bool is_legacy)
 	tc_port_load_fia_params(i915, tc);
 
 	intel_tc_port_init_mode(dig_port);
+
+	return 0;
+}
+
+void intel_tc_port_cleanup(struct intel_digital_port *dig_port)
+{
+	intel_tc_port_flush_work(dig_port);
+
+	kfree(dig_port->tc);
+	dig_port->tc = NULL;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_tc.h b/drivers/gpu/drm/i915/display/intel_tc.h
index cc3a7fd4ac102..dd0810f9ea95e 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.h
+++ b/drivers/gpu/drm/i915/display/intel_tc.h
@@ -6,39 +6,12 @@
 #ifndef __INTEL_TC_H__
 #define __INTEL_TC_H__
 
-#include <linux/mutex.h>
 #include <linux/types.h>
 
-#include "intel_display.h"
-#include "intel_display_power.h"
-#include "intel_wakeref.h"
-
 struct intel_crtc_state;
 struct intel_digital_port;
 struct intel_encoder;
 
-enum tc_port_mode {
-	TC_PORT_DISCONNECTED,
-	TC_PORT_TBT_ALT,
-	TC_PORT_DP_ALT,
-	TC_PORT_LEGACY,
-};
-
-struct intel_tc_port {
-	struct intel_digital_port *dig_port;
-	struct mutex lock;	/* protects the TypeC port mode */
-	intel_wakeref_t lock_wakeref;
-	enum intel_display_power_domain lock_power_domain;
-	struct delayed_work disconnect_phy_work;
-	int link_refcount;
-	bool legacy_port:1;
-	char port_name[8];
-	enum tc_port_mode mode;
-	enum tc_port_mode init_mode;
-	enum phy_fia phy_fia;
-	u8 phy_fia_idx;
-};
-
 bool intel_tc_port_in_tbt_alt_mode(struct intel_digital_port *dig_port);
 bool intel_tc_port_in_dp_alt_mode(struct intel_digital_port *dig_port);
 bool intel_tc_port_in_legacy_mode(struct intel_digital_port *dig_port);
@@ -63,7 +36,8 @@ void intel_tc_port_get_link(struct intel_digital_port *dig_port,
 void intel_tc_port_put_link(struct intel_digital_port *dig_port);
 bool intel_tc_port_ref_held(struct intel_digital_port *dig_port);
 
-void intel_tc_port_init(struct intel_digital_port *dig_port, bool is_legacy);
+int intel_tc_port_init(struct intel_digital_port *dig_port, bool is_legacy);
+void intel_tc_port_cleanup(struct intel_digital_port *dig_port);
 
 bool intel_tc_cold_requires_aux_pw(struct intel_digital_port *dig_port);
 
-- 
2.37.1

