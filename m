Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BF54753CA5E
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jun 2022 15:06:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A535B1134C0;
	Fri,  3 Jun 2022 13:06:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B23F1134C0
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jun 2022 13:06:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654261570; x=1685797570;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Efgy0gH3sHa9cnk1D/8oWqJ/i2mVL3W1OFEFNoUfldg=;
 b=QJY+qDiCfJJADIJ8bK+gJ1ffeuCzNUSOYcz0eIuIAp9lGrXrS+OCsLW6
 HMO347uVTgcrSQfjUyzyTd74WMArF4w7xpEGJSEoPtz4aBE0UWQ6rjAHn
 /ub+TIGPxJjcn0bGZxRoGEOCFr/Co4sgURolxDn8O2qNIagBfepzbNlqg
 Izh3sO1Dio17mXLD7JQ8rT7AWhPQSRAjVzjBw+gZ6VtfzDrmBlt2teYu2
 LrJ49LnL0iCVBudFB3Hk8WjvDHNGrPgpgniyEM41BMrN3X3Nu0ktN3LLW
 GYP/EjxzIzWcaI3GrOSrOrF1ed1d9srIIRERxSV5MfhmLZNVNmlc4Rps6 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10366"; a="301617877"
X-IronPort-AV: E=Sophos;i="5.91,274,1647327600"; d="scan'208";a="301617877"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2022 06:06:09 -0700
X-IronPort-AV: E=Sophos;i="5.91,274,1647327600"; d="scan'208";a="553322364"
Received: from richardf-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.55.27])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2022 06:06:07 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  3 Jun 2022 16:05:54 +0300
Message-Id: <f6d1bba2869c20765347118859f8539b8eb1dae5.1654261471.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1654261471.git.jani.nikula@intel.com>
References: <cover.1654261471.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/7] drm/i915/tasklet: separate local hacks
 around struct tasklet_struct
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

Add a dedicated file for the local functions around struct
tasklet_struct. Far from ideal, but better placed in a dedicated file
than i915_gem.h.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/TODO.txt         |  2 +-
 drivers/gpu/drm/i915/i915_gem.h       | 33 --------------------
 drivers/gpu/drm/i915/i915_scheduler.h |  1 +
 drivers/gpu/drm/i915/i915_tasklet.h   | 43 +++++++++++++++++++++++++++
 4 files changed, 45 insertions(+), 34 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/i915_tasklet.h

diff --git a/drivers/gpu/drm/i915/TODO.txt b/drivers/gpu/drm/i915/TODO.txt
index 81a82c9c203f..879b08ca32b3 100644
--- a/drivers/gpu/drm/i915/TODO.txt
+++ b/drivers/gpu/drm/i915/TODO.txt
@@ -37,5 +37,5 @@ Smaller things:
 
   https://lore.kernel.org/linux-mm/20210301083320.943079-1-hch@lst.de/
 
-- tasklet helpers in i915_gem.h also look a bit misplaced and should
+- tasklet helpers in i915_tasklet.h also look a bit misplaced and should
   probably be moved to tasklet headers.
diff --git a/drivers/gpu/drm/i915/i915_gem.h b/drivers/gpu/drm/i915/i915_gem.h
index a2be323a4be5..68d8d52bd541 100644
--- a/drivers/gpu/drm/i915/i915_gem.h
+++ b/drivers/gpu/drm/i915/i915_gem.h
@@ -26,7 +26,6 @@
 #define __I915_GEM_H__
 
 #include <linux/bug.h>
-#include <linux/interrupt.h>
 
 #include <drm/drm_drv.h>
 
@@ -85,36 +84,4 @@ struct drm_i915_private;
 
 #define I915_GEM_IDLE_TIMEOUT (HZ / 5)
 
-static inline void tasklet_lock(struct tasklet_struct *t)
-{
-	while (!tasklet_trylock(t))
-		cpu_relax();
-}
-
-static inline bool tasklet_is_locked(const struct tasklet_struct *t)
-{
-	return test_bit(TASKLET_STATE_RUN, &t->state);
-}
-
-static inline void __tasklet_disable_sync_once(struct tasklet_struct *t)
-{
-	if (!atomic_fetch_inc(&t->count))
-		tasklet_unlock_spin_wait(t);
-}
-
-static inline bool __tasklet_is_enabled(const struct tasklet_struct *t)
-{
-	return !atomic_read(&t->count);
-}
-
-static inline bool __tasklet_enable(struct tasklet_struct *t)
-{
-	return atomic_dec_and_test(&t->count);
-}
-
-static inline bool __tasklet_is_scheduled(struct tasklet_struct *t)
-{
-	return test_bit(TASKLET_STATE_SCHED, &t->state);
-}
-
 #endif /* __I915_GEM_H__ */
diff --git a/drivers/gpu/drm/i915/i915_scheduler.h b/drivers/gpu/drm/i915/i915_scheduler.h
index 0b9b86af6c7f..c229c91071d7 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.h
+++ b/drivers/gpu/drm/i915/i915_scheduler.h
@@ -12,6 +12,7 @@
 #include <linux/kernel.h>
 
 #include "i915_scheduler_types.h"
+#include "i915_tasklet.h"
 
 struct drm_printer;
 
diff --git a/drivers/gpu/drm/i915/i915_tasklet.h b/drivers/gpu/drm/i915/i915_tasklet.h
new file mode 100644
index 000000000000..5d7069bdf2c0
--- /dev/null
+++ b/drivers/gpu/drm/i915/i915_tasklet.h
@@ -0,0 +1,43 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2022 Intel Corporation
+ */
+
+#ifndef __I915_TASKLET_H__
+#define __I915_TASKLET_H__
+
+#include <linux/interrupt.h>
+
+static inline void tasklet_lock(struct tasklet_struct *t)
+{
+	while (!tasklet_trylock(t))
+		cpu_relax();
+}
+
+static inline bool tasklet_is_locked(const struct tasklet_struct *t)
+{
+	return test_bit(TASKLET_STATE_RUN, &t->state);
+}
+
+static inline void __tasklet_disable_sync_once(struct tasklet_struct *t)
+{
+	if (!atomic_fetch_inc(&t->count))
+		tasklet_unlock_spin_wait(t);
+}
+
+static inline bool __tasklet_is_enabled(const struct tasklet_struct *t)
+{
+	return !atomic_read(&t->count);
+}
+
+static inline bool __tasklet_enable(struct tasklet_struct *t)
+{
+	return atomic_dec_and_test(&t->count);
+}
+
+static inline bool __tasklet_is_scheduled(struct tasklet_struct *t)
+{
+	return test_bit(TASKLET_STATE_SCHED, &t->state);
+}
+
+#endif /* __I915_TASKLET_H__ */
-- 
2.30.2

