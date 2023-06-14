Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E7BAB72F0D7
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jun 2023 02:14:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7463510E3F8;
	Wed, 14 Jun 2023 00:14:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 372E410E3F8;
 Wed, 14 Jun 2023 00:14:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686701681; x=1718237681;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Rt44mXrkIv7paBYiU5QG2h7CvDRaTcYaejmx+7GEFwI=;
 b=Rwmrr/q46l9w0c/e8Ve/Gt18e8JIgHmoXwLpvYCiR/d3rNPjblt1dFFN
 B6Un3Q4CoTKLvQ7WxCOXavLvgLGv67aLaAsfd3wvBHHqpj50RwGeHcYFi
 yCIsqFRaXqoQfQppZQ/72SOP9G3wtbe+83VDNWV57YhFeFMw4hPZwDhFQ
 6xpazx10yv3GTKFndjXTbbWsuW/x8P/N1d+9DpGYJKWQkbfa19pDpOEZm
 CVB4rRk/cTAFRZ6SlYpO+VyHWIK14Vc0Rx2GUFz+Lg+DBqrmoP6q+P9ol
 1GFJL7cV0d3mN8B5dI9HasrWVUGEHkpMH1CBdlwMc8nr50rVcLXgosudt g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10740"; a="338836098"
X-IronPort-AV: E=Sophos;i="6.00,241,1681196400"; d="scan'208";a="338836098"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2023 17:14:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10740"; a="711842228"
X-IronPort-AV: E=Sophos;i="6.00,241,1681196400"; d="scan'208";a="711842228"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2023 17:14:39 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-xe@lists.freedesktop.org
Date: Tue, 13 Jun 2023 17:13:15 -0700
Message-Id: <20230614001315.1552497-3-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230614001315.1552497-1-radhakrishna.sripada@intel.com>
References: <20230614001315.1552497-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 2/2] drm/xe: Add reg read/write trace
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This will help debug register read/writes and provide
a way to trace all the mmio transactions.

In order to avoid spam from xe_mmio_wait32,
xe_mmio_read32_notrace is introduced and used.

Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 .../drm/xe/compat-i915-headers/intel_uncore.h |  8 +-
 drivers/gpu/drm/xe/xe_mmio.c                  | 82 ++++++++++++++++++-
 drivers/gpu/drm/xe/xe_mmio.h                  |  7 ++
 drivers/gpu/drm/xe/xe_trace.h                 | 26 ++++++
 4 files changed, 115 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h b/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h
