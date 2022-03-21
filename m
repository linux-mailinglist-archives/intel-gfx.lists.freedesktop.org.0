Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AF0904E2817
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Mar 2022 14:51:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BD8510E332;
	Mon, 21 Mar 2022 13:51:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFDD510E332
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Mar 2022 13:51:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647870678; x=1679406678;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=trnRYLsgsffZr2y7/8Se5l0nFZJG0uz7oNytasncQs8=;
 b=oC/7/p7ke0R/aF+hmsWGdo6rSGZBhfpt5FjacRFF7AdNS+FmeYz8DV15
 hoPY9k5bOs+ymrWjObhPcF9yeLdFPqWPgxCU6+CCcVW6BLh3avp/3bi1J
 7+gKXUUB9IeQBzTZx8BAwV25HHgwSck/2RMWAMfCBG/imwkcxQhSqlxws
 qFIXOYsU3OviciWIwbzlV7B9a8ORIVT89l9hqdizf/S13Pb1Z9GeSsQpU
 iq9+/qoajqEwzgKhNbu0nC5aa37AcN53UbNGK+a5WKpcRPnNUQY2e6NPm
 hAXUWDOMs3MgJMzuF2UBbBX5h3WccE2ujfsK3O6r3MAeIHpl1Z09kfJ8j A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10292"; a="282382382"
X-IronPort-AV: E=Sophos;i="5.90,198,1643702400"; d="scan'208";a="282382382"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2022 06:51:18 -0700
X-IronPort-AV: E=Sophos;i="5.90,198,1643702400"; d="scan'208";a="500177379"
Received: from abhijitc-mobl.gar.corp.intel.com (HELO localhost)
 ([10.252.34.12])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2022 06:51:17 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 21 Mar 2022 15:50:33 +0200
Message-Id: <2600c34a1a295456ed87fa64953a4530b0c001d2.1647870374.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1647870374.git.jani.nikula@intel.com>
References: <cover.1647870374.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 5/7] drm/i915/dmc: abstract GPU error state
 dump
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
Cc: jani.nikula@intel.com, Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Only intel_dmc.c should be accessing dmc details directly.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 15 +++++++++++++++
 drivers/gpu/drm/i915/display/intel_dmc.h |  3 +++
 drivers/gpu/drm/i915/i915_gpu_error.c    | 10 +---------
 3 files changed, 19 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 5de13f978e57..f0eb3de8de60 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -811,6 +811,21 @@ void intel_dmc_ucode_fini(struct drm_i915_private *dev_priv)
 		kfree(dev_priv->dmc.dmc_info[id].payload);
 }
 
+void intel_dmc_print_error_state(struct drm_i915_error_state_buf *m,
+				 struct drm_i915_private *i915)
+{
+	struct intel_dmc *dmc = &i915->dmc;
+
+	if (!HAS_DMC(i915))
+		return;
+
+	i915_error_printf(m, "DMC loaded: %s\n",
+			  str_yes_no(intel_dmc_has_payload(i915)));
+	i915_error_printf(m, "DMC fw version: %d.%d\n",
+			  DMC_VERSION_MAJOR(dmc->version),
+			  DMC_VERSION_MINOR(dmc->version));
+}
+
 static int intel_dmc_debugfs_status_show(struct seq_file *m, void *unused)
 {
 	struct drm_i915_private *i915 = m->private;
diff --git a/drivers/gpu/drm/i915/display/intel_dmc.h b/drivers/gpu/drm/i915/display/intel_dmc.h
index b9f608057700..dd8880d2cbed 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.h
+++ b/drivers/gpu/drm/i915/display/intel_dmc.h
@@ -10,6 +10,7 @@
 #include "intel_wakeref.h"
 #include <linux/workqueue.h>
 
+struct drm_i915_error_state_buf;
 struct drm_i915_private;
 
 #define DMC_VERSION(major, minor)	((major) << 16 | (minor))
@@ -55,6 +56,8 @@ void intel_dmc_ucode_suspend(struct drm_i915_private *i915);
 void intel_dmc_ucode_resume(struct drm_i915_private *i915);
 bool intel_dmc_has_payload(struct drm_i915_private *i915);
 void intel_dmc_debugfs_register(struct drm_i915_private *i915);
+void intel_dmc_print_error_state(struct drm_i915_error_state_buf *m,
+				 struct drm_i915_private *i915);
 
 void assert_dmc_loaded(struct drm_i915_private *i915);
 
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index a8acc6fbb299..fb3baf4af792 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -825,15 +825,7 @@ static void __err_print_to_sgl(struct drm_i915_error_state_buf *m,
 
 	err_printf(m, "IOMMU enabled?: %d\n", error->iommu);
 
-	if (HAS_DMC(m->i915)) {
-		struct intel_dmc *dmc = &m->i915->dmc;
-
-		err_printf(m, "DMC loaded: %s\n",
-			   str_yes_no(intel_dmc_has_payload(m->i915) != 0));
-		err_printf(m, "DMC fw version: %d.%d\n",
-			   DMC_VERSION_MAJOR(dmc->version),
-			   DMC_VERSION_MINOR(dmc->version));
-	}
+	intel_dmc_print_error_state(m, m->i915);
 
 	err_printf(m, "RPM wakelock: %s\n", str_yes_no(error->wakelock));
 	err_printf(m, "PM suspended: %s\n", str_yes_no(error->suspended));
-- 
2.30.2

