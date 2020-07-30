Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0589233BB8
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jul 2020 01:02:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5935B6E030;
	Thu, 30 Jul 2020 23:02:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8EAC6E119
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jul 2020 23:02:13 +0000 (UTC)
IronPort-SDR: uvCdWFwiLcZa2yD7zRw8WULmwMzFoMCt0/nQIUfseeUj918Tw9pzYgzYPOU5hWf3Zlpz0Pg8KE
 kmPxfBYHIrUA==
X-IronPort-AV: E=McAfee;i="6000,8403,9698"; a="150902710"
X-IronPort-AV: E=Sophos;i="5.75,415,1589266800"; d="scan'208";a="150902710"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2020 16:02:13 -0700
IronPort-SDR: FvsfqnhWBc1CimxJi71SoOk0hWGH57vQ+6HwHrf/FUDF1adyn3re+2xGaNt/d1imI0Uq387otl
 MZSbgZrij9dQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,415,1589266800"; d="scan'208";a="287009239"
Received: from orsosgc001.ra.intel.com ([10.23.184.150])
 by orsmga003.jf.intel.com with ESMTP; 30 Jul 2020 16:02:12 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 30 Jul 2020 16:02:10 -0700
Message-Id: <20200730230212.55945-3-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200730230212.55945-1-umesh.nerlige.ramappa@intel.com>
References: <20200730230212.55945-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/4] drm/i915/perf: Whitelist OA report trigger
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
Cc: Chris Wilson <chris.p.wilson@intel.com>
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

Signed-off-by: Piotr Maciejewski <piotr.maciejewski@intel.com>
Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Reviewed-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c   | 109 ++++++++++++++----
 drivers/gpu/drm/i915/gt/intel_workarounds.h   |   7 ++
 .../gpu/drm/i915/gt/intel_workarounds_types.h |   5 +
 drivers/gpu/drm/i915/i915_perf.c              |  76 +++++++++++-
 drivers/gpu/drm/i915/i915_perf_types.h        |   6 +
 5 files changed, 177 insertions(+), 26 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index cef1c122696f..1d337c44d1b0 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -81,10 +81,50 @@ static void wa_init_finish(struct i915_wa_list *wal)
 			 wal->wa_count, wal->name, wal->engine_name);
 }
 
+static int _wa_index(struct i915_wa_list *wal, i915_reg_t reg)
+{
+	unsigned int addr = i915_mmio_reg_offset(reg);
+	int start = 0, end = wal->count;
+
+	/* addr and wal->list[].reg, both include the R/W flags */
+	while (start < end) {
+		int mid = start + (end - start) / 2;
+
+		if (i915_mmio_reg_offset(wal->list[mid].reg) < addr)
+			start = mid + 1;
+		else if (i915_mmio_reg_offset(wal->list[mid].reg) > addr)
+			end = mid;
+		else
+			return mid;
+	}
+
+	return -1;
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
+	if (index < 0)
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
-	unsigned int addr = i915_mmio_reg_offset(wa->reg);
-	unsigned int start = 0, end = wal->count;
+	int index;
 	const unsigned int grow = WA_LIST_CHUNK;
 	struct i915_wa *wa_;
 
@@ -106,30 +146,23 @@ static void _wa_add(struct i915_wa_list *wal, const struct i915_wa *wa)
 		wal->list = list;
 	}
 
