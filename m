Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 136F450304F
	for <lists+intel-gfx@lfdr.de>; Sat, 16 Apr 2022 00:40:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6B8310E607;
	Fri, 15 Apr 2022 22:40:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE92A10E603
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Apr 2022 22:40:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650062429; x=1681598429;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ncFb7KbM8gi7LfZp5Dv+owDT7LXMHN479Rpezi9yzdM=;
 b=gQUmBT0u4UNYjoXI9fBfiKntVQNcbK7cWUyDvbw6Q8iTa4MEa8ehvgtA
 Y8SMhNPk1sdXitRTXLUWDUG9WPZf0L8fwf3GpIsvSt8M0a98Q9oI+Ll8j
 jK1f9U9tSB9rt/eUMB83KzCxZfhwThCnl4rbCqkxXdoojXOzj1iVlgIDH
 +lvjuOvkgXua0psn8699MO9kN+aV1hOStlgZEyJGjPc2KnbvIPJz4y7MP
 okiOiBUcfYZUI0KOzgbqh4BJdIwX+VozogrUQCGHERjRdfPJH7IwVX1Jo
 1opckzL2VW8YyshphhcVwNE1UbEJJeMjErIwEw/xkDrIkFZqvlN3UrM88 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10318"; a="326144495"
X-IronPort-AV: E=Sophos;i="5.90,264,1643702400"; d="scan'208";a="326144495"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2022 15:40:28 -0700
X-IronPort-AV: E=Sophos;i="5.90,264,1643702400"; d="scan'208";a="574563714"
Received: from unerlige-desk.jf.intel.com ([10.165.21.210])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2022 15:40:28 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org, daniele.ceraolospurio@intel.com,
 john.c.harrison@intel.com
Date: Fri, 15 Apr 2022 15:40:21 -0700
Message-Id: <20220415224025.3693037-3-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220415224025.3693037-1-umesh.nerlige.ramappa@intel.com>
References: <20220415224025.3693037-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/6] drm/i915/guc: Enable Wa_22011802037 for
 gen12 GuC based platforms
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

Initiating a reset when the command streamer is not idle or in the
middle of executing an MI_FORCE_WAKE can result in a hang. Multiple
command streamers can be part of a single reset domain, so resetting one
would mean resetting all command streamers in that domain.

To workaround this, before initiating a reset, ensure that all command
streamers within that reset domain are either IDLE or are not executing
a MI_FORCE_WAKE.

Enable GuC PRE_PARSER WA bit so that GuC follows the WA sequence when
initiating engine-resets.

For gt-resets, ensure that i915 applies the WA sequence.

Opens to address in future patches:
- The part of the WA to wait for pending forcewakes is also applicable
  to execlists backend.
- The WA also needs to be applied for gen11

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_pm.c         |  9 +-
 drivers/gpu/drm/i915/gt/intel_gt_regs.h       | 18 ++++
 drivers/gpu/drm/i915/gt/intel_reset.c         |  5 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc.c        |  4 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h   |  3 +-
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 85 ++++++++++++++++++-
 6 files changed, 116 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
index eeead40485fb..f553e2173bda 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
@@ -182,15 +182,16 @@ static void gt_sanitize(struct intel_gt *gt, bool force)
 	if (intel_gt_is_wedged(gt))
 		intel_gt_unset_wedged(gt);
 
