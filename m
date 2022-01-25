Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4567A49A42F
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jan 2022 03:08:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D69C10EAEE;
	Tue, 25 Jan 2022 02:08:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E753710EA10
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jan 2022 02:08:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643076516; x=1674612516;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dQ53FHcpSEwGXvm1HfNphpoCRZwetx3nt9QQPJbeXcU=;
 b=oKpvojJ/nmOsJjxm/isc565Cm11bidk5NOfoFhFcYDf1duIRZaSUB816
 740cPrcRwGGCDd5xeGPUSHBkvTCxeu5uGZAA56fdfYeZgYKOZn9lpumaU
 F/Zv/fa/JLx+Jr5pxwhqn86LfpiaJBLJOtHBsVXXMSuEtGLiJvRapw9vO
 qkUJhZ4IXAIc62cMhpJYzi+e9ovrPeaKy2sLmXBlwkbL4qN2bTLD9ResT
 h5yk6xQw+uOJi+TVdqF5qJg4zmRH2A7PvaX1QOEwlXtiKQu/aCM5PE1Us
 77M95IdlmPLlYk6fCqirJj9KTcJKDY91lEfEya3KdUg6YwjwRXX8J5lix A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10237"; a="246142667"
X-IronPort-AV: E=Sophos;i="5.88,313,1635231600"; d="scan'208";a="246142667"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2022 18:08:36 -0800
X-IronPort-AV: E=Sophos;i="5.88,313,1635231600"; d="scan'208";a="562877880"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2022 18:08:36 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 24 Jan 2022 18:08:24 -0800
Message-Id: <20220125020826.2693097-5-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220125020826.2693097-1-matthew.d.roper@intel.com>
References: <20220125020826.2693097-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 4/6] drm/i915: Parameterize MI_PREDICATE
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The various MI_PREDICATE registers have per-engine instances.  Today we
only utilize the RCS0 instance of each, but that will likely change in
the future; switch to parameterized register definitions to make these
easier to work with going forward.

Of special note is MI_PREDICATE_RESULT_2; we only use it in one place in
the driver today in HSW-specific code.  It turns out that the bspec
(page 94) lists two different offsets for this register on HSW; one is
in the standard location shared by all other platforms (base + 0x3bc)
and the other is an unusual location (0x2214).  We're using the second,
non-standard offset in i915 today; that offset doesn't exist on any
other platforms (and it's not even 100% clear that it's correct for HSW)
so I've renamed the current non-standard definition to
HSW_MI_PREDICATE_RESULT_2; the new cross-platform parameterized macro
(which is still unused at the moment) uses the standard offset.

Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_regs.h | 11 +++++++++++
 drivers/gpu/drm/i915/gt/intel_gt.c          |  2 +-
 drivers/gpu/drm/i915/i915_cmd_parser.c      |  4 ++--
 drivers/gpu/drm/i915/i915_perf.c            |  8 ++++----
 drivers/gpu/drm/i915/i915_reg.h             | 11 +----------
 5 files changed, 19 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_regs.h b/drivers/gpu/drm/i915/gt/intel_engine_regs.h
index daf4a241cf77..e9fec6214073 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_regs.h
@@ -142,6 +142,17 @@
 		(REG_FIELD_PREP(CMD_CCTL_WRITE_OVERRIDE_MASK, (write) << 1) | \
 		 REG_FIELD_PREP(CMD_CCTL_READ_OVERRIDE_MASK, (read) << 1))
 
+#define MI_PREDICATE_RESULT_2(base)		_MMIO((base) + 0x3bc)
+#define   LOWER_SLICE_ENABLED			(1 << 0)
+#define   LOWER_SLICE_DISABLED			(0 << 0)
+#define MI_PREDICATE_SRC0(base)			_MMIO((base) + 0x400)
+#define MI_PREDICATE_SRC0_UDW(base)		_MMIO((base) + 0x400 + 4)
+#define MI_PREDICATE_SRC1(base)			_MMIO((base) + 0x408)
+#define MI_PREDICATE_SRC1_UDW(base)		_MMIO((base) + 0x408 + 4)
+#define MI_PREDICATE_DATA(base)			_MMIO((base) + 0x410)
+#define MI_PREDICATE_RESULT(base)		_MMIO((base) + 0x418)
+#define MI_PREDICATE_RESULT_1(base)		_MMIO((base) + 0x41c)
+
 #define RING_PP_DIR_DCLV(base)			_MMIO((base) + 0x220)
 #define   PP_DIR_DCLV_2G			0xffffffff
 #define RING_PP_DIR_BASE(base)			_MMIO((base) + 0x228)
diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index 622cdfed8a8b..3889efb3ffa4 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -209,7 +209,7 @@ int intel_gt_init_hw(struct intel_gt *gt)
 
 	if (IS_HASWELL(i915))
 		intel_uncore_write(uncore,
-				   MI_PREDICATE_RESULT_2,
+				   HSW_MI_PREDICATE_RESULT_2,
 				   IS_HSW_GT3(i915) ?
 				   LOWER_SLICE_ENABLED : LOWER_SLICE_DISABLED);
 
