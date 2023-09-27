Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FAEF7AFFD1
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Sep 2023 11:23:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07D6010E4AE;
	Wed, 27 Sep 2023 09:23:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8CFC10E4AE
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Sep 2023 09:23:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695806610; x=1727342610;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=lH1Vk7I58WqO6oj31KhXvBBipA/99oKPMyRuPbE8y6Q=;
 b=L6H17ma/IA4b4YgBw/NRZN7yI5DC4ZjSP9P2hUA5bd90HWMqpMUw16k2
 M1KbpY+0zrEXWsqtLPhZdk5b7BJqBQrsEJJT64XUenAmm5QvXyajRvKpy
 bSkXA3+UiFROIEltvAds6rIDWfnFCJwWkjXJByFAmZnUxwCf4hlXCb3Kp
 lJXFfsbjudaIlZmJqXsWxmwNJk6kAUnZw7sZyypxQojJglBbgUxLUbOcS
 aeM+WeAKHGjP5rSFRZMIC0ZbAALsrIjzVKGhkvimfXWBGayx9ssQuvZ+X
 M6+n6kYyxxY0qEzHIBYX4U/ONojj/SqG5cEPdfMe0SyYIwwuC/NbqrQXv Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10845"; a="468063413"
X-IronPort-AV: E=Sophos;i="6.03,179,1694761200"; d="scan'208";a="468063413"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2023 02:23:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10845"; a="839367545"
X-IronPort-AV: E=Sophos;i="6.03,179,1694761200"; d="scan'208";a="839367545"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by FMSMGA003.fm.intel.com with ESMTP; 27 Sep 2023 02:23:28 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Sep 2023 14:41:52 +0530
Message-Id: <20230927091152.1050600-1-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/dsb: DSB code refactoring
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

Refactor DSB implementation to be compatible with Xe driver.

v1: RFC version.
v2: Make intel_dsb structure opaque from external usage. [Jani]

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |  1 +
 drivers/gpu/drm/i915/display/intel_dsb.c      | 82 +++++++------------
 .../gpu/drm/i915/display/intel_dsb_buffer.c   | 64 +++++++++++++++
 .../gpu/drm/i915/display/intel_dsb_buffer.h   | 21 +++++
 4 files changed, 117 insertions(+), 51 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_dsb_buffer.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_dsb_buffer.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 1b2e02e9d92c..c86b49d7f1aa 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -256,6 +256,7 @@ i915-y += \
 	display/intel_dpt.o \
 	display/intel_drrs.o \
 	display/intel_dsb.o \
+	display/intel_dsb_buffer.o \
 	display/intel_fb.o \
 	display/intel_fb_pin.o \
 	display/intel_fbc.o \
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 9a507b9ad82c..55d9499bf3de 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -4,16 +4,15 @@
  *
  */
 
-#include "gem/i915_gem_internal.h"
-
 #include "i915_drv.h"
 #include "i915_reg.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_dsb.h"
 #include "intel_dsb_regs.h"
+#include "intel_dsb_buffer.h"
 