index fae6213d26f1..036f3b963a84 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h
@@ -113,7 +113,7 @@ static inline u32 intel_uncore_read_fw(struct fake_uncore *uncore,
 {
 	struct xe_reg reg = XE_REG(i915_mmio_reg_offset(i915_reg));
 
-	return xe_mmio_read32(__fake_uncore_to_gt(uncore), reg);
+	return xe_mmio_read32_notrace(__fake_uncore_to_gt(uncore), reg);
 }
 
 static inline void intel_uncore_write_fw(struct fake_uncore *uncore,
@@ -121,7 +121,7 @@ static inline void intel_uncore_write_fw(struct fake_uncore *uncore,
 {
 	struct xe_reg reg = XE_REG(i915_mmio_reg_offset(i915_reg));
 
-	xe_mmio_write32(__fake_uncore_to_gt(uncore), reg, val);
+	xe_mmio_write32_notrace(__fake_uncore_to_gt(uncore), reg, val);
 }
 
 static inline u32 intel_uncore_read_notrace(struct fake_uncore *uncore,
@@ -129,7 +129,7 @@ static inline u32 intel_uncore_read_notrace(struct fake_uncore *uncore,
 {
 	struct xe_reg reg = XE_REG(i915_mmio_reg_offset(i915_reg));
 
-	return xe_mmio_read32(__fake_uncore_to_gt(uncore), reg);
+	return xe_mmio_read32_notrace(__fake_uncore_to_gt(uncore), reg);
 }
 
 static inline void intel_uncore_write_notrace(struct fake_uncore *uncore,
@@ -137,7 +137,7 @@ static inline void intel_uncore_write_notrace(struct fake_uncore *uncore,
 {
 	struct xe_reg reg = XE_REG(i915_mmio_reg_offset(i915_reg));
 
-	xe_mmio_write32(__fake_uncore_to_gt(uncore), reg, val);
+	xe_mmio_write32_notrace(__fake_uncore_to_gt(uncore), reg, val);
 }
 
 #endif /* __INTEL_UNCORE_H__ */
diff --git a/drivers/gpu/drm/xe/xe_mmio.c b/drivers/gpu/drm/xe/xe_mmio.c
index 70ad1b6a17a0..fc1af35e445e 100644
--- a/drivers/gpu/drm/xe/xe_mmio.c
+++ b/drivers/gpu/drm/xe/xe_mmio.c
@@ -19,6 +19,7 @@
 #include "xe_gt_mcr.h"
 #include "xe_macros.h"
 #include "xe_module.h"
+#include "xe_trace.h"
 
 #define XEHP_MTCFG_ADDR		XE_REG(0x101800)
 #define TILE_COUNT		REG_GENMASK(15, 8)
@@ -435,7 +436,7 @@ static const struct xe_reg mmio_read_whitelist[] = {
 	RING_TIMESTAMP(RENDER_RING_BASE),
 };
 
-inline u8 xe_mmio_read8(struct xe_gt *gt, struct xe_reg reg)
+inline u8 xe_mmio_read8_notrace(struct xe_gt *gt, struct xe_reg reg)
 {
 	struct xe_tile *tile = gt_to_tile(gt);
 
@@ -445,6 +446,32 @@ inline u8 xe_mmio_read8(struct xe_gt *gt, struct xe_reg reg)
 	return readb(tile->mmio.regs + reg.addr);
 }
 
+inline u8 xe_mmio_read8(struct xe_gt *gt, struct xe_reg reg)
+{
+	struct xe_tile *tile = gt_to_tile(gt);
+	u8 val;
+
+	if (reg.addr < gt->mmio.adj_limit)
+		reg.addr += gt->mmio.adj_offset;
+
+	val = readb(tile->mmio.regs + reg.addr);
+
+	trace_xe_reg_rw(false, &reg, val, sizeof(val));
+
+	return val;
+}
+
+inline void xe_mmio_write32_notrace(struct xe_gt *gt,
+				    struct xe_reg reg, u32 val)
+{
+	struct xe_tile *tile = gt_to_tile(gt);
+
+	if (reg.addr < gt->mmio.adj_limit)
+		reg.addr += gt->mmio.adj_offset;
+
+	writel(val, tile->mmio.regs + reg.addr);
+}
+
 inline void xe_mmio_write32(struct xe_gt *gt,
 			    struct xe_reg reg, u32 val)
 {
@@ -453,10 +480,12 @@ inline void xe_mmio_write32(struct xe_gt *gt,
 	if (reg.addr < gt->mmio.adj_limit)
 		reg.addr += gt->mmio.adj_offset;
 
+	trace_xe_reg_rw(true, &reg, val, sizeof(val));
+
 	writel(val, tile->mmio.regs + reg.addr);
 }
 
-inline u32 xe_mmio_read32(struct xe_gt *gt, struct xe_reg reg)
+inline u32 xe_mmio_read32_notrace(struct xe_gt *gt, struct xe_reg reg)
 {
 	struct xe_tile *tile = gt_to_tile(gt);
 
@@ -466,6 +495,21 @@ inline u32 xe_mmio_read32(struct xe_gt *gt, struct xe_reg reg)
 	return readl(tile->mmio.regs + reg.addr);
 }
 
+inline u32 xe_mmio_read32(struct xe_gt *gt, struct xe_reg reg)
+{
+	struct xe_tile *tile = gt_to_tile(gt);
+	u32 val;
+
+	if (reg.addr < gt->mmio.adj_limit)
+		reg.addr += gt->mmio.adj_offset;
+
+	val = readl(tile->mmio.regs + reg.addr);
+
+	trace_xe_reg_rw(false, &reg, val, sizeof(val));
+
+	return val;
+}
+
 inline u32 xe_mmio_rmw32(struct xe_gt *gt, struct xe_reg reg, u32 clr,
 			 u32 set)
 {
@@ -478,6 +522,17 @@ inline u32 xe_mmio_rmw32(struct xe_gt *gt, struct xe_reg reg, u32 clr,
 	return old;
 }
 
+inline void xe_mmio_write64_notrace(struct xe_gt *gt,
+				    struct xe_reg reg, u64 val)
+{
+	struct xe_tile *tile = gt_to_tile(gt);
+
+	if (reg.addr < gt->mmio.adj_limit)
+		reg.addr += gt->mmio.adj_offset;
+
+	writeq(val, tile->mmio.regs + reg.addr);
+}
+
 inline void xe_mmio_write64(struct xe_gt *gt,
 			    struct xe_reg reg, u64 val)
 {
@@ -486,10 +541,12 @@ inline void xe_mmio_write64(struct xe_gt *gt,
 	if (reg.addr < gt->mmio.adj_limit)
 		reg.addr += gt->mmio.adj_offset;
 
+	trace_xe_reg_rw(true, &reg, val, sizeof(val));
+
 	writeq(val, tile->mmio.regs + reg.addr);
 }
 
-inline u64 xe_mmio_read64(struct xe_gt *gt, struct xe_reg reg)
+inline u64 xe_mmio_read64_notrace(struct xe_gt *gt, struct xe_reg reg)
 {
 	struct xe_tile *tile = gt_to_tile(gt);
 
@@ -499,6 +556,21 @@ inline u64 xe_mmio_read64(struct xe_gt *gt, struct xe_reg reg)
 	return readq(tile->mmio.regs + reg.addr);
 }
 
+inline u64 xe_mmio_read64(struct xe_gt *gt, struct xe_reg reg)
+{
+	struct xe_tile *tile = gt_to_tile(gt);
+	u64 val;
+
+	if (reg.addr < gt->mmio.adj_limit)
+		reg.addr += gt->mmio.adj_offset;
+
+	val = readq(tile->mmio.regs + reg.addr);
+
+	trace_xe_reg_rw(false, &reg, val, sizeof(val));
+
+	return val;
+}
+
 inline int xe_mmio_write32_and_verify(struct xe_gt *gt,
 				      struct xe_reg reg, u32 val,
 				      u32 mask, u32 eval)
@@ -522,7 +594,7 @@ inline int xe_mmio_wait32(struct xe_gt *gt, struct xe_reg reg, u32 val,
 	u32 read;
 
 	for (;;) {
-		read = xe_mmio_read32(gt, reg);
+		read = xe_mmio_read32_notrace(gt, reg);
 		if ((read & mask) == val) {
 			ret = 0;
 			break;
@@ -542,6 +614,8 @@ inline int xe_mmio_wait32(struct xe_gt *gt, struct xe_reg reg, u32 val,
 		wait <<= 1;
 	}
 
+	trace_xe_reg_rw(false, &reg, read, sizeof(read));
+
 	if (out_val)
 		*out_val = read;
 
diff --git a/drivers/gpu/drm/xe/xe_mmio.h b/drivers/gpu/drm/xe/xe_mmio.h
index 2aa2c01e60dd..25c7fa41f494 100644
--- a/drivers/gpu/drm/xe/xe_mmio.h
+++ b/drivers/gpu/drm/xe/xe_mmio.h
@@ -20,14 +20,21 @@ struct xe_device;
 #define GEN12_LMEM_BAR		2
 
 int xe_mmio_init(struct xe_device *xe);
+inline u8 xe_mmio_read8_notrace(struct xe_gt *gt, struct xe_reg reg);
 inline u8 xe_mmio_read8(struct xe_gt *gt, struct xe_reg reg);
+inline void xe_mmio_write32_notrace(struct xe_gt *gt,
+				    struct xe_reg reg, u32 val);
 inline void xe_mmio_write32(struct xe_gt *gt,
 			    struct xe_reg reg, u32 val);
+inline u32 xe_mmio_read32_notrace(struct xe_gt *gt, struct xe_reg reg);
 inline u32 xe_mmio_read32(struct xe_gt *gt, struct xe_reg reg);
 inline u32 xe_mmio_rmw32(struct xe_gt *gt, struct xe_reg reg, u32 clr,
 			 u32 set);
+inline void xe_mmio_write64_notrace(struct xe_gt *gt,
+				    struct xe_reg reg, u64 val);
 inline void xe_mmio_write64(struct xe_gt *gt,
 			    struct xe_reg reg, u64 val);
+inline u64 xe_mmio_read64_notrace(struct xe_gt *gt, struct xe_reg reg);
 inline u64 xe_mmio_read64(struct xe_gt *gt, struct xe_reg reg);
 inline int xe_mmio_write32_and_verify(struct xe_gt *gt,
 				      struct xe_reg reg, u32 val,
diff --git a/drivers/gpu/drm/xe/xe_trace.h b/drivers/gpu/drm/xe/xe_trace.h
index 2f8eb7ebe9a7..a5d514c190a2 100644
--- a/drivers/gpu/drm/xe/xe_trace.h
+++ b/drivers/gpu/drm/xe/xe_trace.h
@@ -12,6 +12,7 @@
 #include <linux/tracepoint.h>
 #include <linux/types.h>
 
+#include "regs/xe_reg_defs.h"
 #include "xe_bo_types.h"
 #include "xe_engine_types.h"
 #include "xe_gt_tlb_invalidation_types.h"
@@ -507,6 +508,31 @@ DEFINE_EVENT(xe_vm, xe_vm_rebind_worker_exit,
 	     TP_ARGS(vm)
 );
 
+TRACE_EVENT(xe_reg_rw,
+	    TP_PROTO(bool write, struct xe_reg *reg, u64 val, int len),
+	    TP_ARGS(write, reg, val, len),
+
+	    TP_STRUCT__entry(
+		    __field(u64, val)
+		    __field(struct xe_reg *, reg)
+		    __field(u16, write)
+		    __field(u16, len)
+		    ),
+
+	    TP_fast_assign(
+		   __entry->val = (u64)val;
+		   __entry->reg = reg;
+		   __entry->write = write;
+		   __entry->len = len;
+		),
+
+	    TP_printk("%s reg=0x%x, len=%d, val=(0x%x, 0x%x)",
+		      __entry->write ? "write" : "read",
+		      __entry->reg->addr, __entry->len,
+		      (u32)(__entry->val & 0xffffffff),
+		      (u32)(__entry->val >> 32))
+);
+
 TRACE_EVENT(xe_guc_ct_h2g_flow_control,
 	    TP_PROTO(u32 _head, u32 _tail, u32 size, u32 space, u32 len),
 	    TP_ARGS(_head, _tail, size, space, len),
-- 
2.34.1

