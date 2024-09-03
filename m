Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07972969FC1
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2024 16:03:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95DC610E0C2;
	Tue,  3 Sep 2024 14:03:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="beJThSlU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D362F10E0C2;
 Tue,  3 Sep 2024 14:03:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725372218; x=1756908218;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+jEdq3CAzdAbs1W6tbeg3zBy5A3htGcjt6pOngiLkfY=;
 b=beJThSlUI4cXdTE3mm8ufn5O6O7h22dRcyy2uETww5qUdVLQ0eb9YC7Q
 UNEcJXkIYDZ3hoEGTCdRbtVmbyThJ7E9LSeV2LNLNi4ZWt4PO+vZ5ZbfE
 RI1SCePb0/GBPTwnFTBzOiC6mYvoBSQwCPsKbnpLJaaKUy8jZ6WeBkgh5
 N4uCpinJHKXoKuQCL1yHE63T0CoAM9FCXIfwFqsqeXNc2G57Ejm1qiAyL
 8/q7cETCP906HXj/C8akQq7B7jj39DMmWcElRHGHuS62hV92oGo97me9O
 PGxALPU86kPLntsw8Ah1k/Rm1NUQ+89gZ+ETcJm8FDW6p0MzBMy99UO9e g==;
X-CSE-ConnectionGUID: tBfK+7spRfStJ5RPSuzJng==
X-CSE-MsgGUID: afw2v8vCSyObnhtc0O4ItA==
X-IronPort-AV: E=McAfee;i="6700,10204,11184"; a="35364161"
X-IronPort-AV: E=Sophos;i="6.10,198,1719903600"; d="scan'208";a="35364161"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2024 07:03:37 -0700
X-CSE-ConnectionGUID: N+0aekuiQbKhMxjlRS5yZA==
X-CSE-MsgGUID: 8CPluew3SEOQcRQHUJs7yA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,198,1719903600"; d="scan'208";a="88164227"
Received: from sschumil-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.148])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2024 07:03:36 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 4/4] drm/i915/display: move dmc snapshotting to new display
 snapshot
Date: Tue,  3 Sep 2024 17:03:00 +0300
Message-Id: <e6bef9acfb4b146c8763c5b4e319285f96872710.1725372032.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1725372032.git.jani.nikula@intel.com>
References: <cover.1725372032.git.jani.nikula@intel.com>
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

Convert dmc error state printing to new snapshot capture/print division.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_snapshot.c |  5 +++
 drivers/gpu/drm/i915/display/intel_dmc.c      | 39 +++++++++++++++----
 drivers/gpu/drm/i915/display/intel_dmc.h      |  7 +++-
 drivers/gpu/drm/i915/i915_gpu_error.c         |  3 --
 4 files changed, 41 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_snapshot.c b/drivers/gpu/drm/i915/display/intel_display_snapshot.c
index a61ff0f81397..030c4f873da1 100644
--- a/drivers/gpu/drm/i915/display/intel_display_snapshot.c
+++ b/drivers/gpu/drm/i915/display/intel_display_snapshot.c
@@ -7,6 +7,7 @@
 #include "intel_display_device.h"
 #include "intel_display_params.h"
 #include "intel_display_snapshot.h"
+#include "intel_dmc.h"
 #include "intel_overlay.h"
 
 struct intel_display_snapshot {
@@ -16,6 +17,7 @@ struct intel_display_snapshot {
 	struct intel_display_runtime_info runtime_info;
 	struct intel_display_params params;
 	struct intel_overlay_snapshot *overlay;
+	struct intel_dmc_snapshot *dmc;
 };
 
 struct intel_display_snapshot *intel_display_snapshot_capture(struct intel_display *display)
@@ -35,6 +37,7 @@ struct intel_display_snapshot *intel_display_snapshot_capture(struct intel_displ
 	intel_display_params_copy(&snapshot->params);
 
 	snapshot->overlay = intel_overlay_snapshot_capture(display);
+	snapshot->dmc = intel_dmc_snapshot_capture(display);
 
 	return snapshot;
 }
@@ -53,6 +56,7 @@ void intel_display_snapshot_print(const struct intel_display_snapshot *snapshot,
 	intel_display_params_dump(&snapshot->params, display->drm->driver->name, p);
 
 	intel_overlay_snapshot_print(snapshot->overlay, p);
+	intel_dmc_snapshot_print(snapshot->dmc, p);
 }
 
 void intel_display_snapshot_free(struct intel_display_snapshot *snapshot)
@@ -63,5 +67,6 @@ void intel_display_snapshot_free(struct intel_display_snapshot *snapshot)
 	intel_display_params_free(&snapshot->params);
 
 	kfree(snapshot->overlay);
+	kfree(snapshot->dmc);
 	kfree(snapshot);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 7c756d5ba2a2..d2f9684c8b0e 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -1184,21 +1184,44 @@ void intel_dmc_fini(struct drm_i915_private *i915)
 	}
 }
 
