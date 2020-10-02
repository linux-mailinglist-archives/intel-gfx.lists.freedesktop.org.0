Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07AD1281F0B
	for <lists+intel-gfx@lfdr.de>; Sat,  3 Oct 2020 01:28:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 173286E9F1;
	Fri,  2 Oct 2020 23:28:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 316446E9E9
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Oct 2020 23:28:02 +0000 (UTC)
IronPort-SDR: zW7XLD7q9H8GdGFIYrRpFRIYn/r8svMx1vhV2D+CHFWbl2jQIxaW5t4311F51KE4dSqnaT7vFv
 RFqR6be9p99w==
X-IronPort-AV: E=McAfee;i="6000,8403,9762"; a="163969276"
X-IronPort-AV: E=Sophos;i="5.77,329,1596524400"; d="scan'208";a="163969276"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2020 16:28:01 -0700
IronPort-SDR: GzwTOvCFfeYz1DXLz5G6CLFV9ui8LROqef2dTwI3DMsDEZ5DMl+PXTQMrnjfdYQX7su8o3pCXs
 Heuz3xJQ4hnA==
X-IronPort-AV: E=Sophos;i="5.77,329,1596524400"; d="scan'208";a="325972367"
Received: from orsosgc001.ra.intel.com ([10.23.184.150])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2020 16:28:01 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org, Chris Wilson <chris.p.wilson@intel.com>,
 Lionel G Landwerlin <lionel.g.landwerlin@intel.com>
Date: Fri,  2 Oct 2020 16:27:58 -0700
Message-Id: <20201002232801.51936-4-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201002232801.51936-1-umesh.nerlige.ramappa@intel.com>
References: <20201002232801.51936-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/6] drm/i915/perf: Whitelist OA report trigger
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

OA reports can be triggered into the OA buffer by writing into the
OAREPORTTRIG registers. Whitelist the registers to allow non-privileged
user to trigger reports.

Whitelist registers only if perf_stream_paranoid is set to 0. In
i915_perf_open_ioctl, this setting is checked and the whitelist is
enabled accordingly. On closing the perf fd, the whitelist is removed.

This ensures that the access to the whitelist is gated by
perf_stream_paranoid.

v2:
- Move related change to this patch (Lionel)
- Bump up perf revision (Lionel)

v3: Pardon whitelisted registers for selftest (Umesh)
v4: Document supported gens for the feature (Lionel)
v5: Whitelist registers only if perf_stream_paranoid is set to 0 (Jon)
v6: Move oa whitelist array to i915_perf (Chris)
v7: Fix OA writing beyond the wal->list memory (CI)
v8: Protect write to engine whitelist registers
v9: (Umesh)
- Use uncore->lock to protect write to forcepriv regs
- In case wal->count falls to zero on _wa_remove, make sure you still
  clear the registers. Remove wal->count check when applying whitelist.
v10: (Umesh)
- Split patches modifying intel_workarounds
- On some platforms there are no whitelisted regs. intel_engine_resume
  applies whitelist on these platforms too and the wal->count gates such
  platforms. Bring back the wal->count check.
- intel_engine_allow/deny_user_register_access modifies the engine
  whitelist and the wal->count. Use uncore->lock to serialize it with
  intel_engine_apply_whitelist.
- Grow the wal->list when adding whitelist registers after driver load.

Signed-off-by: Piotr Maciejewski <piotr.maciejewski@intel.com>
Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Reviewed-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c   | 118 ++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_workarounds.h   |   7 ++
 .../gpu/drm/i915/gt/intel_workarounds_types.h |   5 +
 drivers/gpu/drm/i915/i915_perf.c              |  79 +++++++++++-
 drivers/gpu/drm/i915/i915_perf_types.h        |   8 ++
 5 files changed, 214 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index b7db34dc9687..8eda3bc3991e 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -112,6 +112,66 @@ static void wa_init_finish(struct i915_wa_list *wal)
 			 wal->wa_count, wal->name, wal->engine_name);
 }
 
