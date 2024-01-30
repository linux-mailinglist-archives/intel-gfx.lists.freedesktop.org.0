Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DC15841BCE
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jan 2024 07:14:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 516D910F0AB;
	Tue, 30 Jan 2024 06:14:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4FE2112DD6
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jan 2024 06:14:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706595241; x=1738131241;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=mbAJ/zTviPWkO8LHJ1tHYgfZ4TkYmkoH7kPNS0Gfjmc=;
 b=mxZpkSO1WFjlmifhomH5NWs6VdhffauJzMqYNxMJoMwW7nA60JetiFq/
 uu2SGnWAivL3ae0ul+bX/n0kgaaTe7wleI7ZZKDG7kxSp+vR8g81fhIte
 3UzzP14hW6HRPajwRYRDpApaR0ckcL9nobq9Vm3UJuc6U70GXYg8cVW/P
 TPgSSUf0g8cPumUwdLiq1jC0JlcGOdUOIly7NGSMlJILUFZJ4qzyfoMDI
 r6vlyl6R2YTOx4BJ3ebJHi06RTdj7MOvH9zbf9RCDO1dmmWo0SwmFJB/K
 SiqtID3pH5vGTslYQsr06ok6We+WzNYiBh3Tgm3v89B128CJwDj7M4Msp w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10968"; a="10570675"
X-IronPort-AV: E=Sophos;i="6.05,707,1701158400"; d="scan'208";a="10570675"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2024 22:13:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,707,1701158400"; 
   d="scan'208";a="3706925"
Received: from allen-box.sh.intel.com ([10.239.159.127])
 by orviesa004.jf.intel.com with ESMTP; 29 Jan 2024 22:13:54 -0800
From: Lu Baolu <baolu.lu@linux.intel.com>
To: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, Jason Gunthorpe <jgg@ziepe.ca>,
 Kevin Tian <kevin.tian@intel.com>
Subject: [PATCH v2 1/1] iommu/vt-d: Remove INTEL_IOMMU_BROKEN_GFX_WA
Date: Tue, 30 Jan 2024 14:08:23 +0800
Message-Id: <20240130060823.57990-1-baolu.lu@linux.intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
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
Cc: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 iommu@lists.linux.dev, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Lu Baolu <baolu.lu@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Commit 62edf5dc4a524 ("intel-iommu: Restore DMAR_BROKEN_GFX_WA option for
broken graphics drivers") was introduced 24 years ago as a temporary
workaround for graphics drivers that used physical addresses for DMA and
avoided DMA APIs. This workaround was disabled by default.

As 24 years have passed, it is expected that graphics driver developers
have migrated their drivers to use kernel DMA APIs. Therefore, this
workaround is no longer required and could been removed.

The Intel iommu driver also provides a "igfx_off" option to turn off
the DAM translation for the graphic dedicated IOMMU. Hence, there is
really no good reason to keep this config option.

Suggested-by: Kevin Tian <kevin.tian@intel.com>
Signed-off-by: Lu Baolu <baolu.lu@linux.intel.com>
Reviewed-by: Kevin Tian <kevin.tian@intel.com>
---
 drivers/iommu/intel/iommu.c |  4 ----
 drivers/iommu/intel/Kconfig | 11 -----------
 2 files changed, 15 deletions(-)

Change log:
v2:
 - Add igfx_off option to commit message and Cc Intel graphic
   maintainers.

v1: https://lore.kernel.org/linux-iommu/20240127064512.16744-1-baolu.lu@linux.intel.com/

diff --git a/drivers/iommu/intel/iommu.c b/drivers/iommu/intel/iommu.c
index 6fb5f6fceea1..fc52fcd786aa 100644
--- a/drivers/iommu/intel/iommu.c
+++ b/drivers/iommu/intel/iommu.c
@@ -2660,10 +2660,6 @@ static int __init init_dmars(void)
 		iommu_set_root_entry(iommu);
 	}
 
-#ifdef CONFIG_INTEL_IOMMU_BROKEN_GFX_WA
-	dmar_map_gfx = 0;
-#endif
-
 	if (!dmar_map_gfx)
 		iommu_identity_mapping |= IDENTMAP_GFX;
 
diff --git a/drivers/iommu/intel/Kconfig b/drivers/iommu/intel/Kconfig
index 012cd2541a68..d2d34eb28d94 100644
--- a/drivers/iommu/intel/Kconfig
+++ b/drivers/iommu/intel/Kconfig
@@ -64,17 +64,6 @@ config INTEL_IOMMU_DEFAULT_ON
 	  one is found. If this option is not selected, DMAR support can
 	  be enabled by passing intel_iommu=on to the kernel.
 
-config INTEL_IOMMU_BROKEN_GFX_WA
-	bool "Workaround broken graphics drivers (going away soon)"
-	depends on BROKEN && X86
-	help
-	  Current Graphics drivers tend to use physical address
-	  for DMA and avoid using DMA APIs. Setting this config
-	  option permits the IOMMU driver to set a unity map for
-	  all the OS-visible memory. Hence the driver can continue
-	  to use physical addresses for DMA, at least until this
-	  option is removed in the 2.6.32 kernel.
-
 config INTEL_IOMMU_FLOPPY_WA
 	def_bool y
 	depends on X86
-- 
2.34.1

