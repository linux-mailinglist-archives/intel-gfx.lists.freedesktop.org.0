Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 69ACC7DF8DA
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Nov 2023 18:38:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97F0610E969;
	Thu,  2 Nov 2023 17:38:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44CE710E969
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Nov 2023 17:38:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698946710; x=1730482710;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=hsm6tkXZPsHNbuuNMZ6m4bI5tv5wH367HW3Y9NBDnhg=;
 b=NPngvfbr5v2M7+PueO5Jt+IPszMfUXjWtdQlgE7/UE4s2zK9/IJMamQ6
 yYPgZIfmtQHPz8Q7CEfnVaV4lf2PA3Z+jNfikmfnWpselsOzmSHbGY//+
 p5U/eGhWTuwCC12YZtD+NXR56muCDd37Hk7OAgOgjXPJD+DVMxy0vZjA6
 eDhIez/P5lG9QoDiSafDRCEnnfi3+s3oovQnY0tgKqzL5ZJymrz+W+pMe
 uHi9dxv6yUgVCAe/vu/uFP5+gFMoXAgiCsRu18yMizUxyQ5tyVX8ggxEk
 K89m8gdlbpn88KPziMTL+eCFiibgTb/j4zF24ssf75RpQFhaF3C3wCRu1 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="10305646"
X-IronPort-AV: E=Sophos;i="6.03,272,1694761200"; d="scan'208";a="10305646"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 10:38:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,272,1694761200"; 
   d="scan'208";a="2511470"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by orviesa002.jf.intel.com with ESMTP; 02 Nov 2023 10:38:28 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Nov 2023 22:56:17 +0530
Message-Id: <20231102172617.3079743-1-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5] drm/i915/dsb: DSB code refactoring
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Refactor DSB implementation to be compatible with Xe driver.

v1: RFC version.
v2: Make intel_dsb structure opaque from external usage. [Jani]
v3: Rebased on latest.
v4:
- Add boundary check in dsb_buffer_memset(). [Luca]
- Use size_t instead of u32. [Luca]
v5: WARN_ON() added for out of boudary case with some optimization. [Luca]

Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |  1 +
 drivers/gpu/drm/i915/display/intel_dsb.c      | 98 +++++++------------
 .../gpu/drm/i915/display/intel_dsb_buffer.c   | 82 ++++++++++++++++
 .../gpu/drm/i915/display/intel_dsb_buffer.h   | 29 ++++++
 4 files changed, 148 insertions(+), 62 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_dsb_buffer.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_dsb_buffer.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 239da40a401f..7e5d6a39d450 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -277,6 +277,7 @@ i915-y += \
 	display/intel_dpt.o \
 	display/intel_drrs.o \
 	display/intel_dsb.o \
+	display/intel_dsb_buffer.o \
 	display/intel_fb.o \
 	display/intel_fb_pin.o \
 	display/intel_fbc.o \
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 78b6fe24dcd8..3c7733a416a4 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -4,9 +4,6 @@
  *
  */
 
-#include "gem/i915_gem_internal.h"
-#include "gem/i915_gem_lmem.h"
-
 #include "i915_drv.h"
 #include "i915_irq.h"
 #include "i915_reg.h"
@@ -14,12 +11,13 @@
 #include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_dsb.h"
+#include "intel_dsb_buffer.h"
 #include "intel_dsb_regs.h"
 #include "intel_vblank.h"
 #include "intel_vrr.h"
 #include "skl_watermark.h"
 
