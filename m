Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 582471D8BA1
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2020 01:30:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 262CC6E29B;
	Mon, 18 May 2020 23:30:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DF7D6E29B
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 May 2020 23:30:54 +0000 (UTC)
IronPort-SDR: Tc+qK/aGzfiicqttiziw/bDm22AaFsG8H6jqvPIJxqBT1WNanxgoyS4UqHg4pLhyvrfp4UlwK8
 VrIj7KkhIUJg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2020 16:30:54 -0700
IronPort-SDR: PpbfKlwQ5C1duY5bnnlBP53jbX4E68DbD77FawXmAFsRIWbgBpv2C6y6Z4y7uBH1FaZw3laW+k
 U7CbjAfDZ4qw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,408,1583222400"; d="scan'208";a="299932233"
Received: from ldmartin1-desk.jf.intel.com ([10.165.21.151])
 by orsmga008.jf.intel.com with ESMTP; 18 May 2020 16:30:53 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 18 May 2020 16:30:48 -0700
Message-Id: <20200518233049.19759-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: move trace_i915_reg_rw() to a
 separate file
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Currently we can't call trace_i915_reg_rw() from some headers due to
include order and i915_trace.h needing some struct definitions.

Move the declaration of trace_i915_reg_rw() to another file so it can be
included separately. Note that the trace points are still defined by
i915_trace_point.c which contains all trace points for i915. As such the
i915_trace_reg_rw() is just declared in a separate header, but its
definition is still in a single place.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/i915_trace.h        | 30 ++---------------
 drivers/gpu/drm/i915/i915_trace_reg_rw.h | 42 ++++++++++++++++++++++++
 2 files changed, 44 insertions(+), 28 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/i915_trace_reg_rw.h

diff --git a/drivers/gpu/drm/i915/i915_trace.h b/drivers/gpu/drm/i915/i915_trace.h
index bc854ad60954..24b8e41600af 100644
--- a/drivers/gpu/drm/i915/i915_trace.h
+++ b/drivers/gpu/drm/i915/i915_trace.h
@@ -914,34 +914,6 @@ DEFINE_EVENT(i915_request, i915_request_wait_end,
 	    TP_ARGS(rq)
 );
 
-TRACE_EVENT_CONDITION(i915_reg_rw,
-	TP_PROTO(bool write, i915_reg_t reg, u64 val, int len, bool trace),
-
-	TP_ARGS(write, reg, val, len, trace),
-
-	TP_CONDITION(trace),
-
-	TP_STRUCT__entry(
-		__field(u64, val)
-		__field(u32, reg)
-		__field(u16, write)
-		__field(u16, len)
-		),
-
-	TP_fast_assign(
-		__entry->val = (u64)val;
-		__entry->reg = i915_mmio_reg_offset(reg);
-		__entry->write = write;
-		__entry->len = len;
-		),
-
-	TP_printk("%s reg=0x%x, len=%d, val=(0x%x, 0x%x)",
-		__entry->write ? "write" : "read",
-		__entry->reg, __entry->len,
-		(u32)(__entry->val & 0xffffffff),
-		(u32)(__entry->val >> 32))
-);
-
 TRACE_EVENT(intel_gpu_freq_change,
 	    TP_PROTO(u32 freq),
 	    TP_ARGS(freq),
@@ -1031,6 +1003,8 @@ DEFINE_EVENT(i915_context, i915_context_free,
 	TP_ARGS(ctx)
 );
 
+#include "i915_trace_reg_rw.h"
+
 #endif /* _I915_TRACE_H_ */
 
 /* This part must be outside protection */
diff --git a/drivers/gpu/drm/i915/i915_trace_reg_rw.h b/drivers/gpu/drm/i915/i915_trace_reg_rw.h
new file mode 100644
index 000000000000..2b0f2f00fbc9
--- /dev/null
+++ b/drivers/gpu/drm/i915/i915_trace_reg_rw.h
@@ -0,0 +1,42 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * protect against inclusions if it has already being included by the main file
+ */
+#if !defined(_I915_TRACE_REG_RW_H_) ||  defined(TRACE_HEADER_MULTI_READ)
+#define _I915_TRACE_REG_RW_H_
+
+#include <linux/stringify.h>
+#include <linux/types.h>
+#include <linux/tracepoint.h>
+
+#include "i915_reg.h"
+
+TRACE_EVENT_CONDITION(i915_reg_rw,
+	TP_PROTO(bool write, i915_reg_t reg, u64 val, int len, bool trace),
+
+	TP_ARGS(write, reg, val, len, trace),
+
+	TP_CONDITION(trace),
+
+	TP_STRUCT__entry(
+		__field(u64, val)
+		__field(u32, reg)
+		__field(u16, write)
+		__field(u16, len)
+		),
+
+	TP_fast_assign(
+		__entry->val = (u64)val;
+		__entry->reg = i915_mmio_reg_offset(reg);
+		__entry->write = write;
+		__entry->len = len;
+		),
+
+	TP_printk("%s reg=0x%x, len=%d, val=(0x%x, 0x%x)",
+		__entry->write ? "write" : "read",
+		__entry->reg, __entry->len,
+		(u32)(__entry->val & 0xffffffff),
+		(u32)(__entry->val >> 32))
+);
+
+#endif
-- 
2.26.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
