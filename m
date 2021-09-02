Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF40D3FF3B2
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Sep 2021 21:00:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AE6D6E7EC;
	Thu,  2 Sep 2021 19:00:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F30736E7EF
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Sep 2021 19:00:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10095"; a="217357030"
X-IronPort-AV: E=Sophos;i="5.85,262,1624345200"; d="scan'208";a="217357030"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2021 11:59:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,262,1624345200"; d="scan'208";a="689262658"
Received: from ayazahma-nuc8i7beh.iind.intel.com ([10.145.162.59])
 by fmsmga006.fm.intel.com with ESMTP; 02 Sep 2021 11:59:50 -0700
From: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>
Date: Fri,  3 Sep 2021 00:26:31 +0530
Message-Id: <20210902185635.290538-3-ayaz.siddiqui@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210902185635.290538-1-ayaz.siddiqui@intel.com>
References: <20210902185635.290538-1-ayaz.siddiqui@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH V4 2/6] drm/i915/gt: Set CMD_CCTL to UC for
 Gen12 Onward
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

Cache-control registers for Command Stream(CMD_CCTL) are used
to set catchability for memory writes and reads outputted by
Command Streamers on Gen12 onward platforms.

These registers need to point un-cached(UC) MOCS index.

Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 26 +++++++++++++++++++++
 drivers/gpu/drm/i915/i915_reg.h             | 17 ++++++++++++++
 2 files changed, 43 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 94e1937f8d296..38c66765ff94c 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1640,6 +1640,30 @@ void intel_engine_apply_whitelist(struct intel_engine_cs *engine)
 				   i915_mmio_reg_offset(RING_NOPID(base)));
 }
 
+/*
+ * engine_fake_wa_init(), a place holder to program the registers
+ * which are not part of a workaround.
+ * Adding programming of those register inside workaround will
+ * allow utilizing wa framework to proper application and verification.
+ */
+static void
+engine_fake_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
+{
+	u8 mocs;
+
+	if (GRAPHICS_VER(engine->i915) >= 12) {
+	/*
+	 * RING_CMD_CCTL are need to be programed to un-cached
+	 * for memory writes and reads outputted by Command
+	 * Streamers on Gen12 onward platforms.
+	 */
+		mocs = engine->gt->mocs.uc_index;
+		wa_masked_field_set(wal,
+				    RING_CMD_CCTL(engine->mmio_base),
+				    CMD_CCTL_MOCS_MASK,
+				    CMD_CCTL_MOCS_OVERRIDE(mocs, mocs));
+	}
+}
 static void
 rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 {
@@ -2080,6 +2104,8 @@ engine_init_workarounds(struct intel_engine_cs *engine, struct i915_wa_list *wal
 	if (I915_SELFTEST_ONLY(GRAPHICS_VER(engine->i915) < 4))
 		return;
 
+	engine_fake_wa_init(engine, wal);
+
 	if (engine->class == RENDER_CLASS)
 		rcs_engine_wa_init(engine, wal);
 	else
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 8d4cf1e203ab7..92fda75751eef 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2551,6 +2551,23 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define RING_HWS_PGA(base)	_MMIO((base) + 0x80)
 #define RING_ID(base)		_MMIO((base) + 0x8c)
 #define RING_HWS_PGA_GEN6(base)	_MMIO((base) + 0x2080)
+
+#define RING_CMD_CCTL(base)	_MMIO((base) + 0xc4)
+/*
+ * CMD_CCTL read/write fields take a MOCS value and _not_ a table index.
+ * The lsb of each can be considered a separate enabling bit for encryption.
+ * 6:0 == default MOCS value for reads  =>  6:1 == table index for reads.
+ * 13:7 == default MOCS value for writes => 13:8 == table index for writes.
+ * 15:14 == Reserved => 31:30 are set to 0.
+ */
+#define CMD_CCTL_WRITE_OVERRIDE_MASK REG_GENMASK(13, 7)
+#define CMD_CCTL_READ_OVERRIDE_MASK REG_GENMASK(6, 0)
+#define CMD_CCTL_MOCS_MASK (CMD_CCTL_WRITE_OVERRIDE_MASK | \
+			    CMD_CCTL_READ_OVERRIDE_MASK)
+#define CMD_CCTL_MOCS_OVERRIDE(write, read)				      \
+		(REG_FIELD_PREP(CMD_CCTL_WRITE_OVERRIDE_MASK, (write) << 1) | \
+		 REG_FIELD_PREP(CMD_CCTL_READ_OVERRIDE_MASK, (read) << 1))
+
 #define RING_RESET_CTL(base)	_MMIO((base) + 0xd0)
 #define   RESET_CTL_CAT_ERROR	   REG_BIT(2)
 #define   RESET_CTL_READY_TO_RESET REG_BIT(1)
-- 
2.26.2

