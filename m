Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A71F675982
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Jan 2023 17:07:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F12D10EAA5;
	Fri, 20 Jan 2023 16:07:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 496DF10EAA5
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Jan 2023 16:07:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674230834; x=1705766834;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=hFfjmKpSBUPJWxblRRX/wHdWNKZ03u8kMUzPOc2z8KY=;
 b=H0ux0t/IpaM4xtfA07pqeh4sRPQAg1WsTd41tES30M+UCrJ+QMOda4yJ
 JyT84KvAP8obQTjo3DRpAj6MTHcT5PV5Qz3s7PvT1h5BcO+2N+uIRap7Z
 0EeAK8JaC+tFrgcdrSgzlxPSXrsfaw+GRWW/m1mjktv2tEVeGtDrwDqad
 LOEFHaMDe4ZrAhmrkb0+jl8c7L4YuwjEFDJLpgxhjfOr1wN9pJ8DsGN/F
 7ZY3HOwl9fgD6+oZjQboweV2xk0xo4F0Rc6d+9VX9Nt+1thHwp38+PKRZ
 ncJyZleLEsaj9ooaIds5W+lmsTtmFdYHwUHhKGw9dt88SKhIVSNIO2Y6B w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10596"; a="305976585"
X-IronPort-AV: E=Sophos;i="5.97,232,1669104000"; d="scan'208";a="305976585"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2023 08:06:56 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10596"; a="662585802"
X-IronPort-AV: E=Sophos;i="5.97,232,1669104000"; d="scan'208";a="662585802"
Received: from wbadr-mobl.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.209.157.178])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2023 08:06:55 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 20 Jan 2023 13:06:15 -0300
Message-Id: <20230120160615.80554-1-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Convert PSS_MODE2 to multicast
 register
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

That register became a multicast register as of Xe_HP and it is
currently used only for DG2. Use a proper prefix since there could be
usage of the same register for previous platforms in the future, which
would require a different definition (i.e. using _MMIO).

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Matthew Atwood <matthew.s.atwood@intel.com>
Fixes: 468a4e630c7d ("drm/i915/dg2: Introduce Wa_18018764978")
---
 drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 2 +-
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index 4a4bab261e66..2727645864db 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -464,7 +464,7 @@
 #define GEN8_L3CNTLREG				_MMIO(0x7034)
 #define   GEN8_ERRDETBCTRL			(1 << 9)
 
-#define PSS_MODE2				_MMIO(0x703c)
+#define XEHP_PSS_MODE2				MCR_REG(0x703c)
 #define   SCOREBOARD_STALL_FLUSH_CONTROL	REG_BIT(5)
 
 #define GEN7_SC_INSTDONE			_MMIO(0x7100)
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 918a271447e2..4efc1a532982 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -793,7 +793,7 @@ static void dg2_ctx_workarounds_init(struct intel_engine_cs *engine,
 	/* Wa_18018764978:dg2 */
 	if (IS_DG2_GRAPHICS_STEP(engine->i915, G10, STEP_C0, STEP_FOREVER) ||
 	    IS_DG2_G11(engine->i915) || IS_DG2_G12(engine->i915))
-		wa_masked_en(wal, PSS_MODE2, SCOREBOARD_STALL_FLUSH_CONTROL);
+		wa_mcr_masked_en(wal, XEHP_PSS_MODE2, SCOREBOARD_STALL_FLUSH_CONTROL);
 
 	/* Wa_15010599737:dg2 */
 	wa_mcr_masked_en(wal, CHICKEN_RASTER_1, DIS_SF_ROUND_NEAREST_EVEN);
@@ -821,7 +821,7 @@ static void mtl_ctx_workarounds_init(struct intel_engine_cs *engine,
 		wa_mcr_masked_en(wal, VFLSKPD, VF_PREFETCH_TLB_DIS);
 
 		/* Wa_18018764978 */
-		wa_masked_en(wal, PSS_MODE2, SCOREBOARD_STALL_FLUSH_CONTROL);
+		wa_mcr_masked_en(wal, XEHP_PSS_MODE2, SCOREBOARD_STALL_FLUSH_CONTROL);
 	}
 
 	/* Wa_18019271663 */
-- 
2.39.0

