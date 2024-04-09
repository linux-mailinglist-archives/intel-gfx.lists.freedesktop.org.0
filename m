Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C76889D5AF
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Apr 2024 11:37:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81DD6112C10;
	Tue,  9 Apr 2024 09:37:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Xe8IVtBP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55549112C0D
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Apr 2024 09:37:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712655424; x=1744191424;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3xCJTTBHnPlsFTAbTN2slOOmYcZ633+5H452d4Dxtss=;
 b=Xe8IVtBPVNNNmFx6WJpNHcocFFHC5QY7o+rulgFAiPxhu12OuWuW+N4w
 nz54NZjan3TzMjxdOXZijPs+iuOYV7JyqLfF6m10jLaldmonwMTra1sak
 p6twP37wQHTyIdJoxB1Ce+Tb2K4YJP2VO4ztCAawr/F38LFbpOPmio2Eh
 1cd90tjDEqT7d9McssRGHNDa24tUyRdlCH21F1ItpegQGqpCBqiYz1nRf
 LpOvYS3z7qdwJ6jx3G8/otOZSMe9wzK406uFlRAVZZPq8p+cm0O+uAhFx
 Vl58Hr7G9xN8oGL0xSMvN9t2fBET9Eue+d2YWk27DanLP903OL8VC80x1 w==;
X-CSE-ConnectionGUID: ym9KzAi7TCO4KpmYNjjqwQ==
X-CSE-MsgGUID: Ba96FVleR5CgaowJVXozXw==
X-IronPort-AV: E=McAfee;i="6600,9927,11038"; a="8085600"
X-IronPort-AV: E=Sophos;i="6.07,189,1708416000"; 
   d="scan'208";a="8085600"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2024 02:37:03 -0700
X-CSE-ConnectionGUID: A3FtpdcMSpKL/8ZLfWQF8Q==
X-CSE-MsgGUID: NKnMxwDfRQO7gkxwOnBhIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,189,1708416000"; d="scan'208";a="24908026"
Received: from mzizka-mobl1.ger.corp.intel.com (HELO vgovind2-mobl3.intel.com)
 ([10.249.37.25])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2024 02:37:01 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: baolu.lu@intel.com, vinod.govindapillai@intel.com, jani.saarinen@intel.com
Subject: [PATCH v1 1/1] iommu/vt-d: Fix WARN_ON in iommu probe path
Date: Tue,  9 Apr 2024 12:36:45 +0300
Message-Id: <20240409093645.456004-2-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240409093645.456004-1-vinod.govindapillai@intel.com>
References: <20240409093645.456004-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

From: Lu Baolu <baolu.lu@linux.intel.com>

Commit 1a75cc710b95 ("iommu/vt-d: Use rbtree to track iommu probed
devices") adds all devices probed by the iommu driver in a rbtree
indexed by the source ID of each device. It assumes that each device
has a unique source ID. This assumption is incorrect and the VT-d
spec doesn't state this requirement either.

The reason for using a rbtree to track devices is to look up the device
with PCI bus and devfunc in the paths of handling ATS invalidation time
out error and the PRI I/O page faults. Both are PCI ATS feature related.

Only track the devices that have PCI ATS capabilities in the rbtree to
avoid unnecessary WARN_ON in the iommu probe path. Otherwise, on some
platforms below kernel splat will be displayed and the iommu probe results
in failure.

 WARNING: CPU: 3 PID: 166 at drivers/iommu/intel/iommu.c:158 intel_iommu_probe_device+0x319/0xd90
 Call Trace:
  <TASK>
  ? __warn+0x7e/0x180
  ? intel_iommu_probe_device+0x319/0xd90
  ? report_bug+0x1f8/0x200
  ? handle_bug+0x3c/0x70
  ? exc_invalid_op+0x18/0x70
  ? asm_exc_invalid_op+0x1a/0x20
  ? intel_iommu_probe_device+0x319/0xd90
  ? debug_mutex_init+0x37/0x50
  __iommu_probe_device+0xf2/0x4f0
  iommu_probe_device+0x22/0x70
  iommu_bus_notifier+0x1e/0x40
  notifier_call_chain+0x46/0x150
  blocking_notifier_call_chain+0x42/0x60
  bus_notify+0x2f/0x50
  device_add+0x5ed/0x7e0
  platform_device_add+0xf5/0x240
  mfd_add_devices+0x3f9/0x500
  ? preempt_count_add+0x4c/0xa0
  ? up_write+0xa2/0x1b0
  ? __debugfs_create_file+0xe3/0x150
  intel_lpss_probe+0x49f/0x5b0
  ? pci_conf1_write+0xa3/0xf0
  intel_lpss_pci_probe+0xcf/0x110 [intel_lpss_pci]
  pci_device_probe+0x95/0x120
  really_probe+0xd9/0x370
  ? __pfx___driver_attach+0x10/0x10
  __driver_probe_device+0x73/0x150
  driver_probe_device+0x19/0xa0
  __driver_attach+0xb6/0x180
  ? __pfx___driver_attach+0x10/0x10
  bus_for_each_dev+0x77/0xd0
  bus_add_driver+0x114/0x210
  driver_register+0x5b/0x110
  ? __pfx_intel_lpss_pci_driver_init+0x10/0x10 [intel_lpss_pci]
  do_one_initcall+0x57/0x2b0
  ? kmalloc_trace+0x21e/0x280
  ? do_init_module+0x1e/0x210
  do_init_module+0x5f/0x210
  load_module+0x1d37/0x1fc0
  ? init_module_from_file+0x86/0xd0
  init_module_from_file+0x86/0xd0
  idempotent_init_module+0x17c/0x230
  __x64_sys_finit_module+0x56/0xb0
  do_syscall_64+0x6e/0x140
  entry_SYSCALL_64_after_hwframe+0x71/0x79

Fixes: 1a75cc710b95 ("iommu/vt-d: Use rbtree to track iommu probed devices")
Signed-off-by: Lu Baolu <baolu.lu@linux.intel.com>
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/iommu/intel/iommu.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/iommu/intel/iommu.c b/drivers/iommu/intel/iommu.c
index 50eb9aed47cc..a7ecd90303dc 100644
--- a/drivers/iommu/intel/iommu.c
+++ b/drivers/iommu/intel/iommu.c
@@ -4299,9 +4299,11 @@ static struct iommu_device *intel_iommu_probe_device(struct device *dev)
 	}
 
 	dev_iommu_priv_set(dev, info);
-	ret = device_rbtree_insert(iommu, info);
-	if (ret)
-		goto free;
+	if (pdev && pci_ats_supported(pdev)) {
+		ret = device_rbtree_insert(iommu, info);
+		if (ret)
+			goto free;
+	}
 
 	if (sm_supported(iommu) && !dev_is_real_dma_subdevice(dev)) {
 		ret = intel_pasid_alloc_table(dev);
@@ -4336,7 +4338,8 @@ static void intel_iommu_release_device(struct device *dev)
 	struct intel_iommu *iommu = info->iommu;
 
 	mutex_lock(&iommu->iopf_lock);
-	device_rbtree_remove(info);
+	if (dev_is_pci(dev) && pci_ats_supported(to_pci_dev(dev)))
+		device_rbtree_remove(info);
 	mutex_unlock(&iommu->iopf_lock);
 
 	if (sm_supported(iommu) && !dev_is_real_dma_subdevice(dev) &&
-- 
2.34.1

