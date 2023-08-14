Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C11E277BC47
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Aug 2023 17:02:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0F8B10E052;
	Mon, 14 Aug 2023 15:02:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 188FA10E052
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Aug 2023 15:02:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692025356; x=1723561356;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=yFrAWUkoVXiXglqdZCT/QFp+/e8jbLipToabP4gpqNk=;
 b=f9bVrO30eZOgznpkTwsFWfczGVA8wSQTEgUb0be4NShfH2YMlr/6viSv
 7YDCJV0MOOQXh9Uxb0nOqFNe9Fu0lLlqORW9yLHwqkrHbD6fCwaCXftUR
 Se4NVAAEn6awEf8trBbzr1A3Aytafx6MOzw3WfjHWp4HlVsWawEjV2pkm
 VpdsOS2ZP7O9gi5ufoJ3+OAqW/tVEtxCGLWWVxdvKT0oO9FPP9h90IPKK
 Umsvv+3nG989LSFi0vN5pEAv3QZgrUNoiWymxc54hOyqaYodOyyCYzcHy
 wAAHYK8aeMUD61bFYAfYgKBFVmt0iZFzO/X8PvbT13PLX3/wph4VejKnN Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10802"; a="374832284"
X-IronPort-AV: E=Sophos;i="6.01,172,1684825200"; d="scan'208";a="374832284"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2023 08:02:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10802"; a="847692962"
X-IronPort-AV: E=Sophos;i="6.01,172,1684825200"; d="scan'208";a="847692962"
Received: from shekharc-desk.iind.intel.com ([10.190.239.54])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2023 08:02:30 -0700
From: Shekhar Chauhan <shekhar.chauhan@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Aug 2023 20:32:15 +0530
Message-Id: <20230814150215.873941-1-shekhar.chauhan@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/dg2: Remove Wa_15010599737
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
Cc: matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Since this Wa is specific to DirectX, this is not required on Linux.

Signed-off-by: Shekhar Chauhan <shekhar.chauhan@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 3 ---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 3 ---
 2 files changed, 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index 718cb2c80f79..15b82d37486b 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -412,9 +412,6 @@
 
 #define XEHP_CULLBIT1				MCR_REG(0x6100)
 
-#define CHICKEN_RASTER_1			MCR_REG(0x6204)
-#define   DIS_SF_ROUND_NEAREST_EVEN		REG_BIT(8)
-
 #define CHICKEN_RASTER_2			MCR_REG(0x6208)
 #define   TBIMR_FAST_CLIP			REG_BIT(5)
 
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 01807a7dd2c1..5aa0d3f23c6b 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -805,9 +805,6 @@ static void dg2_ctx_workarounds_init(struct intel_engine_cs *engine,
 	    IS_DG2_G11(engine->i915) || IS_DG2_G12(engine->i915))
 		wa_mcr_masked_en(wal, XEHP_PSS_MODE2, SCOREBOARD_STALL_FLUSH_CONTROL);
 
-	/* Wa_15010599737:dg2 */
-	wa_mcr_masked_en(wal, CHICKEN_RASTER_1, DIS_SF_ROUND_NEAREST_EVEN);
-
 	/* Wa_18019271663:dg2 */
 	wa_masked_en(wal, CACHE_MODE_1, MSAA_OPTIMIZATION_REDUC_DISABLE);
 }
-- 
2.34.1

