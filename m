Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C57975B4DC
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jul 2023 18:45:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B46E10E5EF;
	Thu, 20 Jul 2023 16:45:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7148110E5EB;
 Thu, 20 Jul 2023 16:45:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689871538; x=1721407538;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8PftsjpnhIbJM7cH1XP+PS2IDm3ZahoW3XZfOjq+elE=;
 b=iwyCZsMAkElOAOPNVlEbhI0FmIwapTU2BRTweEYBsDxyOxLJ3z540Ogq
 IlTDobrydd5M91v9G0W4LG1NdubZTVv9rCV868NJ/KfHMmH98RHMSWnF3
 RJ+q/vG2leBGKHn+1MPmUyQCtqsZ7q+d4XOr3JblnyXeaV0IVY6/4ekwu
 Lgyp6OKdE8NGdGyJFXV1q+erYBW9xD2O597rn5BkNy6IvkboaVxRjHxkZ
 SUa81jJuhx4jMPk9zVpdANuLdWKMePqPcCr8l12nbq+DI8wlVosTZeLtw
 dVOz/YKrf3L97IT1l+DxUDKtbZDvx9ZSGSvWOxdaI7x1Vgo0HwQnQjKBk g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10777"; a="351680751"
X-IronPort-AV: E=Sophos;i="6.01,219,1684825200"; d="scan'208";a="351680751"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2023 09:45:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10777"; a="727768478"
X-IronPort-AV: E=Sophos;i="6.01,219,1684825200"; d="scan'208";a="727768478"
Received: from sdene1-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.252.32.238])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2023 09:45:31 -0700
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>, Andrzej Hajda <andrzej.hajda@intel.com>
Date: Thu, 20 Jul 2023 18:44:49 +0200
Message-Id: <20230720164454.757075-5-andi.shyti@linux.intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230720164454.757075-1-andi.shyti@linux.intel.com>
References: <20230720164454.757075-1-andi.shyti@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v6 4/9] drm/i915/gt: Rename flags with
 bit_group_X according to the datasheet
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 linux-stable <stable@vger.kernel.org>,
 dri-evel <dri-devel@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In preparation of the next patch align with the datasheet (BSPEC
47112) with the naming of the pipe control set of flag values.
The variable "flags" in gen12_emit_flush_rcs() is applied as a
set of flags called Bit Group 1.

Define also the Bit Group 0 as bit_group_0 where currently only
PIPE_CONTROL0_HDC_PIPELINE_FLUSH bit is set.

Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
Cc: <stable@vger.kernel.org> # v5.8+
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>
Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>
---
 drivers/gpu/drm/i915/gt/gen8_engine_cs.c | 34 +++++++++++++-----------
 drivers/gpu/drm/i915/gt/gen8_engine_cs.h | 18 ++++++++-----
 2 files changed, 29 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
