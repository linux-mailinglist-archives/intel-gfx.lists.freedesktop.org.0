Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CEA334D8A7B
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Mar 2022 18:07:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5E4F10E996;
	Mon, 14 Mar 2022 17:07:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 986DA10E559
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Mar 2022 17:07:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647277649; x=1678813649;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gBxke8lWt5jDkHSihODBpCQUVfIUa64nJ+ntC7lmJCc=;
 b=CTTXZJfFIcIcLsyKpTQU+1z5+l1uWyUdbq2LrB9VAL4B88QtiRQX0Jwk
 f4XX2mAlfUH3JZesXO4fLjNX1K8ALHG4dgtxJ0sXrc9s8R7Vnm7OwY0Q4
 5OwISJWWnOfi9JYV2eICaGUqvARJ3ugG3+3hx9PuDiBTOkOwdA4FEuY5i
 se0D4NbBJEoe50RhhbmdME/52rFVjm97Sy7Q2kiUb7OdUwT1wWBQiaJH3
 mZpxZels+bWqM2DsIeueTp0GkNYMQ/1HvB7DTanDhbEhJZXOM7W9TvCoG
 u0aAR3YE+NXPAzY9hIYqAHC7xg4K6AYNgU5lBfcBRmEVStTcJgXk0TKCL A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10285"; a="243536040"
X-IronPort-AV: E=Sophos;i="5.90,181,1643702400"; d="scan'208";a="243536040"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2022 10:07:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,181,1643702400"; d="scan'208";a="597977074"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by fmsmga008.fm.intel.com with ESMTP; 14 Mar 2022 10:07:27 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Mar 2022 10:09:50 -0700
Message-Id: <20220314170954.1537154-10-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220314170954.1537154-1-alan.previn.teres.alexis@intel.com>
References: <20220314170954.1537154-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v9 09/13] drm/i915/guc: Check sizing of
 guc_capture output
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
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add intel_guc_capture_output_min_size_est function to
provide a reasonable minimum size for error-capture
region before allocating the shared buffer.

Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
Reviewed-by: Matthew Brost <matthew.brost@intel.com>
---
 .../gpu/drm/i915/gt/uc/intel_guc_capture.c    | 48 +++++++++++++++++++
 .../gpu/drm/i915/gt/uc/intel_guc_capture.h    |  1 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.c    |  7 ++-
 3 files changed, 55 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
index 249bad6b67ca..8dacd683087b 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
@@ -663,6 +663,54 @@ intel_guc_capture_getnullheader(struct intel_guc *guc,
 	return 0;
 }
 
+#define GUC_CAPTURE_OVERBUFFER_MULTIPLIER 3
+int
+intel_guc_capture_output_min_size_est(struct intel_guc *guc)
+{
+	struct intel_gt *gt = guc_to_gt(guc);
+	struct intel_engine_cs *engine;
+	enum intel_engine_id id;
+	int worst_min_size = 0, num_regs = 0;
+	size_t tmp = 0;
+
+	/*
+	 * If every single engine-instance suffered a failure in quick succession but
+	 * were all unrelated, then a burst of multiple error-capture events would dump
+	 * registers for every one engine instance, one at a time. In this case, GuC
+	 * would even dump the global-registers repeatedly.
+	 *
+	 * For each engine instance, there would be 1 x guc_state_capture_group_t output
+	 * followed by 3 x guc_state_capture_t lists. The latter is how the register
+	 * dumps are split across different register types (where the '3' are global vs class
+	 * vs instance). Finally, let's multiply the whole thing by 3x (just so we are
+	 * not limited to just 1 round of data in a worst case full register dump log)
+	 *
+	 * NOTE: intel_guc_log that allocates the log buffer would round this size up to
+	 * a power of two.
+	 */
+
+	for_each_engine(engine, gt, id) {
+		worst_min_size += sizeof(struct guc_state_capture_group_header_t) +
+				  (3 * sizeof(struct guc_state_capture_header_t));
+
+		if (!intel_guc_capture_getlistsize(guc, 0, GUC_CAPTURE_LIST_TYPE_GLOBAL, 0, &tmp))
+			num_regs += tmp;
+
+		if (!intel_guc_capture_getlistsize(guc, 0, GUC_CAPTURE_LIST_TYPE_ENGINE_CLASS,
+						   engine->class, &tmp)) {
+			num_regs += tmp;
+		}
+		if (!intel_guc_capture_getlistsize(guc, 0, GUC_CAPTURE_LIST_TYPE_ENGINE_INSTANCE,
+						   engine->class, &tmp)) {
+			num_regs += tmp;
+		}
+	}
+
+	worst_min_size += (num_regs * sizeof(struct guc_mmio_reg));
+
+	return (worst_min_size * GUC_CAPTURE_OVERBUFFER_MULTIPLIER);
+}
+
 static void
 guc_capture_free_ads_cache(struct intel_guc_state_capture *gc)
 {
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h
index 8de7704e12eb..540d72079462 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h
@@ -11,6 +11,7 @@
 struct guc_gt_system_info;
 struct intel_guc;
 
+int intel_guc_capture_output_min_size_est(struct intel_guc *guc);
 int intel_guc_capture_getlist(struct intel_guc *guc, u32 owner, u32 type, u32 classid,
 			      void **outptr);
 int intel_guc_capture_getlistsize(struct intel_guc *guc, u32 owner, u32 type, u32 classid,
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
index a2da3f6f2ba0..218d9603d3c5 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
@@ -7,10 +7,11 @@
 #include <linux/string_helpers.h>
 
 #include "gt/intel_gt.h"
+#include "intel_guc_capture.h"
+#include "intel_guc_log.h"
 #include "i915_drv.h"
 #include "i915_irq.h"
 #include "i915_memcpy.h"
-#include "intel_guc_log.h"
 
 static void guc_log_copy_debuglogs_for_relay(struct intel_guc_log *log);
 
@@ -465,6 +466,10 @@ int intel_guc_log_create(struct intel_guc_log *log)
 	 *  |         Capture logs          |
 	 *  +===============================+ + CAPTURE_SIZE
 	 */
+	if (intel_guc_capture_output_min_size_est(guc) > CAPTURE_BUFFER_SIZE)
+		DRM_WARN("GuC log buffer for state_capture maybe too small. %d < %d\n",
+			 CAPTURE_BUFFER_SIZE, intel_guc_capture_output_min_size_est(guc));
+
 	guc_log_size = PAGE_SIZE + CRASH_BUFFER_SIZE + DEBUG_BUFFER_SIZE +
 		       CAPTURE_BUFFER_SIZE;
 
-- 
2.25.1

