Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73D5DB490E6
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Sep 2025 16:12:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BFC210E533;
	Mon,  8 Sep 2025 14:12:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FXCPYcGD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D88F10E533
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Sep 2025 14:12:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757340735; x=1788876735;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rwsXqsPOXEr+mYHYBV67grLeQCyCyJOBKtoFMgCEIPA=;
 b=FXCPYcGD55CbndD9L0NzwkkGyFBnFgWZNBlq1OsItXdqJTylTMl8sq37
 oLy8MZgXVdbDe6VHSEQ61PZ7liMn8/HbZF0FPEBK2oEPnHNT7NCm+37FE
 J8MbuB9NsRDN7o0VJqI1uG/SQiWDqSkmlyI8IHR2bWlKyGP2PSZvQrmUw
 Qhv6PKpuK5irNFGpDtuWAFQQhoYRRL+JJ00ezyqM4t90p+Mi8VT88eCdE
 EtHQLNbf+RGNqe7r1VWfBxKLZvVSaIPg+bz08BqmhGzw45yvCTgjbNgi4
 F5dtyEQfLKyl1mrYqGxLKoULUu2rt/AZMldaeLMRAjmM1BU0SGLTHDQNP Q==;
X-CSE-ConnectionGUID: kSTbnkKmS/W0OYuSy2OMiA==
X-CSE-MsgGUID: Wvo7taMbQqq33FuGsTQZdA==
X-IronPort-AV: E=McAfee;i="6800,10657,11547"; a="63237497"
X-IronPort-AV: E=Sophos;i="6.18,248,1751266800"; d="scan'208";a="63237497"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 07:12:15 -0700
X-CSE-ConnectionGUID: V9oPxMNnTjW2I38sZkThyA==
X-CSE-MsgGUID: SHW8a1rqSNKSOrcBTJZ+zw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,248,1751266800"; d="scan'208";a="209952215"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.204])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 07:12:13 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 4/5] drm/i915: split out i915_list_util.h
Date: Mon,  8 Sep 2025 17:11:48 +0300
Message-ID: <73279e53f57d803f0d4b9a1572613ea0be87c5b8.1757340521.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1757340520.git.jani.nikula@intel.com>
References: <cover.1757340520.git.jani.nikula@intel.com>
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

Move list related utilities from i915_utils.h to separate new file
i915_list_util.h. Clean up related includes.

Note: Arguably none of this should exist in i915 in the first place. At
least isolate it better.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/gt/intel_execlists_submission.c  |  1 +
 .../gpu/drm/i915/gt/intel_gt_buffer_pool.c    |  1 +
 drivers/gpu/drm/i915/gt/intel_timeline.h      |  2 +-
 drivers/gpu/drm/i915/i915_list_util.h         | 23 +++++++++++++++++++
 drivers/gpu/drm/i915/i915_utils.h             | 14 -----------
 5 files changed, 26 insertions(+), 15 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/i915_list_util.h

diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index 52c8fddedfce..0c1b2df02d26 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -112,6 +112,7 @@
 
 #include "gen8_engine_cs.h"
 #include "i915_drv.h"
+#include "i915_list_util.h"
 #include "i915_reg.h"
 #include "i915_timer_util.h"
 #include "i915_trace.h"
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.c b/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.c
index 86b5a9ba323d..c7befc5c20d0 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.c
@@ -7,6 +7,7 @@
 #include "gem/i915_gem_object.h"
 
 #include "i915_drv.h"
+#include "i915_list_util.h"
 #include "intel_engine_pm.h"
 #include "intel_gt_buffer_pool.h"
 
diff --git a/drivers/gpu/drm/i915/gt/intel_timeline.h b/drivers/gpu/drm/i915/gt/intel_timeline.h
index 5f8c8f79714e..85b43f9b9d95 100644
--- a/drivers/gpu/drm/i915/gt/intel_timeline.h
+++ b/drivers/gpu/drm/i915/gt/intel_timeline.h
@@ -9,8 +9,8 @@
 #include <linux/lockdep.h>
 
 #include "i915_active.h"
+#include "i915_list_util.h"
 #include "i915_syncmap.h"
-#include "i915_utils.h"
 #include "intel_timeline_types.h"
 
 struct drm_printer;
diff --git a/drivers/gpu/drm/i915/i915_list_util.h b/drivers/gpu/drm/i915/i915_list_util.h
new file mode 100644
index 000000000000..4e515dc8a3e0
--- /dev/null
+++ b/drivers/gpu/drm/i915/i915_list_util.h
@@ -0,0 +1,23 @@
+/* SPDX-License-Identifier: MIT */
+/* Copyright © 2025 Intel Corporation */
+
+#ifndef __I915_LIST_UTIL_H__
+#define __I915_LIST_UTIL_H__
+
+#include <linux/list.h>
+#include <asm/rwonce.h>
+
+static inline void __list_del_many(struct list_head *head,
+				   struct list_head *first)
+{
+	first->prev = head;
+	WRITE_ONCE(head->next, first);
+}
+
+static inline int list_is_last_rcu(const struct list_head *list,
+				   const struct list_head *head)
+{
+	return READ_ONCE(list->next) == head;
+}
+
+#endif /* __I915_LIST_UTIL_H__ */
diff --git a/drivers/gpu/drm/i915/i915_utils.h b/drivers/gpu/drm/i915/i915_utils.h
index 6278a74d08c2..4a6437d6e00e 100644
--- a/drivers/gpu/drm/i915/i915_utils.h
+++ b/drivers/gpu/drm/i915/i915_utils.h
@@ -25,7 +25,6 @@
 #ifndef __I915_UTILS_H
 #define __I915_UTILS_H
 
-#include <linux/list.h>
 #include <linux/overflow.h>
 #include <linux/sched.h>
 #include <linux/string_helpers.h>
@@ -101,19 +100,6 @@ static inline bool is_power_of_2_u64(u64 n)
 	return (n != 0 && ((n & (n - 1)) == 0));
 }
 
-static inline void __list_del_many(struct list_head *head,
-				   struct list_head *first)
-{
-	first->prev = head;
-	WRITE_ONCE(head->next, first);
-}
-
-static inline int list_is_last_rcu(const struct list_head *list,
-				   const struct list_head *head)
-{
-	return READ_ONCE(list->next) == head;
-}
-
 static inline unsigned long msecs_to_jiffies_timeout(const unsigned int m)
 {
 	unsigned long j = msecs_to_jiffies(m);
-- 
2.47.3

