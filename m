Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 910238B4958
	for <lists+intel-gfx@lfdr.de>; Sun, 28 Apr 2024 05:21:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 631FB10E5DF;
	Sun, 28 Apr 2024 03:21:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FJeX9bzE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A3E710E5DF
 for <intel-gfx@lists.freedesktop.org>; Sun, 28 Apr 2024 03:21:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714274513; x=1745810513;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=IVdHCmj095OtQSHZFGMCs8JVzsEX/W37UySgDIDPrAY=;
 b=FJeX9bzEDmLCC2asRXDE0zhEJuKl0D6VPrhwua91wHbwbdUijyeolIDx
 EUUPot55RmmNjEU760OrHTgIvOx/jAm3xW/a2EQig9sAd58i7VHX7YnRW
 +qrPmpTvmn99iOGcHTvo9+rxFZPXkqSApj20CacUpr9yFApDCxyWDyWU8
 Z/dtCWoEAqs4HKndJV7YhyZJo/Y5AgVeSHVeqS7Wjp5/Sh0WsyNz6NUKQ
 n7+MibIomGV1uqAppo8f3r+eExUhsJIQ55RRQ7/lVa9Eju074dg1/2z9O
 3ePQ+6odQdoIQfeJBUGyK46I5/X5x4IrLn9UQTNrAs7H+Dszo0wj7gay5 g==;
X-CSE-ConnectionGUID: Gcg8i4MKQ6O7K3kU72u4Tw==
X-CSE-MsgGUID: PoP76S95Q/+rM5fQOCNocg==
X-IronPort-AV: E=McAfee;i="6600,9927,11057"; a="10078340"
X-IronPort-AV: E=Sophos;i="6.07,236,1708416000"; d="scan'208";a="10078340"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2024 20:21:52 -0700
X-CSE-ConnectionGUID: TP3VVQXUTVqvNrXvLagpNw==
X-CSE-MsgGUID: RlL/geGyTXeZiPWhVMRKTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,236,1708416000"; d="scan'208";a="25774755"
Received: from unknown (HELO allen-box.sh.intel.com) ([10.239.159.127])
 by fmviesa007.fm.intel.com with ESMTP; 27 Apr 2024 20:21:50 -0700
From: Lu Baolu <baolu.lu@linux.intel.com>
To: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, Kevin Tian <kevin.tian@intel.com>,
 Jason Gunthorpe <jgg@ziepe.ca>, Zhenyu Wang <zhenyu.z.wang@intel.com>
Cc: iommu@lists.linux.dev, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Lu Baolu <baolu.lu@linux.intel.com>
Subject: [PATCH 1/1] iommu/vt-d: Decouple igfx_off from graphic identity
 mapping
Date: Sun, 28 Apr 2024 11:20:20 +0800
Message-Id: <20240428032020.214616-1-baolu.lu@linux.intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

A kernel command called igfx_off was introduced in commit <ba39592764ed>
("Intel IOMMU: Intel IOMMU driver"). This command allows the user to
disable the IOMMU dedicated to SOC-integrated graphic devices.

