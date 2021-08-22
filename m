Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9843D3F407E
	for <lists+intel-gfx@lfdr.de>; Sun, 22 Aug 2021 18:30:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F76389FA5;
	Sun, 22 Aug 2021 16:30:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 446F589F9F
 for <intel-gfx@lists.freedesktop.org>; Sun, 22 Aug 2021 16:30:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10084"; a="302567471"
X-IronPort-AV: E=Sophos;i="5.84,342,1620716400"; d="scan'208";a="302567471"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2021 09:30:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,342,1620716400"; d="scan'208";a="596395822"
Received: from ayazahma-nuc8i7beh.iind.intel.com ([10.145.162.59])
 by fmsmga001.fm.intel.com with ESMTP; 22 Aug 2021 09:30:43 -0700
From: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>,
	CQ Tang <cq.tang@intel.com>
Date: Sun, 22 Aug 2021 21:57:06 +0530
Message-Id: <20210822162706.819507-14-ayaz.siddiqui@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210822162706.819507-1-ayaz.siddiqui@intel.com>
References: <20210822162706.819507-1-ayaz.siddiqui@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 13/13] drm/i915/gt: Clear compress metadata for
 Gen12.5 >= platforms
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

Gen12.5 >= devices support Flat CCS which reserved a portion of the device
memory to store compression metadata, during the clearing of device memory
buffer object we also need to clear the associated CCS buffer.

Flat CCS memory can not be directly accessed by S/W.
Address of CCS buffer associated main BO is automatically calculated
by device itself. KMD/UMD can only access this buffer indirectly using
XY_CTRL_SURF_COPY_BLT cmd via the address of device memory buffer.

Cc: CQ Tang <cq.tang@intel.com>
Signed-off-by: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gpu_commands.h |  14 +++
 drivers/gpu/drm/i915/gt/intel_migrate.c      | 121 ++++++++++++++++++-
 drivers/gpu/drm/i915/gt/intel_migrate.h      |   1 -
 3 files changed, 132 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
index 1c3af0fc0456..62cc750d9990 100644
--- a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
+++ b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
@@ -198,6 +198,20 @@
 #define GFX_OP_DRAWRECT_INFO     ((0x3<<29)|(0x1d<<24)|(0x80<<16)|(0x3))
 #define GFX_OP_DRAWRECT_INFO_I965  ((0x7900<<16)|0x2)
 
+#define XY_CTRL_SURF_INSTR_SIZE	5
+#define MI_FLUSH_DW_SIZE		3
+#define XY_CTRL_SURF_COPY_BLT		((2 << 29) | (0x48 << 22) | 3)
+#define   SRC_ACCESS_TYPE_SHIFT	21
+#define   DST_ACCESS_TYPE_SHIFT	20
+#define   CCS_SIZE_SHIFT		8
+#define   XY_CTRL_SURF_MOCS_SHIFT	25
+#define   NUM_CCS_BYTES_PER_BLOCK	256
+#define   NUM_CCS_BLKS_PER_XFER	1024
+#define   INDIRECT_ACCESS		0
+#define   DIRECT_ACCESS		1
+#define  MI_FLUSH_LLC			BIT(9)
+#define  MI_FLUSH_CCS			BIT(16)
+
 #define COLOR_BLT_CMD			(2 << 29 | 0x40 << 22 | (5 - 2))
 #define XY_COLOR_BLT_CMD		(2 << 29 | 0x50 << 22)
 #define SRC_COPY_BLT_CMD		(2 << 29 | 0x43 << 22)
diff --git a/drivers/gpu/drm/i915/gt/intel_migrate.c b/drivers/gpu/drm/i915/gt/intel_migrate.c
index d0a7c934fd3b..5d471655fe10 100644
--- a/drivers/gpu/drm/i915/gt/intel_migrate.c
+++ b/drivers/gpu/drm/i915/gt/intel_migrate.c
@@ -17,6 +17,8 @@ struct insert_pte_data {
 };
 
 #define CHUNK_SZ SZ_8M /* ~1ms at 8GiB/s preemption delay */