+static int _wa_index(struct i915_wa_list *wal, i915_reg_t reg)
+{
+	unsigned int addr = i915_mmio_reg_offset(reg);
+	int start = 0, end = wal->count;
+
+	/* addr and wal->list[].reg, both include the R/W flags */
+	while (start < end) {
+		unsigned int mid = start + (end - start) / 2;
+
+		if (i915_mmio_reg_offset(wal->list[mid].reg) < addr)
+			start = mid + 1;
+		else if (i915_mmio_reg_offset(wal->list[mid].reg) > addr)
+			end = mid;
+		else
+			return mid;
+	}
+
+	return -ENOENT;
+}
+
+static int _wa_list_grow(struct i915_wa_list *wal, size_t count)
+{
+	struct i915_wa *list;
+
+	list = kmalloc_array(ALIGN(count + 1, WA_LIST_CHUNK), sizeof(*list),
+			     GFP_KERNEL);
+	if (!list) {
+		DRM_ERROR("No space for workaround init!\n");
+		return -ENOMEM;
+	}
+
+	if (wal->list)
+		memcpy(list, wal->list, sizeof(*list) * count);
+
+	wal->list = list;
+
+	return 0;
+}
+ 
+static void _wa_remove(struct i915_wa_list *wal, i915_reg_t reg, u32 flags)
+{
+	int index;
+	struct i915_wa *wa = wal->list;
+
+	reg.reg |= flags;
+
+	index = _wa_index(wal, reg);
+	if (GEM_DEBUG_WARN_ON(index < 0))
+		return;
+
+	memset(wa + index, 0, sizeof(*wa));
+
+	while (index < wal->count - 1) {
+		swap(wa[index], wa[index + 1]);
+		index++;
+	}
+
+	wal->count--;
+}
+
 static void _wa_add(struct i915_wa_list *wal, const struct i915_wa *wa)
 {
 	unsigned int addr = i915_mmio_reg_offset(wa->reg);
@@ -2011,6 +2071,64 @@ void intel_engine_init_workarounds(struct intel_engine_cs *engine)
 	wa_init_finish(wal);
 }
 
