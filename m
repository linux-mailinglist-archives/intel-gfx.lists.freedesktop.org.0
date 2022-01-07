Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F4CE487824
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jan 2022 14:21:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9411F10E8EF;
	Fri,  7 Jan 2022 13:21:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF9C810FBE7
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Jan 2022 13:21:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641561703; x=1673097703;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ryOAzPPPFDf9H/9CyOjpak9WXiRS9pxaIkUqMFGdykM=;
 b=CQD2NCI2Yop8iiA7oo+8PqZGy9hxD+nVowDINzY9fyoB5sO2S/tnZ0yC
 xEgxTyV0s2nSgPJ6L9LCA13iGz6w8ihYo97c1MEDmm/dQNHi6Gxn8dBT2
 Nkh50r8Ijy9AHdmVMqQB6978Z3pIUFujG1m8qSAyta+MjXcqIzMxybTVj
 lEl2lHTbutFIlWrDVz6VqpXG0bpEtM4zMyayAbXm67hnFn6YnJ8TB9cAl
 RjaMh0OEaXdoSkg1ZUTLMvm2xqeR8+5cVNcpODXCKJTbawzgIQ7l0mcyi
 Yxjufi2fzlAE2+EmtrNTvMLb7P4GZRgvGd3u/yBkRcw40e+/1TwjnibCI g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10219"; a="243064906"
X-IronPort-AV: E=Sophos;i="5.88,270,1635231600"; d="scan'208";a="243064906"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2022 05:21:43 -0800
X-IronPort-AV: E=Sophos;i="5.88,270,1635231600"; d="scan'208";a="527367771"
Received: from dgreerx-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.24.206])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2022 05:21:41 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  7 Jan 2022 15:20:50 +0200
Message-Id: <20220107132126.133801-3-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1641561552.git.jani.nikula@intel.com>
References: <cover.1641561552.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/5] drm/i915: split out i915_gem_evict.h from
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

We already have the i915_gem_evict.c file.

v2: Fixed commit message (Tvrtko)

Acked-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |  1 +
 drivers/gpu/drm/i915/gt/selftest_hangcheck.c  |  1 +
 drivers/gpu/drm/i915/i915_drv.h               | 11 ---------
 drivers/gpu/drm/i915/i915_gem_evict.c         |  1 +
 drivers/gpu/drm/i915/i915_gem_evict.h         | 24 +++++++++++++++++++
 drivers/gpu/drm/i915/i915_gem_gtt.c           |  1 +
 drivers/gpu/drm/i915/i915_vma.c               |  1 +
 7 files changed, 29 insertions(+), 11 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/i915_gem_evict.h

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 40e708ad7b2a..9e221ce42707 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -27,6 +27,7 @@
 #include "i915_drv.h"
 #include "i915_gem_clflush.h"
 #include "i915_gem_context.h"
+#include "i915_gem_evict.h"
 #include "i915_gem_ioctls.h"
 #include "i915_trace.h"
 #include "i915_user_extensions.h"
diff --git a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
index 15d63435ec4d..4a20ba63446c 100644
--- a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
+++ b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
@@ -7,6 +7,7 @@
 
 #include "gem/i915_gem_context.h"
 
+#include "i915_gem_evict.h"
 #include "intel_gt.h"
 #include "intel_engine_heartbeat.h"
 #include "intel_engine_pm.h"
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index b34547e98977..606027a24fc3 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1716,17 +1716,6 @@ i915_gem_vm_lookup(struct drm_i915_file_private *file_priv, u32 id)
 	return vm;
 }
 
-/* i915_gem_evict.c */
-int __must_check i915_gem_evict_something(struct i915_address_space *vm,
-					  u64 min_size, u64 alignment,
-					  unsigned long color,
-					  u64 start, u64 end,
-					  unsigned flags);
-int __must_check i915_gem_evict_for_node(struct i915_address_space *vm,
-					 struct drm_mm_node *node,
-					 unsigned int flags);
-int i915_gem_evict_vm(struct i915_address_space *vm);
-
 /* i915_gem_internal.c */
 struct drm_i915_gem_object *
 i915_gem_object_create_internal(struct drm_i915_private *dev_priv,
diff --git a/drivers/gpu/drm/i915/i915_gem_evict.c b/drivers/gpu/drm/i915/i915_gem_evict.c
index 2b73ddb11c66..24eee0c2055f 100644
--- a/drivers/gpu/drm/i915/i915_gem_evict.c
+++ b/drivers/gpu/drm/i915/i915_gem_evict.c
@@ -31,6 +31,7 @@
 #include "gt/intel_gt_requests.h"
 
 #include "i915_drv.h"
+#include "i915_gem_evict.h"
 #include "i915_trace.h"
 
 I915_SELFTEST_DECLARE(static struct igt_evict_ctl {
diff --git a/drivers/gpu/drm/i915/i915_gem_evict.h b/drivers/gpu/drm/i915/i915_gem_evict.h
new file mode 100644
index 000000000000..d4478b6ad11b
--- /dev/null
+++ b/drivers/gpu/drm/i915/i915_gem_evict.h
@@ -0,0 +1,24 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2021 Intel Corporation
+ */
+
+#ifndef __I915_GEM_EVICT_H__
+#define __I915_GEM_EVICT_H__
+
+#include <linux/types.h>
+
+struct drm_mm_node;
+struct i915_address_space;
+
+int __must_check i915_gem_evict_something(struct i915_address_space *vm,
+					  u64 min_size, u64 alignment,
+					  unsigned long color,
+					  u64 start, u64 end,
+					  unsigned flags);
+int __must_check i915_gem_evict_for_node(struct i915_address_space *vm,
+					 struct drm_mm_node *node,
+					 unsigned int flags);
+int i915_gem_evict_vm(struct i915_address_space *vm);
+
+#endif /* __I915_GEM_EVICT_H__ */
diff --git a/drivers/gpu/drm/i915/i915_gem_gtt.c b/drivers/gpu/drm/i915/i915_gem_gtt.c
index 2f2ba7a2955d..b7094ca48047 100644
--- a/drivers/gpu/drm/i915/i915_gem_gtt.c
+++ b/drivers/gpu/drm/i915/i915_gem_gtt.c
@@ -20,6 +20,7 @@
 #include "gt/intel_gt_requests.h"
 
 #include "i915_drv.h"
+#include "i915_gem_evict.h"
 #include "i915_scatterlist.h"
 #include "i915_trace.h"
 #include "i915_vgpu.h"
diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index be208a8f1ed0..09d3424c9270 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -34,6 +34,7 @@
 #include "gt/intel_gt_requests.h"
 
 #include "i915_drv.h"
+#include "i915_gem_evict.h"
 #include "i915_sw_fence_work.h"
 #include "i915_trace.h"
 #include "i915_vma.h"
-- 
2.30.2

