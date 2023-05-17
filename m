Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA0E6706982
	for <lists+intel-gfx@lfdr.de>; Wed, 17 May 2023 15:17:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 180F910E414;
	Wed, 17 May 2023 13:17:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E76410E414
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 May 2023 13:17:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684329437; x=1715865437;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=DXRgGjaxc3AfCkX4W2x9D7fvpnx9HX4DErt8rJhpia0=;
 b=f7rAJzwT8+d9VcmEqGwhAgR5esASZAVjEhT7T0wNbO0JdRwVnx2d2S9P
 d2YX+CzQ1Zu0PUzjR8gz1Orq2EFkIZ5+M43mQLlM4F+l7LOpmjRKipcJi
 4SR5gfT6AkhWuVk6P8uN3TTSRHpF/vHzDkDT9M7SNSOYClFxi5cEhzqqF
 iaBIA7tcD0l2MMwW3Tw8NqCzqPjwLXIT1GPV3CVVSToe+tbiylFNEBAnR
 s9o8IAkK76rTph89YcXGCwQlm1jl5/zuDGQ+W33w3gn608AeCbLRdGKzO
 xDWyzKrCfuewE+KFayT5fjSR7BAxB5GJkRVbKw2OjHS5SqoTkdmJ6TtVn g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="438099821"
X-IronPort-AV: E=Sophos;i="5.99,282,1677571200"; d="scan'208";a="438099821"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2023 06:17:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="1031709483"
X-IronPort-AV: E=Sophos;i="5.99,282,1677571200"; d="scan'208";a="1031709483"
Received: from tejas-super-server.iind.intel.com ([10.145.169.166])
 by fmsmga005.fm.intel.com with ESMTP; 17 May 2023 06:17:14 -0700
From: Tejas Upadhyay <tejas.upadhyay@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 17 May 2023 18:52:30 +0530
Message-Id: <20230517132230.1102553-1-tejas.upadhyay@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH V2] drm/i915/gt: Add workaround 14016712196
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

Wa_14016712196 implementation for mtl

Bspec: 72197

V2:
  - Fix  kernel test robot warnings

Reported-by: kernel test robot <lkp@intel.com>
Closes: https://lore.kernel.org/oe-kbuild-all/202305121525.3EWdGoBY-lkp@intel.com/
Signed-off-by: Tejas Upadhyay <tejas.upadhyay@intel.com>
---
 drivers/gpu/drm/i915/gt/gen8_engine_cs.c | 41 ++++++++++++++++++++++++
 1 file changed, 41 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
index e1c76e5bfa82..737eb515544b 100644
--- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
@@ -177,14 +177,38 @@ u32 *gen12_emit_aux_table_inv(struct intel_gt *gt, u32 *cs, const i915_reg_t inv
 	return cs;
 }
 
+static int mtl_dummy_pipe_control(struct i915_request *rq, u32 *cs)
+{
+	if (IS_ERR(cs))
+		return PTR_ERR(cs);
+	cs = gen12_emit_pipe_control(cs,
+				     0,
+				     PIPE_CONTROL_DEPTH_CACHE_FLUSH,
+				     LRC_PPHWSP_SCRATCH_ADDR);
+	intel_ring_advance(rq, cs);
+
+	return 0;
+}
+
 int gen12_emit_flush_rcs(struct i915_request *rq, u32 mode)
 {
 	struct intel_engine_cs *engine = rq->engine;
+	int err;
 
 	if (mode & EMIT_FLUSH) {
 		u32 flags = 0;
 		u32 *cs;
 
+		/* Wa_14016712196 */
+		if (IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_A0, STEP_B0) ||
+		    IS_MTL_GRAPHICS_STEP(engine->i915, P, STEP_A0, STEP_B0)) {
+			/* dummy PIPE_CONTROL + depth flush */
+			cs = intel_ring_begin(rq, 6);
+			err = mtl_dummy_pipe_control(rq, cs);
+			if (err)
+				return err;
+		}
+
 		flags |= PIPE_CONTROL_TILE_CACHE_FLUSH;
 		flags |= PIPE_CONTROL_FLUSH_L3;
 		flags |= PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH;
@@ -218,6 +242,16 @@ int gen12_emit_flush_rcs(struct i915_request *rq, u32 mode)
 		u32 flags = 0;
 		u32 *cs, count;
 
+		/* Wa_14016712196 */
+		if (IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_A0, STEP_B0) ||
+		    IS_MTL_GRAPHICS_STEP(engine->i915, P, STEP_A0, STEP_B0)) {
+			/* dummy PIPE_CONTROL + depth flush */
+			cs = intel_ring_begin(rq, 6);
+			err = mtl_dummy_pipe_control(rq, cs);
+			if (err)
+				return err;
+		}
+
 		flags |= PIPE_CONTROL_COMMAND_CACHE_INVALIDATE;
 		flags |= PIPE_CONTROL_TLB_INVALIDATE;
 		flags |= PIPE_CONTROL_INSTRUCTION_CACHE_INVALIDATE;
@@ -733,6 +767,13 @@ u32 *gen12_emit_fini_breadcrumb_rcs(struct i915_request *rq, u32 *cs)
 		     PIPE_CONTROL_DC_FLUSH_ENABLE |
 		     PIPE_CONTROL_FLUSH_ENABLE);
 
+	/* Wa_14016712196 */
+	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
+	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
+		/* dummy PIPE_CONTROL + depth flush */
+		cs = gen12_emit_pipe_control(cs, 0,
+					     PIPE_CONTROL_DEPTH_CACHE_FLUSH, 0);
+
 	if (GRAPHICS_VER(i915) == 12 && GRAPHICS_VER_FULL(i915) < IP_VER(12, 50))
 		/* Wa_1409600907 */
 		flags |= PIPE_CONTROL_DEPTH_STALL;
-- 
2.25.1