-	for_each_engine(engine, gt, id)
+	/* For GuC mode, ensure submission is disabled before stopping ring */
+	intel_uc_reset_prepare(&gt->uc);
+
+	for_each_engine(engine, gt, id) {
 		if (engine->reset.prepare)
 			engine->reset.prepare(engine);
 
-	intel_uc_reset_prepare(&gt->uc);
-
-	for_each_engine(engine, gt, id)
 		if (engine->sanitize)
 			engine->sanitize(engine);
+	}
 
 	if (reset_engines(gt) || force) {
 		for_each_engine(engine, gt, id)
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index 0a5c2648aaf0..12d892851684 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -841,6 +841,24 @@
 #define   CTC_SHIFT_PARAMETER_SHIFT		1
 #define   CTC_SHIFT_PARAMETER_MASK		(0x3 << CTC_SHIFT_PARAMETER_SHIFT)
 
+/* GPM MSG_IDLE */
+#define MSG_IDLE_CS		_MMIO(0x8000)
+#define MSG_IDLE_VCS0		_MMIO(0x8004)
+#define MSG_IDLE_VCS1		_MMIO(0x8008)
+#define MSG_IDLE_BCS		_MMIO(0x800C)
+#define MSG_IDLE_VECS0		_MMIO(0x8010)
+#define MSG_IDLE_VCS2		_MMIO(0x80C0)
+#define MSG_IDLE_VCS3		_MMIO(0x80C4)
+#define MSG_IDLE_VCS4		_MMIO(0x80C8)
+#define MSG_IDLE_VCS5		_MMIO(0x80CC)
+#define MSG_IDLE_VCS6		_MMIO(0x80D0)
+#define MSG_IDLE_VCS7		_MMIO(0x80D4)
+#define MSG_IDLE_VECS1		_MMIO(0x80D8)
+#define MSG_IDLE_VECS2		_MMIO(0x80DC)
+#define MSG_IDLE_VECS3		_MMIO(0x80E0)
+#define  MSG_IDLE_FW_MASK	REG_GENMASK(13, 9)
+#define  MSG_IDLE_FW_SHIFT	9
+
 #define FORCEWAKE_MEDIA_GEN9			_MMIO(0xa270)
 #define FORCEWAKE_RENDER_GEN9			_MMIO(0xa278)
 
diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index f52015e79fdf..5422a3b84bd4 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -772,14 +772,15 @@ static intel_engine_mask_t reset_prepare(struct intel_gt *gt)
 	intel_engine_mask_t awake = 0;
 	enum intel_engine_id id;
 
+	/* For GuC mode, ensure submission is disabled before stopping ring */
+	intel_uc_reset_prepare(&gt->uc);
+
 	for_each_engine(engine, gt, id) {
 		if (intel_engine_pm_get_if_awake(engine))
 			awake |= engine->mask;
 		reset_prepare_engine(engine);
 	}
 
-	intel_uc_reset_prepare(&gt->uc);
-
 	return awake;
 }
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
index cda7e4bb8bac..185fb4d59791 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
@@ -292,6 +292,10 @@ static u32 guc_ctl_wa_flags(struct intel_guc *guc)
 	    GRAPHICS_VER_FULL(gt->i915) < IP_VER(12, 50))
 		flags |= GUC_WA_POLLCS;
 
+	/* Wa_22011802037: graphics version 12 */
+	if (GRAPHICS_VER(gt->i915) == 12)
+		flags |= GUC_WA_PRE_PARSER;
+
 	return flags;
 }
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
index c154b5efccde..b136d6528fbf 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
@@ -98,7 +98,8 @@
 #define   GUC_LOG_BUF_ADDR_SHIFT	12
 
 #define GUC_CTL_WA			1
-#define   GUC_WA_POLLCS                 BIT(18)
+#define   GUC_WA_PRE_PARSER		BIT(14)
+#define   GUC_WA_POLLCS			BIT(18)
 
 #define GUC_CTL_FEATURE			2
 #define   GUC_CTL_ENABLE_SLPC		BIT(2)
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index ee45fdb67f32..172819cd1a0a 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -1540,6 +1540,89 @@ static void guc_reset_state(struct intel_context *ce, u32 head, bool scrub)
 	lrc_update_regs(ce, engine, head);
 }
 
