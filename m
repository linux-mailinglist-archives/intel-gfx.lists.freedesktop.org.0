Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C961C6C6AB8
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Mar 2023 15:21:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F57810EAC0;
	Thu, 23 Mar 2023 14:20:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69EA410EAB0
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Mar 2023 14:20:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679581249; x=1711117249;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Jaw0wEk6/ihl+eww2h31WsWvUxtOS6yRT1zOIpsXrW0=;
 b=IlYWEH2rsaj6RosbZL/Z9SJkHtDVn2moIjCae6R3UHvvsvAHqMXfXD2W
 3t31II5GwS8tfFdsurrNqxf3rVrYTweOz2DHcs/NKOKPxNkcfp/WDmcdn
 Rl925g76CkYA1iBfQD8Q3N3c4HhP4voaINftDBXR9MGme7sMpVchODTKa
 oZl1qk7EIvyIwaHiA586lZGI1Zh0C+5p9CPvj7fLPCdeE0JxKqmVC4QX0
 t8tCN+0IUsPteVtt4u48v2BrF2oUsmA4wg6fn/vTp3Xu3sdE9dvR6VX/f
 9wbz4IaXaqHQKB6A/6+s2x5Tte/AuJm0w6LIjFn8WyIYwkkOI6LaDQygC A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="327892273"
X-IronPort-AV: E=Sophos;i="5.98,285,1673942400"; d="scan'208";a="327892273"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 07:20:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="746722646"
X-IronPort-AV: E=Sophos;i="5.98,285,1673942400"; d="scan'208";a="746722646"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 07:20:48 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Mar 2023 16:20:15 +0200
Message-Id: <20230323142035.1432621-10-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20230323142035.1432621-1-imre.deak@intel.com>
References: <20230323142035.1432621-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 09/29] drm/i915/tc: Add TC PHY hooks to get the
 PHY ready/owned state
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

Add TC PHY hooks to get the PHY ready/owned state on each platform,
replacing the corresponding if ladder.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 20 ++++++++------------
 1 file changed, 8 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index a0508e2173007..7d64cb310ca3e 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -26,6 +26,8 @@ struct intel_tc_port;
 
 struct intel_tc_phy_ops {
 	u32 (*hpd_live_status)(struct intel_tc_port *tc);
+	bool (*is_ready)(struct intel_tc_port *tc);
+	bool (*is_owned)(struct intel_tc_port *tc);
 };
 
 struct intel_tc_port {
@@ -502,6 +504,8 @@ static void icl_tc_phy_disconnect(struct intel_tc_port *tc)
 
 static const struct intel_tc_phy_ops icl_tc_phy_ops = {
 	.hpd_live_status = icl_tc_phy_hpd_live_status,
+	.is_ready = icl_tc_phy_is_ready,
+	.is_owned = icl_tc_phy_is_owned,
 };
 
 /**
@@ -581,6 +585,8 @@ static bool adlp_tc_phy_is_owned(struct intel_tc_port *tc)
 
 static const struct intel_tc_phy_ops adlp_tc_phy_ops = {
 	.hpd_live_status = adlp_tc_phy_hpd_live_status,
+	.is_ready = adlp_tc_phy_is_ready,
+	.is_owned = adlp_tc_phy_is_owned,
 };
 
 /**
@@ -603,22 +609,12 @@ static u32 tc_phy_hpd_live_status(struct intel_tc_port *tc)
 
 static bool tc_phy_is_ready(struct intel_tc_port *tc)
 {
-	struct drm_i915_private *i915 = tc_to_i915(tc);
-
-	if (IS_ALDERLAKE_P(i915))
-		return adlp_tc_phy_is_ready(tc);
-
-	return icl_tc_phy_is_ready(tc);
+	return tc->phy_ops->is_ready(tc);
 }
 
 static bool tc_phy_is_owned(struct intel_tc_port *tc)
 {
-	struct drm_i915_private *i915 = tc_to_i915(tc);
-
-	if (IS_ALDERLAKE_P(i915))
-		return adlp_tc_phy_is_owned(tc);
-
-	return icl_tc_phy_is_owned(tc);
+	return tc->phy_ops->is_owned(tc);
 }
 
 static bool tc_phy_take_ownership(struct intel_tc_port *tc, bool take)
-- 
2.37.1

