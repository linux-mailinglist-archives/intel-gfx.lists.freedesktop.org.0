Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 703444129F0
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Sep 2021 02:23:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B793A6E8C3;
	Tue, 21 Sep 2021 00:23:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1818F6E8C2
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Sep 2021 00:23:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10113"; a="308811931"
X-IronPort-AV: E=Sophos;i="5.85,309,1624345200"; d="scan'208";a="308811931"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2021 17:23:24 -0700
X-IronPort-AV: E=Sophos;i="5.85,309,1624345200"; d="scan'208";a="549183693"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2021 17:23:20 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
Date: Tue, 21 Sep 2021 03:23:03 +0300
Message-Id: <20210921002313.1132357-4-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210921002313.1132357-1-imre.deak@intel.com>
References: <20210921002313.1132357-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 03/13] drm/i915/tc: Remove waiting for PHY
 complete during releasing ownership
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

Waiting for the PHY complete flag to clear when releasing the PHY
ownership was add in

commit ddec362724f9 ("drm/i915: Wait for TypeC PHY complete flag to clear in safe mode")

This isn't required by the spec, the vague idea was to make the
handshake with the firmware more robust, without actual evidence for
when it would be needed. Checking this again, the flag doesn't clear on
ICL until after the PHY's PLL is disabled and the flag is permanently
set on ADL-P. To avoid the spurious timeout messages in dmesg, just
remove this wait.

Cc: José Roberto de Souza <jose.souza@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index 7dc3696085c71..0d3555437b0b1 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -339,11 +339,6 @@ static bool icl_tc_phy_take_ownership(struct intel_digital_port *dig_port,
 	intel_uncore_write(uncore,
 			   PORT_TX_DFLEXDPCSSS(dig_port->tc_phy_fia), val);
 
-	if (!take && wait_for(!tc_phy_status_complete(dig_port), 10))
-		drm_dbg_kms(&i915->drm,
-			    "Port %s: PHY complete clear timed out\n",
-			    dig_port->tc_port_name);
-
 	return true;
 }
 
-- 
2.27.0

