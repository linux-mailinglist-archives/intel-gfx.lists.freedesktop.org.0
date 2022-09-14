Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CFC65B886F
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Sep 2022 14:41:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49B4310E901;
	Wed, 14 Sep 2022 12:41:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27AB710E8FE
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Sep 2022 12:41:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663159273; x=1694695273;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=W/WPnmMqf68pCphlPgxa8IFXZehxXuSTANodllS7/k8=;
 b=RIxMSRt/kQzBtKggLQpaesA/kJL/5ZAZQwzcc37y4D25cdZ7oTZy6V/L
 7Q2zlcX3deRvHnFV2P2nmKW6vl9ppNn6UXjKWpZVPTxkTZSSwYUdaDSob
 yfkaaFI1bcjROCb2B+BoqNzjpFTteSDzXhxnYWcEHfR3Qc8ug9HmVmuvE
 lIqKlWVguoe8ZbS7mlcJbx+Z+vHAl12FwQi+JWos0NjkwYC/HJ40wLG41
 7PU8lfku+SI4T4zKaOyNeKNeLnWK0RaMMc5VOeGnCPTS3wEbp01KPvgeq
 Ag3jkSwhqTi8ONu6Fyf5fe3fbQFxo8svmOWu7DEoIcRyRPBGPLl4awBps w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10470"; a="324669939"
X-IronPort-AV: E=Sophos;i="5.93,315,1654585200"; d="scan'208";a="324669939"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2022 05:41:12 -0700
X-IronPort-AV: E=Sophos;i="5.93,315,1654585200"; d="scan'208";a="679027776"
Received: from kpurta-mobl1.ger.corp.intel.com (HELO
 kdrobnik-desk.toya.net.pl) ([10.213.10.40])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2022 05:40:56 -0700
From: Karolina Drobnik <karolina.drobnik@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 14 Sep 2022 14:40:45 +0200
Message-Id: <20220914124045.903883-1-karolina.drobnik@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [topic/core-for-CI] Revert "iommu/dma: Fix race
 condition during iova_domain initialization"
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This reverts commit ac9a5d522bb80be50ea84965699e1c8257d745ce.

This change introduces a regression on Alder Lake that completely
blocks testing. To enable CI and avoid possible circular locking
warning, revert the patch.

kernel log:

======================================================
WARNING: possible circular locking dependency detected
6.0.0-rc5-CI_DRM_12132-g6c93e979e542+ #1 Not tainted
------------------------------------------------------
cpuhp/0/15 is trying to acquire lock:
ffff8881013df278 (&(&priv->bus_notifier)->rwsem){++++}-{3:3}, at: blocking_notifier_call_chain+0x20/0x50
              but task is already holding lock:
ffffffff826490c0 (cpuhp_state-up){+.+.}-{0:0}, at: cpuhp_thread_fun+0x48/0x1f0
              which lock already depends on the new loc
              the existing dependency chain (in reverse order) is:
              -> #3 (cpuhp_state-up){+.+.}-{0:0}:
       lock_acquire+0xd3/0x310
       cpuhp_thread_fun+0xa6/0x1f0
       smpboot_thread_fn+0x1b5/0x260
       kthread+0xed/0x120
       ret_from_fork+0x1f/0x30
              -> #2 (cpu_hotplug_lock){++++}-{0:0}:
       lock_acquire+0xd3/0x310
       __cpuhp_state_add_instance+0x43/0x1c0
       iova_domain_init_rcaches+0x199/0x1c0
       iommu_setup_dma_ops+0x130/0x440
       bus_iommu_probe+0x26a/0x2d0
       bus_set_iommu+0x82/0xd0
       intel_iommu_init+0xe33/0x1039
       pci_iommu_init+0x9/0x31
       do_one_initcall+0x53/0x2f0
       kernel_init_freeable+0x18f/0x1e1
       kernel_init+0x11/0x120
       ret_from_fork+0x1f/0x30
              -> #1 (&domain->iova_cookie->mutex){+.+.}-{3:3}:
       lock_acquire+0xd3/0x310
       __mutex_lock+0x97/0xf10
       iommu_setup_dma_ops+0xd7/0x440
       iommu_probe_device+0xa4/0x180
       iommu_bus_notifier+0x2d/0x40
       notifier_call_chain+0x31/0x90
       blocking_notifier_call_chain+0x3a/0x50
       device_add+0x3c1/0x900
       pci_device_add+0x255/0x580
       pci_scan_single_device+0xa6/0xd0
       pci_scan_slot+0x7a/0x1b0
       pci_scan_child_bus_extend+0x35/0x2a0
       vmd_probe+0x5cd/0x970
       pci_device_probe+0x95/0x110
       really_probe+0xd6/0x350
       __driver_probe_device+0x73/0x170
       driver_probe_device+0x1a/0x90
       __driver_attach+0xbc/0x190
       bus_for_each_dev+0x72/0xc0
       bus_add_driver+0x1bb/0x210
       driver_register+0x66/0xc0
       do_one_initcall+0x53/0x2f0
       kernel_init_freeable+0x18f/0x1e1
       kernel_init+0x11/0x120
       ret_from_fork+0x1f/0x30
              -> #0 (&(&priv->bus_notifier)->rwsem){++++}-{3:3}:
       validate_chain+0xb3f/0x2000
       __lock_acquire+0x5a4/0xb70
       lock_acquire+0xd3/0x310
       down_read+0x39/0x140
       blocking_notifier_call_chain+0x20/0x50
       device_add+0x3c1/0x900
       platform_device_add+0x108/0x240
       coretemp_cpu_online+0xe1/0x15e [coretemp]
       cpuhp_invoke_callback+0x181/0x8a0
       cpuhp_thread_fun+0x188/0x1f0
       smpboot_thread_fn+0x1b5/0x260
       kthread+0xed/0x120
       ret_from_fork+0x1f/0x30
              other info that might help us debug thi