+int intel_engine_allow_user_register_access(struct intel_engine_cs *engine,
+					    struct i915_whitelist_reg *reg,
+					    u32 count)
+{
+	unsigned long flags;
+	struct i915_wa_list *wal;
+	int ret;
+
+	if (!engine || !reg || !count)
+		return -EINVAL;
+
+	wal = &engine->whitelist;
+
+	/*
+	 * i915 compacts the wa list by calling wa_init_finish during driver
+	 * load. If we want to add additional workarounds after driver load,
+	 * we need to grow the list. _wa_list_grow will add at least one free
+	 * slot for a workaround. Any additional slot required are added by
+	 * _wa_add in the below for loop.
+	 *
+	 * Once we remove the workarounds, we compact the list again in 
+	 * intel_engine_deny_user_register_access by calling wa_init_finish.
+	 */
+	ret = _wa_list_grow(wal, wal->count);
+	if (ret < 0)
+		return ret;
+
+	spin_lock_irqsave(&engine->uncore->lock, flags);
+	for (; count--; reg++)
+		whitelist_reg_ext(wal, reg->reg, reg->flags);
+
+	intel_engine_apply_whitelist_locked(engine);
+	spin_unlock_irqrestore(&engine->uncore->lock, flags);
+
+	return 0;
+}
+
+void intel_engine_deny_user_register_access(struct intel_engine_cs *engine,
+					    struct i915_whitelist_reg *reg,
+					    u32 count)
+{
+	unsigned long flags;
+	struct i915_wa_list *wal;
+
+	if (!engine || !reg || !count)
+		return;
+
+	wal = &engine->whitelist;
+	spin_lock_irqsave(&engine->uncore->lock, flags);
+	for (; count--; reg++)
+		_wa_remove(wal, reg->reg, reg->flags);
+
+	intel_engine_apply_whitelist_locked(engine);
+	spin_unlock_irqrestore(&engine->uncore->lock, flags);
+
+	wa_init_finish(wal);
+}
+
 void intel_engine_apply_workarounds(struct intel_engine_cs *engine)
 {
 	wa_list_apply(engine->uncore, &engine->wa_list);
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.h b/drivers/gpu/drm/i915/gt/intel_workarounds.h
index 8c9c769c2204..558c21b7d4cb 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.h
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.h
@@ -37,4 +37,11 @@ void intel_engine_apply_workarounds(struct intel_engine_cs *engine);
 int intel_engine_verify_workarounds(struct intel_engine_cs *engine,
 				    const char *from);
 
+int intel_engine_allow_user_register_access(struct intel_engine_cs *engine,
+					    struct i915_whitelist_reg *reg,
+					    u32 count);
+void intel_engine_deny_user_register_access(struct intel_engine_cs *engine,
+					    struct i915_whitelist_reg *reg,
+					    u32 count);
+
 #endif
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds_types.h b/drivers/gpu/drm/i915/gt/intel_workarounds_types.h
index d166a7145720..437981debe14 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds_types.h
@@ -11,6 +11,11 @@
 
 #include "i915_reg.h"
 
+struct i915_whitelist_reg {
+	i915_reg_t reg;
+	u32 flags;
+};
+
 struct i915_wa {
 	i915_reg_t	reg;
 	u32		clr;
diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index df5166d89d82..c5238dbda9de 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -1362,12 +1362,56 @@ free_noa_wait(struct i915_perf_stream *stream)
 	i915_vma_unpin_and_release(&stream->noa_wait, 0);
 }
 
+static struct i915_whitelist_reg gen9_oa_wl_regs[] = {
+	{ OAREPORTTRIG2, RING_FORCE_TO_NONPRIV_ACCESS_RW },
+	{ OAREPORTTRIG6, RING_FORCE_TO_NONPRIV_ACCESS_RW },
+};
+
+static struct i915_whitelist_reg gen12_oa_wl_regs[] = {
+	{ GEN12_OAG_OAREPORTTRIG2, RING_FORCE_TO_NONPRIV_ACCESS_RW },
+	{ GEN12_OAG_OAREPORTTRIG6, RING_FORCE_TO_NONPRIV_ACCESS_RW },
+};
+
+static int intel_engine_apply_oa_whitelist(struct i915_perf_stream *stream)
+{
+	struct intel_engine_cs *engine = stream->engine;
+	int ret;
+
+	if (i915_perf_stream_paranoid ||
+	    !(stream->sample_flags & SAMPLE_OA_REPORT) ||
+	    stream->perf->oa_wl == NULL)
+		return 0;
+
+	ret = intel_engine_allow_user_register_access(engine,
+						      stream->perf->oa_wl,
+						      stream->perf->num_oa_wl);
+	if (ret < 0)
+		return ret;
+
+	stream->oa_whitelisted = true;
+	return 0;
+}
+
+static void intel_engine_remove_oa_whitelist(struct i915_perf_stream *stream)
+{
+	struct intel_engine_cs *engine = stream->engine;
+
+	if (!stream->oa_whitelisted)
+		return;
+
+	intel_engine_deny_user_register_access(engine,
+					       stream->perf->oa_wl,
+					       stream->perf->num_oa_wl);
+}
+
 static void i915_oa_stream_destroy(struct i915_perf_stream *stream)
 {
 	struct i915_perf *perf = stream->perf;
 
 	BUG_ON(stream != perf->exclusive_stream);
 
+	intel_engine_remove_oa_whitelist(stream);
+
 	/*
 	 * Unset exclusive_stream first, it will be checked while disabling
 	 * the metric set on gen8+.
@@ -1463,7 +1507,8 @@ static void gen8_init_oa_buffer(struct i915_perf_stream *stream)
 	 *  bit."
 	 */
 	intel_uncore_write(uncore, GEN8_OABUFFER, gtt_offset |
-		   OABUFFER_SIZE_16M | GEN8_OABUFFER_MEM_SELECT_GGTT);
+			   OABUFFER_SIZE_16M | GEN8_OABUFFER_MEM_SELECT_GGTT |
+			   GEN7_OABUFFER_EDGE_TRIGGER);
 	intel_uncore_write(uncore, GEN8_OATAILPTR, gtt_offset & GEN8_OATAILPTR_MASK);
 
 	/* Mark that we need updated tail pointers to read from... */
@@ -1516,7 +1561,8 @@ static void gen12_init_oa_buffer(struct i915_perf_stream *stream)
 	 *  bit."
 	 */
 	intel_uncore_write(uncore, GEN12_OAG_OABUFFER, gtt_offset |
-			   OABUFFER_SIZE_16M | GEN8_OABUFFER_MEM_SELECT_GGTT);
+			   OABUFFER_SIZE_16M | GEN8_OABUFFER_MEM_SELECT_GGTT |
+			   GEN7_OABUFFER_EDGE_TRIGGER);
 	intel_uncore_write(uncore, GEN12_OAG_OATAILPTR,
 			   gtt_offset & GEN12_OAG_OATAILPTR_MASK);
 
