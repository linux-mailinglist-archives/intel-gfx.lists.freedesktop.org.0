Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BCC5D69EF69
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Feb 2023 08:35:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6DE710E422;
	Wed, 22 Feb 2023 07:35:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67CC210E423
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Feb 2023 07:35:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677051351; x=1708587351;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=7wltgscylboCMdAUWEPEsQ8O/2J7NdhP7QEV0lxCU/E=;
 b=nFoX9N9UW95Q0mOdVJd1kXZM4z2Sz+fecs2LVlST0rRIChjiRUXNAy9f
 IiHMEUeWSP4IXp1PBWYEkNFruCVmUMlJylHYBSGrtC1VTOOeP5j2HPKib
 kJpetxCKc0mgFUDYeCi7VAaTXVZFrnCjZzrZbuFJgoV2Vnj5UTLjBpSDB
 ceDOrunSd2Ovw3U4+I9LF4H5AIBgJ22e/NM87oqJHo4I/8uEedLkfST2R
 Qc26J4afr2mUmJE9xUwSvM3punq4dXQddbFDPgE4Q1mu+2rB+ngRjByiQ
 b90J80LzRpwvuvEcHh7ktNnUkdSQ1intwQ3ALsLjxjsXIdVyS3KsiLQ53 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="397544103"
X-IronPort-AV: E=Sophos;i="5.97,318,1669104000"; d="scan'208";a="397544103"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2023 23:35:50 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="795811227"
X-IronPort-AV: E=Sophos;i="5.97,318,1669104000"; d="scan'208";a="795811227"
Received: from invictus.jf.intel.com ([10.165.21.134])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2023 23:35:50 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 21 Feb 2023 23:34:59 -0800
Message-Id: <20230222073507.788705-2-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230222073507.788705-1-radhakrishna.sripada@intel.com>
References: <20230222073507.788705-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/9] drm/i915/mtl: Fix Wa_14015855405
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

The commit 2357f2b271ad ("drm/i915/mtl: Initial display workarounds")
extended the workaround Wa_16015201720 to MTL. However the registers
that the original WA implemented moved for MTL.

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
index f70ada2357dc..0e478ede66e0 100644
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
@@ -413,6 +410,34 @@ static void pipedmc_clock_gating_wa(struct drm_i915_private *i915, bool enable)
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