-struct i915_vma;
+#define CACHELINE_BYTES 64
 
 enum dsb_id {
 	INVALID_DSB = -1,
@@ -26,8 +25,7 @@ enum dsb_id {
 struct intel_dsb {
 	enum dsb_id id;
 
-	u32 *cmd_buf;
-	struct i915_vma *vma;
+	struct intel_dsb_buffer dsb_buf;
 	struct intel_crtc *crtc;
 
 	/*
@@ -97,15 +95,17 @@ static void intel_dsb_dump(struct intel_dsb *dsb)
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
 
@@ -117,8 +117,6 @@ static bool is_dsb_busy(struct drm_i915_private *i915, enum pipe pipe,
 
 static void intel_dsb_emit(struct intel_dsb *dsb, u32 ldw, u32 udw)
 {
-	u32 *buf = dsb->cmd_buf;
-
 	if (!assert_dsb_has_room(dsb))
 		return;
 
@@ -127,14 +125,13 @@ static void intel_dsb_emit(struct intel_dsb *dsb, u32 ldw, u32 udw)
 
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
@@ -145,8 +142,8 @@ static bool intel_dsb_prev_ins_is_write(struct intel_dsb *dsb,
 	if (dsb->free_pos == 0)
 		return false;
 
-	prev_opcode = buf[dsb->ins_start_offset + 1] & ~DSB_REG_VALUE_MASK;
-	prev_reg = buf[dsb->ins_start_offset + 1] & DSB_REG_VALUE_MASK;
+	prev_opcode = intel_dsb_buffer_read(&dsb->dsb_buf, dsb->ins_start_offset + 1) >> DSB_OPCODE_SHIFT;
+	prev_reg =  intel_dsb_buffer_read(&dsb->dsb_buf, dsb->ins_start_offset + 1) & DSB_REG_VALUE_MASK;
 
 	return prev_opcode == opcode && prev_reg == i915_mmio_reg_offset(reg);
 }
@@ -179,6 +176,8 @@ static bool intel_dsb_prev_ins_is_indexed_write(struct intel_dsb *dsb, i915_reg_
 void intel_dsb_reg_write(struct intel_dsb *dsb,
 			 i915_reg_t reg, u32 val)
 {
+	u32 old_val;
+
 	/*
 	 * For example the buffer will look like below for 3 dwords for auto
 	 * increment register:
@@ -202,31 +201,30 @@ void intel_dsb_reg_write(struct intel_dsb *dsb,
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
+			u32 prev_val = intel_dsb_buffer_read(&dsb->dsb_buf, dsb->ins_start_offset + 0);
 
-			buf[dsb->ins_start_offset + 0] = 1; /* count */
-			buf[dsb->ins_start_offset + 1] =
-				(DSB_OPCODE_INDEXED_WRITE << DSB_OPCODE_SHIFT) |
-				i915_mmio_reg_offset(reg);
-			buf[dsb->ins_start_offset + 2] = prev_val;
+			intel_dsb_buffer_write(&dsb->dsb_buf, dsb->ins_start_offset + 0, 1); /* count */
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
 
@@ -238,8 +236,8 @@ static void intel_dsb_align_tail(struct intel_dsb *dsb)
 	aligned_tail = ALIGN(tail, CACHELINE_BYTES);
 
 	if (aligned_tail > tail)
-		memset(&dsb->cmd_buf[dsb->free_pos], 0,
-		       aligned_tail - tail);
+		intel_dsb_buffer_memset(&dsb->dsb_buf, dsb->free_pos, 0,
+					aligned_tail - tail);
 
 	dsb->free_pos = aligned_tail / 4;
 }
@@ -277,9 +275,9 @@ void intel_dsb_commit(struct intel_dsb *dsb, bool wait_for_vblank)
 		       (wait_for_vblank ? DSB_WAIT_FOR_VBLANK : 0) |
 		       DSB_ENABLE);
 	intel_de_write(dev_priv, DSB_HEAD(pipe, dsb->id),
-		       i915_ggtt_offset(dsb->vma));
+		       intel_dsb_buffer_ggtt_offset(&dsb->dsb_buf));
 	intel_de_write(dev_priv, DSB_TAIL(pipe, dsb->id),
-		       i915_ggtt_offset(dsb->vma) + tail);
+		       intel_dsb_buffer_ggtt_offset(&dsb->dsb_buf) + tail);
 }
 
 void intel_dsb_wait(struct intel_dsb *dsb)
