Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 78AA314EB2F
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2020 11:46:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E08C6E95E;
	Fri, 31 Jan 2020 10:46:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9966B6E95C
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jan 2020 10:46:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20070419-1500050 
 for multiple; Fri, 31 Jan 2020 10:45:50 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 31 Jan 2020 10:45:43 +0000
Message-Id: <20200131104548.2451485-7-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200131104548.2451485-1-chris@chris-wilson.co.uk>
References: <20200131104548.2451485-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 07/12] drm/i915/gt: Move move context layout
 registers and offsets to lrc_reg.h
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Cleanup intel_lrc.h by moving some of the residual common register
definitions into intel_lrc_reg.h, prior to rebranding and splitting off
the submission backends.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_context_types.h |  6 +++
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  2 +-
 drivers/gpu/drm/i915/gt/intel_lrc.h           | 45 -------------------
 drivers/gpu/drm/i915/gt/intel_lrc_reg.h       | 39 ++++++++++++++++
 drivers/gpu/drm/i915/gvt/mmio_context.h       |  2 +
 5 files changed, 48 insertions(+), 46 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
index ca1420fb8b53..99822e5ae0bb 100644
--- a/drivers/gpu/drm/i915/gt/intel_context_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
@@ -24,6 +24,12 @@ struct i915_vma;
 struct intel_context;
 struct intel_ring;
 