Commit <9452618e7462> ("iommu/intel: disable DMAR for g4x integrated gfx")
used this mechanism to disable the graphic-dedicated IOMMU for some
problematic devices. Later, more problematic graphic devices were added
to the list by commit <1f76249cc3beb> ("iommu/vt-d: Declare Broadwell igfx
dmar support snafu").

On the other hand, commit <19943b0e30b05> ("intel-iommu: Unify hardware
and software passthrough support") uses the identity domain for graphic
devices if CONFIG_DMAR_BROKEN_GFX_WA is selected.

+       if (iommu_pass_through)
+               iommu_identity_mapping = 1;
+#ifdef CONFIG_DMAR_BROKEN_GFX_WA
+       else
+               iommu_identity_mapping = 2;
+#endif
...

static int iommu_should_identity_map(struct pci_dev *pdev, int startup)
{
+        if (iommu_identity_mapping == 2)
+                return IS_GFX_DEVICE(pdev);
...

In the following driver evolution, CONFIG_DMAR_BROKEN_GFX_WA and
quirk_iommu_igfx() are mixed together, causing confusion in the driver's
device_def_domain_type callback. On one hand, dmar_map_gfx is used to turn
off the graphic-dedicated IOMMU as a workaround for some buggy hardware;
on the other hand, for those graphic devices, IDENTITY mapping is required
for the IOMMU core.

Commit <4b8d18c0c986> "iommu/vt-d: Remove INTEL_IOMMU_BROKEN_GFX_WA" has
removed the CONFIG_DMAR_BROKEN_GFX_WA option, so the IDENTITY_DOMAIN
requirement for graphic devices is no longer needed. Therefore, this
requirement can be removed from device_def_domain_type() and igfx_off can
be made independent.

Fixes: 4b8d18c0c986 ("iommu/vt-d: Remove INTEL_IOMMU_BROKEN_GFX_WA")
Signed-off-by: Lu Baolu <baolu.lu@linux.intel.com>
---
 drivers/iommu/intel/iommu.c | 19 ++++++-------------
 1 file changed, 6 insertions(+), 13 deletions(-)

diff --git a/drivers/iommu/intel/iommu.c b/drivers/iommu/intel/iommu.c
index fbbf8fda22f3..57a986524502 100644
--- a/drivers/iommu/intel/iommu.c
+++ b/drivers/iommu/intel/iommu.c
@@ -217,12 +217,11 @@ int intel_iommu_sm = IS_ENABLED(CONFIG_INTEL_IOMMU_SCALABLE_MODE_DEFAULT_ON);
 int intel_iommu_enabled = 0;
 EXPORT_SYMBOL_GPL(intel_iommu_enabled);
 
-static int dmar_map_gfx = 1;
 static int intel_iommu_superpage = 1;
 static int iommu_identity_mapping;
 static int iommu_skip_te_disable;
+static int disable_igfx_dedicated_iommu;
 
-#define IDENTMAP_GFX		2
 #define IDENTMAP_AZALIA		4
 
 const struct iommu_ops intel_iommu_ops;
@@ -261,7 +260,7 @@ static int __init intel_iommu_setup(char *str)
 			no_platform_optin = 1;
 			pr_info("IOMMU disabled\n");
 		} else if (!strncmp(str, "igfx_off", 8)) {
-			dmar_map_gfx = 0;
+			disable_igfx_dedicated_iommu = 1;
 			pr_info("Disable GFX device mapping\n");
 		} else if (!strncmp(str, "forcedac", 8)) {
 			pr_warn("intel_iommu=forcedac deprecated; use iommu.forcedac instead\n");
@@ -2196,9 +2195,6 @@ static int device_def_domain_type(struct device *dev)
 
 		if ((iommu_identity_mapping & IDENTMAP_AZALIA) && IS_AZALIA(pdev))
 			return IOMMU_DOMAIN_IDENTITY;
-
-		if ((iommu_identity_mapping & IDENTMAP_GFX) && IS_GFX_DEVICE(pdev))
-			return IOMMU_DOMAIN_IDENTITY;
 	}
 
 	return 0;
@@ -2499,9 +2495,6 @@ static int __init init_dmars(void)
 		iommu_set_root_entry(iommu);
 	}
 
-	if (!dmar_map_gfx)
-		iommu_identity_mapping |= IDENTMAP_GFX;
-
 	check_tylersburg_isoch();
 
 	ret = si_domain_init(hw_pass_through);
@@ -2592,7 +2585,7 @@ static void __init init_no_remapping_devices(void)
 		/* This IOMMU has *only* gfx devices. Either bypass it or
 		   set the gfx_mapped flag, as appropriate */
 		drhd->gfx_dedicated = 1;
-		if (!dmar_map_gfx)
+		if (disable_igfx_dedicated_iommu)
 			drhd->ignored = 1;
 	}
 }
@@ -4621,7 +4614,7 @@ static void quirk_iommu_igfx(struct pci_dev *dev)
 		return;
 
 	pci_info(dev, "Disabling IOMMU for graphics on this chipset\n");
-	dmar_map_gfx = 0;
+	disable_igfx_dedicated_iommu = 1;
 }
 
 /* G4x/GM45 integrated gfx dmar support is totally busted. */
@@ -4702,8 +4695,8 @@ static void quirk_calpella_no_shadow_gtt(struct pci_dev *dev)
 
 	if (!(ggc & GGC_MEMORY_VT_ENABLED)) {
 		pci_info(dev, "BIOS has allocated no shadow GTT; disabling IOMMU for graphics\n");
-		dmar_map_gfx = 0;
-	} else if (dmar_map_gfx) {
+		disable_igfx_dedicated_iommu = 1;
+	} else if (!disable_igfx_dedicated_iommu) {
 		/* we have to ensure the gfx device is idle before we flush */
 		pci_info(dev, "Disabling batched IOTLB flush on Ironlake\n");
 		iommu_set_dma_strict();
-- 
2.34.1

