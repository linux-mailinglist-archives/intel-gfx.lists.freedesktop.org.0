Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7759E4AE8BA
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Feb 2022 06:12:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B0BC10E2CD;
	Wed,  9 Feb 2022 05:12:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D513B10E1D5
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Feb 2022 05:12:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644383521; x=1675919521;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HHjtduPAUYPlqIa68wTuOa4+RRaJauvsqytKa+6XTjQ=;
 b=Rck/KEbyqQajd27BO0Nsn6a6vaOuI9yyhIxOq1UgUXGmNjPQ+MktTlO2
 NxcsRzN04sFH39rXmInYYA6jVqSLxuG4PAKh36A7A71nJNek5Zvy8yWxj
 fN3QNNiftKCSwB+f7VdTjVoC4YFbsSKh+eytTVwWJ/EWIA0+TZz79XBij
 JvCApOSwmoAZawFgF9mqZYJ+XT6Ft/kO/uc096S/+hTEF8NuGxLkse/gp
 TtKPPKMNG7rYbK/92mFaK0XvULJNb0axVnj2BiDphSsf7uLKKIkeQc9gI
 7UtkKxddfYk1rcP7EWa7/VVxuLZkh505Zn3/iHgcyy93KHsZrJreazZMx w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10252"; a="232686897"
X-IronPort-AV: E=Sophos;i="5.88,354,1635231600"; d="scan'208";a="232686897"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2022 21:11:46 -0800
X-IronPort-AV: E=Sophos;i="5.88,354,1635231600"; d="scan'208";a="482206699"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2022 21:11:46 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Feb 2022 21:11:37 -0800
Message-Id: <20220209051140.1599643-4-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220209051140.1599643-1-matthew.d.roper@intel.com>
References: <20220209051140.1599643-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/6] drm/i915/gt: Use parameterized RING_MI_MODE
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

We have both a parameterized RING_MI_MODE() macro and an RCS-specific
MI_MODE; drop the latter and use the former everywhere.

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_regs.h | 6 ++++++
 drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 8 --------
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 6 +++---
 drivers/gpu/drm/i915/intel_uncore.c         | 2 +-
 4 files changed, 10 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_regs.h b/drivers/gpu/drm/i915/gt/intel_engine_regs.h
index cafb078cdb05..0bf8b45c9319 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_regs.h
@@ -70,6 +70,12 @@
 #define RING_NOPID(base)			_MMIO((base) + 0x94)
 #define RING_HWSTAM(base)			_MMIO((base) + 0x98)
 #define RING_MI_MODE(base)			_MMIO((base) + 0x9c)
+#define   ASYNC_FLIP_PERF_DISABLE		REG_BIT(14)
+#define   MI_FLUSH_ENABLE			REG_BIT(12)
+#define   TGL_NESTED_BB_EN			REG_BIT(12)
+#define   MODE_IDLE				REG_BIT(9)
+#define   STOP_RING				REG_BIT(8)
+#define   VS_TIMER_DISPATCH			REG_BIT(6)
 #define RING_IMR(base)				_MMIO((base) + 0xa8)
 #define RING_EIR(base)				_MMIO((base) + 0xb0)
 #define RING_EMR(base)				_MMIO((base) + 0xb4)
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index 4cdb2cca2122..987e0e1e9c08 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -389,14 +389,6 @@
 #define  _3D_CHICKEN_SDE_LIMIT_FIFO_POLY_DEPTH(x)	((x) << 1) /* gen8+ */
 #define  _3D_CHICKEN3_SF_DISABLE_PIPELINED_ATTR_FETCH	(1 << 1) /* gen6 */
 
-#define MI_MODE		_MMIO(0x209c)
-# define VS_TIMER_DISPATCH				(1 << 6)
-# define MI_FLUSH_ENABLE				(1 << 12)
-# define TGL_NESTED_BB_EN				(1 << 12)
-# define ASYNC_FLIP_PERF_DISABLE			(1 << 14)
-# define MODE_IDLE					(1 << 9)
-# define STOP_RING					(1 << 8)
-
 #define GEN6_GT_MODE	_MMIO(0x20d0)
 #define GEN7_GT_MODE	_MMIO(0x7008)
 #define   GEN6_WIZ_HASHING(hi, lo)			(((hi) << 9) | ((lo) << 7))
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index b146a393cd79..26038066e90b 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -237,7 +237,7 @@ static void gen8_ctx_workarounds_init(struct intel_engine_cs *engine,
 	wa_masked_en(wal, INSTPM, INSTPM_FORCE_ORDERING);
 
 	/* WaDisableAsyncFlipPerfMode:bdw,chv */
-	wa_masked_en(wal, MI_MODE, ASYNC_FLIP_PERF_DISABLE);
+	wa_masked_en(wal, RING_MI_MODE(RENDER_RING_BASE), ASYNC_FLIP_PERF_DISABLE);
 
 	/* WaDisablePartialInstShootdown:bdw,chv */
 	wa_masked_en(wal, GEN8_ROW_CHICKEN,
@@ -2474,7 +2474,7 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 		 * WaDisableAsyncFlipPerfMode:snb,ivb,hsw,vlv
 		 */
 		wa_masked_en(wal,
-			     MI_MODE,
+			     RING_MI_MODE(RENDER_RING_BASE),
 			     ASYNC_FLIP_PERF_DISABLE);
 
 	if (GRAPHICS_VER(i915) == 6) {
@@ -2533,7 +2533,7 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 
 	if (IS_GRAPHICS_VER(i915, 4, 6))
 		/* WaTimedSingleVertexDispatch:cl,bw,ctg,elk,ilk,snb */
-		wa_add(wal, MI_MODE,
+		wa_add(wal, RING_MI_MODE(RENDER_RING_BASE),
 		       0, _MASKED_BIT_ENABLE(VS_TIMER_DISPATCH),
 		       /* XXX bit doesn't stick on Broadwater */
 		       IS_I965G(i915) ? 0 : VS_TIMER_DISPATCH, true);
diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
index 850ebfae31af..dd8fdd5863de 100644
--- a/drivers/gpu/drm/i915/intel_uncore.c
+++ b/drivers/gpu/drm/i915/intel_uncore.c
@@ -1496,7 +1496,7 @@ ilk_dummy_write(struct intel_uncore *uncore)
 	/* WaIssueDummyWriteToWakeupFromRC6:ilk Issue a dummy write to wake up
 	 * the chip from rc6 before touching it for real. MI_MODE is masked,
 	 * hence harmless to write 0 into. */
-	__raw_uncore_write32(uncore, MI_MODE, 0);
+	__raw_uncore_write32(uncore, RING_MI_MODE(RENDER_RING_BASE), 0);
 }
 
 static void
-- 
2.34.1

