Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A4109B1557
	for <lists+intel-gfx@lfdr.de>; Sat, 26 Oct 2024 08:27:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3FDE10E3FF;
	Sat, 26 Oct 2024 06:27:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gCQ4nC55";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C38CB10E402
 for <intel-gfx@lists.freedesktop.org>; Sat, 26 Oct 2024 06:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729924029; x=1761460029;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zeK52cArmpTkxk/NIpqdBV8glIVOguZdhY4Mckk22Qc=;
 b=gCQ4nC55ZarrApaiWnD0IydV94x0L2k2N1F6Mf/grh3tm0rhrKmh4IvV
 +yJainbyd2Q5WfOZj9uKR5QySIOSfEKAVUILLrj8PVnnILSNSwTRKbZX7
 m5L+GYnlOtrF+MygH0yPy+JOfJoBufkyIY3ViN/V7XJr+XHvmqW0Wp43m
 yuncIiRKjEbkbG5OUeeN6oxhCU2/oRZOoya2kH3FLh5Lo9lFrPU4YY3Rn
 WIlDJpQI/W4lrwh7u3fyFdOn4sZVo1L3w+K/83MNm7HCsmqMktHRlKbsq
 f4FcjBHiFRF4qAAV++dgq/Yg0eWgtglNZ4mSF2oGsy5Z1LNpaH2wzkQ6E Q==;
X-CSE-ConnectionGUID: WtCT2sbHQ2eD241nQ+MMfw==
X-CSE-MsgGUID: 0zDX8+i+TYOBX8Ylj7TykA==
X-IronPort-AV: E=McAfee;i="6700,10204,11236"; a="40177200"
X-IronPort-AV: E=Sophos;i="6.11,234,1725346800"; d="scan'208";a="40177200"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2024 23:27:08 -0700
X-CSE-ConnectionGUID: f3MN4rTHRD2m0a+v0bvzMA==
X-CSE-MsgGUID: DhAd/9I6ToKZeC66srGYKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,234,1725346800"; d="scan'208";a="118586607"
Received: from ldmartin-desk2.corp.intel.com (HELO ldmartin-desk2.lan)
 ([10.125.111.191])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2024 23:27:08 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Subject: [PATCH 1/3] drm/xe: Add trace to lrc timestamp update
Date: Sat, 26 Oct 2024 01:26:56 -0500
Message-ID: <20241026062658.28060-2-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241026062658.28060-1-lucas.demarchi@intel.com>
References: <20241026062658.28060-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
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

Help debugging when LRC timestamp is updated for a exec queue.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/xe/Makefile       |  1 +
 drivers/gpu/drm/xe/xe_lrc.c       |  3 ++
 drivers/gpu/drm/xe/xe_trace_lrc.c |  9 ++++++
 drivers/gpu/drm/xe/xe_trace_lrc.h | 52 +++++++++++++++++++++++++++++++
 4 files changed, 65 insertions(+)
 create mode 100644 drivers/gpu/drm/xe/xe_trace_lrc.c
 create mode 100644 drivers/gpu/drm/xe/xe_trace_lrc.h

diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
index bc7a04ce69fd..21d69935c336 100644
--- a/drivers/gpu/drm/xe/Makefile
+++ b/drivers/gpu/drm/xe/Makefile
@@ -101,6 +101,7 @@ xe-y += xe_bb.o \
 	xe_trace.o \
 	xe_trace_bo.o \
 	xe_trace_guc.o \
+	xe_trace_lrc.o \
 	xe_ttm_sys_mgr.o \
 	xe_ttm_stolen_mgr.o \
 	xe_ttm_vram_mgr.o \
diff --git a/drivers/gpu/drm/xe/xe_lrc.c b/drivers/gpu/drm/xe/xe_lrc.c
index 4f64c7f4e68d..4b65da77c6e0 100644
--- a/drivers/gpu/drm/xe/xe_lrc.c
+++ b/drivers/gpu/drm/xe/xe_lrc.c
@@ -25,6 +25,7 @@
 #include "xe_map.h"
 #include "xe_memirq.h"
 #include "xe_sriov.h"
+#include "xe_trace_lrc.h"
 #include "xe_vm.h"
 #include "xe_wa.h"
 
@@ -1758,5 +1759,7 @@ u32 xe_lrc_update_timestamp(struct xe_lrc *lrc, u32 *old_ts)
 
 	lrc->ctx_timestamp = xe_lrc_ctx_timestamp(lrc);
 
+	trace_xe_lrc_update_timestamp(lrc, *old_ts);
+
 	return lrc->ctx_timestamp;
 }
diff --git a/drivers/gpu/drm/xe/xe_trace_lrc.c b/drivers/gpu/drm/xe/xe_trace_lrc.c
new file mode 100644
index 000000000000..ab9b7e2970bc
--- /dev/null
+++ b/drivers/gpu/drm/xe/xe_trace_lrc.c
@@ -0,0 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright © 2024 Intel Corporation
+ */
+
+#ifndef __CHECKER__
+#define CREATE_TRACE_POINTS
+#include "xe_trace_lrc.h"
+#endif
diff --git a/drivers/gpu/drm/xe/xe_trace_lrc.h b/drivers/gpu/drm/xe/xe_trace_lrc.h
new file mode 100644
index 000000000000..5c669a0b2180
--- /dev/null
+++ b/drivers/gpu/drm/xe/xe_trace_lrc.h
@@ -0,0 +1,52 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright © 2024 Intel Corporation
+ */
+
+#undef TRACE_SYSTEM
+#define TRACE_SYSTEM xe
+
+#if !defined(_XE_TRACE_LRC_H_) || defined(TRACE_HEADER_MULTI_READ)
+#define _XE_TRACE_LRC_H_
+
+#include <linux/tracepoint.h>
+#include <linux/types.h>
+
+#include "xe_gt_types.h"
+#include "xe_lrc.h"
+#include "xe_lrc_types.h"
+
+#define __dev_name_lrc(lrc)	dev_name(gt_to_xe((lrc)->fence_ctx.gt)->drm.dev)
+
+TRACE_EVENT(xe_lrc_update_timestamp,
+	    TP_PROTO(struct xe_lrc *lrc, uint32_t old),
+	    TP_ARGS(lrc, old),
+	    TP_STRUCT__entry(
+		     __field(struct xe_lrc *, lrc)
+		     __field(u32, old)
+		     __field(u32, new)
+		     __string(name, lrc->fence_ctx.name)
+		     __string(device_id, __dev_name_lrc(lrc))
+	    ),
+
+	    TP_fast_assign(
+		   __entry->lrc	= lrc;
+		   __entry->old = old;
+		   __entry->new = lrc->ctx_timestamp;
+		   __assign_str(name);
+		   __assign_str(device_id);
+		   ),
+	    TP_printk("lrc=:%p lrc->name=%s old=%u new=%u device_id:%s",
+		      __entry->lrc, __get_str(name),
+		      __entry->old, __entry->new,
+		      __get_str(device_id))
+);
+
+#endif
+
+/* This part must be outside protection */
+#undef TRACE_INCLUDE_PATH
+#undef TRACE_INCLUDE_FILE
+#define TRACE_INCLUDE_PATH ../../drivers/gpu/drm/xe
+#define TRACE_INCLUDE_FILE xe_trace_lrc
+#include <trace/define_trace.h>
-- 
2.47.0

