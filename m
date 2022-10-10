Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 162445FA33E
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Oct 2022 20:15:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 774C410E6C3;
	Mon, 10 Oct 2022 18:15:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D80410E6C9
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Oct 2022 18:14:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665425677; x=1696961677;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=zCQ9JLVXV3ZXnk82Tr9HGTKl0eCoEr4yO/Nh2fjMnDI=;
 b=SadLT8AhxQi8DrBh84J5BLdHgB2RheSN53wXW/cjizG4F83RgJmaMYCT
 xv+1F9bI9youzLZr+vtp+c9f70ImCvJkMrdk4xJNYEuiqeXsq1x9/Oqnz
 w/OInYtlolo+1HhmoOuKeqdga+5aTsOYq63BZCBA5h5JSak4Q8qgIw0f/
 81JP2s1aY23Ujdwjz6JIVfUZ+D0ePqNy4aYuaQBw3UraiRgQw3OcVGJm3
 niXLThECE7RpCyqjXA9ynqgp6RSLs3GqL7s2uUzjnlsNP3kxZZjHALi9B
 NPCi4z/7s0QRHB9ViRc3WdUzNbnj2pd1BADfx1XCh1HJoZFGaaQbwlEIz g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10496"; a="368439651"
X-IronPort-AV: E=Sophos;i="5.95,173,1661842800"; d="scan'208";a="368439651"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2022 11:14:36 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10496"; a="603820269"
X-IronPort-AV: E=Sophos;i="5.95,173,1661842800"; d="scan'208";a="603820269"
Received: from dut042-dg2frd.fm.intel.com ([10.105.19.4])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2022 11:14:35 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Lionel G Landwerlin <lionel.g.landwerlin@intel.com>,
 Ashutosh Dixit <ashutosh.dixit@intel.com>
Date: Mon, 10 Oct 2022 18:14:22 +0000
Message-Id: <20221010181434.513477-5-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221010181434.513477-1-umesh.nerlige.ramappa@intel.com>
References: <20221010181434.513477-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 04/16] drm/i915/perf: Determine gen12 oa ctx
 offset at runtime
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

Some SKUs of same gen12 platform may have different oactxctrl
offsets. For gen12, determine oactxctrl offsets at runtime.

v2: (Lionel)
- Move MI definitions to intel_gpu_commands.h
- Ensure __find_reg_in_lri does read past context image size

v3: (Ashutosh)
- Drop unnecessary use of double underscores
- fix find_reg_in_lri
- Return error if oa context offset is U32_MAX
- Error out if oa_ctx_ctrl_offset does not find offset

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gpu_commands.h |   4 +
 drivers/gpu/drm/i915/i915_perf.c             | 154 +++++++++++++++----
 drivers/gpu/drm/i915/i915_perf_oa_regs.h     |   2 +-
 3 files changed, 129 insertions(+), 31 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
index d4e9702d3c8e..f50ea92910d9 100644
--- a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
+++ b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
@@ -187,6 +187,10 @@
 #define   MI_BATCH_RESOURCE_STREAMER REG_BIT(10)
 #define   MI_BATCH_PREDICATE         REG_BIT(15) /* HSW+ on RCS only*/
 
+#define MI_OPCODE(x)		(((x) >> 23) & 0x3f)
+#define IS_MI_LRI_CMD(x)	(MI_OPCODE(x) == MI_OPCODE(MI_INSTR(0x22, 0)))
+#define MI_LRI_LEN(x)		(((x) & 0xff) + 1)
+
 /*
  * 3D instructions used by the kernel
  */
diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index cd57b5836386..b292aa39633e 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -1358,6 +1358,68 @@ static int gen12_get_render_context_id(struct i915_perf_stream *stream)
 	return 0;
 }
 
