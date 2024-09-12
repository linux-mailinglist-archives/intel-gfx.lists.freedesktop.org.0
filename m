Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1523F976C3D
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2024 16:34:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E6E510EBA7;
	Thu, 12 Sep 2024 14:34:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mKfZZmd7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDFD310EBA7;
 Thu, 12 Sep 2024 14:34:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726151681; x=1757687681;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jnqnQuBT5oRo258joOl0WrfbkK2BgSgTYxsQA2C0MCA=;
 b=mKfZZmd7DriyuAo19RoMcFhU54icReqW2qfsjQNUeAA85GpuzcwuOfry
 jokJk6IsUYalNYKwJgplLKi2tQlDKj2Ou386pmpuAU58Hl49vmvgbD9aF
 Ik5RiiE9zzgckhfturZYuBT66FY3rmlPqmkhi1XdJ6kX05TjW5tFkjyI9
 YMbbSDx3IJ4KMjw6bFUkSJJWmb3kEhLT+DhcHpsFgCqoCS9CEaaG3g7Vt
 yOvrjCiAVplXgwvpMYh2v0xH2vMnc+0lBb1vSa6x3zTnyyHhayd3WTsGM
 lmR2mijBexH3hjiS2Ewp45rgvzxqJivRmUZ5hOuYBcuzEfbPFJ9Q0eBNh Q==;
X-CSE-ConnectionGUID: wD1DJlTmR92jsmOs03xTAg==
X-CSE-MsgGUID: N30JQ/alT/+3jH2j6aI4Fg==
X-IronPort-AV: E=McAfee;i="6700,10204,11193"; a="25108967"
X-IronPort-AV: E=Sophos;i="6.10,223,1719903600"; d="scan'208";a="25108967"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2024 07:34:41 -0700
X-CSE-ConnectionGUID: mX9BxMSvRISweVAGW16KBw==
X-CSE-MsgGUID: piQY3WKNRXeVoOWmi6Dt6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,223,1719903600"; d="scan'208";a="72514969"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.160])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2024 07:34:39 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	rodrigo.vivi@intel.com
Subject: [PATCH v3 4/4] drm/i915/display: move dmc snapshotting to new display
 snapshot
Date: Thu, 12 Sep 2024 17:34:14 +0300
Message-Id: <9116319e7faceeed7695ee35e56fe001ddf94e11.1726151571.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1726151571.git.jani.nikula@intel.com>
References: <cover.1726151571.git.jani.nikula@intel.com>
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

v2: Rebase

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_snapshot.c |  5 +++
 drivers/gpu/drm/i915/display/intel_dmc.c      | 38 +++++++++++++++----
 drivers/gpu/drm/i915/display/intel_dmc.h      |  6 ++-
 drivers/gpu/drm/i915/i915_gpu_error.c         |  3 --
 4 files changed, 39 insertions(+), 13 deletions(-)

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
index bbac6bfd1752..48bbbf8f312c 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -1194,21 +1194,43 @@ void intel_dmc_fini(struct intel_display *display)
 	}
 }
 
-void intel_dmc_print_error_state(struct drm_printer *p,
-				 struct intel_display *display)
+struct intel_dmc_snapshot {
+	bool initialized;
+	bool loaded;
+	u32 version;
+};
+
+struct intel_dmc_snapshot *intel_dmc_snapshot_capture(struct intel_display *display)
 {
 	struct intel_dmc *dmc = display_to_dmc(display);
+	struct intel_dmc_snapshot *snapshot;
 
 	if (!HAS_DMC(display))
-		return;
+		return NULL;
 
-	drm_printf(p, "DMC initialized: %s\n", str_yes_no(dmc));
-	drm_printf(p, "DMC loaded: %s\n",
-		   str_yes_no(intel_dmc_has_payload(display)));
+	snapshot = kzalloc(sizeof(*snapshot), GFP_ATOMIC);
+	if (!snapshot)
+		return NULL;
+
+	snapshot->initialized = dmc;
+	snapshot->loaded = intel_dmc_has_payload(display);
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
index 2ead2ec1f820..44cecef98e73 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.h
+++ b/drivers/gpu/drm/i915/display/intel_dmc.h
@@ -11,6 +11,7 @@
 enum pipe;
 struct drm_printer;
 struct intel_display;
+struct intel_dmc_snapshot;
 
 void intel_dmc_init(struct intel_display *display);
 void intel_dmc_load_program(struct intel_display *display);
@@ -22,8 +23,9 @@ void intel_dmc_suspend(struct intel_display *display);
 void intel_dmc_resume(struct intel_display *display);
 bool intel_dmc_has_payload(struct intel_display *display);
 void intel_dmc_debugfs_register(struct intel_display *display);
-void intel_dmc_print_error_state(struct drm_printer *p,
-				 struct intel_display *display);
+
+struct intel_dmc_snapshot *intel_dmc_snapshot_capture(struct intel_display *display);
+void intel_dmc_snapshot_print(const struct intel_dmc_snapshot *snapshot, struct drm_printer *p);
 
 void assert_dmc_loaded(struct intel_display *display);
 
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index a84d2fa735b0..135ded17334e 100644
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
 
-	intel_dmc_print_error_state(&p, &m->i915->display);
-
 	err_printf(m, "RPM wakelock: %s\n", str_yes_no(error->wakelock));
 	err_printf(m, "PM suspended: %s\n", str_yes_no(error->suspended));
 
-- 
2.39.2