@@ -289,7 +287,7 @@ void intel_dsb_wait(struct intel_dsb *dsb)
 	enum pipe pipe = crtc->pipe;
 
 	if (wait_for(!is_dsb_busy(dev_priv, pipe, dsb->id), 1)) {
-		u32 offset = i915_ggtt_offset(dsb->vma);
+		u32 offset = intel_dsb_buffer_ggtt_offset(&dsb->dsb_buf);
 
 		intel_de_write_fw(dev_priv, DSB_CTRL(pipe, dsb->id),
 				  DSB_ENABLE | DSB_HALT);
@@ -325,12 +323,9 @@ struct intel_dsb *intel_dsb_prepare(struct intel_crtc *crtc,
 				    unsigned int max_cmds)
 {
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
-	struct drm_i915_gem_object *obj;
 	intel_wakeref_t wakeref;
 	struct intel_dsb *dsb;
-	struct i915_vma *vma;
 	unsigned int size;
-	u32 *buf;
 
 	if (!HAS_DSB(i915))
 		return NULL;
@@ -344,28 +339,13 @@ struct intel_dsb *intel_dsb_prepare(struct intel_crtc *crtc,
 	/* ~1 qword per instruction, full cachelines */
 	size = ALIGN(max_cmds * 8, CACHELINE_BYTES);
 
-	obj = i915_gem_object_create_internal(i915, PAGE_ALIGN(size));
-	if (IS_ERR(obj))
-		goto out_put_rpm;
-
-	vma = i915_gem_object_ggtt_pin(obj, NULL, 0, 0, 0);
-	if (IS_ERR(vma)) {
-		i915_gem_object_put(obj);
+	if (!intel_dsb_buffer_create(crtc, &dsb->dsb_buf, size))
 		goto out_put_rpm;
-	}
-
-	buf = i915_gem_object_pin_map_unlocked(vma->obj, I915_MAP_WC);
-	if (IS_ERR(buf)) {
-		i915_vma_unpin_and_release(&vma, I915_VMA_RELEASE_MAP);
-		goto out_put_rpm;
-	}
 
 	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
 
 	dsb->id = DSB1;
-	dsb->vma = vma;
 	dsb->crtc = crtc;
-	dsb->cmd_buf = buf;
 	dsb->size = size / 4; /* in dwords */
 	dsb->free_pos = 0;
 	dsb->ins_start_offset = 0;
@@ -392,6 +372,6 @@ struct intel_dsb *intel_dsb_prepare(struct intel_crtc *crtc,
  */
 void intel_dsb_cleanup(struct intel_dsb *dsb)
 {
-	i915_vma_unpin_and_release(&dsb->vma, I915_VMA_RELEASE_MAP);
+	intel_dsb_buffer_cleanup(&dsb->dsb_buf);
 	kfree(dsb);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dsb_buffer.c b/drivers/gpu/drm/i915/display/intel_dsb_buffer.c
new file mode 100644
index 000000000000..723937591831
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_dsb_buffer.c
@@ -0,0 +1,64 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright 2023, Intel Corporation.
+ */
+
+#include "gem/i915_gem_internal.h"
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
+void intel_dsb_buffer_memset(struct intel_dsb_buffer *dsb_buf, u32 idx, u32 val, u32 sz)
+{
+	memset(&dsb_buf->cmd_buf[idx], val, sz);
+}
+
+bool intel_dsb_buffer_create(struct intel_crtc *crtc, struct intel_dsb_buffer *dsb_buf, u32 size)
+{
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct drm_i915_gem_object *obj;
+	struct i915_vma *vma;
+	u32 *buf;
+
+	obj = i915_gem_object_create_internal(i915, PAGE_ALIGN(size));
+	if (IS_ERR(obj))
+		return false;
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
+
+	return true;
+}
+
+void intel_dsb_buffer_cleanup(struct intel_dsb_buffer *dsb_buf)
+{
+	i915_vma_unpin_and_release(&dsb_buf->vma, I915_VMA_RELEASE_MAP);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_dsb_buffer.h b/drivers/gpu/drm/i915/display/intel_dsb_buffer.h
new file mode 100644
index 000000000000..84be364c209c
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_dsb_buffer.h
@@ -0,0 +1,21 @@
+/* SPDX-License-Identifier: MIT
+ *
+ * Copyright © 2023 Intel Corporation
+ */
+
+#ifndef _INTEL_DSB_BUFFER_H
+#define _INTEL_DSB_BUFFER_H
+
+struct intel_dsb_buffer {
+	u32 *cmd_buf;
+	struct i915_vma *vma;
+};
+
+u32 intel_dsb_buffer_ggtt_offset(struct intel_dsb_buffer *dsb_buf);
+void intel_dsb_buffer_write(struct intel_dsb_buffer *dsb_buf, u32 idx, u32 val);
+u32 intel_dsb_buffer_read(struct intel_dsb_buffer *dsb_buf, u32 idx);
+void intel_dsb_buffer_memset(struct intel_dsb_buffer *dsb_buf, u32 idx, u32 val, u32 sz);
+bool intel_dsb_buffer_create(struct intel_crtc *crtc, struct intel_dsb_buffer *dsb_buf, u32 size);
+void intel_dsb_buffer_cleanup(struct intel_dsb_buffer *dsb_buf);
+
+#endif
-- 
2.29.0

