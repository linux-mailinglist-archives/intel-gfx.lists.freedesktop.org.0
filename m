Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 243F14DD426
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Mar 2022 06:18:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9F4710E06D;
	Fri, 18 Mar 2022 05:18:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E16EE10E06D;
 Fri, 18 Mar 2022 05:18:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647580697; x=1679116697;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=CkVV+qSacqZ9tlIiosWgDYlfA96yXkatIGIFP/52VyQ=;
 b=Zt+3/cg9daSSznG3OLSDeohGiEcf82pc2xOrt47zRQNeVIZMCYqkxZdu
 5sXSQSTFxsgQYVr9NJQ+YGGxGJ3CliJHMx/7RLlOTfI8heOWgGbpHoLeS
 H8h3ifJw09RWCMe3YdraiGrhVIeHDyYuzlTaIzLULTQqvYkABgboDgmlD
 uAOw9q9UHkXPVU3GfLNZGVG0uiQVEt74pHN9mLyLsH+qoh7FgW+icn7xO
 L4rOEk+zO4mU5GwbpsgbryrvILzZqnyRRYUNRKrD+6b1ZG2KpeaWlTAS+
 oFZ6v0vwnA93OBxVx8Mhtr6YMqX1H0i2ejZRGl0aLHpeffHxu2zurqUYr w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10289"; a="343486105"
X-IronPort-AV: E=Sophos;i="5.90,191,1643702400"; d="scan'208";a="343486105"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 22:18:17 -0700
X-IronPort-AV: E=Sophos;i="5.90,191,1643702400"; d="scan'208";a="541674675"
Received: from fphy-dev.jf.intel.com (HELO fyang16-desk.jf.intel.com)
 ([134.134.244.167])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 22:18:17 -0700
From: fei.yang@intel.com
To: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Mar 2022 22:12:24 -0700
Message-Id: <20220318051224.3428962-1-fei.yang@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: avoid concurrent writes to aux_inv
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Fei Yang <fei.yang@intel.com>

GPU hangs have been observed when multiple engines write to the
same aux_inv register at the same time. To avoid this each engine
should only invalidate its own auxiliary table. The function
gen12_emit_flush_xcs() currently invalidate the auxiliary table for
all engines because the rq->engine is not necessarily the engine
eventually carrying out the request, and potentially the engine
could even be a virtual one (with engine->instance being -1).
With the MMIO remap feature, we can actually set bit 17 of MI_LRI
instruction and let the hardware to figure out the local aux_inv
register at runtime to avoid invalidating auxiliary table for all
engines.

Bspec: 45728

Cc: Stuart Summers <stuart.summers@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Signed-off-by: Chris Wilson <chris.p.wilson@intel.com>
Signed-off-by: Fei Yang <fei.yang@intel.com>
---
 drivers/gpu/drm/i915/gt/gen8_engine_cs.c     | 42 +++++---------------
 drivers/gpu/drm/i915/gt/intel_gpu_commands.h |  1 +
 2 files changed, 11 insertions(+), 32 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
index 36148887c699..af5daaf934b5 100644
--- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
@@ -165,30 +165,6 @@ static u32 preparser_disable(bool state)
 	return MI_ARB_CHECK | 1 << 8 | state;
 }
 
-static i915_reg_t aux_inv_reg(const struct intel_engine_cs *engine)
-{
-	static const i915_reg_t vd[] = {
-		GEN12_VD0_AUX_NV,
-		GEN12_VD1_AUX_NV,
-		GEN12_VD2_AUX_NV,
-		GEN12_VD3_AUX_NV,
-	};
-
-	static const i915_reg_t ve[] = {
-		GEN12_VE0_AUX_NV,
-		GEN12_VE1_AUX_NV,
-	};
-
-	if (engine->class == VIDEO_DECODE_CLASS)
-		return vd[engine->instance];
-
-	if (engine->class == VIDEO_ENHANCEMENT_CLASS)
-		return ve[engine->instance];
-
-	GEM_BUG_ON("unknown aux_inv reg\n");
-	return INVALID_MMIO_REG;
-}
-
 static u32 *gen12_emit_aux_table_inv(const i915_reg_t inv_reg, u32 *cs)
 {
 	*cs++ = MI_LOAD_REGISTER_IMM(1);
@@ -296,7 +272,7 @@ int gen12_emit_flush_xcs(struct i915_request *rq, u32 mode)
 		if (!HAS_FLAT_CCS(rq->engine->i915)) {
 			aux_inv = rq->engine->mask & ~BIT(BCS0);
 			if (aux_inv)
-				cmd += 2 * hweight32(aux_inv) + 2;
+				cmd += 4;
 		}
 	}
 
@@ -329,14 +305,16 @@ int gen12_emit_flush_xcs(struct i915_request *rq, u32 mode)
 	*cs++ = 0; /* value */
 
 	if (aux_inv) { /* hsdes: 1809175790 */
-		struct intel_engine_cs *engine;
-		unsigned int tmp;
-
-		*cs++ = MI_LOAD_REGISTER_IMM(hweight32(aux_inv));
-		for_each_engine_masked(engine, rq->engine->gt, aux_inv, tmp) {
-			*cs++ = i915_mmio_reg_offset(aux_inv_reg(engine));
-			*cs++ = AUX_INV;
+		*cs++ = MI_LOAD_REGISTER_IMM(1) | MI_LRI_MMIO_REMAP_EN;
+		if (rq->engine->class == VIDEO_DECODE_CLASS)
+			*cs++ = i915_mmio_reg_offset(GEN12_VD0_AUX_NV);
+		else if (rq->engine->class == VIDEO_ENHANCEMENT_CLASS)
+			*cs++ = i915_mmio_reg_offset(GEN12_VE0_AUX_NV);
+		else {
+			GEM_BUG_ON("unknown aux_inv reg\n");
+			*cs++ = i915_mmio_reg_offset(INVALID_MMIO_REG);
 		}
+		*cs++ = AUX_INV;
 		*cs++ = MI_NOOP;
 	}
 
diff --git a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
index d112ffd56418..54fdf1882cae 100644
--- a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
+++ b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
@@ -144,6 +144,7 @@
 #define MI_LOAD_REGISTER_IMM(x)	MI_INSTR(0x22, 2*(x)-1)
 /* Gen11+. addr = base + (ctx_restore ? offset & GENMASK(12,2) : offset) */
 #define   MI_LRI_LRM_CS_MMIO		REG_BIT(19)
+#define   MI_LRI_MMIO_REMAP_EN		(1<<17)
 #define   MI_LRI_FORCE_POSTED		(1<<12)
 #define MI_LOAD_REGISTER_IMM_MAX_REGS (126)
 #define MI_STORE_REGISTER_MEM        MI_INSTR(0x24, 1)
-- 
2.25.1

