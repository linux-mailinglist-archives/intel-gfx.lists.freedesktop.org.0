Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E3AB4B11FC
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Feb 2022 16:46:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1C0810E898;
	Thu, 10 Feb 2022 15:46:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63AB910E89E
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Feb 2022 15:46:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644508007; x=1676044007;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hX5DhedMM1YOf25SjcMqWLrFh7y1ebfohvnashYWbJI=;
 b=NsIeBLh3VXKcOXvOY0MWPnkhYbIRCSCUASVzyMEmKdoDccm0Ha+5+A9d
 nI230+Dc1pL0gWdoYrRKT3bstvXds5BuGVGbpq2ZRAunKYBfFioRX2pYG
 OVtOFFA6R87ZzgPTC7fTqTVhgN//wQECUmcsyPbrSflanZy7TKIWfyJCU
 66B+ugez1rmehBRg40buI3/tI6rY2+eOoCU3RSY/WQztTD+ezUIuWY56b
 XA8/PGj79owcFZA4c3QPUqWKXL/vrdjrfyHrEn+fM6aGdrc/0+qGYt1sJ
 ahSC2uDF6nG2PrX5mdCnGeUAljb55d7hGeDuJJ0SWuA7F2ignZsK21woV w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10254"; a="312802903"
X-IronPort-AV: E=Sophos;i="5.88,359,1635231600"; d="scan'208";a="312802903"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 07:46:46 -0800
X-IronPort-AV: E=Sophos;i="5.88,359,1635231600"; d="scan'208";a="701728707"
Received: from dhogarty-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.10.221])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 07:46:44 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Feb 2022 17:45:47 +0200
Message-Id: <e375859dc1729a1b988036e4103e5b1bd48caa00.1644507885.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1644507885.git.jani.nikula@intel.com>
References: <cover.1644507885.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 09/14] drm/i915: split out
 i915_file_private.h from i915_drv.h
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
Cc: jani.nikula@intel.com, Daniel Vetter <daniel.vetter@ffwll.ch>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Limit the scope of struct drm_i915_file_private to the files that
actually need it.

Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c   |   1 +
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |   1 +
 drivers/gpu/drm/i915/gem/i915_gem_object.c    |   1 +
 drivers/gpu/drm/i915/gem/i915_gem_throttle.c  |   1 +
 .../gpu/drm/i915/gem/selftests/mock_context.c |   1 +
 drivers/gpu/drm/i915/gt/intel_reset.c         |   1 +
 drivers/gpu/drm/i915/i915_driver.c            |   1 +
 drivers/gpu/drm/i915/i915_drv.h               |  93 ---------------
 drivers/gpu/drm/i915/i915_file_private.h      | 108 ++++++++++++++++++
 drivers/gpu/drm/i915/i915_gem.c               |   2 +-
 drivers/gpu/drm/i915/i915_perf.c              |   1 +
 11 files changed, 117 insertions(+), 94 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/i915_file_private.h

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index fff09df0009e..77bebaa4fe2e 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -79,6 +79,7 @@
 
 #include "pxp/intel_pxp.h"
 
+#include "i915_file_private.h"
 #include "i915_gem_context.h"
 #include "i915_trace.h"
 #include "i915_user_extensions.h"
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 498b458fd784..13c975da7747 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -25,6 +25,7 @@
 
 #include "i915_cmd_parser.h"
 #include "i915_drv.h"
+#include "i915_file_private.h"
 #include "i915_gem_clflush.h"
 #include "i915_gem_context.h"
 #include "i915_gem_evict.h"
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm/i915/gem/i915_gem_object.c
index 04df294dc5ca..fb90c35543f2 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
@@ -28,6 +28,7 @@
 #include "pxp/intel_pxp.h"
 
 #include "i915_drv.h"
