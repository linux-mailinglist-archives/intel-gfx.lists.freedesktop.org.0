Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 77BCF6BD108
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Mar 2023 14:40:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 878C710E1EB;
	Thu, 16 Mar 2023 13:40:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7260B10E1DF
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Mar 2023 13:40:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678974023; x=1710510023;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=LfeU+GXtANfEtZfSw5m2tnuVH7+YUTCZAoYH3nEFlpE=;
 b=mzODCd2bCuDJVfpUs4wHw8USSY+8rSCiIqYpADkJ4n054Ke6DtzdNKlV
 FDwv77W3GHyBZsuFSwliWVud5js855G46bB/2JRMFH6+hMHU/pnURX5eu
 VKLV3YNquiiSoDaxlYUIUpzbrEI3yNLBypxmOQqKhk/jSYmVX1JE5C2V4
 6hXMMKTaLGnJovcQ/DuQBgEyljRGFzfP+sqHYxDxdzhzRMRKMZ7wrNYCA
 InKylNU1MC3nAYz//u5cDgipbHDYAFTbhm5354AXlCxk3m6AWAY59h22b
 TyrxYU0AXB9PLiDSKM9QNixFU0FBM40RBXv2IYI6HlT8gLoGMYeUyXj0h g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="339524616"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="339524616"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 06:17:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10650"; a="657171263"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="657171263"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 06:17:28 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Mar 2023 15:17:12 +0200
Message-Id: <20230316131724.359612-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20230316131724.359612-1-imre.deak@intel.com>
References: <20230316131724.359612-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 02/14] drm/i915/tc: Fix TC port link ref init
 for DP MST during HW readout
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

An enabled TC MST port holds one TC port link reference, regardless of
the number of enabled streams on it, but the TC port HW readout takes
one reference for each active MST stream.

Fix the HW readout, taking only one reference for MST ports.

This didn't cause an actual problem, since the encoder HW readout doesn't
yet support reading out the MST HW state.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 20 +++++++++++---------
 1 file changed, 11 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index 050f998284592..0b6fe96ab4759 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -660,11 +660,14 @@ static void intel_tc_port_update_mode(struct intel_digital_port *dig_port,
 	tc_cold_unblock(dig_port, domain, wref);
 }
 
-static void
-intel_tc_port_link_init_refcount(struct intel_digital_port *dig_port,
-				 int refcount)
+static void __intel_tc_port_get_link(struct intel_digital_port *dig_port)
 {
-	dig_port->tc_link_refcount = refcount;
+	dig_port->tc_link_refcount++;
+}
+
+static void __intel_tc_port_put_link(struct intel_digital_port *dig_port)
+{
+	dig_port->tc_link_refcount--;
 }
 
 /**
@@ -690,7 +693,7 @@ void intel_tc_port_init_mode(struct intel_digital_port *dig_port)
 
 	dig_port->tc_mode = intel_tc_port_get_current_mode(dig_port);
 	/* Prevent changing dig_port->tc_mode until intel_tc_port_sanitize_mode() is called. */
-	intel_tc_port_link_init_refcount(dig_port, 1);
+	__intel_tc_port_get_link(dig_port);
 	dig_port->tc_lock_wakeref = tc_cold_block(dig_port, &dig_port->tc_lock_power_domain);
 
 	tc_cold_unblock(dig_port, domain, tc_cold_wref);
@@ -726,8 +729,6 @@ void intel_tc_port_sanitize_mode(struct intel_digital_port *dig_port)
 		active_links = to_intel_crtc(encoder->base.crtc)->active;
 
 	drm_WARN_ON(&i915->drm, dig_port->tc_link_refcount != 1);
-	intel_tc_port_link_init_refcount(dig_port, active_links);
-
 	if (active_links) {
 		if (!icl_tc_phy_is_connected(dig_port))
 			drm_dbg_kms(&i915->drm,
@@ -746,6 +747,7 @@ void intel_tc_port_sanitize_mode(struct intel_digital_port *dig_port)
 				    dig_port->tc_port_name,
 				    tc_port_mode_name(dig_port->tc_mode));
 		icl_tc_phy_disconnect(dig_port);
+		__intel_tc_port_put_link(dig_port);
 
 		tc_cold_unblock(dig_port, dig_port->tc_lock_power_domain,
 				fetch_and_zero(&dig_port->tc_lock_wakeref));
@@ -864,14 +866,14 @@ void intel_tc_port_get_link(struct intel_digital_port *dig_port,
 			    int required_lanes)
 {
 	__intel_tc_port_lock(dig_port, required_lanes);
-	dig_port->tc_link_refcount++;
+	__intel_tc_port_get_link(dig_port);
 	intel_tc_port_unlock(dig_port);
 }
 
 void intel_tc_port_put_link(struct intel_digital_port *dig_port)
 {
 	intel_tc_port_lock(dig_port);
-	--dig_port->tc_link_refcount;
+	__intel_tc_port_put_link(dig_port);
 	intel_tc_port_unlock(dig_port);
 
 	/*
-- 
2.37.1