-struct i915_vma;
+#define CACHELINE_BYTES 64
 
 enum dsb_id {
 	INVALID_DSB = -1,
@@ -32,8 +30,7 @@ enum dsb_id {
 struct intel_dsb {
 	enum dsb_id id;
 
-	u32 *cmd_buf;
-	struct i915_vma *vma;
+	struct intel_dsb_buffer dsb_buf;
 	struct intel_crtc *crtc;
 
 	/*
@@ -109,15 +106,17 @@ static void intel_dsb_dump(struct intel_dsb *dsb)
 {
 	struct intel_crtc *crtc = dsb->crtc;
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
-	const u32 *buf = dsb->cmd_buf;
 	int i;
 
 	drm_dbg_kms(&i915->drm, "[CRTC:%d:%s] DSB %d commands {\n",
 		    crtc->base.base.id, crtc->base.name, dsb->id);
 	for (i = 0; i < ALIGN(dsb->free_pos, 64 / 4); i += 4)
 		drm_dbg_kms(&i915->drm,
-			    " 0x%08x: 0x%08x 0x%08x 0x%08x 0x%08x\n",
-			    i * 4, buf[i], buf[i+1], buf[i+2], buf[i+3]);
+			    " 0x%08x: 0x%08x 0x%08x 0x%08x 0x%08x\n", i * 4,
+			    intel_dsb_buffer_read(&dsb->dsb_buf, i),
+			    intel_dsb_buffer_read(&dsb->dsb_buf, i + 1),
+			    intel_dsb_buffer_read(&dsb->dsb_buf, i + 2),
+			    intel_dsb_buffer_read(&dsb->dsb_buf, i + 3));
 	drm_dbg_kms(&i915->drm, "}\n");
 }
 
@@ -129,8 +128,6 @@ static bool is_dsb_busy(struct drm_i915_private *i915, enum pipe pipe,
 
 static void intel_dsb_emit(struct intel_dsb *dsb, u32 ldw, u32 udw)
 {
-	u32 *buf = dsb->cmd_buf;
-
 	if (!assert_dsb_has_room(dsb))
 		return;
 
@@ -139,14 +136,13 @@ static void intel_dsb_emit(struct intel_dsb *dsb, u32 ldw, u32 udw)
 
 	dsb->ins_start_offset = dsb->free_pos;
 
-	buf[dsb->free_pos++] = ldw;
-	buf[dsb->free_pos++] = udw;
+	intel_dsb_buffer_write(&dsb->dsb_buf, dsb->free_pos++, ldw);
+	intel_dsb_buffer_write(&dsb->dsb_buf, dsb->free_pos++, udw);
 }
 
 static bool intel_dsb_prev_ins_is_write(struct intel_dsb *dsb,
 					u32 opcode, i915_reg_t reg)
 {
-	const u32 *buf = dsb->cmd_buf;
 	u32 prev_opcode, prev_reg;
 
 	/*
@@ -157,8 +153,10 @@ static bool intel_dsb_prev_ins_is_write(struct intel_dsb *dsb,
 	if (dsb->free_pos == 0)
 		return false;
 
-	prev_opcode = buf[dsb->ins_start_offset + 1] & ~DSB_REG_VALUE_MASK;
-	prev_reg = buf[dsb->ins_start_offset + 1] & DSB_REG_VALUE_MASK;
+	prev_opcode = intel_dsb_buffer_read(&dsb->dsb_buf,
+					    dsb->ins_start_offset + 1) >> DSB_OPCODE_SHIFT;
+	prev_reg =  intel_dsb_buffer_read(&dsb->dsb_buf,
+					  dsb->ins_start_offset + 1) & DSB_REG_VALUE_MASK;
 
 	return prev_opcode == opcode && prev_reg == i915_mmio_reg_offset(reg);
 }
@@ -191,6 +189,8 @@ static bool intel_dsb_prev_ins_is_indexed_write(struct intel_dsb *dsb, i915_reg_
 void intel_dsb_reg_write(struct intel_dsb *dsb,
 			 i915_reg_t reg, u32 val)
 {
+	u32 old_val;
+
 	/*
 	 * For example the buffer will look like below for 3 dwords for auto
 	 * increment register:
@@ -214,31 +214,32 @@ void intel_dsb_reg_write(struct intel_dsb *dsb,
 			       (DSB_BYTE_EN << DSB_BYTE_EN_SHIFT) |
 			       i915_mmio_reg_offset(reg));
 	} else {
-		u32 *buf = dsb->cmd_buf;
-
 		if (!assert_dsb_has_room(dsb))
 			return;
 
 		/* convert to indexed write? */
 		if (intel_dsb_prev_ins_is_mmio_write(dsb, reg)) {
-			u32 prev_val = buf[dsb->ins_start_offset + 0];
+			u32 prev_val = intel_dsb_buffer_read(&dsb->dsb_buf,
+							     dsb->ins_start_offset + 0);
 
-			buf[dsb->ins_start_offset + 0] = 1; /* count */
-			buf[dsb->ins_start_offset + 1] =
-				(DSB_OPCODE_INDEXED_WRITE << DSB_OPCODE_SHIFT) |
-				i915_mmio_reg_offset(reg);
-			buf[dsb->ins_start_offset + 2] = prev_val;
+			intel_dsb_buffer_write(&dsb->dsb_buf,
+					       dsb->ins_start_offset + 0, 1); /* count */
+			intel_dsb_buffer_write(&dsb->dsb_buf, dsb->ins_start_offset + 1,
+					       (DSB_OPCODE_INDEXED_WRITE << DSB_OPCODE_SHIFT) |
+					       i915_mmio_reg_offset(reg));
+			intel_dsb_buffer_write(&dsb->dsb_buf, dsb->ins_start_offset + 2, prev_val);
 
 			dsb->free_pos++;
 		}
 
-		buf[dsb->free_pos++] = val;
+		intel_dsb_buffer_write(&dsb->dsb_buf, dsb->free_pos++, val);
 		/* Update the count */
-		buf[dsb->ins_start_offset]++;
+		old_val = intel_dsb_buffer_read(&dsb->dsb_buf, dsb->ins_start_offset);
+		intel_dsb_buffer_write(&dsb->dsb_buf, dsb->ins_start_offset, old_val + 1);
 
 		/* if number of data words is odd, then the last dword should be 0.*/
 		if (dsb->free_pos & 0x1)
-			buf[dsb->free_pos] = 0;
+			intel_dsb_buffer_write(&dsb->dsb_buf, dsb->free_pos, 0);
 	}
 }
 
@@ -297,8 +298,8 @@ static void intel_dsb_align_tail(struct intel_dsb *dsb)
 	aligned_tail = ALIGN(tail, CACHELINE_BYTES);
 
 	if (aligned_tail > tail)
-		memset(&dsb->cmd_buf[dsb->free_pos], 0,
-		       aligned_tail - tail);
+		intel_dsb_buffer_memset(&dsb->dsb_buf, dsb->free_pos, 0,
+					aligned_tail - tail);
 
 	dsb->free_pos = aligned_tail / 4;
 }