-	while (start < end) {
-		unsigned int mid = start + (end - start) / 2;
+	index = _wa_index(wal, wa->reg);
+	if (index >= 0) {
+		wa_ = &wal->list[index];
 
-		if (i915_mmio_reg_offset(wal->list[mid].reg) < addr) {
-			start = mid + 1;
-		} else if (i915_mmio_reg_offset(wal->list[mid].reg) > addr) {
-			end = mid;
-		} else {
-			wa_ = &wal->list[mid];
-
-			if ((wa->clr | wa_->clr) && !(wa->clr & ~wa_->clr)) {
-				DRM_ERROR("Discarding overwritten w/a for reg %04x (clear: %08x, set: %08x)\n",
-					  i915_mmio_reg_offset(wa_->reg),
-					  wa_->clr, wa_->set);
+		if ((wa->clr | wa_->clr) && !(wa->clr & ~wa_->clr)) {
+			DRM_ERROR("Discarding overwritten w/a for reg %04x (clear: %08x, set: %08x)\n",
+				  i915_mmio_reg_offset(wa_->reg),
+				  wa_->clr, wa_->set);
 
-				wa_->set &= ~wa->clr;
-			}
-
-			wal->wa_count++;
-			wa_->set |= wa->set;
-			wa_->clr |= wa->clr;
-			wa_->read |= wa->read;
-			return;
+			wa_->set &= ~wa->clr;
 		}
+
+		wal->wa_count++;
+		wa_->set |= wa->set;
+		wa_->clr |= wa->clr;
+		wa_->read |= wa->read;
+		return;
 	}
 
 	wal->wa_count++;
@@ -1954,6 +1987,36 @@ void intel_engine_init_workarounds(struct intel_engine_cs *engine)
 	wa_init_finish(wal);
 }
 
+void intel_engine_allow_user_register_access(struct intel_engine_cs *engine,
+					     struct i915_whitelist_reg *reg,
+					     u32 count)
+{
+	if (!engine || !reg)
+		return;
+
+	while (count--) {
+		whitelist_reg_ext(&engine->whitelist, reg->reg, reg->flags);
+		reg++;
+	}
+
+	intel_engine_apply_whitelist(engine);
+}
+
+void intel_engine_deny_user_register_access(struct intel_engine_cs *engine,
+					    struct i915_whitelist_reg *reg,
+					    u32 count)
+{
+	if (!engine || !reg)
+		return;
+
+	while (count--) {
+		_wa_remove(&engine->whitelist, reg->reg, reg->flags);
+		reg++;
+	}
+
+	intel_engine_apply_whitelist(engine);
+}
+
 void intel_engine_apply_workarounds(struct intel_engine_cs *engine)
 {
 	wa_list_apply(engine->uncore, &engine->wa_list);
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.h b/drivers/gpu/drm/i915/gt/intel_workarounds.h
index 8c9c769c2204..6c820c1b751a 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.h
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.h
@@ -37,4 +37,11 @@ void intel_engine_apply_workarounds(struct intel_engine_cs *engine);
 int intel_engine_verify_workarounds(struct intel_engine_cs *engine,
 				    const char *from);
 
+void intel_engine_allow_user_register_access(struct intel_engine_cs *engine,
+					     struct i915_whitelist_reg *reg,
+					     u32 count);
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
index fe408c327d3c..d644cb5118d6 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -1347,12 +1347,59 @@ free_noa_wait(struct i915_perf_stream *stream)
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
+static void intel_engine_apply_oa_whitelist(struct i915_perf_stream *stream)
+{
+	struct intel_engine_cs *engine = stream->engine;
+	struct drm_i915_private *i915 = stream->perf->i915;
+
+	if (IS_GEN(i915, 12))
+		intel_engine_allow_user_register_access(engine,
+							gen12_oa_wl_regs,
+							ARRAY_SIZE(gen12_oa_wl_regs));
+	else if (INTEL_GEN(i915) > 8)
+		intel_engine_allow_user_register_access(engine,
+							gen9_oa_wl_regs,
+							ARRAY_SIZE(gen9_oa_wl_regs));
+	else
+		return;
+}
+
+static void intel_engine_remove_oa_whitelist(struct i915_perf_stream *stream)
+{
+	struct intel_engine_cs *engine = stream->engine;
+	struct drm_i915_private *i915 = stream->perf->i915;
+
+	if (IS_GEN(i915, 12))
+		intel_engine_deny_user_register_access(engine,
+						       gen12_oa_wl_regs,
+						       ARRAY_SIZE(gen12_oa_wl_regs));
+	else if (INTEL_GEN(i915) > 8)
+		intel_engine_deny_user_register_access(engine,
+						       gen9_oa_wl_regs,
+						       ARRAY_SIZE(gen9_oa_wl_regs));
+	else
+		return;
+}
+
 static void i915_oa_stream_destroy(struct i915_perf_stream *stream)
 {
 	struct i915_perf *perf = stream->perf;
 
 	BUG_ON(stream != perf->exclusive_stream);
 
+	if (stream->oa_whitelisted)
+		intel_engine_remove_oa_whitelist(stream);
+
 	/*
 	 * Unset exclusive_stream first, it will be checked while disabling
 	 * the metric set on gen8+.
@@ -1448,7 +1495,8 @@ static void gen8_init_oa_buffer(struct i915_perf_stream *stream)
 	 *  bit."
 	 */
 	intel_uncore_write(uncore, GEN8_OABUFFER, gtt_offset |
-		   OABUFFER_SIZE_16M | GEN8_OABUFFER_MEM_SELECT_GGTT);
+			   OABUFFER_SIZE_16M | GEN8_OABUFFER_MEM_SELECT_GGTT |
+			   GEN7_OABUFFER_EDGE_TRIGGER);
 	intel_uncore_write(uncore, GEN8_OATAILPTR, gtt_offset & GEN8_OATAILPTR_MASK);
 
 	/* Mark that we need updated tail pointers to read from... */
@@ -1501,7 +1549,8 @@ static void gen12_init_oa_buffer(struct i915_perf_stream *stream)
 	 *  bit."
 	 */
 	intel_uncore_write(uncore, GEN12_OAG_OABUFFER, gtt_offset |
-			   OABUFFER_SIZE_16M | GEN8_OABUFFER_MEM_SELECT_GGTT);
+			   OABUFFER_SIZE_16M | GEN8_OABUFFER_MEM_SELECT_GGTT |
+			   GEN7_OABUFFER_EDGE_TRIGGER);
 	intel_uncore_write(uncore, GEN12_OAG_OATAILPTR,
 			   gtt_offset & GEN12_OAG_OATAILPTR_MASK);
 
@@ -3474,6 +3523,22 @@ i915_perf_open_ioctl_locked(struct i915_perf *perf,
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
+	if (!i915_perf_stream_paranoid &&
+	    props->sample_flags & SAMPLE_OA_REPORT) {
+		intel_engine_apply_oa_whitelist(stream);
+		stream->oa_whitelisted = true;
+	}
+
 	/* Take a reference on the driver that will be kept with stream_fd
 	 * until its release.
 	 */
@@ -4445,8 +4510,13 @@ int i915_perf_ioctl_version(void)
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
index a36a455ae336..a45ad422b176 100644
--- a/drivers/gpu/drm/i915/i915_perf_types.h
+++ b/drivers/gpu/drm/i915/i915_perf_types.h
@@ -16,6 +16,7 @@
 #include <linux/uuid.h>
 #include <linux/wait.h>
 
+#include "gt/intel_workarounds.h"
 #include "gt/intel_sseu.h"
 #include "i915_reg.h"
 #include "intel_wakeref.h"
@@ -311,6 +312,11 @@ struct i915_perf_stream {
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
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
