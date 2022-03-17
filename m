Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56F564DCDAC
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Mar 2022 19:36:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B366E10E739;
	Thu, 17 Mar 2022 18:36:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3306310E739
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Mar 2022 18:36:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647542211; x=1679078211;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7KbiyG9CzSnWLjnvNkeVSvNKIlhns8aIR559M2zlC+I=;
 b=VTaGDXUKb4roYNdGyRA5LPkc6XfzDgq7DtTD1iRHwySC54AQYwkG4zLN
 nksnAf0xsuFlOPpBKRSCccpXICnCXSj5lOeIwR1SC3861OXpCN94um2sb
 lTMtl67E77W3REw4W+U40PyeuxVgnWIydHnacHetKsWtW8e4Px+FeD/vW
 5sTfJ+Blix4CTaQIE5RDTDF4Nlij4o1GLg0hUxtRKuQ/81MKdMFlX5PaZ
 m2F2Phttodv/z4r6xm8Zk8MZ7x05+AWhVC2RUbIwGOMfx2kU88GVNLSMy
 r6IvU7LHhdC2t9vYfj4CBobGGVSh6Esf320KUenM13Yzs9en6XjNIpzQt A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10289"; a="244405483"
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="244405483"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 11:36:51 -0700
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="715149428"
Received: from unknown (HELO localhost) ([10.252.58.37])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 11:36:49 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Mar 2022 20:36:18 +0200
Message-Id: <a7799cb1c774cc7ee57ca27eba1d385d13586982.1647542120.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1647542120.git.jani.nikula@intel.com>
References: <cover.1647542120.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 6/8] drm/i915/dmc: abstract GPU error state dump
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

Only intel_dmc.c should be accessing dmc details directly.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 15 +++++++++++++++
 drivers/gpu/drm/i915/display/intel_dmc.h |  3 +++
 drivers/gpu/drm/i915/i915_gpu_error.c    | 10 +---------
 3 files changed, 19 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 8dfa2aa9f8bd..86d48029d488 100644
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