@@ -317,7 +318,7 @@ void intel_dsb_finish(struct intel_dsb *dsb)
 
 	intel_dsb_align_tail(dsb);
 
-	i915_gem_object_flush_map(dsb->vma->obj);
+	intel_dsb_buffer_flush_map(&dsb->dsb_buf);
 }
 
 static int intel_dsb_dewake_scanline(const struct intel_crtc_state *crtc_state)
@@ -361,7 +362,7 @@ static void _intel_dsb_commit(struct intel_dsb *dsb, u32 ctrl,
 			  ctrl | DSB_ENABLE);
 
 	intel_de_write_fw(dev_priv, DSB_HEAD(pipe, dsb->id),
-			  i915_ggtt_offset(dsb->vma));
+			  intel_dsb_buffer_ggtt_offset(&dsb->dsb_buf));
 
 	if (dewake_scanline >= 0) {
 		int diff, hw_dewake_scanline;
@@ -383,7 +384,7 @@ static void _intel_dsb_commit(struct intel_dsb *dsb, u32 ctrl,
 	}
 
 	intel_de_write_fw(dev_priv, DSB_TAIL(pipe, dsb->id),
-			  i915_ggtt_offset(dsb->vma) + tail);
+			  intel_dsb_buffer_ggtt_offset(&dsb->dsb_buf) + tail);
 }
 
 /**
@@ -408,7 +409,7 @@ void intel_dsb_wait(struct intel_dsb *dsb)
 	enum pipe pipe = crtc->pipe;
 
 	if (wait_for(!is_dsb_busy(dev_priv, pipe, dsb->id), 1)) {
-		u32 offset = i915_ggtt_offset(dsb->vma);
+		u32 offset = intel_dsb_buffer_ggtt_offset(&dsb->dsb_buf);
 
 		intel_de_write_fw(dev_priv, DSB_CTRL(pipe, dsb->id),
 				  DSB_ENABLE | DSB_HALT);
@@ -445,12 +446,9 @@ struct intel_dsb *intel_dsb_prepare(const struct intel_crtc_state *crtc_state,
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
-	struct drm_i915_gem_object *obj;
 	intel_wakeref_t wakeref;
 	struct intel_dsb *dsb;
-	struct i915_vma *vma;
 	unsigned int size;
-	u32 *buf;
 
 	if (!HAS_DSB(i915))
 		return NULL;
@@ -464,37 +462,13 @@ struct intel_dsb *intel_dsb_prepare(const struct intel_crtc_state *crtc_state,
 	/* ~1 qword per instruction, full cachelines */
 	size = ALIGN(max_cmds * 8, CACHELINE_BYTES);
 
