Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 595D96C6ACB
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Mar 2023 15:21:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 882A010EAAE;
	Thu, 23 Mar 2023 14:21:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71A468924F
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Mar 2023 14:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679581253; x=1711117253;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Oq1kGXmJ3zOgEsYJbnJ0GbEquBIKE9dUW/fCDeGW37o=;
 b=YXWM4YR/EWjVsJ12uIyCAguF2BeTiLFDjM+raGgjmTImkK3gI+4it8BG
 BObPKY1oY2fcRBQI+sKUrdwgn5UQ8gZvkQJCGYYyty1cZ+K57+F08WDGb
 jXhOkDp3Bt+ZsOr6ytPyDR6TqnTbClrcCgA5LKbFmuAMMQX+r9cBlH0dd
 c5ZhyzZeTICEnaAgXGipB7Ul6QuvoikTYMmx7um0Ncv0X247PbtNhIuTD
 ooYfPMJegDXFOCJ3c/JGFZHRNqDZixn4IwpG0FICs2kGBfXKOI4KNb5t0
 ROM8GZupsKCb2Gek384xfJpEBfdXZhHd6gF59QTIyKN4ftWQ6ZrTnwWYb A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="327892295"
X-IronPort-AV: E=Sophos;i="5.98,285,1673942400"; d="scan'208";a="327892295"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 07:20:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="746722665"
X-IronPort-AV: E=Sophos;i="5.98,285,1673942400"; d="scan'208";a="746722665"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 07:20:52 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Mar 2023 16:20:19 +0200
Message-Id: <20230323142035.1432621-14-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20230323142035.1432621-1-imre.deak@intel.com>
References: <20230323142035.1432621-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 13/29] drm/i915/tc: Add TC PHY hooks to
 connect/disconnect the PHY
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

Add TC PHY hooks to connect/disconnect the PHY. A follow-up patch will
add the ADLP specific hooks for these.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index ee4db9d0eb978..e63e9c57e5627 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -29,6 +29,8 @@ struct intel_tc_phy_ops {
 	bool (*is_ready)(struct intel_tc_port *tc);
 	bool (*is_owned)(struct intel_tc_port *tc);
 	void (*get_hw_state)(struct intel_tc_port *tc);
+	bool (*connect)(struct intel_tc_port *tc, int required_lanes);
+	void (*disconnect)(struct intel_tc_port *tc);
 };
 
 struct intel_tc_port {
@@ -523,6 +525,8 @@ static const struct intel_tc_phy_ops icl_tc_phy_ops = {
 	.is_ready = icl_tc_phy_is_ready,
 	.is_owned = icl_tc_phy_is_owned,
 	.get_hw_state = icl_tc_phy_get_hw_state,
+	.connect = icl_tc_phy_connect,
+	.disconnect = icl_tc_phy_disconnect,
 };
 
 /**
@@ -605,6 +609,8 @@ static const struct intel_tc_phy_ops adlp_tc_phy_ops = {
 	.is_ready = adlp_tc_phy_is_ready,
 	.is_owned = adlp_tc_phy_is_owned,
 	.get_hw_state = icl_tc_phy_get_hw_state,
+	.connect = icl_tc_phy_connect,
+	.disconnect = icl_tc_phy_disconnect,
 };
 
 /**
@@ -824,10 +830,10 @@ static void tc_phy_connect(struct intel_tc_port *tc, int required_lanes)
 
 	tc->mode = tc_phy_get_target_mode(tc);
 
-	connected = icl_tc_phy_connect(tc, required_lanes);
+	connected = tc->phy_ops->connect(tc, required_lanes);
 	if (!connected && tc->mode != default_tc_mode(tc)) {
 		tc->mode = default_tc_mode(tc);
-		connected = icl_tc_phy_connect(tc, required_lanes);
+		connected = tc->phy_ops->connect(tc, required_lanes);
 	}
 
 	drm_WARN_ON(&i915->drm, !connected);
@@ -836,7 +842,7 @@ static void tc_phy_connect(struct intel_tc_port *tc, int required_lanes)
 static void tc_phy_disconnect(struct intel_tc_port *tc)
 {
 	if (tc->mode != TC_PORT_DISCONNECTED) {
-		icl_tc_phy_disconnect(tc);
+		tc->phy_ops->disconnect(tc);
 		tc->mode = TC_PORT_DISCONNECTED;
 	}
 }
-- 
2.37.1

