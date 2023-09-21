Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B81B7A917B
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Sep 2023 06:27:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CE8110E462;
	Thu, 21 Sep 2023 04:27:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A229710E462
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Sep 2023 04:27:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695270465; x=1726806465;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=8yiwATUKkpcOJ2cjXuN+YnBApv+sWYqQ8b0T8SOi52A=;
 b=expl9TU0Fj40dA/YVJT3uO1S0fJcSbE5bQfTuzoZm9iycYaiJSLey0Ve
 CDeBIBxIcshuGVNBKmLbnj2Ah8Bh5m6KC6e5m+DLUoGIUFvIiMO16MzcT
 5q4tkwOfba7MBgwQkmLX1cLT9aD+yjFdhNiCTwnxmbqZtDfg4pR4qeCva
 q2ElWa1kqvkEc8i1j5bI798CVWjsV47oiYdQvxnziV31MYNzZvRgKSIN9
 qG3qUXO99B/4/NDvtxYM7HFLdzxICNwRXxmGeUpcEI0d7gacRIrIFjFDN
 P6V0g7OwiqG4OWVBgSuNX/D+MZx7lxdqfVrC2gw8WkOHQ7goZ0OhIFUGB w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="384258123"
X-IronPort-AV: E=Sophos;i="6.03,164,1694761200"; d="scan'208";a="384258123"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2023 21:27:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="740470354"
X-IronPort-AV: E=Sophos;i="6.03,164,1694761200"; d="scan'208";a="740470354"
Received: from shekharc-desk.iind.intel.com ([10.190.239.54])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2023 21:27:43 -0700
From: Shekhar Chauhan <shekhar.chauhan@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 21 Sep 2023 09:57:27 +0530
Message-Id: <20230921042727.362710-1-shekhar.chauhan@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Add Wa_18028616096
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

Drop UGM per set fragment threshold to 3

BSpec: 54833
Signed-off-by: Shekhar Chauhan <shekhar.chauhan@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 1 +
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 3 +++
 2 files changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index a00ff51c681d..326224abe395 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -1230,6 +1230,7 @@
 #define   DISABLE_D8_D16_COASLESCE		REG_BIT(30)
 #define   FORCE_1_SUB_MESSAGE_PER_FRAGMENT	REG_BIT(15)
 #define LSC_CHICKEN_BIT_0_UDW			MCR_REG(0xe7c8 + 4)
+#define   UGM_FRAGMENT_THRESHOLD_TO_3		MCR_REG(58 - 32)
 #define   DIS_CHAIN_2XSIMD8			REG_BIT(55 - 32)
 #define   FORCE_SLM_FENCE_SCOPE_TO_TILE		REG_BIT(42 - 32)
 #define   FORCE_UGM_FENCE_SCOPE_TO_TILE		REG_BIT(41 - 32)
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 660d4f358eab..992041e3776c 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -2914,6 +2914,9 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
 		 * Wa_22015475538:dg2
 		 */
 		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0_UDW, DIS_CHAIN_2XSIMD8);
+
+		/* Wa_18028616096:dg2 */
+		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0_UDW, UGM_FRAGMENT_THRESHOLD_TO_3);
 	}
 
 	if (IS_DG2_G11(i915)) {
-- 
2.34.1

