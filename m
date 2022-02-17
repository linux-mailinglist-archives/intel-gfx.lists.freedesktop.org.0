Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 077414BA431
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Feb 2022 16:22:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11FC710ECED;
	Thu, 17 Feb 2022 15:22:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E6B510ECD9
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Feb 2022 15:22:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645111361; x=1676647361;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=eNzknUaAl/fCE/Xzgyh/29/CUocDdeMQr0tdczcCNyA=;
 b=hH4eGK5BrQfashhtDVpij44F0ijjHHXgmZt8SpO1Zu+Oe9m+WALwEsHz
 Cxw8b/NTjz6altbDxkH4fTefRcYD39/pkRs+hhty5XCGtZrkKmQ5MC0Dn
 +LJ39y/3gP2RiS5awR9yOO6QZQwDK8+nnCZ3qEqBRbUXKRoSfAPYP4B0C
 MQChGeW4QHyYdRQkyH++HVW3V3Iu3jqHpC1kndlHbOGfbesAmo7aECEho
 uwaI+BEJjorT2FsI4U+ZZgzAGmv7NI9J4a46tXQTeaBGlv1ALlg+YVrpL
 0Wxklwimj0LVFX9ogvYVQ3kf/3x/ejzPXXV1m4en/bfoaStLPsEKOeYx0 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10260"; a="250632101"
X-IronPort-AV: E=Sophos;i="5.88,376,1635231600"; d="scan'208";a="250632101"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2022 07:22:40 -0800
X-IronPort-AV: E=Sophos;i="5.88,376,1635231600"; d="scan'208";a="545658678"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2022 07:22:39 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Feb 2022 17:22:37 +0200
Message-Id: <20220217152237.670220-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Disconnect PHYs left connected by
 BIOS on disabled ports
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
Cc: stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

BIOS may leave a TypeC PHY in a connected state even though the
corresponding port is disabled. This will prevent any hotplug events
from being signalled (after the monitor deasserts and then reasserts its
HPD) until the PHY is disconnected and so the driver will not detect a
connected sink. Rebooting with the PHY in the connected state also
results in a system hang.

Fix the above by disconnecting TypeC PHYs on disabled ports.

Before commit 64851a32c463e5 the PHY connected state was read out even
for disabled ports and later the PHY got disconnected as a side effect
of a tc_port_lock/unlock() sequence (during connector probing), hence
recovering the port's hotplug functionality.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5014
Fixes: 64851a32c463 ("drm/i915/tc: Add a mode for the TypeC PHY's disconnected state")
Cc: <stable@vger.kernel.org> # v5.16+
Cc: José Roberto de Souza <jose.souza@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 28 ++++++++++++++++++-------
 1 file changed, 21 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index feead08ddf8ff..fc037c027ea5a 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -693,6 +693,8 @@ void intel_tc_port_sanitize(struct intel_digital_port *dig_port)
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	struct intel_encoder *encoder = &dig_port->base;
+	intel_wakeref_t tc_cold_wref;
+	enum intel_display_power_domain domain;
 	int active_links = 0;
 
 	mutex_lock(&dig_port->tc_lock);
@@ -704,12 +706,11 @@ void intel_tc_port_sanitize(struct intel_digital_port *dig_port)
 
 	drm_WARN_ON(&i915->drm, dig_port->tc_mode != TC_PORT_DISCONNECTED);
 	drm_WARN_ON(&i915->drm, dig_port->tc_lock_wakeref);
+
+	tc_cold_wref = tc_cold_block(dig_port, &domain);
+
+	dig_port->tc_mode = intel_tc_port_get_current_mode(dig_port);
 	if (active_links) {
-		enum intel_display_power_domain domain;
-		intel_wakeref_t tc_cold_wref = tc_cold_block(dig_port, &domain);
-
-		dig_port->tc_mode = intel_tc_port_get_current_mode(dig_port);
-
 		if (!icl_tc_phy_is_connected(dig_port))
 			drm_dbg_kms(&i915->drm,
 				    "Port %s: PHY disconnected with %d active link(s)\n",
@@ -718,10 +719,23 @@ void intel_tc_port_sanitize(struct intel_digital_port *dig_port)
 
 		dig_port->tc_lock_wakeref = tc_cold_block(dig_port,
 							  &dig_port->tc_lock_power_domain);
-
-		tc_cold_unblock(dig_port, domain, tc_cold_wref);
+	} else {
+		/*
+		 * TBT-alt is the default mode in any case the PHY ownership is not
+		 * held (regardless of the sink's connected live state), so
+		 * we'll just switch to disconnected mode from it here without
+		 * a note.
+		 */
+		if (dig_port->tc_mode != TC_PORT_TBT_ALT)
+			drm_dbg_kms(&i915->drm,
+				    "Port %s: PHY left in %s mode on disabled port, disconnecting it\n",
+				    dig_port->tc_port_name,
+				    tc_port_mode_name(dig_port->tc_mode));
+		icl_tc_phy_disconnect(dig_port);
 	}
 
+	tc_cold_unblock(dig_port, domain, tc_cold_wref);
+
 	drm_dbg_kms(&i915->drm, "Port %s: sanitize mode (%s)\n",
 		    dig_port->tc_port_name,
 		    tc_port_mode_name(dig_port->tc_mode));
-- 
2.27.0

