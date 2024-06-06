Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E5A08FE86B
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 16:07:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC17210E0E5;
	Thu,  6 Jun 2024 14:07:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iW/ylP7E";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D738C10E0E5
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 14:07:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717682832; x=1749218832;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=WX+kuQH3EmV1ETjVehwP+C/Cl7XT7HPrK9Ew+3KS0sc=;
 b=iW/ylP7EY0UqRA3btE5LhQyXSLKjvaqj0uhFIxyrrWmCK7nXuCezDFqf
 Mi6d4E8ozRLNpZFkInKMo9sKjhcwjsVMqbBFjr/hsVC/i8ZshXIO8dzR7
 /+DwIRt0KOL7TSwKhO0yQNThvKuGUy7b7pWlMzVpkZQ0r/K006JTRsKP9
 c4gwzBDaBe72SKtrEs3xkbmn8zjlBveVQzIsWtIqx+uvxtk+QmqHh9owB
 m1Jx+DbkX36SyLCCTZ2h4Jkn43iv7/08eC6IloRhyRQs8oP7up3zcbo4H
 eKYt1+b2aLW+tenltrz9hJqayjogiwiJ4dppcmda56awelHjpaLPgaohg Q==;
X-CSE-ConnectionGUID: btMPMaaPSvSiDOPjXVTd+g==
X-CSE-MsgGUID: 6T0JseQSSJ2FJPV6tPAmgg==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="24986506"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="24986506"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 07:07:11 -0700
X-CSE-ConnectionGUID: cjAa3I64SkySJpziyVTUAQ==
X-CSE-MsgGUID: 21DeVi/zQNylR/VV+R+6qw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="42543557"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 07:07:10 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 1/2] drm/i915/dmc: convert intel_dmc_print_error_state() to
 drm_printer
Date: Thu,  6 Jun 2024 17:07:04 +0300
Message-Id: <20240606140705.3072987-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
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

Use the regular drm printer, so we can drop the i915_error_printf()
usage.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 15 +++++++--------
 drivers/gpu/drm/i915/display/intel_dmc.h |  6 +++---
 drivers/gpu/drm/i915/i915_gpu_error.c    |  3 ++-
 3 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 852c11aa3205..73977b173898 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -26,7 +26,6 @@
 #include <linux/firmware.h>
 
 #include "i915_drv.h"
-#include "i915_gpu_error.h"
 #include "i915_reg.h"
 #include "intel_de.h"
 #include "intel_dmc.h"
@@ -1185,7 +1184,7 @@ void intel_dmc_fini(struct drm_i915_private *i915)
 	}
 }
 
-void intel_dmc_print_error_state(struct drm_i915_error_state_buf *m,
+void intel_dmc_print_error_state(struct drm_printer *p,
 				 struct drm_i915_private *i915)
 {
 	struct intel_dmc *dmc = i915_to_dmc(i915);
@@ -1193,13 +1192,13 @@ void intel_dmc_print_error_state(struct drm_i915_error_state_buf *m,
 	if (!HAS_DMC(i915))
 		return;
 
-	i915_error_printf(m, "DMC initialized: %s\n", str_yes_no(dmc));
-	i915_error_printf(m, "DMC loaded: %s\n",
-			  str_yes_no(intel_dmc_has_payload(i915)));
+	drm_printf(p, "DMC initialized: %s\n", str_yes_no(dmc));
+	drm_printf(p, "DMC loaded: %s\n",
+		   str_yes_no(intel_dmc_has_payload(i915)));
 	if (dmc)
-		i915_error_printf(m, "DMC fw version: %d.%d\n",
-				  DMC_VERSION_MAJOR(dmc->version),
-				  DMC_VERSION_MINOR(dmc->version));
+		drm_printf(p, "DMC fw version: %d.%d\n",
+			   DMC_VERSION_MAJOR(dmc->version),
+			   DMC_VERSION_MINOR(dmc->version));
 }
 
 static int intel_dmc_debugfs_status_show(struct seq_file *m, void *unused)
diff --git a/drivers/gpu/drm/i915/display/intel_dmc.h b/drivers/gpu/drm/i915/display/intel_dmc.h
index fd607afff2ef..54cff6002e31 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.h
+++ b/drivers/gpu/drm/i915/display/intel_dmc.h
@@ -8,9 +8,9 @@
 
 #include <linux/types.h>
 
-struct drm_i915_error_state_buf;
-struct drm_i915_private;
 enum pipe;
+struct drm_i915_private;
+struct drm_printer;
 
 void intel_dmc_init(struct drm_i915_private *i915);
 void intel_dmc_load_program(struct drm_i915_private *i915);
@@ -22,7 +22,7 @@ void intel_dmc_suspend(struct drm_i915_private *i915);
 void intel_dmc_resume(struct drm_i915_private *i915);
 bool intel_dmc_has_payload(struct drm_i915_private *i915);
 void intel_dmc_debugfs_register(struct drm_i915_private *i915);
-void intel_dmc_print_error_state(struct drm_i915_error_state_buf *m,
+void intel_dmc_print_error_state(struct drm_printer *p,
 				 struct drm_i915_private *i915);
 
 void assert_dmc_loaded(struct drm_i915_private *i915);
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index 625b3c024540..3fee7ad0ec51 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -836,6 +836,7 @@ static void err_print_gt_engines(struct drm_i915_error_state_buf *m,
 static void __err_print_to_sgl(struct drm_i915_error_state_buf *m,
 			       struct i915_gpu_coredump *error)
 {
+	struct drm_printer p = i915_error_printer(m);
 	const struct intel_engine_coredump *ee;
 	struct timespec64 ts;
 
@@ -873,7 +874,7 @@ static void __err_print_to_sgl(struct drm_i915_error_state_buf *m,
 
 	err_printf(m, "IOMMU enabled?: %d\n", error->iommu);
 
-	intel_dmc_print_error_state(m, m->i915);
+	intel_dmc_print_error_state(&p, m->i915);
 
 	err_printf(m, "RPM wakelock: %s\n", str_yes_no(error->wakelock));
 	err_printf(m, "PM suspended: %s\n", str_yes_no(error->suspended));
-- 
2.39.2

