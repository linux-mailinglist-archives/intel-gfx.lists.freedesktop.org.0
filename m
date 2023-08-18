Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 576AA7813A2
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Aug 2023 21:43:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C00EF10E560;
	Fri, 18 Aug 2023 19:43:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2F9D10E560
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Aug 2023 19:43:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692387792; x=1723923792;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fl9Dm5BH3+Atuk3Z4jUR3qYevbBQY1ZOxDBt+mtlk3E=;
 b=PpaXmJwqxGG/6E2iyItDtUlvM0acCjkc5FfPXPQ/ydGTmbFewMWtdrNM
 +ivnhLxkhz7T7MQYa96pznUPmOgbc0kgY2AYdj/ScIU0CayQ+kWuKVpML
 8RAFkp0HoA4B7zJrX7L2dWELh3kDhphStAsn0gmCCNb/97Fi7GiwwfzWW
 zz0EecGr53pJ0c53XkrC0TyiBhk3NyF5TM2/WCYNdfAiZSsnrpDQG7tmC
 dCuZd76Uv2MUDtsiJHBDIv3cGrSakusrcrL5NoKyt67GUNosnNQZQJQwN
 uqZCRjDjd3hfQgzt84bNCa4P6tdyhKP4sMWP9uE3mSbom6SJm66cAtc64 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10806"; a="373159914"
X-IronPort-AV: E=Sophos;i="6.01,184,1684825200"; d="scan'208";a="373159914"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2023 12:43:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10806"; a="738212244"
X-IronPort-AV: E=Sophos;i="6.01,184,1684825200"; d="scan'208";a="738212244"
Received: from esavax-mobl.ger.corp.intel.com (HELO intel.com) ([10.249.41.4])
 by fmsmga007-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Aug 2023 12:43:08 -0700
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>
Date: Fri, 18 Aug 2023 21:42:49 +0200
Message-Id: <20230818194249.1014022-4-andi.shyti@linux.intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230818194249.1014022-1-andi.shyti@linux.intel.com>
References: <20230818194249.1014022-1-andi.shyti@linux.intel.com>
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>
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
after runtime resume.

Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
Signed-off-by: Oak Zeng <oak.zeng@intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index ec4d26b3c17cc..a893a5e8496ef 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -812,6 +812,7 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	i915_welcome_messages(i915);
 
 	i915->do_release = true;
+	intel_engine_blitter_context_set_ready(to_gt(i915), true);
 
 	return 0;
 
@@ -852,6 +853,7 @@ void i915_driver_remove(struct drm_i915_private *i915)
 {
 	intel_wakeref_t wakeref;
 
+	intel_engine_blitter_context_set_ready(to_gt(i915), false);
 	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
 
 	i915_driver_unregister(i915);
@@ -1074,6 +1076,8 @@ static int i915_drm_suspend(struct drm_device *dev)
 	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
 	pci_power_t opregion_target_state;
 
+	intel_engine_blitter_context_set_ready(to_gt(dev_priv), false);
+
 	disable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
 
 	/* We do a lot of poking in a lot of registers, make sure they work
@@ -1261,6 +1265,7 @@ static int i915_drm_resume(struct drm_device *dev)
 	intel_gvt_resume(dev_priv);
 
 	enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
+	intel_engine_blitter_context_set_ready(to_gt(dev_priv), true);
 
 	return 0;
 }
@@ -1512,6 +1517,7 @@ static int intel_runtime_suspend(struct device *kdev)
 	if (drm_WARN_ON_ONCE(&dev_priv->drm, !HAS_RUNTIME_PM(dev_priv)))
 		return -ENODEV;
 
+	intel_engine_blitter_context_set_ready(to_gt(dev_priv), false);
 	drm_dbg(&dev_priv->drm, "Suspending device\n");
 
 	disable_rpm_wakeref_asserts(rpm);
@@ -1666,6 +1672,8 @@ static int intel_runtime_resume(struct device *kdev)
 	else
 		drm_dbg(&dev_priv->drm, "Device resumed\n");
 
+	intel_engine_blitter_context_set_ready(to_gt(dev_priv), true);
+
 	return ret;
 }
 
-- 
2.40.1

