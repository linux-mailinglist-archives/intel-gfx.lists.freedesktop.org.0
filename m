Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1476A7A505B
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Sep 2023 19:04:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BDDB10E034;
	Mon, 18 Sep 2023 17:04:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6CA610E2CB
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Sep 2023 17:03:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695056632; x=1726592632;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qEz7G816RlDCmGMwizzUMYU/FS03HyNHNIxqsHjz6gY=;
 b=cO3bj9WOjhcJNOUsmwAbCMGi9psyxtabxAS9xX3czSHX+XzALA0xTcZc
 65KXrToiRXm23eBjzsysIOpSotGDyuX9aEJ3oOEywFOpeJf1++sjtT5HO
 8sHT2nsaCgyqtM54l1lA7fAlqAJFz8qbwlX8TnBgmpngqxyJRixaF8Iyw
 MxVaXjKNQOnDhrt6opNtOf474B3QkVQX9S05RV52OFd1EVAhFPrHORxh/
 /P6o3z6wXkQnsP/Iq7HD5gY4qa8HOEC/zFXUXzWNoXdE79kyRqjuW1dpS
 TtSZlUebt1EyjjbDbsHg/jj3+bzoMw3DrYK2qzajmjXeyuo3TuO29oHbU g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="378626163"
X-IronPort-AV: E=Sophos;i="6.02,157,1688454000"; d="scan'208";a="378626163"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2023 10:03:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="816109810"
X-IronPort-AV: E=Sophos;i="6.02,157,1688454000"; d="scan'208";a="816109810"
Received: from nirmoyda-desk.igk.intel.com ([10.102.138.190])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2023 10:03:17 -0700
From: Nirmoy Das <nirmoy.das@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 18 Sep 2023 19:02:56 +0200
Message-ID: <20230918170257.8586-7-nirmoy.das@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230918170257.8586-1-nirmoy.das@intel.com>
References: <20230918170257.8586-1-nirmoy.das@intel.com>
MIME-Version: 1.0
Organization: Intel Deutschland GmbH, Registered Address: Am Campeon 10,
 85579 Neubiberg, Germany,
 Commercial Register: Amtsgericht Muenchen HRB 186928 
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 6/7] drm/i915: Toggle binder context ready status
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

Toggle binder context ready status when needed.

To issue gpu commands, the driver must be primed to receive
requests. Maintain binder-based GGTT update disablement until driver
probing completes. Moreover, implement a temporary disablement
of blitter prior to entering suspend, followed by re-enablement
post-resume. This is acceptable as those transition periods are
mostly single threaded.

Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
Signed-off-by: Oak Zeng <oak.zeng@intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index e5d693904123..07e95e9ab504 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -817,6 +817,7 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	i915_welcome_messages(i915);
 
 	i915->do_release = true;
+	intel_gt_bind_context_set_ready(to_gt(i915), true);
 
 	return 0;
 
@@ -857,6 +858,7 @@ void i915_driver_remove(struct drm_i915_private *i915)
 {
 	intel_wakeref_t wakeref;
 
+	intel_gt_bind_context_set_ready(to_gt(i915), false);
 	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
 
 	i915_driver_unregister(i915);
@@ -1079,6 +1081,8 @@ static int i915_drm_suspend(struct drm_device *dev)
 	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
 	pci_power_t opregion_target_state;
 
+	intel_gt_bind_context_set_ready(to_gt(dev_priv), false);
+
 	disable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
 
 	/* We do a lot of poking in a lot of registers, make sure they work
@@ -1266,6 +1270,7 @@ static int i915_drm_resume(struct drm_device *dev)
 	intel_gvt_resume(dev_priv);
 
 	enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
+	intel_gt_bind_context_set_ready(to_gt(dev_priv), true);
 
 	return 0;
 }
-- 
2.41.0

