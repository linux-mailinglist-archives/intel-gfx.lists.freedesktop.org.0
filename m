Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C55578455D
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Aug 2023 17:22:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C2FD10E391;
	Tue, 22 Aug 2023 15:22:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F75110E390
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Aug 2023 15:22:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692717736; x=1724253736;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+HMDYVmtgvOGF5qUCrAjLsvyVwmsm6vyfiJgw8Pits0=;
 b=elMUVfCraS0xIoweVNIehawPIehreV0fuz1V7ewBLo0Nsrm6m6yl0Mlz
 fI5AkVYGf58J+hCfmuIx8/r4u9qcnzxr7h5tik2jB4eLFexem8xhGwMx3
 xFWiWXM/uqw/kM5kNhiNkhGCovGQeUvsxSBplwb4R/YxwjnyUPck+8xhk
 DZBWP7J3e14xhR6DPZ4S16PvLW/2R6CICiOcRXGhCJHx8FuTK1WSDdtal
 ByuUsvnZFyDbrnHIVfci6+WmuuZBauQGpEUTzRslHGQgPOp/XwHpIMfpM
 8iEp44nMpYbxNpxSvOyFV7Ykj/6DIoQ/k+9zTh3607viV8iGH1gq1GyzE w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="372798532"
X-IronPort-AV: E=Sophos;i="6.01,193,1684825200"; d="scan'208";a="372798532"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2023 08:22:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="713196502"
X-IronPort-AV: E=Sophos;i="6.01,193,1684825200"; d="scan'208";a="713196502"
Received: from szeng-desk.jf.intel.com ([10.165.21.149])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2023 08:22:15 -0700
From: Oak Zeng <oak.zeng@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Aug 2023 11:28:59 -0400
Message-Id: <20230822152859.1586761-3-oak.zeng@intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20230822152859.1586761-1-oak.zeng@intel.com>
References: <20230822152859.1586761-1-oak.zeng@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/3] drm/i915: Enable GGTT blitting in MTL
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
Cc: andi.shyti@intel.com, chris.p.wilson@linux.intel.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Nirmoy Das <nirmoy.das@intel.com>

MTL can hang because of a HW bug while parallel reading/writing
from/to LMEM/GTTMMADR BAR so try to reduce GGTT update
related pci transactions with blitter command as recommended
for Wa_22018444074.

To issue blitter commands, the driver must be primed to receive
requests. Maintain blitter-based GGTT update disablement until driver
probing completes. Moreover, implement a temporary disablement
of blitter prior to entering suspend, followed by re-enablement
post-resume. This is acceptable as those transition periods are
mostly single threaded.

v2: Disable GGTT blitter prior to runtime suspend and re-enable
after runtime resume. (Oak)

Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
Signed-off-by: Oak Zeng <oak.zeng@intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index f8dbee7a5af7..6afe0adc8ddb 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -815,6 +815,7 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	i915_welcome_messages(i915);
 
 	i915->do_release = true;
+	intel_engine_blitter_context_set_ready(to_gt(i915), true);
 
 	return 0;
 
@@ -855,6 +856,7 @@ void i915_driver_remove(struct drm_i915_private *i915)
 {
 	intel_wakeref_t wakeref;
 
+	intel_engine_blitter_context_set_ready(to_gt(i915), false);
 	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
 
 	i915_driver_unregister(i915);
@@ -1077,6 +1079,8 @@ static int i915_drm_suspend(struct drm_device *dev)
 	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
 	pci_power_t opregion_target_state;
 
+	intel_engine_blitter_context_set_ready(to_gt(dev_priv), false);
+
 	disable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
 
 	/* We do a lot of poking in a lot of registers, make sure they work
@@ -1264,6 +1268,7 @@ static int i915_drm_resume(struct drm_device *dev)
 	intel_gvt_resume(dev_priv);
 
 	enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
+	intel_engine_blitter_context_set_ready(to_gt(dev_priv), true);
 
 	return 0;
 }
@@ -1515,6 +1520,7 @@ static int intel_runtime_suspend(struct device *kdev)
 	if (drm_WARN_ON_ONCE(&dev_priv->drm, !HAS_RUNTIME_PM(dev_priv)))
 		return -ENODEV;
 
+	intel_engine_blitter_context_set_ready(to_gt(dev_priv), false);
 	drm_dbg(&dev_priv->drm, "Suspending device\n");
 
 	disable_rpm_wakeref_asserts(rpm);
@@ -1669,6 +1675,8 @@ static int intel_runtime_resume(struct device *kdev)
 	else
 		drm_dbg(&dev_priv->drm, "Device resumed\n");
 
+	intel_engine_blitter_context_set_ready(to_gt(dev_priv), true);
+
 	return ret;
 }
 
-- 
2.26.3

