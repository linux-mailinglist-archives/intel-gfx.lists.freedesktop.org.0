Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wAM+DQBRemnk5AEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jan 2026 19:10:08 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CD0DA783E
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jan 2026 19:10:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E73310E752;
	Wed, 28 Jan 2026 18:10:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LyRVsbgF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BEF010E751;
 Wed, 28 Jan 2026 18:10:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769623805; x=1801159805;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=796uLLB/5au/7vErqbPrVpR9cVpKajmRl3deQQSi3Xc=;
 b=LyRVsbgFMA52Vt0yE1s/RJCY3kjVtwJI2nZuPws6G1jqz23KnzaGR82h
 r8Ne+sKWnRv2YFpEcQ1/rh//inxP/HJa8zXNnCSINAR9lu4pB7jtlxsZa
 Pjr+0zhwX0t2yNkDX/w/9IQyumnG8GfjFXPJC0QoXNxeEkOs58exxBHWg
 OZvO7g3e2QmC3S8WbN2GmOtfxX4gu3cFZgE+dfiDlhSxoQv0biNY//gBG
 WJcFTR68PzQfeEurjk28yBvJECm/I4ENs32A5WdzhbgYAcx/puL+7acKd
 5HB64tSGh5h8Q0LeNkiZmqUgQ84k3PfIM5b0pM2t/xbEqVjAC9dnAUFzL Q==;
X-CSE-ConnectionGUID: RzYyY5voSUeME/OKHvnIeA==
X-CSE-MsgGUID: fU0Fa/1rTBy+YrWbLscELA==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="70564009"
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="70564009"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 10:10:04 -0800
X-CSE-ConnectionGUID: sl1R4u1MSx2tTurLyPFrYA==
X-CSE-MsgGUID: cvygIK2sQTe884zzLpzrsA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="208706917"
Received: from administrator-system-product-name.igk.intel.com
 ([10.91.214.181])
 by fmviesa010.fm.intel.com with ESMTP; 28 Jan 2026 10:10:01 -0800
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v1] i915/i915_driver: move intel_gvt_init() level higher
Date: Wed, 28 Jan 2026 19:09:33 +0100
Message-ID: <20260128180933.2561419-1-michal.grzelak@intel.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 2CD0DA783E
X-Rspamd-Action: no action

i915_driver_probe() cannot currently handle error of intel_gvt_init()
because it is called from i915_driver_hw_probe(). Nevertheless, it's
error path is done in i915_driver_probe(). Fault of
i915_driver_hw_probe() thus causes list corruption, since
intel_gvt_driver_remove() was called twice.

Move intel_gvt_init() up to i915_driver_probe(). Adjust error path of
i915_driver_hw_probe() so that intel_gvt_driver_remove() is called
always once.

Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 1e087dfe03d0..0f507b8ae2f1 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -557,10 +557,6 @@ static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
 			drm_dbg(&dev_priv->drm, "can't enable MSI");
 	}
 
-	ret = intel_gvt_init(dev_priv);
-	if (ret)
-		goto err_msi;
-
 	intel_opregion_setup(display);
 
 	ret = i915_pcode_init(dev_priv);
@@ -581,9 +577,6 @@ static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
 
 err_opregion:
 	intel_opregion_cleanup(display);
-err_msi:
-	if (pdev->msi_enabled)
-		pci_disable_msi(pdev);
 err_mem_regions:
 	intel_memory_regions_driver_release(dev_priv);
 err_ggtt:
@@ -870,9 +863,13 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	if (ret < 0)
 		goto out_cleanup_mmio;
 
+	ret = intel_gvt_init(i915);
+	if (ret)
+		goto out_cleanup_hw;
+
 	ret = intel_display_driver_probe_noirq(display);
 	if (ret < 0)
-		goto out_cleanup_hw;
+		goto out_cleanup_gvt;
 
 	ret = intel_irq_install(i915);
 	if (ret)
@@ -921,6 +918,10 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	intel_irq_uninstall(i915);
 out_cleanup_modeset:
 	intel_display_driver_remove_nogem(display);
+out_cleanup_gvt:
+	if (pdev->msi_enabled)
+		pci_disable_msi(pdev);
+	intel_gvt_driver_remove(i915);
 out_cleanup_hw:
 	i915_driver_hw_remove(i915);
 	intel_memory_regions_driver_release(i915);
@@ -928,7 +929,6 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	i915_gem_drain_freed_objects(i915);
 	i915_ggtt_driver_late_release(i915);
 out_cleanup_mmio:
-	intel_gvt_driver_remove(i915);
 	i915_driver_mmio_release(i915);
 out_runtime_pm_put:
 	enable_rpm_wakeref_asserts(&i915->runtime_pm);
-- 
2.45.2

