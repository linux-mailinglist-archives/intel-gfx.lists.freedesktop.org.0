Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6B84674891
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Jan 2023 02:07:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C25E10E0DA;
	Fri, 20 Jan 2023 01:07:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1EF6710E0DA
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Jan 2023 01:07:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674176852; x=1705712852;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=K8D+T/KOTqU8wIvdSZktqJk62enz/aBTPEwjN4GIhdE=;
 b=B8a1bhHpQDVKKIguQRsm4RJrgxuSmCTd6qWXT97JDhZfjIkuZKsvn6ye
 HdfAb22gJJkMd0b+cYDAi1ad8uf8RKRuWnf84ZqlPEYAac4qGxkdCfdsU
 8eQtSLIxK3SrZdvxw9BhrXMB5W6dFxlelL7wp1c1Znp0Q86DONxL8QFf9
 1/pEMhHeDSgPEw4INO2Zt/uk6Z7WqbAYVBbLv8cGS4wlyE5pwZOdPEs52
 +PilpHM9CYWB9oxgsXkpGmRykqtXEf8/mxsGNBwSBDegUzsGWLlbxfNYQ
 eeP0HIzPEBudGbphFsMivQje2wCei5iFjV/NULuRVGWQU0OwO8eDnDB6v w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="324161366"
X-IronPort-AV: E=Sophos;i="5.97,230,1669104000"; d="scan'208";a="324161366"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2023 17:07:31 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="637976679"
X-IronPort-AV: E=Sophos;i="5.97,230,1669104000"; d="scan'208";a="637976679"
Received: from invictus.jf.intel.com ([10.165.21.134])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2023 17:07:31 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 19 Jan 2023 17:06:38 -0800
Message-Id: <20230120010639.3691331-1-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/mtl: Add workarounds
 Wa_14017066071, Wa_14017654203
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

This patch add the workaround to disable Sampler-OOO to avoid hang
during a benchmark.

Original Author: Madhumitha Tolakanhalli Pradeep
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 1 +
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 7 +++++++
 2 files changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index 4a4bab261e66..27b06ff380a9 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -1145,6 +1145,7 @@
 #define   ENABLE_SMALLPL			REG_BIT(15)
 #define   SC_DISABLE_POWER_OPTIMIZATION_EBB	REG_BIT(9)
 #define   GEN11_SAMPLER_ENABLE_HEADLESS_MSG	REG_BIT(5)
+#define   MTL_DISABLE_SAMPLER_SC_OOO		REG_BIT(3)
 
 #define GEN9_HALF_SLICE_CHICKEN7		MCR_REG(0xe194)
 #define   DG2_DISABLE_ROUND_ENABLE_ALLOW_FOR_SSLA	REG_BIT(15)
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 918a271447e2..c52c5f9ad9ce 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -2332,6 +2332,13 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 		/* Wa_22014600077 */
 		wa_mcr_masked_en(wal, GEN10_CACHE_MODE_SS,
 				 ENABLE_EU_COUNT_FOR_TDL_FLUSH);
+
+		/*
+		 * Wa_14017066071: mtl-p/m[a0]
+		 * Wa_14017654203: mtl-p/m[a0]
+		 */
+		wa_mcr_masked_en(wal, GEN10_SAMPLER_MODE,
+				 MTL_DISABLE_SAMPLER_SC_OOO);
 	}
 
 	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
-- 
2.34.1

