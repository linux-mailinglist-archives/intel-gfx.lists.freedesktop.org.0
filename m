Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D1CD9B79D7
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Oct 2024 12:38:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3987810E83E;
	Thu, 31 Oct 2024 11:38:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hcLbQAX9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF96F10E83E;
 Thu, 31 Oct 2024 11:38:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730374732; x=1761910732;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QePzbLKRn+PY2zCjH/xwZCmLdtt/iH8JePWg+CJi6A0=;
 b=hcLbQAX92pCNzq4e4uMwPeIOPjpEQrJNa96LvA0JqZ2xPU9Yl9sXE4B/
 6Cf5eV75woU/dJAxvVAziykOt2ssVjEJ+mdTJWVv2YxDrMHvo5x83I2OZ
 fx6Nt19ySA5UstTMxvrdxnhI2rLIXqmNrBk4wL4BrAQizZNImNCu4T3wV
 Dm62QJxBZpaxpCUDL/QagVJ7bgUNu9xdz4oV1F2Q+xNrY1s6Ssa8LKtvm
 hyMgfYDcPVh+rdCvOiuGYEVSa6dbF8m/2zW8Jb/0AzUoq0DsH4L85HW6F
 99BuNM4lW4XrZ3JPCuhfRc8wToeUMi/6psmpQEBLlC6oWuNu4Bf5iyPyB w==;
X-CSE-ConnectionGUID: 0iC9cep9QXKki/E6Gj6Ptg==
X-CSE-MsgGUID: rOdpPA8pTnC70AsHyWbULA==
X-IronPort-AV: E=McAfee;i="6700,10204,11241"; a="30000638"
X-IronPort-AV: E=Sophos;i="6.11,247,1725346800"; d="scan'208";a="30000638"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2024 04:38:51 -0700
X-CSE-ConnectionGUID: 3dGk7gsmTomzCaytTnI9Zg==
X-CSE-MsgGUID: mtZohnoOTyKBDTM2iduoSA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,247,1725346800"; d="scan'208";a="87744354"
Received: from sschumil-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.204])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2024 04:38:49 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 2/6] drm/i915: extract intel_uncore_trace.[ch]
Date: Thu, 31 Oct 2024 13:38:32 +0200
Message-Id: <a4fc526c1c0638c5492478fbc0055c892abdcecf.1730374470.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1730374470.git.jani.nikula@intel.com>
References: <cover.1730374470.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

The i915_reg_rw tracing is a small isolated part of i915_trace.h. Its
users are orthogonal to the other i915_trace.h users as well, and its
implementation does not require all the includes of i915_trace.h. Split
i915_reg_rw tracing to separate intel_uncore_trace.[ch].

The main underlying goal is to reduce implicit includes of i915_drv.h
from display code.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |  1 +
 drivers/gpu/drm/i915/display/intel_de.h       |  2 +-
 drivers/gpu/drm/i915/display/intel_dp_aux.c   |  2 +-
 drivers/gpu/drm/i915/i915_trace.h             | 28 -----------
 drivers/gpu/drm/i915/intel_uncore.c           |  2 +-
 drivers/gpu/drm/i915/intel_uncore_trace.c     |  7 +++
 drivers/gpu/drm/i915/intel_uncore_trace.h     | 49 +++++++++++++++++++
 drivers/gpu/drm/i915/vlv_suspend.c            |  1 +
 .../{i915_trace.h => intel_uncore_trace.h}    |  0
 9 files changed, 61 insertions(+), 31 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/intel_uncore_trace.c
 create mode 100644 drivers/gpu/drm/i915/intel_uncore_trace.h
 rename drivers/gpu/drm/xe/compat-i915-headers/{i915_trace.h => intel_uncore_trace.h} (100%)

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 31710d98cad5..ac47d7e988fc 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -43,6 +43,7 @@ i915-y += \
 	intel_sbi.o \
 	intel_step.o \
 	intel_uncore.o \
+	intel_uncore_trace.o \
 	intel_wakeref.o \
 	vlv_sideband.o \
 	vlv_suspend.o
diff --git a/drivers/gpu/drm/i915/display/intel_de.h b/drivers/gpu/drm/i915/display/intel_de.h
index bb51f974e9e2..fa9cc253867a 100644
--- a/drivers/gpu/drm/i915/display/intel_de.h
+++ b/drivers/gpu/drm/i915/display/intel_de.h
@@ -7,9 +7,9 @@
 #define __INTEL_DE_H__
 
 #include "i915_drv.h"
