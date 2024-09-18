Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9862697BB7C
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2024 13:18:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3413E10E583;
	Wed, 18 Sep 2024 11:18:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LfchOWgz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC1BB10E57C;
 Wed, 18 Sep 2024 11:18:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726658301; x=1758194301;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=62qtMrLoIuQjUyl7++ymRwcssE2p9lpXslyy6bDxtZw=;
 b=LfchOWgzrXCtpLQQU7U6mUKCf8JXZgxCezrpmygqmwPzUKJwTUJ1XJZY
 vxhStAnOENJJ4Y2LEJJ1GXvhsQDH7G0tGqbOQDH/oI1RA+JNhY2q47HN2
 FqZRDjxWs9qLvg5OlgcN+ZjtZxp2KrhsoYXb9D2Vdm6gmSKl5h4/KGRbK
 giTdbhCIFQqNlJJUA89Q3kklRxAwG3mLeIalIgmmlRVH2zVZ+t/tD0atu
 RyaJjn3Z2PGJ+boWCEseqZu2f6tdi5f+H2VC/3Aubl7K+VrcpTMGjJRrK
 zxFE/JcRx9kQ8Dk925rZ+KtqpH1vFgRpRqL4I4ddQruxW2LqEO9GMc2ru A==;
X-CSE-ConnectionGUID: Zudycud1Rva/G81Il6fIwQ==
X-CSE-MsgGUID: nfKvQouKTWmXURYes/FMiQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11198"; a="25048974"
X-IronPort-AV: E=Sophos;i="6.10,238,1719903600"; d="scan'208";a="25048974"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 04:18:21 -0700
X-CSE-ConnectionGUID: xCLHkHIFRR+UrBTYtvs/sA==
X-CSE-MsgGUID: hbtJ+RvPSiCYw9y5+9apkg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,238,1719903600"; d="scan'208";a="69839534"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.202])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 04:18:20 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 5/5] drm/i915: switch intel_wakeref_t underlying type to
 struct ref_tracker *
Date: Wed, 18 Sep 2024 14:17:48 +0300
Message-Id: <067332b1f8679f940f373618fd24b1d03370ba45.1726658138.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1726658138.git.jani.nikula@intel.com>
References: <cover.1726658138.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

For intel_wakeref_t, opaque is reasonable, but disguising the underlying
struct ref_tracker * as an unsigned long is not so great. Update the
typedef to remove one level of disguise.

Although the kernel coding style strongly discourages pointer typedefs,
it's a better alternative, and an incremental improvement on the status
quo. It provides much better type safety than an unsigned long could,
and prevents passing magic -1 instead of INTEL_WAKEREF_DEF. Moreover, it
provides a gradual path for replacing intel_wakeref_t with struct
ref_tracker * if desired.

As an extra safety measure, check for error pointers in
intel_ref_tracker_free() before passing them on to ref_tracker_free(),
to catch any mistakes with mock gt special wakeref value.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_pm.h            |  2 +-
 drivers/gpu/drm/i915/intel_wakeref.h             | 16 +++++++++-------
 .../drm/xe/compat-i915-headers/intel_wakeref.h   |  4 ++--
 3 files changed, 12 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.h b/drivers/gpu/drm/i915/gt/intel_gt_pm.h
index fef8d5d288f8..dcbfc09194b7 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.h
@@ -105,7 +105,7 @@ int intel_gt_runtime_resume(struct intel_gt *gt);
 
 ktime_t intel_gt_get_awake_time(const struct intel_gt *gt);
 
-#define INTEL_WAKEREF_MOCK_GT ((intel_wakeref_t)-ENODEV)
+#define INTEL_WAKEREF_MOCK_GT ERR_PTR(-ENODEV)
 
 static inline bool is_mock_gt(const struct intel_gt *gt)
 {
diff --git a/drivers/gpu/drm/i915/intel_wakeref.h b/drivers/gpu/drm/i915/intel_wakeref.h
index 3944587a5e78..48836ef52d40 100644
--- a/drivers/gpu/drm/i915/intel_wakeref.h
+++ b/drivers/gpu/drm/i915/intel_wakeref.h
@@ -21,7 +21,7 @@
 #include <linux/timer.h>
 #include <linux/workqueue.h>
 
-typedef unsigned long intel_wakeref_t;
+typedef struct ref_tracker *intel_wakeref_t;
 
 #define INTEL_REFTRACK_DEAD_COUNT 16
 #define INTEL_REFTRACK_PRINT_LIMIT 16
@@ -273,7 +273,7 @@ __intel_wakeref_defer_park(struct intel_wakeref *wf)
  */
 int intel_wakeref_wait_for_idle(struct intel_wakeref *wf);
 
-#define INTEL_WAKEREF_DEF ((intel_wakeref_t)(-1))
+#define INTEL_WAKEREF_DEF ERR_PTR(-ENOENT)
 
 static inline intel_wakeref_t intel_ref_tracker_alloc(struct ref_tracker_dir *dir)
 {
@@ -281,17 +281,19 @@ static inline intel_wakeref_t intel_ref_tracker_alloc(struct ref_tracker_dir *di
 
 	ref_tracker_alloc(dir, &user, GFP_NOWAIT);
 
-	return (intel_wakeref_t)user ?: INTEL_WAKEREF_DEF;
+	return user ?: INTEL_WAKEREF_DEF;
 }
 
 static inline void intel_ref_tracker_free(struct ref_tracker_dir *dir,
-					  intel_wakeref_t handle)
+					  intel_wakeref_t wakeref)
 {
-	struct ref_tracker *user;
+	if (wakeref == INTEL_WAKEREF_DEF)
+		wakeref = NULL;
 
-	user = (handle == INTEL_WAKEREF_DEF) ? NULL : (void *)handle;
+	if (WARN_ON(IS_ERR(wakeref)))
+		return;
 
-	ref_tracker_free(dir, &user);
+	ref_tracker_free(dir, &wakeref);
 }
 
 void intel_ref_tracker_show(struct ref_tracker_dir *dir,
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/intel_wakeref.h b/drivers/gpu/drm/xe/compat-i915-headers/intel_wakeref.h
index 5c139ba144a6..2a32faea9db5 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/intel_wakeref.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/intel_wakeref.h
@@ -5,6 +5,6 @@
 
 #include <linux/types.h>
 
-typedef unsigned long intel_wakeref_t;
+typedef struct ref_tracker *intel_wakeref_t;
 
-#define INTEL_WAKEREF_DEF ((intel_wakeref_t)(-1))
+#define INTEL_WAKEREF_DEF ERR_PTR(-ENOENT)
-- 
2.39.2

