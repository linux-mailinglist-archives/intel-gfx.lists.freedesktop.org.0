Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A08D64EC49A
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Mar 2022 14:41:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9A9E10E1F0;
	Wed, 30 Mar 2022 12:41:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1DE010E1F0
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Mar 2022 12:41:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648644084; x=1680180084;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=2gUJgSt371s66lDhE8oDuwBiz6OvB2ph5qRYGElEVCc=;
 b=Vg/3zCng2JFoez5lQT6Kntx4BMXSvfvCJOgjyuFTZcf7UKvUvKwL4J0f
 iG3zZPqp61Ns+Vewb18LAm6jkdaUL0LFNlaWloV5ZsSZM0AMfitwhuECe
 GxdZpfQgW4BmC3BQwqBGUG/39AKvYLqVeOMuW2ANHlxgID97cMFap5EyO
 a2d3E4qG+oWVUTG8uveC8Ng0B+tpE/d0/cvWC/iCvyImS1EWYn+FvR2jS
 bIVEa+e1fnSDBehmewodmlnRQKwGFgz5jJ2yuOI6Vucad9G9Ya4L00g+g
 4v8hxDz58B7j72Jl7wleXrxuxjdEFw+3LzlvtpCh/jpTZbczVOnL28TPQ Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10301"; a="239462485"
X-IronPort-AV: E=Sophos;i="5.90,222,1643702400"; d="scan'208";a="239462485"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2022 05:41:24 -0700
X-IronPort-AV: E=Sophos;i="5.90,222,1643702400"; d="scan'208";a="565520027"
Received: from nhanus-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.62.116])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2022 05:41:22 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 30 Mar 2022 15:41:17 +0300
Message-Id: <20220330124119.224966-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RESEND 1/3] drm/i915/dmc: abstract GPU error state dump
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

Need to add an i915_error_printf() stub for
CONFIG_DRM_I915_CAPTURE_ERROR=n.

v2: Add the stub (kernel test robot <lkp@intel.com>)

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com> # v1
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 15 +++++++++++++++
 drivers/gpu/drm/i915/display/intel_dmc.h |  3 +++
 drivers/gpu/drm/i915/i915_gpu_error.c    | 10 +---------
 drivers/gpu/drm/i915/i915_gpu_error.h    |  6 ++++++
 4 files changed, 25 insertions(+), 9 deletions(-)

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
index 5478b1dd26bd..fa14314e7d70 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -849,15 +849,7 @@ static void __err_print_to_sgl(struct drm_i915_error_state_buf *m,
 
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
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.h b/drivers/gpu/drm/i915/i915_gpu_error.h
index 09159ff01411..7977a01a708f 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.h
+++ b/drivers/gpu/drm/i915/i915_gpu_error.h
@@ -298,6 +298,12 @@ void i915_disable_error_state(struct drm_i915_private *i915, int err);
 
 #else
 
+__printf(2, 3)
+static inline void
+i915_error_printf(struct drm_i915_error_state_buf *e, const char *f, ...)
+{
+}
+
 static inline void
 i915_capture_error_state(struct intel_gt *gt, intel_engine_mask_t engine_mask, u32 dump_flags)
 {
-- 
2.30.2

