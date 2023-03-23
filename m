Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FAAB6C6AC5
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Mar 2023 15:21:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D14FA10EACC;
	Thu, 23 Mar 2023 14:21:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6AD8610EAB0
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Mar 2023 14:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679581254; x=1711117254;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=oQEywbUj8H+PRhhYqSz3ue5HlYHeNGNk+d6S/+TS5hs=;
 b=f3Lnmp7dXk/LYwBjIZAOAgcHPkTnZEGqZQO4iDo40Z6RjeLmRe6PeDs8
 zF8LMoP+ZpRgJ5U/6QyVecbiy4VBAsAQn8Gwjxxaz8IfcyExPm0mfCOPQ
 a4urwAYwtLVIiA4O1O6oppccOF47IkfcmErdVL96UAo/bHLDsu6akH5mi
 ocltZ4YvmTWrgx3rAYLXnie1DaM/R37qofZDIYL/9zsyKdCsQn/iWxyHQ
 DIopOnJga6gXbZQKpGNSrQo2hspM4dy5susFv3mqPAhkKSljbIE62BSHi
 j4zs7MZe5xKK4L36fdt9lsPiqFdOuMx18tcy5UTyBnqw2RwMMNY/igL3z Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="327892298"
X-IronPort-AV: E=Sophos;i="5.98,285,1673942400"; d="scan'208";a="327892298"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 07:20:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="746722672"
X-IronPort-AV: E=Sophos;i="5.98,285,1673942400"; d="scan'208";a="746722672"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 07:20:53 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Mar 2023 16:20:20 +0200
Message-Id: <20230323142035.1432621-15-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20230323142035.1432621-1-imre.deak@intel.com>
References: <20230323142035.1432621-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 14/29] drm/i915/tc: Fix up the legacy VBT flag
 only in disconnected mode
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

A follow-up patch simplifies the tc_cold_block()/unblock() functions,
dropping the power domain parameter. For this it must be ensured that
the power domain - which depends on the actual TC mode and so the VBT
legacy port flag - can't change while the PHY is in a connected state
and accordingly TC-cold is blocked. Make this so, by fixing up the VBT
legacy flag only in the disconnected TC mode, instead of whenever the
HPD state is retrieved.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index e63e9c57e5627..e61daa40356b5 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -298,6 +298,11 @@ static void tc_port_fixup_legacy_flag(struct intel_tc_port *tc,
 	struct drm_i915_private *i915 = tc_to_i915(tc);
 	u32 valid_hpd_mask;
 
+	drm_WARN_ON(&i915->drm, tc->mode != TC_PORT_DISCONNECTED);
+
+	if (hweight32(live_status_mask) != 1)
+		return;
+
 	if (tc->legacy_port)
 		valid_hpd_mask = BIT(TC_PORT_LEGACY);
 	else
@@ -625,8 +630,7 @@ static u32 tc_phy_hpd_live_status(struct intel_tc_port *tc)
 	mask = tc->phy_ops->hpd_live_status(tc);
 
 	/* The sink can be connected only in a single mode. */
-	if (!drm_WARN_ON_ONCE(&i915->drm, hweight32(mask) > 1))
-		tc_port_fixup_legacy_flag(tc, mask);
+	drm_WARN_ON_ONCE(&i915->drm, hweight32(mask) > 1);
 
 	return mask;
 }
@@ -826,9 +830,12 @@ tc_phy_get_target_mode(struct intel_tc_port *tc)
 static void tc_phy_connect(struct intel_tc_port *tc, int required_lanes)
 {
 	struct drm_i915_private *i915 = tc_to_i915(tc);
+	u32 live_status_mask = tc_phy_hpd_live_status(tc);
 	bool connected;
 
-	tc->mode = tc_phy_get_target_mode(tc);
+	tc_port_fixup_legacy_flag(tc, live_status_mask);
+
+	tc->mode = hpd_mask_to_target_mode(tc, live_status_mask);
 
 	connected = tc->phy_ops->connect(tc, required_lanes);
 	if (!connected && tc->mode != default_tc_mode(tc)) {
-- 
2.37.1

