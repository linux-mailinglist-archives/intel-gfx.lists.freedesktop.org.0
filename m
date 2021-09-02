Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E6D33FF3B4
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Sep 2021 21:00:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 071BD6E7F1;
	Thu,  2 Sep 2021 19:00:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 490696E7EF
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Sep 2021 19:00:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10095"; a="217357041"
X-IronPort-AV: E=Sophos;i="5.85,262,1624345200"; d="scan'208";a="217357041"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2021 11:59:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,262,1624345200"; d="scan'208";a="689262664"
Received: from ayazahma-nuc8i7beh.iind.intel.com ([10.145.162.59])
 by fmsmga006.fm.intel.com with ESMTP; 02 Sep 2021 11:59:51 -0700
From: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>
Date: Fri,  3 Sep 2021 00:26:32 +0530
Message-Id: <20210902185635.290538-4-ayaz.siddiqui@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210902185635.290538-1-ayaz.siddiqui@intel.com>
References: <20210902185635.290538-1-ayaz.siddiqui@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH V4 3/6] drm/i915/gt: Set BLIT_CCTL reg to
 un-cached
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

Blitter commands which do not have MOCS fields rely on
cacheability of BlitterCacheControlRegister which was mapped
to index 0 by default.Once we changed the MOCS value of
index 0 to L3 WB, tests like gem_linear_blits started failing
due to a change in cacheability from UC to WB.

Program and place the BlitterCacheControlRegister in
build_aux_regs().

Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 43 ++++++++++++++++++++-
 drivers/gpu/drm/i915/i915_reg.h             |  9 +++++
 2 files changed, 50 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 38c66765ff94c..04fc977ec27fc 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -675,6 +675,41 @@ static void fakewa_disable_nestedbb_mode(struct intel_engine_cs *engine,
 	wa_masked_dis(wal, RING_MI_MODE(engine->mmio_base), TGL_NESTED_BB_EN);
 }
 
+static void gen12_ctx_gt_mocs_init(struct intel_engine_cs *engine,
+				   struct i915_wa_list *wal)
+{
+	u8 mocs;
+
+	if (engine->class == COPY_ENGINE_CLASS) {
+	/*
+	 * Some blitter commands do not have a field for MOCS, those
+	 * commands will use MOCS index pointed by BLIT_CCTL.
+	 * BLIT_CCTL registers are needed to be programmed to un-cached.
+	 */
+		mocs = engine->gt->mocs.uc_index;
+		wa_masked_field_set(wal,
+				    BLIT_CCTL(engine->mmio_base),
+				    BLIT_CCTL_MASK,
+				    BLIT_CCTL_MOCS(mocs, mocs));
+	}
+}
+
+/*
+ * gen12_ctx_gt_fake_wa_init() aren't programming actual workarounds,
+ * but it programming general context registers.
+ * Adding those context register programming in context workaround
+ * allow us to use the wa framework for proper application and validation.
+ */
+static void
+gen12_ctx_gt_fake_wa_init(struct intel_engine_cs *engine,
+			  struct i915_wa_list *wal)
+{
+	if (GRAPHICS_VER_FULL(engine->i915) >= IP_VER(12, 55))
+		fakewa_disable_nestedbb_mode(engine, wal);
+
+	gen12_ctx_gt_mocs_init(engine, wal);
+}
+
 static void
 __intel_engine_init_ctx_wa(struct intel_engine_cs *engine,
 			   struct i915_wa_list *wal,
@@ -685,8 +720,12 @@ __intel_engine_init_ctx_wa(struct intel_engine_cs *engine,
 	wa_init_start(wal, name, engine->name);
 
 	/* Applies to all engines */
-	if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 55))
-		fakewa_disable_nestedbb_mode(engine, wal);
+	/*
+	 * Fake workarounds are not the actual workaround but
+	 * programming of context registers using workaround framework.
+	 */
+	if (GRAPHICS_VER(i915) >= 12)
+		gen12_ctx_gt_fake_wa_init(engine, wal);
 
 	if (engine->class != RENDER_CLASS)
 		goto done;
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 92fda75751eef..99cb9321adac9 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2568,6 +2568,15 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 		(REG_FIELD_PREP(CMD_CCTL_WRITE_OVERRIDE_MASK, (write) << 1) | \
 		 REG_FIELD_PREP(CMD_CCTL_READ_OVERRIDE_MASK, (read) << 1))
 
+#define BLIT_CCTL(base) _MMIO((base) + 0x204)
+#define   BLIT_CCTL_DST_MOCS_MASK       REG_GENMASK(14, 8)
+#define   BLIT_CCTL_SRC_MOCS_MASK       REG_GENMASK(6, 0)
+#define   BLIT_CCTL_MASK (BLIT_CCTL_DST_MOCS_MASK | \
+			  BLIT_CCTL_SRC_MOCS_MASK)
+#define   BLIT_CCTL_MOCS(dst, src)				       \
+		(REG_FIELD_PREP(BLIT_CCTL_DST_MOCS_MASK, (dst) << 1) | \
+		 REG_FIELD_PREP(BLIT_CCTL_SRC_MOCS_MASK, (src) << 1))
+
 #define RING_RESET_CTL(base)	_MMIO((base) + 0xd0)
 #define   RESET_CTL_CAT_ERROR	   REG_BIT(2)
 #define   RESET_CTL_READY_TO_RESET REG_BIT(1)
-- 
2.26.2

