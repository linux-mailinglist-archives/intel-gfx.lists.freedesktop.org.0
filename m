Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 83E017A18F5
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Sep 2023 10:34:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEE4510E5D2;
	Fri, 15 Sep 2023 08:34:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA9D210E5D2
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Sep 2023 08:34:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694766882; x=1726302882;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=I6WkdfaiB2zZejUEK03La+49SbLQh6W79iIkXqc9wRc=;
 b=bFv5TvBmM2JUXtpg4+nCWxn2fw64gmDxxehIr84KtkAoTFWJcTB2et/k
 Y5gkmfkgkMdhshiChiNhPhFegrwZ60ZkLUxHiWykGI4l8U5w1u93fTMuP
 B8WG42nAA3hmXRs16rOAER5rZO/xnpMgUADvlizyktPGtm4z9nFom7cW8
 GndadQAMhvEtOM1coEGNPDUR/pP2241Jx1o5DNxISqyFADxWkMwByTyuh
 LBo8ETNvl7Kr1f2w3AKhauAXXNq3XKdABg18O6zatnSE+uwxViAg/dSDY
 9m9chPcQ8/oZkS/Cig/FtzCWL/GqfWw2llUI3ZaP9d/p7Ly3AvHW9IpTx A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="381925595"
X-IronPort-AV: E=Sophos;i="6.02,148,1688454000"; d="scan'208";a="381925595"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 01:34:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="694647799"
X-IronPort-AV: E=Sophos;i="6.02,148,1688454000"; d="scan'208";a="694647799"
Received: from nirmoyda-desk.igk.intel.com ([10.102.138.190])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 01:34:39 -0700
From: Nirmoy Das <nirmoy.das@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Sep 2023 10:34:11 +0200
Message-ID: <20230915083412.4572-7-nirmoy.das@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230915083412.4572-1-nirmoy.das@intel.com>
References: <20230915083412.4572-1-nirmoy.das@intel.com>
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

