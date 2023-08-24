Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 21CF27879C3
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 22:56:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5925E10E5C0;
	Thu, 24 Aug 2023 20:56:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 863AE10E142
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 20:56:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692910601; x=1724446601;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=G+lqjrCqMOt9StP352671EWpl3NX/Rap5+ui//bIvdo=;
 b=GtVSOVCxLsDP7gRFCkDTJ/Eyy3em099XhSZ5g4Iee+izIfvhQ/RMm99z
 HXbBhgWEfHJZfV5URsEytxYjcNlYyaX6nFgOmFqzJYVhavzz+SeO1KPzZ
 BtyuyAKMOPvIIZsLUKiC3kvPT3VK3ndi3xilCSssUD3cYFp1nN/1oPq73
 En8c0C2HjXgJiej3W71sXqbaxxoJHzhnMWH0L5VP32XaAK947rueJsbX0
 CUCSrEWA87lTzy1HGmVxneGV2qdt/on+FFFfz7Qy5brrO0PL4If1o2o7y
 AQzH90nlsiBUXdW+5rPgYVo6hFgNknm2PGMfcA0YMeJ5lg3PUy4Bi03CS A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="438501553"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="438501553"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 13:56:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="772239235"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="772239235"
Received: from szeng-desk.jf.intel.com ([10.165.21.149])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 13:56:40 -0700
From: Oak Zeng <oak.zeng@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Aug 2023 17:03:24 -0400
Message-Id: <20230824210324.1752862-3-oak.zeng@intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20230824210324.1752862-1-oak.zeng@intel.com>
References: <20230824210324.1752862-1-oak.zeng@intel.com>
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
Cc: matthew.d.roper@intel.com, andi.shyti@intel.com,
 chris.p.wilson@linux.intel.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Nirmoy Das <nirmoy.das@intel.com>

MTL can hang because of a HW bug while parallel reading/writing
from/to LMEM/GTTMMADR BAR so try to reduce GGTT update
related pci transactions with blitter command as recommended
for Wa_13010847436 and Wa_14019519902.

To issue blitter commands, the driver must be primed to receive
requests. Maintain blitter-based GGTT update disablement until driver
probing completes. Moreover, implement a temporary disablement
of blitter prior to entering suspend, followed by re-enablement
post-resume. This is acceptable as those transition periods are
mostly single threaded.

v2: Disable GGTT blitter prior to runtime suspend and re-enable
after runtime resume. (Oak)
v3: s/blitter_context/bind_context/g (Chris)

Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
Signed-off-by: Oak Zeng <oak.zeng@intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index f8dbee7a5af7..26521de190a7 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -815,6 +815,7 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	i915_welcome_messages(i915);
 
 	i915->do_release = true;
+	intel_engine_bind_context_set_ready(to_gt(i915), true);
 
 	return 0;
 
@@ -855,6 +856,7 @@ void i915_driver_remove(struct drm_i915_private *i915)
 {
 	intel_wakeref_t wakeref;
 
+	intel_engine_bind_context_set_ready(to_gt(i915), false);
 	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
 
 	i915_driver_unregister(i915);
@@ -1077,6 +1079,8 @@ static int i915_drm_suspend(struct drm_device *dev)
 	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
 	pci_power_t opregion_target_state;
 
+	intel_engine_bind_context_set_ready(to_gt(dev_priv), false);
+
 	disable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
 
 	/* We do a lot of poking in a lot of registers, make sure they work
@@ -1264,6 +1268,7 @@ static int i915_drm_resume(struct drm_device *dev)
 	intel_gvt_resume(dev_priv);
 
 	enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
+	intel_engine_bind_context_set_ready(to_gt(dev_priv), true);
 
 	return 0;
 }
@@ -1515,6 +1520,7 @@ static int intel_runtime_suspend(struct device *kdev)
 	if (drm_WARN_ON_ONCE(&dev_priv->drm, !HAS_RUNTIME_PM(dev_priv)))
 		return -ENODEV;
 
+	intel_engine_bind_context_set_ready(to_gt(dev_priv), false);
 	drm_dbg(&dev_priv->drm, "Suspending device\n");
 
 	disable_rpm_wakeref_asserts(rpm);
@@ -1669,6 +1675,8 @@ static int intel_runtime_resume(struct device *kdev)
 	else
 		drm_dbg(&dev_priv->drm, "Device resumed\n");
 
+	intel_engine_bind_context_set_ready(to_gt(dev_priv), true);
+
 	return ret;
 }
 
-- 
2.26.3

