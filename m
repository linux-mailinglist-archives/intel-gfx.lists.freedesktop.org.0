Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A308853FA0A
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jun 2022 11:42:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E349A12AFE8;
	Tue,  7 Jun 2022 09:42:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B197312AFEB
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Jun 2022 09:42:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654594933; x=1686130933;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=lbp7H3uGKLfhq+I0xEi+SbSq7UNpJIOkyzHD9AsBVc0=;
 b=mX3yZyYCKTuEOKAoD1Do2Y88RWR7rKrSfol7+YheomIcE37KMVp74UBf
 nHQnE0ILAq/780nWUxBbl3l2qnX0tcTqJabRzH6o1MLPXx6r11GvDXrLk
 KQVozn7iqezIvleL6CLRgeoNLyqYDJwhgefPAmJNENdlSj6PUOhtY2MrC
 ptrjXTq/ZzWxykJJoOfZ7faUWfjCF3z/Cx0UmtkCrhoZ1JuINJegrBpxT
 W3t+SVqgBgvUf43NwEKy0wpSbFSOBNHhtn7f5BB4h6PCl4OHLjDJPLrvx
 TcolDnkA5oumUqG590TNvHXslp+tYsy9KvFlxOtjK2OsHYobSjMzswwtP A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10370"; a="256551951"
X-IronPort-AV: E=Sophos;i="5.91,283,1647327600"; d="scan'208";a="256551951"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2022 02:42:13 -0700
X-IronPort-AV: E=Sophos;i="5.91,283,1647327600"; d="scan'208";a="636052517"
Received: from gknielse-mobl.amr.corp.intel.com (HELO localhost)
 ([10.252.57.112])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2022 02:42:10 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  7 Jun 2022 12:42:05 +0300
Message-Id: <20220607094207.536699-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 1/3] drm/i915/tasklet: separate local hacks around
 struct tasklet_struct
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
Acked-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
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

