Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C4D94129F4
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Sep 2021 02:23:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A43466E8C8;
	Tue, 21 Sep 2021 00:23:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4899F6E8C0
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Sep 2021 00:23:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10113"; a="203410783"
X-IronPort-AV: E=Sophos;i="5.85,309,1624345200"; d="scan'208";a="203410783"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2021 17:23:25 -0700
X-IronPort-AV: E=Sophos;i="5.85,309,1624345200"; d="scan'208";a="549183726"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2021 17:23:24 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
Date: Tue, 21 Sep 2021 03:23:06 +0300
Message-Id: <20210921002313.1132357-7-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210921002313.1132357-1-imre.deak@intel.com>
References: <20210921002313.1132357-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 06/13] drm/i915/tc: Don't keep legacy TypeC
 ports in connected state w/o a sink
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

A follow-up patch will disconnect/reconnect PHYs around AUX transfers
and modeset enable/disables. To prepare for that and make things
consistent for all TypeC modes stop connecting the PHY in legacy mode
without a sink being connected. This was done before since in legacy
mode the PHY is dedicated to display usage, so there was no point in
disconnecting it. However after the follow-up changes the TC-cold
blocking power domains will be held as long as the PHY is in the
connected state, so we'll need to disconnect/re-connect the PHY in all
TypeC modes to allow for power saving.

Cc: José Roberto de Souza <jose.souza@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 12 +-----------
 1 file changed, 1 insertion(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index 511c46e36e237..aa4c1e5e0c002 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -511,8 +511,6 @@ static void icl_tc_phy_disconnect(struct intel_digital_port *dig_port)
 {
 	switch (dig_port->tc_mode) {
 	case TC_PORT_LEGACY:
-		/* Nothing to do, we never disconnect from legacy mode */
-		break;
 	case TC_PORT_DP_ALT:
 		tc_phy_take_ownership(dig_port, false);
 		dig_port->tc_mode = TC_PORT_TBT_ALT;
@@ -580,9 +578,7 @@ intel_tc_port_get_target_mode(struct intel_digital_port *dig_port)
 	if (live_status_mask)
 		return fls(live_status_mask) - 1;
 
-	return tc_phy_status_complete(dig_port) &&
-	       dig_port->tc_legacy_port ? TC_PORT_LEGACY :
-					  TC_PORT_TBT_ALT;
+	return TC_PORT_TBT_ALT;
 }
 
 static void intel_tc_port_reset_mode(struct intel_digital_port *dig_port,
@@ -643,14 +639,8 @@ void intel_tc_port_sanitize(struct intel_digital_port *dig_port)
 				    "Port %s: PHY disconnected with %d active link(s)\n",
 				    dig_port->tc_port_name, active_links);
 		intel_tc_port_link_init_refcount(dig_port, active_links);
-
-		goto out;
 	}
 
-	if (dig_port->tc_legacy_port)
-		icl_tc_phy_connect(dig_port, 1);
-
-out:
 	drm_dbg_kms(&i915->drm, "Port %s: sanitize mode (%s)\n",
 		    dig_port->tc_port_name,
 		    tc_port_mode_name(dig_port->tc_mode));
-- 
2.27.0