-void intel_dmc_print_error_state(struct drm_printer *p,
-				 struct drm_i915_private *i915)
+struct intel_dmc_snapshot {
+	bool initialized;
+	bool loaded;
+	u32 version;
+};
+
+struct intel_dmc_snapshot *intel_dmc_snapshot_capture(struct intel_display *display)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct intel_dmc *dmc = i915_to_dmc(i915);
+	struct intel_dmc_snapshot *snapshot;
 
 	if (!HAS_DMC(i915))
-		return;
+		return NULL;
 
-	drm_printf(p, "DMC initialized: %s\n", str_yes_no(dmc));
-	drm_printf(p, "DMC loaded: %s\n",
-		   str_yes_no(intel_dmc_has_payload(i915)));
+	snapshot = kzalloc(sizeof(*snapshot), GFP_ATOMIC);
+	if (!snapshot)
+		return NULL;
+
+	snapshot->initialized = dmc;
+	snapshot->loaded = intel_dmc_has_payload(i915);
 	if (dmc)
+		snapshot->version = dmc->version;
+
+	return snapshot;
+}
+
+void intel_dmc_snapshot_print(const struct intel_dmc_snapshot *snapshot, struct drm_printer *p)
+{
+	if (!snapshot)
+		return;
+
+	drm_printf(p, "DMC initialized: %s\n", str_yes_no(snapshot->initialized));
+	drm_printf(p, "DMC loaded: %s\n", str_yes_no(snapshot->loaded));
+	if (snapshot->initialized)
 		drm_printf(p, "DMC fw version: %d.%d\n",
-			   DMC_VERSION_MAJOR(dmc->version),
-			   DMC_VERSION_MINOR(dmc->version));
+			   DMC_VERSION_MAJOR(snapshot->version),
+			   DMC_VERSION_MINOR(snapshot->version));
 }
 
 static int intel_dmc_debugfs_status_show(struct seq_file *m, void *unused)
diff --git a/drivers/gpu/drm/i915/display/intel_dmc.h b/drivers/gpu/drm/i915/display/intel_dmc.h
index 54cff6002e31..e2186c900505 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.h
+++ b/drivers/gpu/drm/i915/display/intel_dmc.h
@@ -11,6 +11,8 @@
 enum pipe;
 struct drm_i915_private;
 struct drm_printer;
+struct intel_display;
+struct intel_dmc_snapshot;
 
 void intel_dmc_init(struct drm_i915_private *i915);
 void intel_dmc_load_program(struct drm_i915_private *i915);
@@ -22,8 +24,9 @@ void intel_dmc_suspend(struct drm_i915_private *i915);
 void intel_dmc_resume(struct drm_i915_private *i915);
 bool intel_dmc_has_payload(struct drm_i915_private *i915);
 void intel_dmc_debugfs_register(struct drm_i915_private *i915);
-void intel_dmc_print_error_state(struct drm_printer *p,
-				 struct drm_i915_private *i915);
+
+struct intel_dmc_snapshot *intel_dmc_snapshot_capture(struct intel_display *display);
+void intel_dmc_snapshot_print(const struct intel_dmc_snapshot *snapshot, struct drm_printer *p);
 
 void assert_dmc_loaded(struct drm_i915_private *i915);
 
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index 15d57206b281..135ded17334e 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -41,7 +41,6 @@
 #include <drm/drm_print.h>
 
 #include "display/intel_display_snapshot.h"
-#include "display/intel_dmc.h"
 
 #include "gem/i915_gem_context.h"
 #include "gem/i915_gem_lmem.h"
@@ -871,8 +870,6 @@ static void __err_print_to_sgl(struct drm_i915_error_state_buf *m,
 
 	err_printf(m, "IOMMU enabled?: %d\n", error->iommu);
 
-	intel_dmc_print_error_state(&p, m->i915);
-
 	err_printf(m, "RPM wakelock: %s\n", str_yes_no(error->wakelock));
 	err_printf(m, "PM suspended: %s\n", str_yes_no(error->suspended));
 
-- 
2.39.2

