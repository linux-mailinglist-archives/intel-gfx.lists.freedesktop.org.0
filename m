Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 226616FFFDD
	for <lists+intel-gfx@lfdr.de>; Fri, 12 May 2023 07:22:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 560E810E5A0;
	Fri, 12 May 2023 05:22:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6AABD10E5A0
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 May 2023 05:22:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683868958; x=1715404958;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=bQmx9gYGs3XQpJ5gPy5g0pKCCwpgU1ne6qZn0UCCb9M=;
 b=AcU0M8B0BLk6BShlYl1JE/80eAZHy0eQCClB0aXmgwKxxBC1v6oYQwYc
 geQ/FDjEC6hBsiISyHVGYNdt72W70V0CrG/jjIZrk0843p+mQIsUGVwme
 i12eEr5xmKOuzdRujs61rVMWAUtCNzZXR5uY2lp5YE/wc+ZoeRdigx8xc
 JLoXtaOxfMtQm8YmICdAW5dVx7L5MQ77jcmqxUuZNe59AdYhmKrahWqIJ
 WZ1NUKFfLsssrLBLeoPKY+4vQ3tbHvBRzuCziaPh7JbSnUScybmMaPNsF
 rKvoDG1Cm+K2PtIgwBwkZNqEh+27HlY/FIUcpeZGTTeNgdOZFghhWyD67 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10707"; a="331069992"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="331069992"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2023 22:22:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10707"; a="703042007"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="703042007"
Received: from tejas-super-server.iind.intel.com ([10.145.169.166])
 by fmsmga007.fm.intel.com with ESMTP; 11 May 2023 22:22:35 -0700
From: Tejas Upadhyay <tejas.upadhyay@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 12 May 2023 10:57:44 +0530
Message-Id: <20230512052744.778113-1-tejas.upadhyay@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Add workaround 14016712196
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

Signed-off-by: Tejas Upadhyay <tejas.upadhyay@intel.com>
---
 drivers/gpu/drm/i915/gt/gen8_engine_cs.c | 38 ++++++++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
index e1c76e5bfa82..2b9691ef1a4a 100644
--- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
@@ -177,14 +177,40 @@ u32 *gen12_emit_aux_table_inv(struct intel_gt *gt, u32 *cs, const i915_reg_t inv
 	return cs;
 }
 
+int mtl_dummy_pipe_control(struct i915_request *rq, u32 *cs)
+{
+	struct intel_engine_cs *engine = rq->engine;
+
+	if (IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_A0, STEP_B0) ||
+	    IS_MTL_GRAPHICS_STEP(engine->i915, P, STEP_A0, STEP_B0)) {
+		/* dummy PIPE_CONTROL + depth flush */
+		cs = intel_ring_begin(rq, 6);
+		if (IS_ERR(cs))
+			return PTR_ERR(cs);
+		cs = gen12_emit_pipe_control(cs,
+					     0,
+					     PIPE_CONTROL_DEPTH_CACHE_FLUSH,
+					     LRC_PPHWSP_SCRATCH_ADDR);
+		intel_ring_advance(rq, cs);
+	}
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
+		err = mtl_dummy_pipe_control(rq, cs);
+		if (err)
+			return err;
+
 		flags |= PIPE_CONTROL_TILE_CACHE_FLUSH;
 		flags |= PIPE_CONTROL_FLUSH_L3;
 		flags |= PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH;
@@ -218,6 +244,11 @@ int gen12_emit_flush_rcs(struct i915_request *rq, u32 mode)
 		u32 flags = 0;
 		u32 *cs, count;
 
+		/* Wa_14016712196 */
+		err = mtl_dummy_pipe_control(rq, cs);
+		if (err)
+			return err;
+
 		flags |= PIPE_CONTROL_COMMAND_CACHE_INVALIDATE;
 		flags |= PIPE_CONTROL_TLB_INVALIDATE;
 		flags |= PIPE_CONTROL_INSTRUCTION_CACHE_INVALIDATE;
@@ -733,6 +764,13 @@ u32 *gen12_emit_fini_breadcrumb_rcs(struct i915_request *rq, u32 *cs)
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

