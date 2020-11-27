Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 544842C6589
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Nov 2020 13:14:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 743346ED9F;
	Fri, 27 Nov 2020 12:12:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 429F76ED8F;
 Fri, 27 Nov 2020 12:12:19 +0000 (UTC)
IronPort-SDR: PrXVOdrIeWslpEJwFcmA+OlYuTKbVoVq9Y02f8CqHSObZzuPTs7ejvBRICD5Hkoa8tQw9ScCWH
 vU6wkMpmsBQA==
X-IronPort-AV: E=McAfee;i="6000,8403,9817"; a="168883860"
X-IronPort-AV: E=Sophos;i="5.78,374,1599548400"; d="scan'208";a="168883860"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2020 04:12:18 -0800
IronPort-SDR: EUF3dStoizZMYow81o5Kizats7/L77wE6sg18R8+Yiyx2zNW/e/PMY8zXKUutvCe1NIrfYP6LI
 c3VP24M8EiNw==
X-IronPort-AV: E=Sophos;i="5.78,374,1599548400"; d="scan'208";a="548030025"
Received: from mjgleeso-mobl.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.251.85.2])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2020 04:12:17 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Nov 2020 12:07:07 +0000
Message-Id: <20201127120718.454037-152-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201127120718.454037-1-matthew.auld@intel.com>
References: <20201127120718.454037-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH 151/162] drm/i915: move eviction to prepare
 hook
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Lucas De Marchi <lucas.demarchi@intel.com>

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.c | 40 ++++++++++++++++++++++-----------
 1 file changed, 27 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index c8af68227020..b7d40a9c00bf 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -68,6 +68,7 @@
 #include "gt/intel_gt.h"
 #include "gt/intel_gt_pm.h"
 #include "gt/intel_rc6.h"
+#include "gt/intel_gt_requests.h"
 
 #include "i915_debugfs.h"
 #include "i915_drv.h"
@@ -1088,10 +1089,36 @@ static bool suspend_to_idle(struct drm_i915_private *dev_priv)
 	return false;
 }
 
+static int i915_gem_suspend_ppgtt_mappings(struct drm_i915_private *i915);
+
+static int intel_dmem_evict_buffers(struct drm_device *dev, bool in_suspend,
+				    bool perma_pin);
+
 static int i915_drm_prepare(struct drm_device *dev)
 {
 	struct drm_i915_private *i915 = to_i915(dev);
 
+	if (HAS_LMEM(i915))     {
+		struct intel_gt *gt= &i915->gt;
+		long timeout = I915_GEM_IDLE_TIMEOUT;
+		int ret;
+
+		if (intel_gt_wait_for_idle(gt, timeout) == -ETIME) {
+			intel_gt_set_wedged(gt);
+			intel_gt_retire_requests(gt);
+		}
+
+		ret = intel_dmem_evict_buffers(dev, true, false);
+		if (ret)
+			return ret;
+
+		i915_teardown_blt_windows(i915);
+
+		ret = i915_gem_suspend_ppgtt_mappings(i915);
+		if (ret)
+			return ret;
+	}
+
 	/*
 	 * NB intel_display_suspend() may issue new requests after we've
 	 * ostensibly marked the GPU as ready-to-sleep here. We need to
@@ -1274,7 +1301,6 @@ static int i915_drm_suspend(struct drm_device *dev)
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	struct pci_dev *pdev = dev_priv->drm.pdev;
 	pci_power_t opregion_target_state;
-	int ret = 0;
 
 	disable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
 
@@ -1290,18 +1316,6 @@ static int i915_drm_suspend(struct drm_device *dev)
 
 	intel_dp_mst_suspend(dev_priv);
 
-	if (HAS_LMEM(dev_priv))	{
-		ret = intel_dmem_evict_buffers(dev, true, false);
-		if (ret)
-			return ret;
-
-		i915_teardown_blt_windows(dev_priv);
-
-		ret = i915_gem_suspend_ppgtt_mappings(dev_priv);
-		if (ret)
-			return ret;
-	}
-
 	intel_runtime_pm_disable_interrupts(dev_priv);
 	intel_hpd_cancel_work(dev_priv);
 
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
