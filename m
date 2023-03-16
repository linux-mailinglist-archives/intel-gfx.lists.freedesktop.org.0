Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B7146BD107
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Mar 2023 14:40:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08CF410E1E2;
	Thu, 16 Mar 2023 13:40:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70DDA10E1E3
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Mar 2023 13:40:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678974026; x=1710510026;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qagtq7i2laflO244qhz5o/0HM//V+oRquAuszQvev7I=;
 b=AWLTRAvojjZH8C3IBDDOiKWstAcjGqWfL2ap2K3e8U9hYslShXPMqRdw
 Z6Pj+f1QhLngxvaa5niJXcMIN5nTO1gXEJrXF7kDD1HNL0p6MHJ7zD+Y+
 mL7AKPKzf6ZFFM09MSvTnykva1kSK/+1R9IsRN8vQt6loqNDSJ2UhTi5d
 daWveNdnfmJH+CZOdEJsugCrsKucOYHpFRXO+vsTiUwMicSJWxBR+oy8w
 LN2b84vNhztKBhak7rVBFGjWVG6N6B9peIQaz1VGNMWA1NcRZfZ66e2EY
 c6AqC+BNY7Fg+IP7br6Kdfc7NZwxICKsw/t23fV9nobLdm6bXoIQRV5bb A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="339524643"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="339524643"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 06:17:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10650"; a="657171273"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="657171273"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 06:17:29 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Mar 2023 15:17:13 +0200
Message-Id: <20230316131724.359612-4-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20230316131724.359612-1-imre.deak@intel.com>
References: <20230316131724.359612-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 03/14] drm/i915/tc: Fix the ICL PHY ownership
 check in TC-cold state
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

The commit renaming icl_tc_phy_is_in_safe_mode() to
icl_tc_phy_take_ownership() didn't flip the function's return value
accordingly, fix this up.

This didn't cause an actual problem besides state check errors, since
the function is only used during HW readout.

Cc: José Roberto de Souza <jose.souza@intel.com>
Fixes: f53979d68a77 ("drm/i915/display/tc: Rename safe_mode functions ownership")
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index 0b6fe96ab4759..fd826b9657e93 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -418,9 +418,9 @@ static bool icl_tc_phy_is_owned(struct intel_digital_port *dig_port)
 	val = intel_de_read(i915, PORT_TX_DFLEXDPCSSS(dig_port->tc_phy_fia));
 	if (val == 0xffffffff) {
 		drm_dbg_kms(&i915->drm,
-			    "Port %s: PHY in TCCOLD, assume safe mode\n",
+			    "Port %s: PHY in TCCOLD, assume not owned\n",
 			    dig_port->tc_port_name);
-		return true;
+		return false;
 	}
 
 	return val & DP_PHY_MODE_STATUS_NOT_SAFE(dig_port->tc_phy_fia_idx);
-- 
2.37.1