+static u32 __cs_pending_mi_force_wakes(struct intel_engine_cs *engine)
+{
+	static const i915_reg_t _reg[I915_NUM_ENGINES] = {
+		[RCS0] = MSG_IDLE_CS,
+		[BCS0] = MSG_IDLE_BCS,
+		[VCS0] = MSG_IDLE_VCS0,
+		[VCS1] = MSG_IDLE_VCS1,
+		[VCS2] = MSG_IDLE_VCS2,
+		[VCS3] = MSG_IDLE_VCS3,
+		[VCS4] = MSG_IDLE_VCS4,
+		[VCS5] = MSG_IDLE_VCS5,
+		[VCS6] = MSG_IDLE_VCS6,
+		[VCS7] = MSG_IDLE_VCS7,
+		[VECS0] = MSG_IDLE_VECS0,
+		[VECS1] = MSG_IDLE_VECS1,
+		[VECS2] = MSG_IDLE_VECS2,
+		[VECS3] = MSG_IDLE_VECS3,
+		[CCS0] = MSG_IDLE_CS,
+		[CCS1] = MSG_IDLE_CS,
+		[CCS2] = MSG_IDLE_CS,
+		[CCS3] = MSG_IDLE_CS,
+	};
+	u32 val;
+
+	if (!_reg[engine->id].reg)
+		return 0;
+
+	val = intel_uncore_read(engine->uncore, _reg[engine->id]);
+
+	/* bits[29:25] & bits[13:9] >> shift */
+	return (val & (val >> 16) & MSG_IDLE_FW_MASK) >> MSG_IDLE_FW_SHIFT;
+}
+
+static void __gpm_wait_for_fw_complete(struct intel_gt *gt, u32 fw_mask)
+{
+	int ret;
+
+	/* Ensure GPM receives fw up/down after CS is stopped */
+	udelay(1);
+
+	/* Wait for forcewake request to complete in GPM */
+	ret =  __intel_wait_for_register_fw(gt->uncore,
+					    GEN9_PWRGT_DOMAIN_STATUS,
+					    fw_mask, fw_mask, 5000, 0, NULL);
+
+	/* Ensure CS receives fw ack from GPM */
+	udelay(1);
+
+	if (ret)
+		GT_TRACE(gt, "Failed to complete pending forcewake %d\n", ret);
+}
+
+/*
+ * Wa_22011802037:gen12: In addition to stopping the cs, we need to wait for any
+ * pending MI_FORCE_WAKEUP requests that the CS has initiated to complete. The
+ * pending status is indicated by bits[13:9] (masked by bits[ 29:25]) in the
+ * MSG_IDLE register. There's one MSG_IDLE register per reset domain. Since we
+ * are concerned only with the gt reset here, we use a logical OR of pending
+ * forcewakeups from all reset domains and then wait for them to complete by
+ * querying PWRGT_DOMAIN_STATUS.
+ */
+static void guc_engine_reset_prepare(struct intel_engine_cs *engine)
+{
+	u32 fw_pending;
+
+	if (GRAPHICS_VER(engine->i915) != 12)
+		return;
+
+	/*
+	 * Wa_22011802037
+	 * TODO: Occassionally trying to stop the cs times out, but does not
+	 * adversely affect functionality. The timeout is set as a config
+	 * parameter that defaults to 100ms. Assuming that this timeout is
+	 * sufficient for any pending MI_FORCEWAKEs to complete, ignore the
+	 * timeout returned here until it is root caused.
+	 */
+	intel_engine_stop_cs(engine);
+
+	fw_pending = __cs_pending_mi_force_wakes(engine);
+	if (fw_pending)
+		__gpm_wait_for_fw_complete(engine->gt, fw_pending);
+}
+
 static void guc_reset_nop(struct intel_engine_cs *engine)
 {
 }
@@ -3795,7 +3878,7 @@ static void guc_default_vfuncs(struct intel_engine_cs *engine)
 
 	engine->sched_engine->schedule = i915_schedule;
 
-	engine->reset.prepare = guc_reset_nop;
+	engine->reset.prepare = guc_engine_reset_prepare;
 	engine->reset.rewind = guc_rewind_nop;
 	engine->reset.cancel = guc_reset_nop;
 	engine->reset.finish = guc_reset_nop;
-- 
2.35.1