Chain exists of                 &(&priv->bus_notifier)->rwsem --> cpu_hotplug_lock --> cpuhp_state-
 Possible unsafe locking scenari
       CPU0                    CPU1
       ----                    ----
  lock(cpuhp_state-up);
                               lock(cpu_hotplug_lock);
                               lock(cpuhp_state-up);
  lock(&(&priv->bus_notifier)->rwsem);
               *** DEADLOCK *
2 locks held by cpuhp/0/15:
 #0: ffffffff82648f10 (cpu_hotplug_lock){++++}-{0:0}, at: cpuhp_thread_fun+0x48/0x1f0
 #1: ffffffff826490c0 (cpuhp_state-up){+.+.}-{0:0}, at: cpuhp_thread_fun+0x48/0x1f0
              stack backtrace:
CPU: 0 PID: 15 Comm: cpuhp/0 Not tainted 6.0.0-rc5-CI_DRM_12132-g6c93e979e542+ #1
Hardware name: Intel Corporation Alder Lake Client Platform/AlderLake-P DDR4 RVP, BIOS ADLPFWI1.R00.3135.A00.2203251419 03/25/2022
Call Trace:
 <TASK>
 dump_stack_lvl+0x56/0x7f
 check_noncircular+0x132/0x150
 validate_chain+0xb3f/0x2000
 __lock_acquire+0x5a4/0xb70
 lock_acquire+0xd3/0x310
 ? blocking_notifier_call_chain+0x20/0x50
 down_read+0x39/0x140
 ? blocking_notifier_call_chain+0x20/0x50
 blocking_notifier_call_chain+0x20/0x50
 device_add+0x3c1/0x900
 ? dev_set_name+0x4e/0x70
 platform_device_add+0x108/0x240
 coretemp_cpu_online+0xe1/0x15e [coretemp]
 ? create_core_data+0x550/0x550 [coretemp]
 cpuhp_invoke_callback+0x181/0x8a0
 cpuhp_thread_fun+0x188/0x1f0
 ? smpboot_thread_fn+0x1e/0x260
 smpboot_thread_fn+0x1b5/0x260
 ? sort_range+0x20/0x20
 kthread+0xed/0x120
 ? kthread_complete_and_exit+0x20/0x20
 ret_from_fork+0x1f/0x30
 </TASK>

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6641

Signed-off-by: Karolina Drobnik <karolina.drobnik@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/iommu/dma-iommu.c | 17 ++++-------------
 1 file changed, 4 insertions(+), 13 deletions(-)

diff --git a/drivers/iommu/dma-iommu.c b/drivers/iommu/dma-iommu.c
index 17dd683b2fce..9616b473e4c7 100644
--- a/drivers/iommu/dma-iommu.c
+++ b/drivers/iommu/dma-iommu.c
@@ -65,7 +65,6 @@ struct iommu_dma_cookie {
 
 	/* Domain for flush queue callback; NULL if flush queue not in use */
 	struct iommu_domain		*fq_domain;
-	struct mutex			mutex;
 };
 
 static DEFINE_STATIC_KEY_FALSE(iommu_deferred_attach_enabled);
@@ -312,7 +311,6 @@ int iommu_get_dma_cookie(struct iommu_domain *domain)
 	if (!domain->iova_cookie)
 		return -ENOMEM;
 
-	mutex_init(&domain->iova_cookie->mutex);
 	return 0;
 }
 
@@ -563,33 +561,26 @@ static int iommu_dma_init_domain(struct iommu_domain *domain, dma_addr_t base,
 	}
 
 	/* start_pfn is always nonzero for an already-initialised domain */
-	mutex_lock(&cookie->mutex);
 	if (iovad->start_pfn) {
 		if (1UL << order != iovad->granule ||
 		    base_pfn != iovad->start_pfn) {
 			pr_warn("Incompatible range for DMA domain\n");
-			ret = -EFAULT;
-			goto done_unlock;
+			return -EFAULT;
 		}
 
-		ret = 0;
-		goto done_unlock;
+		return 0;
 	}
 
 	init_iova_domain(iovad, 1UL << order, base_pfn);
 	ret = iova_domain_init_rcaches(iovad);
 	if (ret)
-		goto done_unlock;
+		return ret;
 
 	/* If the FQ fails we can simply fall back to strict mode */
 	if (domain->type == IOMMU_DOMAIN_DMA_FQ && iommu_dma_init_fq(domain))
 		domain->type = IOMMU_DOMAIN_DMA;
 
-	ret = iova_reserve_iommu_regions(dev, domain);
-
-done_unlock:
-	mutex_unlock(&cookie->mutex);
-	return ret;
+	return iova_reserve_iommu_regions(dev, domain);
 }
 
 /**
-- 
2.25.1

