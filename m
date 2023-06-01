Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 02413719A79
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Jun 2023 13:04:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8773310E233;
	Thu,  1 Jun 2023 11:04:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E99710E233
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Jun 2023 11:04:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685617470; x=1717153470;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=+1OJWRAv67nSF+cccpOBXI7yyO1ERQqMC2R0WmjnB88=;
 b=Kpg79aszgnAUw14lis33JVIGLtNzsRCN4wPb0y3UFwYEqtGuQYQCXBVa
 XyZBq4uuzw4wvfXNfUqOxGX82bgvppXrfrb9ou6jzHjCv/YKEmTvlg9tZ
 Ky6ec+fJb8L9/481qEqlZgeEbz5f9mbBpLplKVsBXvCCX/aPuokccBe5l
 m5jo8YOUKOh33QI9seif3V0S8Yv3HRkVH0NNGF6VcAKQ8Y7uNzA4SCzY8
 HSKL+fseqWDIbmGm7/UgeepVW04qrZiZEwwJJpMk5bifdwYShNLpFgyq9
 MmiArLX1WVT6UpgXV8ZYee44jViOkx9mDgNYaViFe0tDVGjT+K+hdvZZP Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10727"; a="345058464"
X-IronPort-AV: E=Sophos;i="6.00,209,1681196400"; d="scan'208";a="345058464"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2023 04:04:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10727"; a="819722438"
X-IronPort-AV: E=Sophos;i="6.00,209,1681196400"; d="scan'208";a="819722438"
Received: from tejas-super-server.iind.intel.com ([10.145.169.166])
 by fmsmga002.fm.intel.com with ESMTP; 01 Jun 2023 04:04:24 -0700
From: Tejas Upadhyay <tejas.upadhyay@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  1 Jun 2023 16:39:59 +0530
Message-Id: <20230601110959.1715927-1-tejas.upadhyay@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH V5] drm/i915/gt: Add workaround 14016712196
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

For mtl, workaround suggests that, SW insert a
dummy PIPE_CONTROL prior to PIPE_CONTROL which
contains a post sync: Timestamp or Write Immediate.

Bspec: 72197

V5:
  - Remove ret variable - Andi
V4:
  - Update commit message, avoid returing cs - Andi/Matt
V3:
  - Wrap dummy pipe control stuff in API - Andi
V2:
  - Fix  kernel test robot warnings

Closes: https://lore.kernel.org/oe-kbuild-all/202305121525.3EWdGoBY-lkp@intel.com/
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
Signed-off-by: Tejas Upadhyay <tejas.upadhyay@intel.com>
---
 drivers/gpu/drm/i915/gt/gen8_engine_cs.c | 38 ++++++++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
index e1c76e5bfa82..23857cc08eca 100644
--- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
@@ -177,14 +177,40 @@ u32 *gen12_emit_aux_table_inv(struct intel_gt *gt, u32 *cs, const i915_reg_t inv
 	return cs;
 }
 
+static int mtl_dummy_pipe_control(struct i915_request *rq)
+{
+	/* Wa_14016712196 */
+	if (IS_MTL_GRAPHICS_STEP(rq->engine->i915, M, STEP_A0, STEP_B0) ||
+	    IS_MTL_GRAPHICS_STEP(rq->engine->i915, P, STEP_A0, STEP_B0)) {
+		u32 *cs;
+
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
 
 	if (mode & EMIT_FLUSH) {
 		u32 flags = 0;
+		int err;
 		u32 *cs;
 
+		err = mtl_dummy_pipe_control(rq);
+		if (err)
+			return err;
+
 		flags |= PIPE_CONTROL_TILE_CACHE_FLUSH;
 		flags |= PIPE_CONTROL_FLUSH_L3;
 		flags |= PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH;
@@ -217,6 +243,11 @@ int gen12_emit_flush_rcs(struct i915_request *rq, u32 mode)
 	if (mode & EMIT_INVALIDATE) {
 		u32 flags = 0;
 		u32 *cs, count;
+		int err;
+
+		err = mtl_dummy_pipe_control(rq);
+		if (err)
+			return err;
 
 		flags |= PIPE_CONTROL_COMMAND_CACHE_INVALIDATE;
 		flags |= PIPE_CONTROL_TLB_INVALIDATE;
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