+#define valid_oactxctrl_offset(x) ((x) && (x) != U32_MAX)
+static bool oa_find_reg_in_lri(u32 *state, u32 reg, u32 *offset, u32 end)
+{
+	u32 idx = *offset;
+	u32 len = min(MI_LRI_LEN(state[idx]) + idx, end);
+	bool found = false;
+
+	idx++;
+	for (; idx < len; idx += 2) {
+		if (state[idx] == reg) {
+			found = true;
+			break;
+		}
+	}
+
+	*offset = idx;
+	return found;
+}
+
+static u32 oa_context_image_offset(struct intel_context *ce, u32 reg)
+{
+	u32 offset, len = (ce->engine->context_size - PAGE_SIZE) / 4;
+	u32 *state = ce->lrc_reg_state;
+
+	for (offset = 0; offset < len; ) {
+		if (IS_MI_LRI_CMD(state[offset])) {
+			if (oa_find_reg_in_lri(state, reg, &offset, len))
+				break;
+		} else {
+			offset++;
+		}
+	}
+
+	return offset < len ? offset : U32_MAX;
+}
+
+static int set_oa_ctx_ctrl_offset(struct intel_context *ce)
+{
+	i915_reg_t reg = GEN12_OACTXCONTROL(ce->engine->mmio_base);
+	struct i915_perf *perf = &ce->engine->i915->perf;
+	u32 offset = perf->ctx_oactxctrl_offset;
+
+	/* Do this only once. Failure is stored as offset of U32_MAX */
+	if (offset)
+		goto exit;
+
+	offset = oa_context_image_offset(ce, i915_mmio_reg_offset(reg));
+	perf->ctx_oactxctrl_offset = offset;
+
+	drm_dbg(&ce->engine->i915->drm,
+		"%s oa ctx control at 0x%08x dword offset\n",
+		ce->engine->name, offset);
+
+exit:
+	return valid_oactxctrl_offset(offset) ? 0 : -ENODEV;
+}
+
+static bool engine_supports_mi_query(struct intel_engine_cs *engine)
+{
+	return engine->class == RENDER_CLASS;
+}
+
 /**
  * oa_get_render_ctx_id - determine and hold ctx hw id
  * @stream: An i915-perf stream opened for OA metrics
@@ -1377,6 +1439,21 @@ static int oa_get_render_ctx_id(struct i915_perf_stream *stream)
 	if (IS_ERR(ce))
 		return PTR_ERR(ce);
 
+	if (engine_supports_mi_query(stream->engine)) {
+		/*
+		 * We are enabling perf query here. If we don't find the context
+		 * offset here, just return an error.
+		 */
+		ret = set_oa_ctx_ctrl_offset(ce);
+		if (ret) {
+			intel_context_unpin(ce);
+			drm_err(&stream->perf->i915->drm,
+				"Enabling perf query failed for %s\n",
+				stream->engine->name);
+			return ret;
+		}
+	}
+
 	switch (GRAPHICS_VER(ce->engine->i915)) {
 	case 7: {
 		/*
@@ -2408,10 +2485,11 @@ static int gen12_configure_oar_context(struct i915_perf_stream *stream,
 	int err;
 	struct intel_context *ce = stream->pinned_ctx;
 	u32 format = stream->oa_buffer.format;
+	u32 offset = stream->perf->ctx_oactxctrl_offset;
 	struct flex regs_context[] = {
 		{
 			GEN8_OACTXCONTROL,
-			stream->perf->ctx_oactxctrl_offset + 1,
+			offset + 1,
 			active ? GEN8_OA_COUNTER_RESUME : 0,
 		},
 	};
@@ -2436,15 +2514,18 @@ static int gen12_configure_oar_context(struct i915_perf_stream *stream,
 		},
 	};
 
-	/* Modify the context image of pinned context with regs_context*/
-	err = intel_context_lock_pinned(ce);
-	if (err)
-		return err;
+	/* Modify the context image of pinned context with regs_context */
+	if (valid_oactxctrl_offset(offset)) {
+		err = intel_context_lock_pinned(ce);
+		if (err)
+			return err;
 
-	err = gen8_modify_context(ce, regs_context, ARRAY_SIZE(regs_context));
-	intel_context_unlock_pinned(ce);
-	if (err)
-		return err;
+		err = gen8_modify_context(ce, regs_context,
+					  ARRAY_SIZE(regs_context));
+		intel_context_unlock_pinned(ce);
+		if (err)
+			return err;
+	}
 
 	/* Apply regs_lri using LRI with pinned context */
 	return gen8_modify_self(ce, regs_lri, ARRAY_SIZE(regs_lri), active);
@@ -2566,6 +2647,7 @@ lrc_configure_all_contexts(struct i915_perf_stream *stream,
 			   const struct i915_oa_config *oa_config,
 			   struct i915_active *active)
 {
+	u32 ctx_oactxctrl = stream->perf->ctx_oactxctrl_offset;
 	/* The MMIO offsets for Flex EU registers aren't contiguous */
 	const u32 ctx_flexeu0 = stream->perf->ctx_flexeu0_offset;
 #define ctx_flexeuN(N) (ctx_flexeu0 + 2 * (N) + 1)
@@ -2576,7 +2658,7 @@ lrc_configure_all_contexts(struct i915_perf_stream *stream,
 		},
 		{
 			GEN8_OACTXCONTROL,
-			stream->perf->ctx_oactxctrl_offset + 1,
+			ctx_oactxctrl + 1,
 		},
 		{ EU_PERF_CNTL0, ctx_flexeuN(0) },
 		{ EU_PERF_CNTL1, ctx_flexeuN(1) },
@@ -4545,6 +4627,37 @@ static void oa_init_supported_formats(struct i915_perf *perf)
 	}
 }
 
+static void i915_perf_init_info(struct drm_i915_private *i915)
+{
+	struct i915_perf *perf = &i915->perf;
+
+	switch (GRAPHICS_VER(i915)) {
+	case 8:
+		perf->ctx_oactxctrl_offset = 0x120;
+		perf->ctx_flexeu0_offset = 0x2ce;
+		perf->gen8_valid_ctx_bit = BIT(25);
+		break;
+	case 9:
+		perf->ctx_oactxctrl_offset = 0x128;
+		perf->ctx_flexeu0_offset = 0x3de;
+		perf->gen8_valid_ctx_bit = BIT(16);
+		break;
+	case 11:
+		perf->ctx_oactxctrl_offset = 0x124;
+		perf->ctx_flexeu0_offset = 0x78e;
+		perf->gen8_valid_ctx_bit = BIT(16);
+		break;
+	case 12:
+		/*
+		 * Calculate offset at runtime in oa_pin_context for gen12 and
+		 * cache the value in perf->ctx_oactxctrl_offset.
+		 */
+		break;
+	default:
+		MISSING_CASE(GRAPHICS_VER(i915));
+	}
+}
+
 /**
  * i915_perf_init - initialize i915-perf state on module bind
  * @i915: i915 device instance
@@ -4583,6 +4696,7 @@ void i915_perf_init(struct drm_i915_private *i915)
 		 * execlist mode by default.
 		 */
 		perf->ops.read = gen8_oa_read;
+		i915_perf_init_info(i915);
 
 		if (IS_GRAPHICS_VER(i915, 8, 9)) {
 			perf->ops.is_valid_b_counter_reg =
@@ -4602,18 +4716,6 @@ void i915_perf_init(struct drm_i915_private *i915)
 			perf->ops.enable_metric_set = gen8_enable_metric_set;
 			perf->ops.disable_metric_set = gen8_disable_metric_set;
 			perf->ops.oa_hw_tail_read = gen8_oa_hw_tail_read;
-
-			if (GRAPHICS_VER(i915) == 8) {
-				perf->ctx_oactxctrl_offset = 0x120;
-				perf->ctx_flexeu0_offset = 0x2ce;
-
-				perf->gen8_valid_ctx_bit = BIT(25);
-			} else {
-				perf->ctx_oactxctrl_offset = 0x128;
-				perf->ctx_flexeu0_offset = 0x3de;
-
-				perf->gen8_valid_ctx_bit = BIT(16);
-			}
 		} else if (GRAPHICS_VER(i915) == 11) {
 			perf->ops.is_valid_b_counter_reg =
 				gen7_is_valid_b_counter_addr;
@@ -4627,11 +4729,6 @@ void i915_perf_init(struct drm_i915_private *i915)
 			perf->ops.enable_metric_set = gen8_enable_metric_set;
 			perf->ops.disable_metric_set = gen11_disable_metric_set;
 			perf->ops.oa_hw_tail_read = gen8_oa_hw_tail_read;
-
-			perf->ctx_oactxctrl_offset = 0x124;
-			perf->ctx_flexeu0_offset = 0x78e;
-
-			perf->gen8_valid_ctx_bit = BIT(16);
 		} else if (GRAPHICS_VER(i915) == 12) {
 			perf->ops.is_valid_b_counter_reg =
 				gen12_is_valid_b_counter_addr;
@@ -4645,9 +4742,6 @@ void i915_perf_init(struct drm_i915_private *i915)
 			perf->ops.enable_metric_set = gen12_enable_metric_set;
 			perf->ops.disable_metric_set = gen12_disable_metric_set;
 			perf->ops.oa_hw_tail_read = gen12_oa_hw_tail_read;
-
-			perf->ctx_flexeu0_offset = 0;
-			perf->ctx_oactxctrl_offset = 0x144;
 		}
 	}
 
diff --git a/drivers/gpu/drm/i915/i915_perf_oa_regs.h b/drivers/gpu/drm/i915/i915_perf_oa_regs.h
index f31c9f13a9fc..0ef3562ff4aa 100644
--- a/drivers/gpu/drm/i915/i915_perf_oa_regs.h
+++ b/drivers/gpu/drm/i915/i915_perf_oa_regs.h
@@ -97,7 +97,7 @@
 #define  GEN12_OAR_OACONTROL_COUNTER_FORMAT_SHIFT 1
 #define  GEN12_OAR_OACONTROL_COUNTER_ENABLE       (1 << 0)
 
-#define GEN12_OACTXCONTROL _MMIO(0x2360)
+#define GEN12_OACTXCONTROL(base) _MMIO((base) + 0x360)
 #define GEN12_OAR_OASTATUS _MMIO(0x2968)
 
 /* Gen12 OAG unit */
-- 
2.25.1

