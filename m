Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EB287184E6
	for <lists+intel-gfx@lfdr.de>; Wed, 31 May 2023 16:26:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE2DB10E4EA;
	Wed, 31 May 2023 14:26:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A82C10E4EA
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 May 2023 14:26:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685543202; x=1717079202;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=AEbVx0fR4Z0mY2jIxgSELxaymg1tEg7CzvOJzofgViE=;
 b=OsSGsLL8t1+OeHOjzvoNZv8FDTjgLaLuHfTt1QaGxCkwYZ7AKdhm9WH2
 o3HDzjImIDvsFGA2BJQPSOOfZvzU5aW3ZAhvJW2GACnkV1KtNftMzktED
 frKVWRtZ1vsRrQPdZu7ihVorIBQ4dlZYO3WOiWsI3K3kxey4iNsdzYUCV
 Ncso+2mH/+O8rvi7Wdl2ejLq+lcwWLh2agZ4xXIJBQa4IIauSuGX2p78P
 RL9T/yKHqp1Z/fEaKdRX0h0M6/+fro+LrWCHEzXq6RrOUW5vDphYzOTqG
 q4zrGf4/1SFTodEnE5t43bdK3xckvM7/ae7dYZROxYhJbKE/rJ5EfyszH A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10727"; a="418745396"
X-IronPort-AV: E=Sophos;i="6.00,207,1681196400"; d="scan'208";a="418745396"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2023 07:26:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10727"; a="657336784"
X-IronPort-AV: E=Sophos;i="6.00,207,1681196400"; d="scan'208";a="657336784"
Received: from tejas-super-server.iind.intel.com ([10.145.169.166])
 by orsmga003.jf.intel.com with ESMTP; 31 May 2023 07:26:40 -0700
From: Tejas Upadhyay <tejas.upadhyay@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 31 May 2023 20:02:14 +0530
Message-Id: <20230531143214.1650701-1-tejas.upadhyay@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH V3] drm/i915/gt: Add workaround 14016712196
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

V3:
  - Wrap dummy pipe control stuff in API - Andi
V2:
  - Fix  kernel test robot warnings

Closes: https://lore.kernel.org/oe-kbuild-all/202305121525.3EWdGoBY-lkp@intel.com/
Signed-off-by: Tejas Upadhyay <tejas.upadhyay@intel.com>
---
 drivers/gpu/drm/i915/gt/gen8_engine_cs.c | 39 ++++++++++++++++++++++++
 1 file changed, 39 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
index e1c76e5bfa82..206947f1fc7c 100644
--- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
@@ -177,6 +177,30 @@ u32 *gen12_emit_aux_table_inv(struct intel_gt *gt, u32 *cs, const i915_reg_t inv
 	return cs;
 }
 
+static u32 *mtl_dummy_pipe_control(struct i915_request *rq)
+{
+	u32 *cs;
+
+	/* Wa_14016712196 */
+	if (IS_MTL_GRAPHICS_STEP(rq->engine->i915, M, STEP_A0, STEP_B0) ||
+	    IS_MTL_GRAPHICS_STEP(rq->engine->i915, P, STEP_A0, STEP_B0)) {
+		int ret;
+
+		/* dummy PIPE_CONTROL + depth flush */
+		cs = intel_ring_begin(rq, 6);
+		ret = IS_ERR(cs);
+		if (ret)
+			return ERR_PTR(ret);
+		cs = gen12_emit_pipe_control(cs,
+					     0,
+					     PIPE_CONTROL_DEPTH_CACHE_FLUSH,
+					     LRC_PPHWSP_SCRATCH_ADDR);
+		intel_ring_advance(rq, cs);
+	}
+
+	return cs;
+}
+
 int gen12_emit_flush_rcs(struct i915_request *rq, u32 mode)
 {
 	struct intel_engine_cs *engine = rq->engine;
@@ -185,6 +209,10 @@ int gen12_emit_flush_rcs(struct i915_request *rq, u32 mode)
 		u32 flags = 0;
 		u32 *cs;
 
+		cs = mtl_dummy_pipe_control(rq);
+		if (IS_ERR(cs))
+			return PTR_ERR(cs);
+
 		flags |= PIPE_CONTROL_TILE_CACHE_FLUSH;
 		flags |= PIPE_CONTROL_FLUSH_L3;
 		flags |= PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH;
@@ -218,6 +246,10 @@ int gen12_emit_flush_rcs(struct i915_request *rq, u32 mode)
 		u32 flags = 0;
 		u32 *cs, count;
 
+		cs = mtl_dummy_pipe_control(rq);
+		if (IS_ERR(cs))
+			return PTR_ERR(cs);
+
 		flags |= PIPE_CONTROL_COMMAND_CACHE_INVALIDATE;
 		flags |= PIPE_CONTROL_TLB_INVALIDATE;
 		flags |= PIPE_CONTROL_INSTRUCTION_CACHE_INVALIDATE;
@@ -733,6 +765,13 @@ u32 *gen12_emit_fini_breadcrumb_rcs(struct i915_request *rq, u32 *cs)
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

