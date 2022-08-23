Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FC4159CCBD
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Aug 2022 02:05:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A19B5A74C2;
	Tue, 23 Aug 2022 00:04:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CB5CA74B5
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Aug 2022 00:03:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661213024; x=1692749024;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=z8ROyXubCNeNHwrBurhdD20QwcIuAhfCx0R264+DEYs=;
 b=PuXNbiarOz3PDBH0ZH5k4gf+goB9koykPl7wMG0ztnlgUO2VSIRSklj3
 3cOxewaW9H5nibo3XSEMGRm3VjPMGS1dizDIfLR/kVSlxyXT8rSJLuk4k
 88Dr7o4tBOhA8WyLwwkY9MeMRSqxnKFGIrKoOwrm2gh/K4qnY10vi4ZmA
 gBA7oaCEmx2q6TgtODVfyRjkKq6J9YP4WizvI4qxjC8Woku3TQkrAEiMz
 A+TXaedx5zDyn6iTwJjpIfIvuEbIdrDOlq4glv4ESROmn2+0mi1HYkxLH
 jKBua6c0SBuJUkLL1IzSHGnQxv17/gbngTyz/CduhAoIfH5z3qlKBRAGq Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10447"; a="273304827"
X-IronPort-AV: E=Sophos;i="5.93,255,1654585200"; d="scan'208";a="273304827"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2022 17:03:42 -0700
X-IronPort-AV: E=Sophos;i="5.93,255,1654585200"; d="scan'208";a="669775514"
Received: from dut042-dg2frd.fm.intel.com ([10.105.19.4])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2022 17:03:42 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Lionel G Landwerlin <lionel.g.landwerlin@intel.com>,
 Ashutosh Dixit <ashutosh.dixit@intel.com>
Date: Tue, 23 Aug 2022 00:03:26 +0000
Message-Id: <20220823000342.281222-4-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220823000342.281222-1-umesh.nerlige.ramappa@intel.com>
References: <20220823000342.281222-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 03/19] drm/i915/perf: Fix noa wait predication
 for DG2
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
---
 drivers/gpu/drm/i915/gt/intel_engine_regs.h |  1 +
 drivers/gpu/drm/i915/i915_perf.c            | 24 +++++++++++++++++----
 2 files changed, 21 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_regs.h b/drivers/gpu/drm/i915/gt/intel_engine_regs.h
index 889f0df3940b..25d23f3a4769 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_regs.h
@@ -200,6 +200,7 @@
 #define RING_CONTEXT_STATUS_PTR(base)		_MMIO((base) + 0x3a0)
 #define RING_CTX_TIMESTAMP(base)		_MMIO((base) + 0x3a8) /* gen8+ */
 #define RING_PREDICATE_RESULT(base)		_MMIO((base) + 0x3b8)
+#define MI_PREDICATE_RESULT_2_ENGINE(base)	_MMIO((base) + 0x3bc)
 #define RING_FORCE_TO_NONPRIV(base, i)		_MMIO(((base) + 0x4D0) + (i) * 4)
 #define   RING_FORCE_TO_NONPRIV_DENY		REG_BIT(30)
 #define   RING_FORCE_TO_NONPRIV_ADDRESS_MASK	REG_GENMASK(25, 2)
diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index c8331b549d31..3526693d64fa 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -286,6 +286,7 @@ static u32 i915_perf_stream_paranoid = true;
 #define OAREPORT_REASON_CTX_SWITCH     (1<<3)
 #define OAREPORT_REASON_CLK_RATIO      (1<<5)
 
+#define HAS_MI_SET_PREDICATE(i915) (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50))
 
 /* For sysctl proc_dointvec_minmax of i915_oa_max_sample_rate
  *
@@ -1766,6 +1767,9 @@ static int alloc_noa_wait(struct i915_perf_stream *stream)
 		DELTA_TARGET,
 		N_CS_GPR
 	};
+	i915_reg_t mi_predicate_result = HAS_MI_SET_PREDICATE(i915) ?
+					  MI_PREDICATE_RESULT_2_ENGINE(base) :
+					  MI_PREDICATE_RESULT_1(RENDER_RING_BASE);
 
 	bo = i915_gem_object_create_internal(i915, 4096);
 	if (IS_ERR(bo)) {
@@ -1803,7 +1807,7 @@ static int alloc_noa_wait(struct i915_perf_stream *stream)
 			stream, cs, true /* save */, CS_GPR(i),
 			INTEL_GT_SCRATCH_FIELD_PERF_CS_GPR + 8 * i, 2);
 	cs = save_restore_register(
-		stream, cs, true /* save */, MI_PREDICATE_RESULT_1(RENDER_RING_BASE),
+		stream, cs, true /* save */, mi_predicate_result,
 		INTEL_GT_SCRATCH_FIELD_PERF_PREDICATE_RESULT_1, 1);
 
 	/* First timestamp snapshot location. */
@@ -1857,7 +1861,10 @@ static int alloc_noa_wait(struct i915_perf_stream *stream)
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
@@ -1867,6 +1874,9 @@ static int alloc_noa_wait(struct i915_perf_stream *stream)
 	*cs++ = i915_ggtt_offset(vma) + (ts0 - batch) * 4;
 	*cs++ = 0;
 
+	if (HAS_MI_SET_PREDICATE(i915))
+		*cs++ = MI_SET_PREDICATE;
+
 	/*
 	 * Now add the diff between to previous timestamps and add it to :
 	 *      (((1 * << 64) - 1) - delay_ns)
@@ -1894,7 +1904,10 @@ static int alloc_noa_wait(struct i915_perf_stream *stream)
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
@@ -1904,13 +1917,16 @@ static int alloc_noa_wait(struct i915_perf_stream *stream)
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

