Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD8F565ED2C
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Jan 2023 14:37:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65D2710E0C3;
	Thu,  5 Jan 2023 13:37:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4050F10E0C3
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Jan 2023 13:37:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672925859; x=1704461859;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=RI3ngHDWAFRqq4ViukwbRkC/pfG8/dC7e8VeqBzKwvE=;
 b=C/4/AqQ9lmu4XVfq3xBf/IMv3oZYyi5GdDQnRU27oNuLNmGV3BG8rGQO
 jMeICpYkK53Eb4kCCbVrz4OuuZveSf87E3Jh8qwjKnR55asrXWQMuH1mm
 55OTMnduXsg9vQJ7cAhM9DAntmQw7YGQQUFUyQ+A+v+O3jcNDtN7sDWC7
 PXH1n99M6S4f9Z/0XYqjMcMizJ2u3XGJtWU0abSkjwHdpzxOnVVMYaZVz
 8UZNEpTzhYMSbEhZzh9r2oR7hgGWSkSYE572zHaPLVuwz/y8GGG8MF0uh
 RfFKeLsgrDca30PBbB9F5RQ9DirMZPljbJbUbqiXbpOKqtcmcreXKH9vF Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="386636175"
X-IronPort-AV: E=Sophos;i="5.96,303,1665471600"; d="scan'208";a="386636175"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2023 05:37:38 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="724057877"
X-IronPort-AV: E=Sophos;i="5.96,303,1665471600"; d="scan'208";a="724057877"
Received: from aberglun-mobl.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.212.45.127])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2023 05:37:37 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  5 Jan 2023 10:37:01 -0300
Message-Id: <20230105133701.19556-1-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Cover rest of SVG unit MCR
 registers
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

CHICKEN_RASTER_{1,2} got overlooked with the move done in a9e69428b1b4
("drm/i915: Define MCR registers explicitly"). Registers from the SVG
unit became multicast as of Xe_HP graphics.

BSpec: 66534
Fixes: a9e69428b1b4 ("drm/i915: Define MCR registers explicitly").
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 4 ++--
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index f8eb807b56f9..570699548c77 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -407,10 +407,10 @@
 #define GEN9_WM_CHICKEN3			_MMIO(0x5588)
 #define   GEN9_FACTOR_IN_CLR_VAL_HIZ		(1 << 9)
 
-#define CHICKEN_RASTER_1			_MMIO(0x6204)
+#define CHICKEN_RASTER_1			MCR_REG(0x6204)
 #define   DIS_SF_ROUND_NEAREST_EVEN		REG_BIT(8)
 
-#define CHICKEN_RASTER_2			_MMIO(0x6208)
+#define CHICKEN_RASTER_2			MCR_REG(0x6208)
 #define   TBIMR_FAST_CLIP			REG_BIT(5)
 
 #define VFLSKPD					MCR_REG(0x62a8)
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index bf84efb3f15f..9a40aa61e86e 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -645,7 +645,7 @@ static void icl_ctx_workarounds_init(struct intel_engine_cs *engine,
 static void dg2_ctx_gt_tuning_init(struct intel_engine_cs *engine,
 				   struct i915_wa_list *wal)
 {
-	wa_masked_en(wal, CHICKEN_RASTER_2, TBIMR_FAST_CLIP);
+	wa_mcr_masked_en(wal, CHICKEN_RASTER_2, TBIMR_FAST_CLIP);
 	wa_mcr_write_clr_set(wal, XEHP_L3SQCREG5, L3_PWM_TIMER_INIT_VAL_MASK,
 			     REG_FIELD_PREP(L3_PWM_TIMER_INIT_VAL_MASK, 0x7f));
 	wa_mcr_add(wal,
@@ -780,7 +780,7 @@ static void dg2_ctx_workarounds_init(struct intel_engine_cs *engine,
 		wa_masked_en(wal, PSS_MODE2, SCOREBOARD_STALL_FLUSH_CONTROL);
 
 	/* Wa_15010599737:dg2 */
-	wa_masked_en(wal, CHICKEN_RASTER_1, DIS_SF_ROUND_NEAREST_EVEN);
+	wa_mcr_masked_en(wal, CHICKEN_RASTER_1, DIS_SF_ROUND_NEAREST_EVEN);
 
 	/* Wa_18019271663:dg2 */
 	wa_masked_en(wal, CACHE_MODE_1, MSAA_OPTIMIZATION_REDUC_DISABLE);
-- 
2.39.0

