Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 59B2260EB7B
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Oct 2022 00:21:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17FE710E57D;
	Wed, 26 Oct 2022 22:21:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D2B910E55B
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Oct 2022 22:21:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666822866; x=1698358866;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=LKa8xEu2kt29oumvTiSbWgVwoup4BlirQcKxvwTygKw=;
 b=PtmmC42ZEdXbsTYiXo3KUVMFreLCamwK09PiSpNAb1HcdhyDtw1rGiWZ
 ztcdlr95ScV4zFl9WygBfm9dDUzlDQ+FpI/YSwY5bquNpqZ24FtC0801Y
 veHxF7IsHiu2B4Yw8Sm6l/PJm7+w7JE9DDvbL1FWcBsfOeBZxRNvaovGu
 2u8I1ANP9P08N0KF0hPsWTdhgwl0KWzbPxiW6KjbODYCx1arM7B34q+vy
 C94c997j+WeC4scsQUwtcSOEh67hu+jL8j7VzOseECK5DvUu/hwysOEHe
 T3aiJS6RVTUUiN9DFiZiir8JHoLhvgrxyMNXMQeKkyuEG48zx80NKKu2y g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="394390425"
X-IronPort-AV: E=Sophos;i="5.95,215,1661842800"; d="scan'208";a="394390425"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2022 15:21:05 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="721431382"
X-IronPort-AV: E=Sophos;i="5.95,215,1661842800"; d="scan'208";a="721431382"
Received: from dut042-dg2frd.fm.intel.com ([10.105.19.4])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2022 15:21:05 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Oct 2022 22:20:49 +0000
Message-Id: <20221026222102.5526-4-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221026222102.5526-1-umesh.nerlige.ramappa@intel.com>
References: <20221026222102.5526-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v6 03/16] drm/i915/perf: Fix noa wait
 predication for DG2
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

Predication for batch buffer commands changed in XEHPSDV.
MI_BATCH_BUFFER_START predicates based on MI_SET_PREDICATE_RESULT
register. The MI_SET_PREDICATE_RESULT register can only be modified
with MI_SET_PREDICATE command. When configured, the MI_SET_PREDICATE
command sets MI_SET_PREDICATE_RESULT based on bit 0 of
MI_PREDICATE_RESULT_2. Use this to configure predication in noa_wait.

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_regs.h |  1 +
 drivers/gpu/drm/i915/i915_perf.c            | 24 +++++++++++++++++----
 2 files changed, 21 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_regs.h b/drivers/gpu/drm/i915/gt/intel_engine_regs.h
index fe1a0d5fd4b1..ee3efd06ee54 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_regs.h
@@ -201,6 +201,7 @@
 #define RING_CONTEXT_STATUS_PTR(base)		_MMIO((base) + 0x3a0)
 #define RING_CTX_TIMESTAMP(base)		_MMIO((base) + 0x3a8) /* gen8+ */
 #define RING_PREDICATE_RESULT(base)		_MMIO((base) + 0x3b8)
+#define MI_PREDICATE_RESULT_2_ENGINE(base)	_MMIO((base) + 0x3bc)
 #define RING_FORCE_TO_NONPRIV(base, i)		_MMIO(((base) + 0x4D0) + (i) * 4)
 #define   RING_FORCE_TO_NONPRIV_DENY		REG_BIT(30)
 #define   RING_FORCE_TO_NONPRIV_ADDRESS_MASK	REG_GENMASK(25, 2)
diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 2b772a6b1cd6..e68666b44a72 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -286,6 +286,7 @@ static u32 i915_perf_stream_paranoid = true;
 #define OAREPORT_REASON_CTX_SWITCH     (1<<3)
 #define OAREPORT_REASON_CLK_RATIO      (1<<5)
 