-	if (HAS_LMEM(i915)) {
-		obj = i915_gem_object_create_lmem(i915, PAGE_ALIGN(size),
-						  I915_BO_ALLOC_CONTIGUOUS);
-		if (IS_ERR(obj))
-			goto out_put_rpm;
-	} else {
-		obj = i915_gem_object_create_internal(i915, PAGE_ALIGN(size));
-		if (IS_ERR(obj))
-			goto out_put_rpm;
-
-		i915_gem_object_set_cache_coherency(obj, I915_CACHE_NONE);
-	}
-
-	vma = i915_gem_object_ggtt_pin(obj, NULL, 0, 0, 0);
-	if (IS_ERR(vma)) {
-		i915_gem_object_put(obj);
-		goto out_put_rpm;
-	}
-
-	buf = i915_gem_object_pin_map_unlocked(vma->obj, I915_MAP_WC);
-	if (IS_ERR(buf)) {
-		i915_vma_unpin_and_release(&vma, I915_VMA_RELEASE_MAP);
+	if (!intel_dsb_buffer_create(crtc, &dsb->dsb_buf, size))
 		goto out_put_rpm;
-	}
 
 	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
 
 	dsb->id = DSB1;
-	dsb->vma = vma;
 	dsb->crtc = crtc;
-	dsb->cmd_buf = buf;
 	dsb->size = size / 4; /* in dwords */
 	dsb->free_pos = 0;
 	dsb->ins_start_offset = 0;