+#define GET_CCS_SIZE(i915, size)	(HAS_FLAT_CCS(i915) ? \
+				 (size) >> 8 : 0)
 
 static bool engine_supports_migration(struct intel_engine_cs *engine)
 {
@@ -490,15 +492,104 @@ intel_context_migrate_copy(struct intel_context *ce,
 	return err;
 }
 
-static int emit_clear(struct i915_request *rq, int size, u32 value)
+static inline u32 *i915_flush_dw(u32 *cmd, u64 dst, u32 flags)
+{
+	/* Mask the 3 LSB to use the PPGTT address space */
+	*cmd++ = MI_FLUSH_DW | flags;
+	*cmd++ = lower_32_bits(dst);
+	*cmd++ = upper_32_bits(dst);
+
+	return cmd;
+}
+
+static u32 calc_ctrl_surf_instr_size(struct drm_i915_private *i915, int size)
+{
+	u32 num_cmds, num_blks, total_size;
+
+	if (!GET_CCS_SIZE(i915, size))
+		return 0;
+
+	/*
+	 * XY_CTRL_SURF_COPY_BLT transfers CCS in 256 byte
+	 * blocks. one XY_CTRL_SURF_COPY_BLT command can
+	 * trnasfer upto 1024 blocks.
+	 */
+	num_blks = (GET_CCS_SIZE(i915, size) +
+			   (NUM_CCS_BYTES_PER_BLOCK - 1)) >> 8;
+	num_cmds = (num_blks + (NUM_CCS_BLKS_PER_XFER - 1)) >> 10;
+	total_size = (XY_CTRL_SURF_INSTR_SIZE) * num_cmds;
+
+	/*
+	 * We need to add a flush before and after
+	 * XY_CTRL_SURF_COPY_BLT
+	 */
+	total_size += 2 * MI_FLUSH_DW_SIZE;
+	return total_size;
+}
+
+static u32 *_i915_ctrl_surf_copy_blt(u32 *cmd, u64 src_addr, u64 dst_addr,
+				     u8 src_mem_access, u8 dst_mem_access,
+				     int src_mocs, int dst_mocs,
+				     u16 num_ccs_blocks)
+{
+	int i = num_ccs_blocks;
+
+	/*
+	 * The XY_CTRL_SURF_COPY_BLT instruction is used to copy the CCS
+	 * data in and out of the CCS region.
+	 *
+	 * We can copy at most 1024 blocks of 256 bytes using one
+	 * XY_CTRL_SURF_COPY_BLT instruction.
+	 *
+	 * In case we need to copy more than 1024 blocks, we need to add
+	 * another instruction to the same batch buffer.
+	 *
+	 * 1024 blocks of 256 bytes of CCS represent a total 256KB of CCS.
+	 *
+	 * 256 KB of CCS represents 256 * 256 KB = 64 MB of LMEM.
+	 */
+	do {
+		/*
+		 * We use logical AND with 1023 since the size field
+		 * takes values which is in the range of 0 - 1023
+		 */
+		*cmd++ = ((XY_CTRL_SURF_COPY_BLT) |
+			  (src_mem_access << SRC_ACCESS_TYPE_SHIFT) |
+			  (dst_mem_access << DST_ACCESS_TYPE_SHIFT) |
+			  (((i - 1) & 1023) << CCS_SIZE_SHIFT));
+		*cmd++ = lower_32_bits(src_addr);
+		*cmd++ = ((upper_32_bits(src_addr) & 0xFFFF) |
+			  (src_mocs << XY_CTRL_SURF_MOCS_SHIFT));
+		*cmd++ = lower_32_bits(dst_addr);
+		*cmd++ = ((upper_32_bits(dst_addr) & 0xFFFF) |
+			  (dst_mocs << XY_CTRL_SURF_MOCS_SHIFT));
+		src_addr += SZ_64M;
+		dst_addr += SZ_64M;
+		i -= NUM_CCS_BLKS_PER_XFER;
+	} while (i > 0);
+
+	return cmd;
+}
+
+static int emit_clear(struct i915_request *rq,
+		      int size,
+		      u32 value,
+		      bool is_lmem)
 {
 	const int ver = GRAPHICS_VER(rq->engine->i915);
 	u32 instance = rq->engine->instance;
 	u32 *cs;
+	struct drm_i915_private *i915 = rq->engine->i915;
+	u32 num_ccs_blks, ccs_ring_size;
 
 	GEM_BUG_ON(size >> PAGE_SHIFT > S16_MAX);
 
-	cs = intel_ring_begin(rq, ver >= 8 ? 8 : 6);
+	/* Clear flat css only when value is 0 */
+	ccs_ring_size = (is_lmem && !value) ?
+			 calc_ctrl_surf_instr_size(i915, size)
+			 : 0;
+
+	cs = intel_ring_begin(rq, ver >= 8 ? 8 + ccs_ring_size : 6);
 	if (IS_ERR(cs))
 		return PTR_ERR(cs);
 
@@ -521,6 +612,30 @@ static int emit_clear(struct i915_request *rq, int size, u32 value)
 		*cs++ = value;
 	}
 
+	if (is_lmem && HAS_FLAT_CCS(i915) && !value) {
+		num_ccs_blks = (GET_CCS_SIZE(i915, size) +
+				NUM_CCS_BYTES_PER_BLOCK - 1) >> 8;
+		/*
+		 * Flat CCS surface can only be accessed via
+		 * XY_CTRL_SURF_COPY_BLT CMD and using indirect
+		 * mapping of associated LMEM.
+		 * We can clear ccs surface by writing all 0s,
+		 * so we will flush the previously cleared buffer
+		 * and use it as a source.
+		 */
+
+		cs = i915_flush_dw(cs, (u64)instance << 32,
+				   MI_FLUSH_LLC | MI_FLUSH_CCS);
+		cs = _i915_ctrl_surf_copy_blt(cs,
+					      (u64)instance << 32,
+					      (u64)instance << 32,
+					      DIRECT_ACCESS,
+					      INDIRECT_ACCESS,
+					      1, 1,
+					      num_ccs_blks);
+		cs = i915_flush_dw(cs, (u64)instance << 32,
+				   MI_FLUSH_LLC | MI_FLUSH_CCS);
+	}
 	intel_ring_advance(rq, cs);
 	return 0;
 }
@@ -581,7 +696,7 @@ intel_context_migrate_clear(struct intel_context *ce,
 		if (err)
 			goto out_rq;
 
-		err = emit_clear(rq, len, value);
+		err = emit_clear(rq, len, value, is_lmem);
 
 		/* Arbitration is re-enabled between requests. */
 out_rq:
diff --git a/drivers/gpu/drm/i915/gt/intel_migrate.h b/drivers/gpu/drm/i915/gt/intel_migrate.h
index 4e18e755a00b..35ea7060d1e0 100644
--- a/drivers/gpu/drm/i915/gt/intel_migrate.h
+++ b/drivers/gpu/drm/i915/gt/intel_migrate.h
@@ -9,7 +9,6 @@
 #include <linux/types.h>
 
 #include "intel_migrate_types.h"
-
 struct dma_fence;
 struct i915_request;
 struct i915_gem_ww_ctx;
-- 
2.26.2