+#define HAS_MI_SET_PREDICATE(i915) (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50))
 
 /* For sysctl proc_dointvec_minmax of i915_oa_max_sample_rate
  *
@@ -1760,6 +1761,9 @@ static int alloc_noa_wait(struct i915_perf_stream *stream)
 		DELTA_TARGET,
 		N_CS_GPR
 	};
+	i915_reg_t mi_predicate_result = HAS_MI_SET_PREDICATE(i915) ?
+					  MI_PREDICATE_RESULT_2_ENGINE(base) :
+					  MI_PREDICATE_RESULT_1(RENDER_RING_BASE);
 
 	bo = i915_gem_object_create_internal(i915, 4096);
 	if (IS_ERR(bo)) {
@@ -1797,7 +1801,7 @@ static int alloc_noa_wait(struct i915_perf_stream *stream)
 			stream, cs, true /* save */, CS_GPR(i),
 			INTEL_GT_SCRATCH_FIELD_PERF_CS_GPR + 8 * i, 2);
 	cs = save_restore_register(
-		stream, cs, true /* save */, MI_PREDICATE_RESULT_1(RENDER_RING_BASE),
+		stream, cs, true /* save */, mi_predicate_result,
 		INTEL_GT_SCRATCH_FIELD_PERF_PREDICATE_RESULT_1, 1);
 
 	/* First timestamp snapshot location. */
@@ -1851,7 +1855,10 @@ static int alloc_noa_wait(struct i915_perf_stream *stream)
 	 */
 	*cs++ = MI_LOAD_REGISTER_REG | (3 - 2);
 	*cs++ = i915_mmio_reg_offset(CS_GPR(JUMP_PREDICATE));
-	*cs++ = i915_mmio_reg_offset(MI_PREDICATE_RESULT_1(RENDER_RING_BASE));
+	*cs++ = i915_mmio_reg_offset(mi_predicate_result);
+
+	if (HAS_MI_SET_PREDICATE(i915))
+		*cs++ = MI_SET_PREDICATE | 1;
 
 	/* Restart from the beginning if we had timestamps roll over. */
 	*cs++ = (GRAPHICS_VER(i915) < 8 ?
@@ -1861,6 +1868,9 @@ static int alloc_noa_wait(struct i915_perf_stream *stream)
 	*cs++ = i915_ggtt_offset(vma) + (ts0 - batch) * 4;
 	*cs++ = 0;
 
+	if (HAS_MI_SET_PREDICATE(i915))
+		*cs++ = MI_SET_PREDICATE;
+
 	/*
 	 * Now add the diff between to previous timestamps and add it to :
 	 *      (((1 * << 64) - 1) - delay_ns)
@@ -1888,7 +1898,10 @@ static int alloc_noa_wait(struct i915_perf_stream *stream)
 	 */
 	*cs++ = MI_LOAD_REGISTER_REG | (3 - 2);
 	*cs++ = i915_mmio_reg_offset(CS_GPR(JUMP_PREDICATE));
-	*cs++ = i915_mmio_reg_offset(MI_PREDICATE_RESULT_1(RENDER_RING_BASE));
+	*cs++ = i915_mmio_reg_offset(mi_predicate_result);
+
+	if (HAS_MI_SET_PREDICATE(i915))
+		*cs++ = MI_SET_PREDICATE | 1;
 
 	/* Predicate the jump.  */
 	*cs++ = (GRAPHICS_VER(i915) < 8 ?
@@ -1898,13 +1911,16 @@ static int alloc_noa_wait(struct i915_perf_stream *stream)
 	*cs++ = i915_ggtt_offset(vma) + (jump - batch) * 4;
 	*cs++ = 0;
 
+	if (HAS_MI_SET_PREDICATE(i915))
+		*cs++ = MI_SET_PREDICATE;
+
 	/* Restore registers. */
 	for (i = 0; i < N_CS_GPR; i++)
 		cs = save_restore_register(
 			stream, cs, false /* restore */, CS_GPR(i),
 			INTEL_GT_SCRATCH_FIELD_PERF_CS_GPR + 8 * i, 2);
 	cs = save_restore_register(
-		stream, cs, false /* restore */, MI_PREDICATE_RESULT_1(RENDER_RING_BASE),
+		stream, cs, false /* restore */, mi_predicate_result,
 		INTEL_GT_SCRATCH_FIELD_PERF_PREDICATE_RESULT_1, 1);
 
 	/* And return to the ring. */
-- 
2.25.1