@@ -522,6 +496,6 @@ struct intel_dsb *intel_dsb_prepare(const struct intel_crtc_state *crtc_state,
  */
 void intel_dsb_cleanup(struct intel_dsb *dsb)
 {
-	i915_vma_unpin_and_release(&dsb->vma, I915_VMA_RELEASE_MAP);
+	intel_dsb_buffer_cleanup(&dsb->dsb_buf);
 	kfree(dsb);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dsb_buffer.c b/drivers/gpu/drm/i915/display/intel_dsb_buffer.c
new file mode 100644
index 000000000000..c77d48bda26a
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_dsb_buffer.c
@@ -0,0 +1,82 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright 2023, Intel Corporation.
+ */
+
+#include "gem/i915_gem_internal.h"
+#include "gem/i915_gem_lmem.h"
+#include "i915_drv.h"
+#include "i915_vma.h"
+#include "intel_display_types.h"
+#include "intel_dsb_buffer.h"
+
+u32 intel_dsb_buffer_ggtt_offset(struct intel_dsb_buffer *dsb_buf)
+{
+	return i915_ggtt_offset(dsb_buf->vma);
+}
+
+void intel_dsb_buffer_write(struct intel_dsb_buffer *dsb_buf, u32 idx, u32 val)
+{
+	dsb_buf->cmd_buf[idx] = val;
+}
+
+u32 intel_dsb_buffer_read(struct intel_dsb_buffer *dsb_buf, u32 idx)
+{
+	return dsb_buf->cmd_buf[idx];
+}
+
+void intel_dsb_buffer_memset(struct intel_dsb_buffer *dsb_buf, u32 idx, u32 val, size_t size)
+{
+	WARN_ON(idx > (dsb_buf->buf_size - size) / sizeof(*dsb_buf->cmd_buf));
+
+	memset(&dsb_buf->cmd_buf[idx], val, size);
+}
+
+bool intel_dsb_buffer_create(struct intel_crtc *crtc, struct intel_dsb_buffer *dsb_buf, size_t size)
+{
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct drm_i915_gem_object *obj;
+	struct i915_vma *vma;
+	u32 *buf;
+
+	if (HAS_LMEM(i915)) {
+		obj = i915_gem_object_create_lmem(i915, PAGE_ALIGN(size),
+						  I915_BO_ALLOC_CONTIGUOUS);
+		if (IS_ERR(obj))
+			return false;
+	} else {
+		obj = i915_gem_object_create_internal(i915, PAGE_ALIGN(size));
+		if (IS_ERR(obj))
+			return false;
+
+		i915_gem_object_set_cache_coherency(obj, I915_CACHE_NONE);
+	}
+
+	vma = i915_gem_object_ggtt_pin(obj, NULL, 0, 0, 0);
+	if (IS_ERR(vma)) {
+		i915_gem_object_put(obj);
+		return false;
+	}
+
+	buf = i915_gem_object_pin_map_unlocked(vma->obj, I915_MAP_WC);
+	if (IS_ERR(buf)) {
+		i915_vma_unpin_and_release(&vma, I915_VMA_RELEASE_MAP);
+		return false;
+	}
+
+	dsb_buf->vma = vma;
+	dsb_buf->cmd_buf = buf;
+	dsb_buf->buf_size = size;
+
+	return true;
+}
+
+void intel_dsb_buffer_cleanup(struct intel_dsb_buffer *dsb_buf)
+{
+	i915_vma_unpin_and_release(&dsb_buf->vma, I915_VMA_RELEASE_MAP);
+}
+
+void intel_dsb_buffer_flush_map(struct intel_dsb_buffer *dsb_buf)
+{
+	i915_gem_object_flush_map(dsb_buf->vma->obj);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_dsb_buffer.h b/drivers/gpu/drm/i915/display/intel_dsb_buffer.h
new file mode 100644
index 000000000000..425acd393905
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_dsb_buffer.h
@@ -0,0 +1,29 @@
+/* SPDX-License-Identifier: MIT
+ *
+ * Copyright © 2023 Intel Corporation
+ */
+
+#ifndef _INTEL_DSB_BUFFER_H
+#define _INTEL_DSB_BUFFER_H
+
+#include <linux/types.h>
+
+struct intel_crtc;
+struct i915_vma;
+
+struct intel_dsb_buffer {
+	u32 *cmd_buf;
+	struct i915_vma *vma;
+	size_t buf_size;
+};
+
+u32 intel_dsb_buffer_ggtt_offset(struct intel_dsb_buffer *dsb_buf);
+void intel_dsb_buffer_write(struct intel_dsb_buffer *dsb_buf, u32 idx, u32 val);
+u32 intel_dsb_buffer_read(struct intel_dsb_buffer *dsb_buf, u32 idx);
+void intel_dsb_buffer_memset(struct intel_dsb_buffer *dsb_buf, u32 idx, u32 val, size_t size);
+bool intel_dsb_buffer_create(struct intel_crtc *crtc, struct intel_dsb_buffer *dsb_buf,
+			     size_t size);
+void intel_dsb_buffer_cleanup(struct intel_dsb_buffer *dsb_buf);
+void intel_dsb_buffer_flush_map(struct intel_dsb_buffer *dsb_buf);
+
+#endif
-- 
2.29.0

