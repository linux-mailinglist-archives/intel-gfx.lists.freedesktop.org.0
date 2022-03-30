Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E54AC4EBFD9
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Mar 2022 13:34:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C09610E9BC;
	Wed, 30 Mar 2022 11:34:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8293F10E9BC
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Mar 2022 11:34:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648640075; x=1680176075;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=iuBRso/FwishfC3YAsHhjbrsAjd3WW7vTfe20qSuKlI=;
 b=bexByGvE9LxiN/SzUF6rZz2+jDciXRqdBka6Tkaw1l/t1AVFA8ENbkH7
 LWckpbV6rRDzk8pSIG08GnUyJ1eljpRjMekI3Q/kzOJw5O52e1P9Yq/w/
 aEnwiSG+R+fTMkn/T2yADo/9ZsCntaWNIhtuG7xh6TAlnbyJFUNnatoZq
 kjS/69bcRu6PZpQsPYKzfUtx4NKIBuZ8bVXRzuC8cynUXR67C4w5OYj3T
 bDMld/DYZOQVLIVBBodlcsJ2YTpyvO72PiKo93tGAvmAUypOUA6sp5sf7
 PBCpFUOBR/9MCyUoDOR5iiNs9ngZqFO8Bl+afxDP6eOFZCtf3z0rdSng0 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10301"; a="259235137"
X-IronPort-AV: E=Sophos;i="5.90,222,1643702400"; d="scan'208";a="259235137"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2022 04:34:23 -0700
X-IronPort-AV: E=Sophos;i="5.90,222,1643702400"; d="scan'208";a="565498643"
Received: from nhanus-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.62.116])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2022 04:34:22 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 30 Mar 2022 14:34:15 +0300
Message-Id: <20220330113417.220964-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/3] drm/i915/dmc: abstract GPU error state dump
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
index 795f91a88d1d..25f4e178b410 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -848,15 +848,7 @@ static void __err_print_to_sgl(struct drm_i915_error_state_buf *m,
 
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