+#include "i915_file_private.h"
 #include "i915_gem_clflush.h"
 #include "i915_gem_context.h"
 #include "i915_gem_dmabuf.h"
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_throttle.c b/drivers/gpu/drm/i915/gem/i915_gem_throttle.c
index 75501db71041..af85d0c28168 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_throttle.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_throttle.c
@@ -9,6 +9,7 @@
 #include <drm/drm_file.h>
 
 #include "i915_drv.h"
+#include "i915_file_private.h"
 #include "i915_gem_context.h"
 #include "i915_gem_ioctls.h"
 #include "i915_gem_object.h"
diff --git a/drivers/gpu/drm/i915/gem/selftests/mock_context.c b/drivers/gpu/drm/i915/gem/selftests/mock_context.c
index c0a8ef368044..6d6082b5f31f 100644
--- a/drivers/gpu/drm/i915/gem/selftests/mock_context.c
+++ b/drivers/gpu/drm/i915/gem/selftests/mock_context.c
@@ -4,6 +4,7 @@
  * Copyright © 2016 Intel Corporation
  */
 
+#include "i915_file_private.h"
 #include "mock_context.h"
 #include "selftests/mock_drm.h"
 #include "selftests/mock_gtt.h"
diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index 59beb69ff6f2..13e3a7b236b3 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -14,6 +14,7 @@
 #include "gt/intel_gt_regs.h"
 
 #include "i915_drv.h"
+#include "i915_file_private.h"
 #include "i915_gpu_error.h"
 #include "i915_irq.h"
 #include "intel_breadcrumbs.h"
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 4a41c38cf06f..1c67ff735f18 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -73,6 +73,7 @@
 
 #include "pxp/intel_pxp_pm.h"
 
+#include "i915_file_private.h"
 #include "i915_debugfs.h"
 #include "i915_driver.h"
 #include "i915_drv.h"
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 95091ee4870f..39bc632289c1 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -48,7 +48,6 @@
 #include <linux/dma-resv.h>
 #include <linux/shmem_fs.h>
 #include <linux/stackdepot.h>
-#include <linux/xarray.h>
 
 #include <drm/drm_gem.h>
 #include <drm/drm_auth.h>
@@ -180,98 +179,6 @@ struct i915_hotplug {
 	 I915_GEM_DOMAIN_INSTRUCTION | \
 	 I915_GEM_DOMAIN_VERTEX)
 