+enum { /* XXX misnamed? */
+	INTEL_CONTEXT_SCHEDULE_IN = 0,
+	INTEL_CONTEXT_SCHEDULE_OUT,
+	INTEL_CONTEXT_SCHEDULE_PREEMPTED,
+};
+
 struct intel_context_ops {
 	int (*alloc)(struct intel_context *ce);
 
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index a14b2f9e0155..2aa3bb883cb3 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -36,7 +36,7 @@
 #include "intel_gt.h"
 #include "intel_gt_requests.h"
 #include "intel_gt_pm.h"
-#include "intel_lrc.h"
+#include "intel_lrc_reg.h"
 #include "intel_reset.h"
 #include "intel_ring.h"
 
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.h b/drivers/gpu/drm/i915/gt/intel_lrc.h
index dfbc214e14f5..0e5e820df5f7 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.h
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.h
@@ -34,51 +34,6 @@ struct i915_request;
 struct intel_context;
 struct intel_engine_cs;
 
-/* Execlists regs */
-#define RING_ELSP(base)				_MMIO((base) + 0x230)
-#define RING_EXECLIST_STATUS_LO(base)		_MMIO((base) + 0x234)
-#define RING_EXECLIST_STATUS_HI(base)		_MMIO((base) + 0x234 + 4)
-#define RING_CONTEXT_CONTROL(base)		_MMIO((base) + 0x244)
-#define	  CTX_CTRL_INHIBIT_SYN_CTX_SWITCH	(1 << 3)
-#define	  CTX_CTRL_ENGINE_CTX_RESTORE_INHIBIT	(1 << 0)
-#define   CTX_CTRL_RS_CTX_ENABLE		(1 << 1)
-#define	  CTX_CTRL_ENGINE_CTX_SAVE_INHIBIT	(1 << 2)
-#define	  GEN12_CTX_CTRL_OAR_CONTEXT_ENABLE	(1 << 8)
-#define RING_CONTEXT_STATUS_PTR(base)		_MMIO((base) + 0x3a0)
-#define RING_EXECLIST_SQ_CONTENTS(base)		_MMIO((base) + 0x510)
-#define RING_EXECLIST_CONTROL(base)		_MMIO((base) + 0x550)
-
-#define	  EL_CTRL_LOAD				(1 << 0)
-
-/* The docs specify that the write pointer wraps around after 5h, "After status
- * is written out to the last available status QW at offset 5h, this pointer
- * wraps to 0."
- *
- * Therefore, one must infer than even though there are 3 bits available, 6 and
- * 7 appear to be * reserved.
- */
-#define GEN8_CSB_ENTRIES 6
-#define GEN8_CSB_PTR_MASK 0x7
-#define GEN8_CSB_READ_PTR_MASK (GEN8_CSB_PTR_MASK << 8)
-#define GEN8_CSB_WRITE_PTR_MASK (GEN8_CSB_PTR_MASK << 0)
-
-#define GEN11_CSB_ENTRIES 12
-#define GEN11_CSB_PTR_MASK 0xf
-#define GEN11_CSB_READ_PTR_MASK (GEN11_CSB_PTR_MASK << 8)
-#define GEN11_CSB_WRITE_PTR_MASK (GEN11_CSB_PTR_MASK << 0)
-
-#define MAX_CONTEXT_HW_ID (1<<21) /* exclusive */
-#define MAX_GUC_CONTEXT_HW_ID (1 << 20) /* exclusive */
-#define GEN11_MAX_CONTEXT_HW_ID (1<<11) /* exclusive */
-/* in Gen12 ID 0x7FF is reserved to indicate idle */
-#define GEN12_MAX_CONTEXT_HW_ID	(GEN11_MAX_CONTEXT_HW_ID - 1)
-
-enum {
-	INTEL_CONTEXT_SCHEDULE_IN = 0,
-	INTEL_CONTEXT_SCHEDULE_OUT,
-	INTEL_CONTEXT_SCHEDULE_PREEMPTED,
-};
-
 /* Logical Rings */
 void intel_logical_ring_cleanup(struct intel_engine_cs *engine);
 
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc_reg.h b/drivers/gpu/drm/i915/gt/intel_lrc_reg.h
index 08a3be65f700..43ee761e3087 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc_reg.h
+++ b/drivers/gpu/drm/i915/gt/intel_lrc_reg.h
@@ -52,4 +52,43 @@
 #define GEN11_CTX_RCS_INDIRECT_CTX_OFFSET_DEFAULT	0x1A
 #define GEN12_CTX_RCS_INDIRECT_CTX_OFFSET_DEFAULT	0xD
 
+/* Execlists regs */
+#define RING_ELSP(base)				_MMIO((base) + 0x230)
+#define RING_EXECLIST_STATUS_LO(base)		_MMIO((base) + 0x234)
+#define RING_EXECLIST_STATUS_HI(base)		_MMIO((base) + 0x234 + 4)
+#define RING_CONTEXT_CONTROL(base)		_MMIO((base) + 0x244)
+#define	  CTX_CTRL_ENGINE_CTX_RESTORE_INHIBIT	REG_BIT(0)
+#define   CTX_CTRL_RS_CTX_ENABLE		REG_BIT(1)
+#define	  CTX_CTRL_ENGINE_CTX_SAVE_INHIBIT	REG_BIT(2)
+#define	  CTX_CTRL_INHIBIT_SYN_CTX_SWITCH	REG_BIT(3)
+#define	  GEN12_CTX_CTRL_OAR_CONTEXT_ENABLE	REG_BIT(8)
+#define RING_CONTEXT_STATUS_PTR(base)		_MMIO((base) + 0x3a0)
+#define RING_EXECLIST_SQ_CONTENTS(base)		_MMIO((base) + 0x510)
+#define RING_EXECLIST_CONTROL(base)		_MMIO((base) + 0x550)
+#define	  EL_CTRL_LOAD				REG_BIT(0)
+
+/*
+ * The docs specify that the write pointer wraps around after 5h, "After status
+ * is written out to the last available status QW at offset 5h, this pointer
+ * wraps to 0."
+ *
+ * Therefore, one must infer than even though there are 3 bits available, 6 and
+ * 7 appear to be * reserved.
+ */
+#define GEN8_CSB_ENTRIES 6
+#define GEN8_CSB_PTR_MASK 0x7
+#define GEN8_CSB_READ_PTR_MASK	(GEN8_CSB_PTR_MASK << 8)
+#define GEN8_CSB_WRITE_PTR_MASK	(GEN8_CSB_PTR_MASK << 0)
+
+#define GEN11_CSB_ENTRIES 12
+#define GEN11_CSB_PTR_MASK 0xf
+#define GEN11_CSB_READ_PTR_MASK		(GEN11_CSB_PTR_MASK << 8)
+#define GEN11_CSB_WRITE_PTR_MASK	(GEN11_CSB_PTR_MASK << 0)
+
+#define MAX_CONTEXT_HW_ID	(1 << 21) /* exclusive */
+#define MAX_GUC_CONTEXT_HW_ID	(1 << 20) /* exclusive */
+#define GEN11_MAX_CONTEXT_HW_ID	(1 << 11) /* exclusive */
+/* in Gen12 ID 0x7FF is reserved to indicate idle */
+#define GEN12_MAX_CONTEXT_HW_ID	(GEN11_MAX_CONTEXT_HW_ID - 1)
+
 #endif /* _INTEL_LRC_REG_H_ */
diff --git a/drivers/gpu/drm/i915/gvt/mmio_context.h b/drivers/gpu/drm/i915/gvt/mmio_context.h
index f7eaa442403f..bfab3276ff8f 100644
--- a/drivers/gpu/drm/i915/gvt/mmio_context.h
+++ b/drivers/gpu/drm/i915/gvt/mmio_context.h
@@ -36,6 +36,8 @@
 #ifndef __GVT_RENDER_H__
 #define __GVT_RENDER_H__
 
+#include "gt/intel_lrc_reg.h"
+
 struct engine_mmio {
 	int ring_id;
 	i915_reg_t reg;
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
