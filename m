Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CA056A74CD
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Mar 2023 21:11:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0737110E241;
	Wed,  1 Mar 2023 20:11:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B25A10E241
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Mar 2023 20:11:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677701507; x=1709237507;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oxP7y9nxIsVXhDSJYI88qNHTJ24iNgXRzGb0wlKSQ98=;
 b=d1onNfEAr982ycVoHhq3H0ICpWAfNumexZLbxfHmwf2LHkcRKgOBofUY
 SwROrSAPSuPDVlSpOJp6qPx9Z6qne1R8CTK76leKRGV8WkX3k8I7EJ85Q
 9BfmFLA/LgO6VmCGFFEMcYbb6wwPrMvBTf4X5Hecsn/lR+ZjQl4e+rF+M
 s99XHA8jgVMBIclhUQks5WV6rp0kSqgePuqseP14yBRnyghB7YogLGRUs
 O8AbjfJ4a/e78bEc7qvjna5Z5WpFKM14hvpYdgzxLW3tz6zIZ/Ko/uMWz
 YlDxGfCeJGExNWkIAxMW5i4tvOJ6L0ZXoZtYyBagD56nuujbdAKvybBrE w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10636"; a="314933480"
X-IronPort-AV: E=Sophos;i="5.98,225,1673942400"; d="scan'208";a="314933480"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2023 12:11:46 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10636"; a="674691935"
X-IronPort-AV: E=Sophos;i="5.98,225,1673942400"; d="scan'208";a="674691935"
Received: from invictus.jf.intel.com ([10.165.21.134])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2023 12:11:45 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Mar 2023 12:10:49 -0800
Message-Id: <20230301201053.928709-2-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230301201053.928709-1-radhakrishna.sripada@intel.com>
References: <20230301201053.928709-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 1/5] drm/i915/mtl: Fix Wa_16015201720
 implementation
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The commit 2357f2b271ad ("drm/i915/mtl: Initial display workarounds")
extended the workaround Wa_16015201720 to MTL. However the registers
that the original WA implemented moved for MTL.

Implement the workaround with the correct register.

v3: Skip clock gating for pipe C, D DMC's and fix the title

Fixes: 2357f2b271ad ("drm/i915/mtl: Initial display workarounds")
Cc: Matt Atwood <matthew.s.atwood@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 26 +++++++++++++++++++-----
 drivers/gpu/drm/i915/i915_reg.h          | 10 ++++++---
 2 files changed, 28 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index f70ada2357dc..b4283cf319f2 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -389,15 +389,12 @@ static void disable_all_event_handlers(struct drm_i915_private *i915)
 	}
 }
 
-static void pipedmc_clock_gating_wa(struct drm_i915_private *i915, bool enable)
+static void adlp_pipedmc_clock_gating_wa(struct drm_i915_private *i915, bool enable)
 {
 	enum pipe pipe;
 
-	if (DISPLAY_VER(i915) < 13)
-		return;
-
 	/*
-	 * Wa_16015201720:adl-p,dg2, mtl
+	 * Wa_16015201720:adl-p,dg2
 	 * The WA requires clock gating to be disabled all the time
 	 * for pipe A and B.
 	 * For pipe C and D clock gating needs to be disabled only
@@ -413,6 +410,25 @@ static void pipedmc_clock_gating_wa(struct drm_i915_private *i915, bool enable)
 				     PIPEDMC_GATING_DIS, 0);
 }
 
+static void mtl_pipedmc_clock_gating_wa(struct drm_i915_private *i915)
+{
+	/*
+	 * Wa_16015201720
+	 * The WA requires clock gating to be disabled all the time
+	 * for pipe A and B.
+	 */
+	intel_de_rmw(i915, GEN9_CLKGATE_DIS_0, 0,
+		     MTL_PIPEDMC_GATING_DIS_A | MTL_PIPEDMC_GATING_DIS_B);
+}
+
+static void pipedmc_clock_gating_wa(struct drm_i915_private *i915, bool enable)
+{
+	if (DISPLAY_VER(i915) >= 14 && enable)
+		return mtl_pipedmc_clock_gating_wa(i915);
+	else if (DISPLAY_VER(i915) == 13)
+		return adlp_pipedmc_clock_gating_wa(i915, enable);
+}
+
 void intel_dmc_enable_pipe(struct drm_i915_private *i915, enum pipe pipe)
 {
 	enum intel_dmc_id dmc_id = PIPE_TO_DMC_ID(pipe);
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index c1efa655fb68..7c9ac5b43831 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1794,9 +1794,13 @@
  * GEN9 clock gating regs
  */
 #define GEN9_CLKGATE_DIS_0		_MMIO(0x46530)
-#define   DARBF_GATING_DIS		(1 << 27)
-#define   PWM2_GATING_DIS		(1 << 14)
-#define   PWM1_GATING_DIS		(1 << 13)
+#define   DARBF_GATING_DIS		REG_BIT(27)
+#define   MTL_PIPEDMC_GATING_DIS_A	REG_BIT(15)
+#define   MTL_PIPEDMC_GATING_DIS_B	REG_BIT(14)
+#define   PWM2_GATING_DIS		REG_BIT(14)
+#define   MTL_PIPEDMC_GATING_DIS_C	REG_BIT(13)
+#define   PWM1_GATING_DIS		REG_BIT(13)
+#define   MTL_PIPEDMC_GATING_DIS_D	REG_BIT(12)
 
 #define GEN9_CLKGATE_DIS_3		_MMIO(0x46538)
 #define   TGL_VRH_GATING_DIS		REG_BIT(31)
-- 
2.34.1

