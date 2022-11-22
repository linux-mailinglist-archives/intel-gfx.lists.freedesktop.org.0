Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4165E6343B1
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Nov 2022 19:33:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72E9810E439;
	Tue, 22 Nov 2022 18:33:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6AF0710E439
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Nov 2022 18:33:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669141989; x=1700677989;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=c8URwPzEK0cxGItvk5mfJ2NxAU8WSiPFfGLVFqWmtSs=;
 b=eNwgabkukTvljIg15ya8WAqQJ5hfShJaW0qlFpLWwuotEO8CQ75xJ74K
 OCZ+Uig09mKEhWdy9zDHJHP3TfhnVm5I06FF2gLoc5CdusNNSFQmcUgnj
 NzpsSxpB9w6CyOpmxL/DOJww0NeHB0Ebf7Tyl6zT/3wNDWRQTnGDZwy3R
 bxEOoYQriaqX+CHBHfoz75sdvQsnriqLERxZsNpe1D77g8sIkn0bMs1hw
 dUSiV1BYkKMKOLPAftAOppJA9fzdgScYLlAv4q47Mve/XSZ1cNP7Fr7lg
 lMJZiJ7GhNmodu9qqIgkhiIzWcpb/MkggsCEADdf2FNX5jTZxb/vqZjUJ w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10539"; a="378144166"
X-IronPort-AV: E=Sophos;i="5.96,184,1665471600"; d="scan'208";a="378144166"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2022 10:33:08 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10539"; a="592236066"
X-IronPort-AV: E=Sophos;i="5.96,184,1665471600"; d="scan'208";a="592236066"
Received: from msatwood-mobl.jf.intel.com ([10.24.12.71])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2022 10:33:08 -0800
From: Matt Atwood <matthew.s.atwood@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Nov 2022 10:33:05 -0800
Message-Id: <20221122183306.140921-1-matthew.s.atwood@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 1/2] drm/i915/dg2: Introduce Wa_18018764978
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

Wa_18018764978 applies to specific steppings of DG2 (G10 C0+,
G11 and G12 A0+). Clean up style in function at the same time.

Bspec: 66622

Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 3 +++
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 9 +++++++--
 2 files changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index 80a979e6f6bec..74379d3c5a4de 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -457,6 +457,9 @@
 #define GEN8_L3CNTLREG				_MMIO(0x7034)
 #define   GEN8_ERRDETBCTRL			(1 << 9)
 
+#define PSS_MODE2				_MMIO(0x703c)
+#define   SCOREBOARD_STALL_FLUSH_CONTROL	REG_BIT(5)
+
 #define GEN7_SC_INSTDONE			_MMIO(0x7100)
 #define GEN12_SC_INSTDONE_EXTRA			_MMIO(0x7104)
 #define GEN12_SC_INSTDONE_EXTRA2		_MMIO(0x7108)
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 2afb4f80a954d..ce2be9470c36c 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -771,8 +771,13 @@ static void dg2_ctx_workarounds_init(struct intel_engine_cs *engine,
 
 	/* Wa_14014947963:dg2 */
 	if (IS_DG2_GRAPHICS_STEP(engine->i915, G10, STEP_B0, STEP_FOREVER) ||
-		IS_DG2_G11(engine->i915) || IS_DG2_G12(engine->i915))
-		wa_masked_field_set(wal, VF_PREEMPTION, PREEMPTION_VERTEX_COUNT, 0x4000);
+				 IS_DG2_G11(engine->i915) || IS_DG2_G12(engine->i915))
+				 wa_masked_field_set(wal, VF_PREEMPTION, PREEMPTION_VERTEX_COUNT, 0x4000);
+
+	/* Wa_18018764978:dg2 */
+	if (IS_DG2_GRAPHICS_STEP(engine->i915, G10, STEP_C0, STEP_FOREVER) ||
+				 IS_DG2_G11(engine->i915) || IS_DG2_G12(engine->i915))
+				 wa_masked_en(wal, PSS_MODE2, SCOREBOARD_STALL_FLUSH_CONTROL);
 
 	/* Wa_15010599737:dg2 */
 	wa_masked_en(wal, CHICKEN_RASTER_1, DIS_SF_ROUND_NEAREST_EVEN);
-- 
2.38.1

