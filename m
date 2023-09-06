Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5916E793B53
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Sep 2023 13:31:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3FE010E610;
	Wed,  6 Sep 2023 11:31:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B23CF10E613
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Sep 2023 11:31:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693999902; x=1725535902;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XfliqhIWystRr2XbN/v7C5xPhXR/wAiob+CZOO4u/Ro=;
 b=kLq7EePDvU5CiJgcP2STKaJN8VehWy55Ro8JTltdX+HoGIopSA1WXUMz
 HvYqfC5AG3UhSimuq3jjijuI2P+XHklgHrPAARwbWPlS/ynP4Ycg/CY9J
 i2Yn48I9D2qFfnzeCyxPtz4pENxLeuEmlqLsIcT7oDPah1BG8kOg247lg
 uas3xfTrYtQZgSWyFiCxvIG/MVZkKPrBr8YMYb0lJfnODtknKFIIu3rmK
 u6ZEXVXUKBG0pSWWcgsVARXa54wDSYZLzFsiK+SP7/n5zUhiKrzueuY6S
 7Iqc50Jt7q3eefscUiE3KSNxZ4n9xzIxiNaoh1DUhQLj4CqTKxISv9RGy A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10824"; a="357353627"
X-IronPort-AV: E=Sophos;i="6.02,231,1688454000"; d="scan'208";a="357353627"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2023 04:31:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10824"; a="865109488"
X-IronPort-AV: E=Sophos;i="6.02,231,1688454000"; d="scan'208";a="865109488"
Received: from nirmoyda-desk.igk.intel.com ([10.102.138.190])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2023 04:31:40 -0700
From: Nirmoy Das <nirmoy.das@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  6 Sep 2023 13:31:21 +0200
Message-ID: <20230906113121.30472-6-nirmoy.das@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230906113121.30472-1-nirmoy.das@intel.com>
References: <20230906113121.30472-1-nirmoy.das@intel.com>
MIME-Version: 1.0
Organization: Intel Deutschland GmbH, Registered Address: Am Campeon 10,
 85579 Neubiberg, Germany,
 Commercial Register: Amtsgericht Muenchen HRB 186928 
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/5] drm/i915: Enable GGTT updates with binder
 in MTL
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
Cc: andi.shyti@intel.com, chris.p.wilson@linux.intel.com,
 matthew.d.roper@intel.com, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

MTL can hang because of a HW bug while parallel reading/writing
from/to LMEM/GTTMMADR BAR so try to reduce GGTT update
related pci transactions with blitter command as recommended
for Wa_13010847436 and Wa_14019519902.

To issue gpu commands, the driver must be primed to receive
requests. Maintain binder-based GGTT update disablement until driver
probing completes. Moreover, implement a temporary disablement
of blitter prior to entering suspend, followed by re-enablement
post-resume. This is acceptable as those transition periods are
mostly single threaded.

v2: Disable GGTT blitter prior to runtime suspend and re-enable
after runtime resume.

v3: Remove above as we check if the GT is awake.

Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
Signed-off-by: Oak Zeng <oak.zeng@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gtt.c | 3 ++-
 drivers/gpu/drm/i915/i915_driver.c  | 5 +++++
 2 files changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
index 4c89eb8d9af7..4fbed27ef0ec 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
@@ -23,7 +23,8 @@
 
 bool i915_ggtt_require_binder(struct drm_i915_private *i915)
 {
-	return false;
+	/* Wa_13010847436 & Wa_14019519902 */
+	return MEDIA_VER_FULL(i915) == IP_VER(13, 0);
 }
 
 static bool intel_ggtt_update_needs_vtd_wa(struct drm_i915_private *i915)
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index f8dbee7a5af7..8cc289acdb39 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -815,6 +815,7 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	i915_welcome_messages(i915);
 
 	i915->do_release = true;
+	intel_gt_bind_context_set_ready(to_gt(i915), true);
 
 	return 0;
 
@@ -855,6 +856,7 @@ void i915_driver_remove(struct drm_i915_private *i915)
 {
 	intel_wakeref_t wakeref;
 
+	intel_gt_bind_context_set_ready(to_gt(i915), false);
 	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
 
 	i915_driver_unregister(i915);
@@ -1077,6 +1079,8 @@ static int i915_drm_suspend(struct drm_device *dev)
 	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
 	pci_power_t opregion_target_state;
 
+	intel_gt_bind_context_set_ready(to_gt(dev_priv), false);
+
 	disable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
 
 	/* We do a lot of poking in a lot of registers, make sure they work
@@ -1264,6 +1268,7 @@ static int i915_drm_resume(struct drm_device *dev)
 	intel_gvt_resume(dev_priv);
 
 	enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
+	intel_gt_bind_context_set_ready(to_gt(dev_priv), true);
 
 	return 0;
 }
-- 
2.41.0

