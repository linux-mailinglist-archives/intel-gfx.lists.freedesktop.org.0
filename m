Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BBD446C6AAA
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Mar 2023 15:20:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04E7110EAB6;
	Thu, 23 Mar 2023 14:20:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CBFF10EAAE
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Mar 2023 14:20:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679581243; x=1711117243;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=MlPX4lg9f1up5MLEuwJbajAWJaOYwSjVoq+MzVOeFNU=;
 b=TPuoor8vZMz5UVrpGOATvT62w/V0gtCCm/ndB6G2DvhLhCZs9KpYgC1g
 XpNtza75NpZXRG3bic3aJScx4xxMTXAxvRMeGi2IOfIZQZObcFqBTbK36
 YykJE2+W9lX+IUoC16n0KPP3hJFq6xMtZcERcZGGKBgj+ZNsFHzMi6lRs
 /yc+BFrKFlzsjQ8/JePuDCGJOeyBYfFrA2fgdJAuf2kb7UGRtN8v1X0us
 GyBQHgqr/eRyC7mnLDMLUXE+b5oKTaX9ntVz1RxOiNaMhR1ccPuvh+Eb4
 81R+yy7uS/sJ2J6lQcnBt2YP45/7jZjZNzEuVG8NaWMdRoEr4GAEqlBZr A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="327892253"
X-IronPort-AV: E=Sophos;i="5.98,285,1673942400"; d="scan'208";a="327892253"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 07:20:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="746722623"
X-IronPort-AV: E=Sophos;i="5.98,285,1673942400"; d="scan'208";a="746722623"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 07:20:42 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Mar 2023 16:20:09 +0200
Message-Id: <20230323142035.1432621-4-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20230323142035.1432621-1-imre.deak@intel.com>
References: <20230323142035.1432621-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 03/29] drm/i915/tc: Rename
 tc_phy_status_complete() to tc_phy_is_ready()
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

For consistency rename tc_phy_status_complete() to tc_phy_is_ready()
following the terminology of new platforms.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index 099b1ec842ba2..9fecf24b69c16 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -16,7 +16,7 @@
 #include "intel_tc.h"
 
 static u32 tc_port_live_status_mask(struct intel_digital_port *dig_port);
-static bool tc_phy_status_complete(struct intel_digital_port *dig_port);
+static bool tc_phy_is_ready(struct intel_digital_port *dig_port);
 static bool tc_phy_take_ownership(struct intel_digital_port *dig_port, bool take);
 
 static const char *tc_port_mode_name(enum tc_port_mode mode)
@@ -303,7 +303,7 @@ static u32 icl_tc_port_live_status_mask(struct intel_digital_port *dig_port)
  * owned by the TBT subsystem and so switching the ownership to display is not
  * required.
  */
-static bool icl_tc_phy_status_complete(struct intel_digital_port *dig_port)
+static bool icl_tc_phy_is_ready(struct intel_digital_port *dig_port)
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	u32 val;
@@ -311,7 +311,7 @@ static bool icl_tc_phy_status_complete(struct intel_digital_port *dig_port)
 	val = intel_de_read(i915, PORT_TX_DFLEXDPPMS(dig_port->tc_phy_fia));
 	if (val == 0xffffffff) {
 		drm_dbg_kms(&i915->drm,
-			    "Port %s: PHY in TCCOLD, assuming not complete\n",
+			    "Port %s: PHY in TCCOLD, assuming not ready\n",
 			    dig_port->tc_port_name);
 		return false;
 	}
@@ -377,7 +377,7 @@ static void icl_tc_phy_connect(struct intel_digital_port *dig_port,
 	u32 live_status_mask;
 	int max_lanes;
 
-	if (!tc_phy_status_complete(dig_port) &&
+	if (!tc_phy_is_ready(dig_port) &&
 	    !drm_WARN_ON(&i915->drm, dig_port->tc_legacy_port)) {
 		drm_dbg_kms(&i915->drm, "Port %s: PHY not ready\n",
 			    dig_port->tc_port_name);
@@ -492,7 +492,7 @@ static u32 adlp_tc_port_live_status_mask(struct intel_digital_port *dig_port)
  * DP-alt, legacy or nothing). For TBT-alt sinks the PHY is owned by the TBT
  * subsystem and so switching the ownership to display is not required.
  */
-static bool adlp_tc_phy_status_complete(struct intel_digital_port *dig_port)
+static bool adlp_tc_phy_is_ready(struct intel_digital_port *dig_port)
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	enum tc_port tc_port = intel_port_to_tc(i915, dig_port->base.port);
@@ -501,7 +501,7 @@ static bool adlp_tc_phy_status_complete(struct intel_digital_port *dig_port)
 	val = intel_de_read(i915, TCSS_DDI_STATUS(tc_port));
 	if (val == 0xffffffff) {
 		drm_dbg_kms(&i915->drm,
-			    "Port %s: PHY in TCCOLD, assuming not complete\n",
+			    "Port %s: PHY in TCCOLD, assuming not ready\n",
 			    dig_port->tc_port_name);
 		return false;
 	}
@@ -545,14 +545,14 @@ static u32 tc_port_live_status_mask(struct intel_digital_port *dig_port)
 	return icl_tc_port_live_status_mask(dig_port);
 }
 
-static bool tc_phy_status_complete(struct intel_digital_port *dig_port)
+static bool tc_phy_is_ready(struct intel_digital_port *dig_port)
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 
 	if (IS_ALDERLAKE_P(i915))
-		return adlp_tc_phy_status_complete(dig_port);
+		return adlp_tc_phy_is_ready(dig_port);
 
-	return icl_tc_phy_status_complete(dig_port);
+	return icl_tc_phy_is_ready(dig_port);
 }
 
 static bool tc_phy_is_owned(struct intel_digital_port *dig_port)
@@ -590,7 +590,7 @@ static bool tc_phy_is_connected(struct intel_digital_port *dig_port,
 {
 	struct intel_encoder *encoder = &dig_port->base;
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	bool phy_is_ready = tc_phy_status_complete(dig_port);
+	bool phy_is_ready = tc_phy_is_ready(dig_port);
 	bool phy_is_owned = tc_phy_is_owned(dig_port);
 	bool is_connected;
 
@@ -614,7 +614,7 @@ static void tc_phy_wait_for_ready(struct intel_digital_port *dig_port)
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 
-	if (wait_for(tc_phy_status_complete(dig_port), 100))
+	if (wait_for(tc_phy_is_ready(dig_port), 100))
 		drm_err(&i915->drm, "Port %s: timeout waiting for PHY ready\n",
 			dig_port->tc_port_name);
 }
@@ -694,7 +694,7 @@ intel_tc_port_get_current_mode(struct intel_digital_port *dig_port)
 	if (dig_port->tc_legacy_port)
 		tc_phy_wait_for_ready(dig_port);
 
-	phy_is_ready = tc_phy_status_complete(dig_port);
+	phy_is_ready = tc_phy_is_ready(dig_port);
 	phy_is_owned = tc_phy_is_owned(dig_port);
 
 	if (!tc_phy_is_ready_and_owned(dig_port, phy_is_ready, phy_is_owned)) {
-- 
2.37.1

