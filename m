Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2914E5070DC
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Apr 2022 16:43:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73D9310EEDE;
	Tue, 19 Apr 2022 14:43:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED11610EEA8
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Apr 2022 14:43:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650379397; x=1681915397;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=sN1UNNrRgLUZ1LrzjvNbyvW7bJFsedbhRd2JiK1I3tU=;
 b=BYqT0F3Xf+qcmZUqRKRrguo1EdUYxu6F98KjoQu0U7uXuSWyy5kHKQfI
 Saht05WJV3L+VkXDmozPgCAP1LTG4I4rFIpIWlcWvUrS+UcI+SPsAaUH9
 KuL5fYsVqJ0LPbdHot3CXhZnlBa07GFDPTU7kBXtTkYhdnJ8OFFomohKq
 g3XGR9ZtFLckTW0PUckUOy3Rd+FP5bLlgviClqC9/3KnJ7wR/muHK7GAX
 QqCsxdD5K4JFz+hZ7OTDn1Y+d7Q7zcN3z7tWodyPaQiAxaGRsSIzuAt49
 3cscPxpW5gSf1PgnPQbWN3oSek73lRsfL/AmS84MJ14BjghjrdvzmM6sI A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10322"; a="324223077"
X-IronPort-AV: E=Sophos;i="5.90,272,1643702400"; d="scan'208";a="324223077"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2022 07:43:17 -0700
X-IronPort-AV: E=Sophos;i="5.90,272,1643702400"; d="scan'208";a="657661298"
Received: from josouza-mobl2.fso.intel.com ([10.230.18.139])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2022 07:43:16 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 19 Apr 2022 07:44:53 -0700
Message-Id: <20220419144454.173973-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/dg2: Add workaround 18019627453
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

A new DG2 workaround added to some corner cases hangs.

BSpec: 54077
BSpec: 68173
BSpec: 71488
Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 1 +
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 3 +++
 2 files changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index 0a5c2648aaf07..10db058d9038c 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -368,6 +368,7 @@
 #define   GEN9_FACTOR_IN_CLR_VAL_HIZ		(1 << 9)
 
 #define VFLSKPD					_MMIO(0x62a8)
+#define   VF_PREFETCH_TLB_DIS			REG_BIT(5)
 #define   DIS_OVER_FETCH_CACHE			REG_BIT(1)
 #define   DIS_MULT_MISS_RD_SQUASH		REG_BIT(0)
 
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 29c8cd0a81b6f..a1ba775bcb705 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -688,6 +688,9 @@ static void dg2_ctx_workarounds_init(struct intel_engine_cs *engine,
 	if (IS_DG2_GRAPHICS_STEP(engine->i915, G10, STEP_B0, STEP_FOREVER) ||
 		IS_DG2_G11(engine->i915) || IS_DG2_G12(engine->i915))
 		wa_masked_field_set(wal, VF_PREEMPTION, PREEMPTION_VERTEX_COUNT, 0x4000);
+
+	/* Wa_18019627453:dg2 */
+	wa_masked_en(wal, VFLSKPD, VF_PREFETCH_TLB_DIS);
 }
 
 static void fakewa_disable_nestedbb_mode(struct intel_engine_cs *engine,
-- 
2.35.3

