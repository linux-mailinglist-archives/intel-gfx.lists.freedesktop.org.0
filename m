Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 32945666745
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jan 2023 00:56:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA68810E176;
	Wed, 11 Jan 2023 23:56:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 891C910E170
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Jan 2023 23:56:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673481375; x=1705017375;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0FEhvZ6H4P/KJn4azfOTcreWoiM4JWXcv6Iu4OptvLU=;
 b=KG3v1QDnreYgvVARNf9CtbPyD29TOJTgR+VLEl+vNBM73mQbpc7X25Iq
 Qmudk+aMVcxzGDgokagr1g55ZUgviq7aGhmnkErkWfMa8vYCEE1+7E0hK
 ZegSV0gcD7qZcDGq59dMPagAAkCnKPUsLsMAHWngP+8V6CGgH9bNolIbj
 AO/beD+3h6vWTWn2r6UmKfBjmh8YOcYzI26tg23bej0gZxKBdvexogcx+
 mSJR/y+hySDHvP5IR1kY8gGwLrr4aHQVPyM8iuL1kC7jhvjf3lp4sZ0xe
 6KYORU1B/3LqviGA/Yli79F2w6Z1+Q8KrDzfTB8HEbE0yggJUY0CZ7qY6 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="307090894"
X-IronPort-AV: E=Sophos;i="5.96,318,1665471600"; d="scan'208";a="307090894"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2023 15:56:14 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="831486372"
X-IronPort-AV: E=Sophos;i="5.96,318,1665471600"; d="scan'208";a="831486372"
Received: from invictus.jf.intel.com ([10.165.21.134])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2023 15:56:14 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Jan 2023 15:55:25 -0800
Message-Id: <20230111235531.3353815-4-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230111235531.3353815-1-radhakrishna.sripada@intel.com>
References: <20230111235531.3353815-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH dii-client 3/9] drm/i915/mtl: Fix Wa_14015855405
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The patch "2357f2b271ad drm/i915/mtl: Initial display workarounds"
extended the workaround Wa_16015201720 to MTL. However the registers
that the original WA implamented moved for MTL.

Implement the workaround with the correct register.

Fixes: 2357f2b271ad ("drm/i915/mtl: Initial display workarounds")
Cc: Matt Atwood <matthew.s.atwood@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 35 ++++++++++++++++++++----
 drivers/gpu/drm/i915/i915_reg.h          | 10 +++++--
 2 files changed, 37 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 4124b3d37110..216915256eb6 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -372,15 +372,12 @@ static void disable_all_event_handlers(struct drm_i915_private *i915)
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
@@ -396,6 +393,34 @@ static void pipedmc_clock_gating_wa(struct drm_i915_private *i915, bool enable)
 				     PIPEDMC_GATING_DIS, 0);
 }
 
+static void mtl_pipedmc_clock_gating_wa(struct drm_i915_private *i915, bool enable)
+{
+	/*
+	 * Wa_14015855405
+	 * The WA requires clock gating to be disabled all the time
+	 * for pipe A and B.
+	 * For pipe C and D clock gating needs to be disabled only
+	 * during initializing the firmware.
+	 * TODO/FIXME: WA deviates wrt. enable/disable for Pipes C, D. Needs recheck.
+	 * For now carry-forward the implementation for dg2.
+	 */
+	if (enable)
+		intel_de_rmw(i915, GEN9_CLKGATE_DIS_0, 0,
+			     MTL_PIPEDMC_GATING_DIS_A | MTL_PIPEDMC_GATING_DIS_B |
+			     MTL_PIPEDMC_GATING_DIS_C | MTL_PIPEDMC_GATING_DIS_D);
+	else
+		intel_de_rmw(i915, GEN9_CLKGATE_DIS_0,
+			     MTL_PIPEDMC_GATING_DIS_C | MTL_PIPEDMC_GATING_DIS_D, 0);
+}
+
+static void pipedmc_clock_gating_wa(struct drm_i915_private *i915, bool enable)
+{
+	if (DISPLAY_VER(i915) >= 14)
+		return mtl_pipedmc_clock_gating_wa(i915, enable);
+	else if (DISPLAY_VER(i915) == 13)
+		return adlp_pipedmc_clock_gating_wa(i915, enable);
+}
+
 /**
  * intel_dmc_load_program() - write the firmware from memory to register.
  * @dev_priv: i915 drm device.
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 8b2cf980f323..d43f0f8e061c 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1786,9 +1786,13 @@
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