-#include "i915_trace.h"
 #include "intel_dsb.h"
 #include "intel_uncore.h"
+#include "intel_uncore_trace.h"
 
 static inline struct intel_uncore *__to_uncore(struct intel_display *display)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
index 04a7acd7f73c..61b3757521f7 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
@@ -5,7 +5,6 @@
 
 #include "i915_drv.h"
 #include "i915_reg.h"
-#include "i915_trace.h"
 #include "intel_bios.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
@@ -15,6 +14,7 @@
 #include "intel_pps.h"
 #include "intel_quirks.h"
 #include "intel_tc.h"
+#include "intel_uncore_trace.h"
 
 #define AUX_CH_NAME_BUFSIZE	6
 
diff --git a/drivers/gpu/drm/i915/i915_trace.h b/drivers/gpu/drm/i915/i915_trace.h
index 09d89bdf82f4..7ed41ce9b708 100644
--- a/drivers/gpu/drm/i915/i915_trace.h
+++ b/drivers/gpu/drm/i915/i915_trace.h
@@ -642,34 +642,6 @@ DEFINE_EVENT(i915_request, i915_request_wait_end,
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
 /**
  * DOC: i915_ppgtt_create and i915_ppgtt_release tracepoints
  *
diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
index 6aa179a3e92a..04b4a3b6d5d6 100644
--- a/drivers/gpu/drm/i915/intel_uncore.c
+++ b/drivers/gpu/drm/i915/intel_uncore.c
@@ -31,8 +31,8 @@
 #include "i915_drv.h"
 #include "i915_iosf_mbi.h"
 #include "i915_reg.h"
-#include "i915_trace.h"
 #include "i915_vgpu.h"
+#include "intel_uncore_trace.h"
 
 #define FORCEWAKE_ACK_TIMEOUT_MS 50
 #define GT_FIFO_TIMEOUT_MS	 10
diff --git a/drivers/gpu/drm/i915/intel_uncore_trace.c b/drivers/gpu/drm/i915/intel_uncore_trace.c
new file mode 100644
index 000000000000..86f0c3942b1d
--- /dev/null
+++ b/drivers/gpu/drm/i915/intel_uncore_trace.c
@@ -0,0 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright © 2024 Intel Corporation */
+
+#ifndef __CHECKER__
+#define CREATE_TRACE_POINTS
+#include "intel_uncore_trace.h"
+#endif
diff --git a/drivers/gpu/drm/i915/intel_uncore_trace.h b/drivers/gpu/drm/i915/intel_uncore_trace.h
new file mode 100644
index 000000000000..f13ff71edf2d
--- /dev/null
+++ b/drivers/gpu/drm/i915/intel_uncore_trace.h
@@ -0,0 +1,49 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright © 2024 Intel Corporation */
+
+#undef TRACE_SYSTEM
+#define TRACE_SYSTEM i915
+
+#if !defined(__INTEL_UNCORE_TRACE_H__) || defined(TRACE_HEADER_MULTI_READ)
+#define __INTEL_UNCORE_TRACE_H__
+
+#include "i915_reg_defs.h"
+
+#include <linux/types.h>
+#include <linux/tracepoint.h>
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
+#endif /* __INTEL_UNCORE_TRACE_H__ */
+
+/* This part must be outside protection */
+#undef TRACE_INCLUDE_PATH
+#undef TRACE_INCLUDE_FILE
+#define TRACE_INCLUDE_PATH ../../drivers/gpu/drm/i915
+#define TRACE_INCLUDE_FILE intel_uncore_trace
+#include <trace/define_trace.h>
diff --git a/drivers/gpu/drm/i915/vlv_suspend.c b/drivers/gpu/drm/i915/vlv_suspend.c
index 94595dde2b96..fc9f311ea1db 100644
--- a/drivers/gpu/drm/i915/vlv_suspend.c
+++ b/drivers/gpu/drm/i915/vlv_suspend.c
@@ -13,6 +13,7 @@
 #include "i915_trace.h"
 #include "i915_utils.h"
 #include "intel_clock_gating.h"
+#include "intel_uncore_trace.h"
 #include "vlv_suspend.h"
 
 #include "gt/intel_gt_regs.h"
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_trace.h b/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore_trace.h
similarity index 100%
rename from drivers/gpu/drm/xe/compat-i915-headers/i915_trace.h
rename to drivers/gpu/drm/xe/compat-i915-headers/intel_uncore_trace.h
-- 
2.39.5