diff --git a/drivers/gpu/drm/i915/i915_cmd_parser.c b/drivers/gpu/drm/i915/i915_cmd_parser.c
index 96c398051084..332b8ffb58f8 100644
--- a/drivers/gpu/drm/i915/i915_cmd_parser.c
+++ b/drivers/gpu/drm/i915/i915_cmd_parser.c
@@ -611,8 +611,8 @@ static const struct drm_i915_reg_descriptor gen7_render_regs[] = {
 	REG64(PS_INVOCATION_COUNT),
 	REG64(PS_DEPTH_COUNT),
 	REG64_IDX(RING_TIMESTAMP, RENDER_RING_BASE),
-	REG64(MI_PREDICATE_SRC0),
-	REG64(MI_PREDICATE_SRC1),
+	REG64_IDX(MI_PREDICATE_SRC0, RENDER_RING_BASE),
+	REG64_IDX(MI_PREDICATE_SRC1, RENDER_RING_BASE),
 	REG32(GEN7_3DPRIM_END_OFFSET),
 	REG32(GEN7_3DPRIM_START_VERTEX),
 	REG32(GEN7_3DPRIM_VERTEX_COUNT),
diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 1253e396a911..547a242c5e49 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -1684,7 +1684,7 @@ static int alloc_noa_wait(struct i915_perf_stream *stream)
 			stream, cs, true /* save */, CS_GPR(i),
 			INTEL_GT_SCRATCH_FIELD_PERF_CS_GPR + 8 * i, 2);
 	cs = save_restore_register(
-		stream, cs, true /* save */, MI_PREDICATE_RESULT_1,
+		stream, cs, true /* save */, MI_PREDICATE_RESULT_1(RENDER_RING_BASE),
 		INTEL_GT_SCRATCH_FIELD_PERF_PREDICATE_RESULT_1, 1);
 
 	/* First timestamp snapshot location. */
@@ -1738,7 +1738,7 @@ static int alloc_noa_wait(struct i915_perf_stream *stream)
 	 */
 	*cs++ = MI_LOAD_REGISTER_REG | (3 - 2);
 	*cs++ = i915_mmio_reg_offset(CS_GPR(JUMP_PREDICATE));
-	*cs++ = i915_mmio_reg_offset(MI_PREDICATE_RESULT_1);
+	*cs++ = i915_mmio_reg_offset(MI_PREDICATE_RESULT_1(RENDER_RING_BASE));
 
 	/* Restart from the beginning if we had timestamps roll over. */
 	*cs++ = (GRAPHICS_VER(i915) < 8 ?
@@ -1775,7 +1775,7 @@ static int alloc_noa_wait(struct i915_perf_stream *stream)
 	 */
 	*cs++ = MI_LOAD_REGISTER_REG | (3 - 2);
 	*cs++ = i915_mmio_reg_offset(CS_GPR(JUMP_PREDICATE));
-	*cs++ = i915_mmio_reg_offset(MI_PREDICATE_RESULT_1);
+	*cs++ = i915_mmio_reg_offset(MI_PREDICATE_RESULT_1(RENDER_RING_BASE));
 
 	/* Predicate the jump.  */
 	*cs++ = (GRAPHICS_VER(i915) < 8 ?
@@ -1791,7 +1791,7 @@ static int alloc_noa_wait(struct i915_perf_stream *stream)
 			stream, cs, false /* restore */, CS_GPR(i),
 			INTEL_GT_SCRATCH_FIELD_PERF_CS_GPR + 8 * i, 2);
 	cs = save_restore_register(
-		stream, cs, false /* restore */, MI_PREDICATE_RESULT_1,
+		stream, cs, false /* restore */, MI_PREDICATE_RESULT_1(RENDER_RING_BASE),
 		INTEL_GT_SCRATCH_FIELD_PERF_PREDICATE_RESULT_1, 1);
 
 	/* And return to the ring. */
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 573dea4516ef..bba9648fe7e8 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -398,16 +398,7 @@
 #define VGA_CR_INDEX_CGA 0x3d4
 #define VGA_CR_DATA_CGA 0x3d5
 
-#define MI_PREDICATE_SRC0	_MMIO(0x2400)
-#define MI_PREDICATE_SRC0_UDW	_MMIO(0x2400 + 4)
-#define MI_PREDICATE_SRC1	_MMIO(0x2408)
-#define MI_PREDICATE_SRC1_UDW	_MMIO(0x2408 + 4)
-#define MI_PREDICATE_DATA       _MMIO(0x2410)
-#define MI_PREDICATE_RESULT     _MMIO(0x2418)
-#define MI_PREDICATE_RESULT_1   _MMIO(0x241c)
-#define MI_PREDICATE_RESULT_2	_MMIO(0x2214)
-#define  LOWER_SLICE_ENABLED	(1 << 0)
-#define  LOWER_SLICE_DISABLED	(0 << 0)
+#define HSW_MI_PREDICATE_RESULT_2	_MMIO(0x2214)
 
 /*
  * Registers used only by the command parser
-- 
2.34.1