-struct drm_i915_file_private {
-	struct drm_i915_private *dev_priv;
-
-	union {
-		struct drm_file *file;
-		struct rcu_head rcu;
-	};
-
-	/** @proto_context_lock: Guards all struct i915_gem_proto_context
-	 * operations
-	 *
-	 * This not only guards @proto_context_xa, but is always held
-	 * whenever we manipulate any struct i915_gem_proto_context,
-	 * including finalizing it on first actual use of the GEM context.
-	 *
-	 * See i915_gem_proto_context.
-	 */
-	struct mutex proto_context_lock;
-
-	/** @proto_context_xa: xarray of struct i915_gem_proto_context
-	 *
-	 * Historically, the context uAPI allowed for two methods of
-	 * setting context parameters: SET_CONTEXT_PARAM and
-	 * CONTEXT_CREATE_EXT_SETPARAM.  The former is allowed to be called
-	 * at any time while the later happens as part of
-	 * GEM_CONTEXT_CREATE.  Everything settable via one was settable
-	 * via the other.  While some params are fairly simple and setting
-	 * them on a live context is harmless such as the context priority,
-	 * others are far trickier such as the VM or the set of engines.
-	 * In order to swap out the VM, for instance, we have to delay
-	 * until all current in-flight work is complete, swap in the new
-	 * VM, and then continue.  This leads to a plethora of potential
-	 * race conditions we'd really rather avoid.
-	 *
-	 * We have since disallowed setting these more complex parameters
-	 * on active contexts.  This works by delaying the creation of the
-	 * actual context until after the client is done configuring it
-	 * with SET_CONTEXT_PARAM.  From the perspective of the client, it
-	 * has the same u32 context ID the whole time.  From the
-	 * perspective of i915, however, it's a struct i915_gem_proto_context
-	 * right up until the point where we attempt to do something which
-	 * the proto-context can't handle.  Then the struct i915_gem_context
-	 * gets created.
-	 *
-	 * This is accomplished via a little xarray dance.  When
-	 * GEM_CONTEXT_CREATE is called, we create a struct
-	 * i915_gem_proto_context, reserve a slot in @context_xa but leave
-	 * it NULL, and place the proto-context in the corresponding slot
-	 * in @proto_context_xa.  Then, in i915_gem_context_lookup(), we
-	 * first check @context_xa.  If it's there, we return the struct
-	 * i915_gem_context and we're done.  If it's not, we look in
-	 * @proto_context_xa and, if we find it there, we create the actual
-	 * context and kill the proto-context.
-	 *
-	 * In order for this dance to work properly, everything which ever
-	 * touches a struct i915_gem_proto_context is guarded by
-	 * @proto_context_lock, including context creation.  Yes, this
-	 * means context creation now takes a giant global lock but it
-	 * can't really be helped and that should never be on any driver's
-	 * fast-path anyway.
-	 */
-	struct xarray proto_context_xa;
-
-	/** @context_xa: xarray of fully created i915_gem_context
-	 *
-	 * Write access to this xarray is guarded by @proto_context_lock.
-	 * Otherwise, writers may race with finalize_create_context_locked().
-	 *
-	 * See @proto_context_xa.
-	 */
-	struct xarray context_xa;
-	struct xarray vm_xa;
-
-	unsigned int bsd_engine;
-
-/*
- * Every context ban increments per client ban score. Also
- * hangs in short succession increments ban score. If ban threshold
- * is reached, client is considered banned and submitting more work
- * will fail. This is a stop gap measure to limit the badly behaving
- * clients access to gpu. Note that unbannable contexts never increment
- * the client ban score.
- */
-#define I915_CLIENT_SCORE_HANG_FAST	1
-#define   I915_CLIENT_FAST_HANG_JIFFIES (60 * HZ)
-#define I915_CLIENT_SCORE_CONTEXT_BAN   3
-#define I915_CLIENT_SCORE_BANNED	9
-	/** ban_score: Accumulated score of all ctx bans and fast hangs. */
-	atomic_t ban_score;
-	unsigned long hang_timestamp;
-};
-
 struct sdvo_device_mapping {
 	u8 initialized;
 	u8 dvo_port;
diff --git a/drivers/gpu/drm/i915/i915_file_private.h b/drivers/gpu/drm/i915/i915_file_private.h
new file mode 100644
index 000000000000..fb16cc431b2a
--- /dev/null
+++ b/drivers/gpu/drm/i915/i915_file_private.h
@@ -0,0 +1,108 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2021 Intel Corporation
+ */
+
+#ifndef __I915_FILE_PRIVATE_H__
+#define __I915_FILE_PRIVATE_H__
+
+#include <linux/mutex.h>
+#include <linux/types.h>
+#include <linux/xarray.h>
+
+struct drm_i915_private;
+struct drm_file;
+
+struct drm_i915_file_private {
+	struct drm_i915_private *dev_priv;
+
+	union {
+		struct drm_file *file;
+		struct rcu_head rcu;
+	};
+
+	/** @proto_context_lock: Guards all struct i915_gem_proto_context
+	 * operations
+	 *
+	 * This not only guards @proto_context_xa, but is always held
+	 * whenever we manipulate any struct i915_gem_proto_context,
+	 * including finalizing it on first actual use of the GEM context.
+	 *
+	 * See i915_gem_proto_context.
+	 */
+	struct mutex proto_context_lock;
+
+	/** @proto_context_xa: xarray of struct i915_gem_proto_context
+	 *
+	 * Historically, the context uAPI allowed for two methods of
+	 * setting context parameters: SET_CONTEXT_PARAM and
+	 * CONTEXT_CREATE_EXT_SETPARAM.  The former is allowed to be called
+	 * at any time while the later happens as part of
+	 * GEM_CONTEXT_CREATE.  Everything settable via one was settable
+	 * via the other.  While some params are fairly simple and setting
+	 * them on a live context is harmless such as the context priority,
+	 * others are far trickier such as the VM or the set of engines.
+	 * In order to swap out the VM, for instance, we have to delay
+	 * until all current in-flight work is complete, swap in the new
+	 * VM, and then continue.  This leads to a plethora of potential
+	 * race conditions we'd really rather avoid.
+	 *
+	 * We have since disallowed setting these more complex parameters
+	 * on active contexts.  This works by delaying the creation of the
+	 * actual context until after the client is done configuring it
+	 * with SET_CONTEXT_PARAM.  From the perspective of the client, it
+	 * has the same u32 context ID the whole time.  From the
+	 * perspective of i915, however, it's a struct i915_gem_proto_context
+	 * right up until the point where we attempt to do something which
+	 * the proto-context can't handle.  Then the struct i915_gem_context
+	 * gets created.
+	 *
+	 * This is accomplished via a little xarray dance.  When
+	 * GEM_CONTEXT_CREATE is called, we create a struct
+	 * i915_gem_proto_context, reserve a slot in @context_xa but leave
+	 * it NULL, and place the proto-context in the corresponding slot
+	 * in @proto_context_xa.  Then, in i915_gem_context_lookup(), we
+	 * first check @context_xa.  If it's there, we return the struct
+	 * i915_gem_context and we're done.  If it's not, we look in
+	 * @proto_context_xa and, if we find it there, we create the actual
+	 * context and kill the proto-context.
+	 *
+	 * In order for this dance to work properly, everything which ever
+	 * touches a struct i915_gem_proto_context is guarded by
+	 * @proto_context_lock, including context creation.  Yes, this
+	 * means context creation now takes a giant global lock but it
+	 * can't really be helped and that should never be on any driver's
+	 * fast-path anyway.
+	 */
+	struct xarray proto_context_xa;
+
+	/** @context_xa: xarray of fully created i915_gem_context
+	 *
+	 * Write access to this xarray is guarded by @proto_context_lock.
+	 * Otherwise, writers may race with finalize_create_context_locked().
+	 *
+	 * See @proto_context_xa.
+	 */
+	struct xarray context_xa;
+	struct xarray vm_xa;
+
+	unsigned int bsd_engine;
+
+/*
+ * Every context ban increments per client ban score. Also
+ * hangs in short succession increments ban score. If ban threshold
+ * is reached, client is considered banned and submitting more work
+ * will fail. This is a stop gap measure to limit the badly behaving
+ * clients access to gpu. Note that unbannable contexts never increment
+ * the client ban score.
+ */
+#define I915_CLIENT_SCORE_HANG_FAST	1
+#define   I915_CLIENT_FAST_HANG_JIFFIES (60 * HZ)
+#define I915_CLIENT_SCORE_CONTEXT_BAN   3
+#define I915_CLIENT_SCORE_BANNED	9
+	/** ban_score: Accumulated score of all ctx bans and fast hangs. */
+	atomic_t ban_score;
+	unsigned long hang_timestamp;
+};
+
+#endif /* __I915_FILE_PRIVATE_H__ */
diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index a70750c48047..b75355f25d07 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -53,9 +53,9 @@
 #include "gt/intel_workarounds.h"
 
 #include "i915_drv.h"
+#include "i915_file_private.h"
 #include "i915_trace.h"
 #include "i915_vgpu.h"
-
 #include "intel_pm.h"
 
 static int
diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 061e61371dae..36f1325baa7d 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -209,6 +209,7 @@
 #include "gt/intel_ring.h"
 
 #include "i915_drv.h"
+#include "i915_file_private.h"
 #include "i915_perf.h"
 #include "i915_perf_oa_regs.h"
 
-- 
2.30.2