@@ -3497,6 +3543,20 @@ i915_perf_open_ioctl_locked(struct i915_perf *perf,
 	if (!(param->flags & I915_PERF_FLAG_DISABLED))
 		i915_perf_enable_locked(stream);
 
+	/*
+	 * OA whitelist allows non-privileged access to some OA counters for
+	 * triggering reports into the OA buffer. This is only allowed if
+	 * perf_stream_paranoid is set to 0 by the sysadmin.
+	 *
+	 * We want to make sure this is almost the last thing we do before
+	 * returning the stream fd. If we do end up checking for errors in code
+	 * that follows this, we MUST call intel_engine_remove_oa_whitelist in
+	 * the error handling path to remove the whitelisted registers.
+	 */
+	ret = intel_engine_apply_oa_whitelist(stream);
+	if (ret < 0)
+		goto err_flags;
+
 	/* Take a reference on the driver that will be kept with stream_fd
 	 * until its release.
 	 */
@@ -4323,6 +4383,8 @@ void i915_perf_init(struct drm_i915_private *i915)
 				perf->ctx_flexeu0_offset = 0x3de;
 
 				perf->gen8_valid_ctx_bit = BIT(16);
+				perf->oa_wl = gen9_oa_wl_regs;
+				perf->num_oa_wl = ARRAY_SIZE(gen9_oa_wl_regs);
 			}
 		} else if (IS_GEN_RANGE(i915, 10, 11)) {
 			perf->oa_formats = gen8_plus_oa_formats;
@@ -4340,6 +4402,9 @@ void i915_perf_init(struct drm_i915_private *i915)
 			perf->ops.disable_metric_set = gen10_disable_metric_set;
 			perf->ops.oa_hw_tail_read = gen8_oa_hw_tail_read;
 
+			perf->oa_wl = gen9_oa_wl_regs;
+			perf->num_oa_wl = ARRAY_SIZE(gen9_oa_wl_regs);
+
 			if (IS_GEN(i915, 10)) {
 				perf->ctx_oactxctrl_offset = 0x128;
 				perf->ctx_flexeu0_offset = 0x3de;
@@ -4366,6 +4431,9 @@ void i915_perf_init(struct drm_i915_private *i915)
 
 			perf->ctx_flexeu0_offset = 0;
 			perf->ctx_oactxctrl_offset = 0x144;
+
+			perf->oa_wl = gen12_oa_wl_regs;
+			perf->num_oa_wl = ARRAY_SIZE(gen12_oa_wl_regs);
 		}
 	}
 
@@ -4468,8 +4536,13 @@ int i915_perf_ioctl_version(void)
 	 *
 	 * 5: Add DRM_I915_PERF_PROP_POLL_OA_PERIOD parameter that controls the
 	 *    interval for the hrtimer used to check for OA data.
+	 *
+	 * 6: Whitelist OATRIGGER registers to allow user to trigger reports
+	 *    into the OA buffer. This applies only to gen8+. The feature can
+	 *    only be accessed if perf_stream_paranoid is set to 0 by privileged
+	 *    user.
 	 */
-	return 5;
+	return 6;
 }
 
 #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
diff --git a/drivers/gpu/drm/i915/i915_perf_types.h b/drivers/gpu/drm/i915/i915_perf_types.h
index a36a455ae336..cceb54012053 100644
--- a/drivers/gpu/drm/i915/i915_perf_types.h
+++ b/drivers/gpu/drm/i915/i915_perf_types.h
@@ -311,6 +311,11 @@ struct i915_perf_stream {
 	 * buffer should be checked for available data.
 	 */
 	u64 poll_oa_period;
+
+	/**
+	 * @oa_whitelisted: Indicates that the oa registers are whitelisted.
+	 */
+	bool oa_whitelisted;
 };
 
 /**
@@ -431,6 +436,9 @@ struct i915_perf {
 	u32 ctx_oactxctrl_offset;
 	u32 ctx_flexeu0_offset;
 
+	struct i915_whitelist_reg *oa_wl;
+	size_t num_oa_wl;
+
 	/**
 	 * The RPT_ID/reason field for Gen8+ includes a bit
 	 * to determine if the CTX ID in the report is valid
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
