Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A0AB248781D
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jan 2022 14:21:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5F3D10E8B5;
	Fri,  7 Jan 2022 13:21:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D178E10E8C7
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Jan 2022 13:21:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641561671; x=1673097671;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=L2PJ1yVbO0bMbwTMd8uwMYtrnZlbitQuljlNClvnz6A=;
 b=Pn3OdPc4G8pkg06dTxgFf5C0Ep28+nEeg0SmN8YTNu5ESLsWViKgI07Y
 Ps3yeDw3zN4oytKfbz2YO9Q1auAdnWoKdcR6cY79bvHgmF8xRAvdGvLUq
 AJOG01PkjFy9EJ/ZgTCD8QBBE5o4VdjbruNxvFFV5w/xmOKilJ8nZF0wf
 H/dr1xZs/rzM6Ra1S/pJTFVdBOEQuJpsOYOQU+j0L3i4d3zp7M3Pg2wAz
 /+cuKPytLCwuGareHkwPqG/xPEguhwqZPuhluLVR905sgJt8LYw3gK5Up
 o/10jqSbg3ar0FVXqsGB/CiMsNvoP8W1QAlpMqgpQLdtE3NHoSatXnJbc Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10219"; a="242661651"
X-IronPort-AV: E=Sophos;i="5.88,270,1635231600"; d="scan'208";a="242661651"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2022 05:21:11 -0800
X-IronPort-AV: E=Sophos;i="5.88,270,1635231600"; d="scan'208";a="471307378"
Received: from dgreerx-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.24.206])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2022 05:21:09 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  7 Jan 2022 15:20:44 +0200
Message-Id: <1a02b8788266f4f2fd4de12808b55c4a66179e98.1641561552.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1641561552.git.jani.nikula@intel.com>
References: <cover.1641561552.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/5] drm/i915: split out i915_cmd_parser.h from
 i915_drv.h
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We already have the i915_cmd_parser.c file.

Acked-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |  1 +
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  2 +-
 drivers/gpu/drm/i915/i915_cmd_parser.c        |  1 +
 drivers/gpu/drm/i915/i915_cmd_parser.h        | 26 +++++++++++++++++++
 drivers/gpu/drm/i915/i915_drv.h               | 12 ---------
 drivers/gpu/drm/i915/i915_getparam.c          |  1 +
 6 files changed, 30 insertions(+), 13 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/i915_cmd_parser.h

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 5ecc85b96a3d..40e708ad7b2a 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -23,6 +23,7 @@
 
 #include "pxp/intel_pxp.h"
 
+#include "i915_cmd_parser.h"
 #include "i915_drv.h"
 #include "i915_gem_clflush.h"
 #include "i915_gem_context.h"
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 352254e001b4..548d599c09dc 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -7,8 +7,8 @@
 
 #include "gem/i915_gem_context.h"
 
+#include "i915_cmd_parser.h"
 #include "i915_drv.h"
-
 #include "intel_breadcrumbs.h"
 #include "intel_context.h"
 #include "intel_engine.h"
diff --git a/drivers/gpu/drm/i915/i915_cmd_parser.c b/drivers/gpu/drm/i915/i915_cmd_parser.c
index e0403ce9ce69..9c90740520a9 100644
--- a/drivers/gpu/drm/i915/i915_cmd_parser.c
+++ b/drivers/gpu/drm/i915/i915_cmd_parser.c
@@ -28,6 +28,7 @@
 #include "gt/intel_engine.h"
 #include "gt/intel_gpu_commands.h"
 
+#include "i915_cmd_parser.h"
 #include "i915_drv.h"
 #include "i915_memcpy.h"
 
diff --git a/drivers/gpu/drm/i915/i915_cmd_parser.h b/drivers/gpu/drm/i915/i915_cmd_parser.h
new file mode 100644
index 000000000000..ba70ac6c97cd
--- /dev/null
+++ b/drivers/gpu/drm/i915/i915_cmd_parser.h
@@ -0,0 +1,26 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2021 Intel Corporation
+ */
+
+#ifndef __I915_CMD_PARSER_H__
+#define __I915_CMD_PARSER_H__
+
+#include <linux/types.h>
+
+struct drm_i915_private;
+struct intel_engine_cs;
+struct i915_vma;
+
+int i915_cmd_parser_get_version(struct drm_i915_private *dev_priv);
+int intel_engine_init_cmd_parser(struct intel_engine_cs *engine);
+void intel_engine_cleanup_cmd_parser(struct intel_engine_cs *engine);
+int intel_engine_cmd_parser(struct intel_engine_cs *engine,
+			    struct i915_vma *batch,
+			    unsigned long batch_offset,
+			    unsigned long batch_length,
+			    struct i915_vma *shadow,
+			    bool trampoline);
+#define I915_CMD_PARSER_TRAMPOLINE_SIZE 8
+
+#endif /* __I915_CMD_PARSER_H__ */
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 74658f088fcc..b34547e98977 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1752,18 +1752,6 @@ u32 i915_gem_fence_alignment(struct drm_i915_private *dev_priv, u32 size,
 
 const char *i915_cache_level_str(struct drm_i915_private *i915, int type);
 
-/* i915_cmd_parser.c */
-int i915_cmd_parser_get_version(struct drm_i915_private *dev_priv);
-int intel_engine_init_cmd_parser(struct intel_engine_cs *engine);
-void intel_engine_cleanup_cmd_parser(struct intel_engine_cs *engine);
-int intel_engine_cmd_parser(struct intel_engine_cs *engine,
-			    struct i915_vma *batch,
-			    unsigned long batch_offset,
-			    unsigned long batch_length,
-			    struct i915_vma *shadow,
-			    bool trampoline);
-#define I915_CMD_PARSER_TRAMPOLINE_SIZE 8
-
 /* intel_device_info.c */
 static inline struct intel_device_info *
 mkwrite_device_info(struct drm_i915_private *dev_priv)
diff --git a/drivers/gpu/drm/i915/i915_getparam.c b/drivers/gpu/drm/i915/i915_getparam.c
index 6cf10d20a83e..c12a0adefda5 100644
--- a/drivers/gpu/drm/i915/i915_getparam.c
+++ b/drivers/gpu/drm/i915/i915_getparam.c
@@ -5,6 +5,7 @@
 #include "gem/i915_gem_mman.h"
 #include "gt/intel_engine_user.h"
 
+#include "i915_cmd_parser.h"
 #include "i915_drv.h"
 #include "i915_getparam.h"
 #include "i915_perf.h"
-- 
2.30.2