index 5fbc3f630f32b..7566c89d9def3 100644
--- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
@@ -207,7 +207,8 @@ int gen12_emit_flush_rcs(struct i915_request *rq, u32 mode)
 	 * table requires quiescing memory traffic beforehand
 	 */
 	if (mode & EMIT_FLUSH || HAS_AUX_CCS(engine->i915)) {
-		u32 flags = 0;
+		u32 bit_group_0 = 0;
+		u32 bit_group_1 = 0;
 		int err;
 		u32 *cs;
 
@@ -215,32 +216,33 @@ int gen12_emit_flush_rcs(struct i915_request *rq, u32 mode)
 		if (err)
 			return err;
 
-		flags |= PIPE_CONTROL_TILE_CACHE_FLUSH;
-		flags |= PIPE_CONTROL_FLUSH_L3;
-		flags |= PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH;
-		flags |= PIPE_CONTROL_DEPTH_CACHE_FLUSH;
+		bit_group_0 |= PIPE_CONTROL0_HDC_PIPELINE_FLUSH;
+
+		bit_group_1 |= PIPE_CONTROL_TILE_CACHE_FLUSH;
+		bit_group_1 |= PIPE_CONTROL_FLUSH_L3;
+		bit_group_1 |= PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH;
+		bit_group_1 |= PIPE_CONTROL_DEPTH_CACHE_FLUSH;
 		/* Wa_1409600907:tgl,adl-p */
-		flags |= PIPE_CONTROL_DEPTH_STALL;
-		flags |= PIPE_CONTROL_DC_FLUSH_ENABLE;
-		flags |= PIPE_CONTROL_FLUSH_ENABLE;
+		bit_group_1 |= PIPE_CONTROL_DEPTH_STALL;
+		bit_group_1 |= PIPE_CONTROL_DC_FLUSH_ENABLE;
+		bit_group_1 |= PIPE_CONTROL_FLUSH_ENABLE;
 
-		flags |= PIPE_CONTROL_STORE_DATA_INDEX;
-		flags |= PIPE_CONTROL_QW_WRITE;
+		bit_group_1 |= PIPE_CONTROL_STORE_DATA_INDEX;
+		bit_group_1 |= PIPE_CONTROL_QW_WRITE;
 
-		flags |= PIPE_CONTROL_CS_STALL;
+		bit_group_1 |= PIPE_CONTROL_CS_STALL;
 
 		if (!HAS_3D_PIPELINE(engine->i915))
-			flags &= ~PIPE_CONTROL_3D_ARCH_FLAGS;
+			bit_group_1 &= ~PIPE_CONTROL_3D_ARCH_FLAGS;
 		else if (engine->class == COMPUTE_CLASS)
-			flags &= ~PIPE_CONTROL_3D_ENGINE_FLAGS;
+			bit_group_1 &= ~PIPE_CONTROL_3D_ENGINE_FLAGS;
 
 		cs = intel_ring_begin(rq, 6);
 		if (IS_ERR(cs))
 			return PTR_ERR(cs);
 
-		cs = gen12_emit_pipe_control(cs,
-					     PIPE_CONTROL0_HDC_PIPELINE_FLUSH,
-					     flags, LRC_PPHWSP_SCRATCH_ADDR);
+		cs = gen12_emit_pipe_control(cs, bit_group_0, bit_group_1,
+					     LRC_PPHWSP_SCRATCH_ADDR);
 		intel_ring_advance(rq, cs);
 	}
 
diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.h b/drivers/gpu/drm/i915/gt/gen8_engine_cs.h
index 655e5c00ddc27..a44eda096557c 100644
--- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.h
+++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.h
@@ -49,25 +49,29 @@ u32 *gen12_emit_fini_breadcrumb_rcs(struct i915_request *rq, u32 *cs);
 u32 *gen12_emit_aux_table_inv(struct intel_gt *gt, u32 *cs, const i915_reg_t inv_reg);
 
 static inline u32 *
-__gen8_emit_pipe_control(u32 *batch, u32 flags0, u32 flags1, u32 offset)
+__gen8_emit_pipe_control(u32 *batch, u32 bit_group_0,
+			 u32 bit_group_1, u32 offset)
 {
 	memset(batch, 0, 6 * sizeof(u32));
 
-	batch[0] = GFX_OP_PIPE_CONTROL(6) | flags0;
-	batch[1] = flags1;
+	batch[0] = GFX_OP_PIPE_CONTROL(6) | bit_group_0;
+	batch[1] = bit_group_1;
 	batch[2] = offset;
 
 	return batch + 6;
 }
 
-static inline u32 *gen8_emit_pipe_control(u32 *batch, u32 flags, u32 offset)
+static inline u32 *gen8_emit_pipe_control(u32 *batch,
+					  u32 bit_group_1, u32 offset)
 {
-	return __gen8_emit_pipe_control(batch, 0, flags, offset);
+	return __gen8_emit_pipe_control(batch, 0, bit_group_1, offset);
 }
 
-static inline u32 *gen12_emit_pipe_control(u32 *batch, u32 flags0, u32 flags1, u32 offset)
+static inline u32 *gen12_emit_pipe_control(u32 *batch, u32 bit_group_0,
+					   u32 bit_group_1, u32 offset)
 {
-	return __gen8_emit_pipe_control(batch, flags0, flags1, offset);
+	return __gen8_emit_pipe_control(batch, bit_group_0,
+					bit_group_1, offset);
 }
 
 static inline u32 *
-- 
2.40.1

