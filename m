Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 37FCF52A9CE
	for <lists+intel-gfx@lfdr.de>; Tue, 17 May 2022 20:02:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 692E7113723;
	Tue, 17 May 2022 18:02:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05F41113723
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 May 2022 18:02:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652810528; x=1684346528;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=3dncbPsZ28fkJrADlAvmiunZSUKiAli7QvG7xJLcTGM=;
 b=ZavmVEM+O5H/ku/cu+K16fVQo+307L7j+ie4xqGF0sO+BJV/CQk61fV+
 SvwGr7ijGgJ1nnbeAW3CItfGs3V5jmp55xMV147EDIPhHwYWPFoiG4whX
 WWEB26hUGdzQENLeRYBfnJwIvIdgfvUvD9FWwQ9H+A6mMxQeeQzmsOeOR
 G89Tgbb0XpjJGvoMqE9QpK3aAxK3kt62QfU9E30MXORnlZmVV/fqDAFI7
 HsHrEIlPWvUY0AF0qoHbiqm5kDmTdBW0FRpiCokk9swHnBf3TUzmAujhi
 vJHOnJletOL4XXqjrF7E7aEKL4OZUJYQ2oG+8i+3YP+VjQ7UQIp5br1o+ g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10350"; a="270094794"
X-IronPort-AV: E=Sophos;i="5.91,233,1647327600"; d="scan'208";a="270094794"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2022 11:02:07 -0700
X-IronPort-AV: E=Sophos;i="5.91,233,1647327600"; d="scan'208";a="700177806"
Received: from sdhanava-desk2.jf.intel.com ([10.165.21.144])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2022 11:02:06 -0700
From: Swathi Dhanavanthri <swathi.dhanavanthri@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 17 May 2022 11:02:01 -0700
Message-Id: <20220517180201.4096-1-swathi.dhanavanthri@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/dg2: Add workaround 22014600077
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

Bspec: 45810,54077,68173

Signed-off-by: Swathi Dhanavanthri <swathi.dhanavanthri@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 1 +
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 9 +++++++++
 2 files changed, 10 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index 98ede9c93f00..2063c8758934 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -1068,6 +1068,7 @@
 #define   GEN9_ENABLE_GPGPU_PREEMPTION		REG_BIT(2)
 
 #define GEN10_CACHE_MODE_SS			_MMIO(0xe420)
+#define   ENABLE_EU_COUNT_FOR_TDL_FLUSH	        REG_BIT(10)
 #define   ENABLE_PREFETCH_INTO_IC		REG_BIT(3)
 #define   FLOAT_BLEND_OPTIMIZATION_ENABLE	REG_BIT(4)
 
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 756807c4b405..c647a9e48389 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -2178,6 +2178,15 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 		wa_write_or(wal, GEN12_MERT_MOD_CTRL, FORCE_MISS_FTLB);
 	}
 
+	if (IS_DG2_GRAPHICS_STEP(i915, G11, STEP_B0, STEP_FOREVER) ||
+	    IS_DG2_G10(i915)) {
+		/* Wa_22014600077:dg2 */
+		wa_add(wal, GEN10_CACHE_MODE_SS, 0,
+		       _MASKED_BIT_ENABLE(ENABLE_EU_COUNT_FOR_TDL_FLUSH),
+		       0 /* write-only, so skip validation */,
+		       true);
+	}
+
 	if (IS_DG1_GRAPHICS_STEP(i915, STEP_A0, STEP_B0) ||
 	    IS_TGL_UY_GRAPHICS_STEP(i915, STEP_A0, STEP_B0)) {
 		/*
-- 
2.20.1

