Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 196FFA71ABC
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Mar 2025 16:38:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E25B10E721;
	Wed, 26 Mar 2025 15:38:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="oI+ycBJM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78A8C10E71D;
 Wed, 26 Mar 2025 15:38:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743003507; x=1774539507;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=v6xyr5sQzPhwnMiPig6iTdAKcLxvTau35Jqv1TFXB8U=;
 b=oI+ycBJMTOjGewTtsuUfQKBpY5iJanfD+alGYJqKXmBencl3B5BdF0kG
 9WWHNm6h0R/ZjoDIZkKSXPF5hl42s7b048uq1W6fLc5EWGhnYxDF10CYD
 t8+1lfxaXLQinGuryif7ZjHu5mXTluYfrHBsX4GYIXHQWrdlV2/71tP4b
 JFV9KOBD9vs1bkHypdc6dbAlltrcOVC5gY8r0xTZYNiAgW85fxqLWdgcY
 8KYftgyU6CI6hLV0RXc16dU/yfHq9U+U4Q4h62rj4cxgbIW9KnUZYHktW
 xQfeEtcn+I0RWRPDWyzJu8nPQLWbStTmOrXzeGjf+iwnaH7MpDP4LKPyq w==;
X-CSE-ConnectionGUID: vMbNW4hpT5qeEtxDDWNf6w==
X-CSE-MsgGUID: hKOO0FDhRomlWK6bOjTb+g==
X-IronPort-AV: E=McAfee;i="6700,10204,11385"; a="55665629"
X-IronPort-AV: E=Sophos;i="6.14,278,1736841600"; d="scan'208";a="55665629"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2025 08:38:26 -0700
X-CSE-ConnectionGUID: Oul6/7jGTm2bWlDEGhW+UQ==
X-CSE-MsgGUID: W9iuWNxQR9yFlnKzDh+fyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,278,1736841600"; d="scan'208";a="129923580"
Received: from sannilnx-dsk.jer.intel.com ([10.12.231.107])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2025 08:38:20 -0700
From: Alexander Usyskin <alexander.usyskin@intel.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 Karthik Poosa <karthik.poosa@intel.com>
Cc: Reuven Abliyev <reuven.abliyev@intel.com>,
	Oren Weil <oren.jer.weil@intel.com>, linux-mtd@lists.infradead.org,
	dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
	linux-kernel@vger.kernel.org, Abliyev@freedesktop.org,
	Alexander Usyskin <alexander.usyskin@intel.com>
Subject: [PATCH v7 12/12] drm/xe/nvm: add support for non-posted erase
Date: Wed, 26 Mar 2025 17:26:23 +0200
Message-ID: <20250326152623.3897204-13-alexander.usyskin@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250326152623.3897204-1-alexander.usyskin@intel.com>
References: <20250326152623.3897204-1-alexander.usyskin@intel.com>
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

From: "Abliyev, Reuven" <reuven.abliyev@intel.com>

Erase command is slow on discrete graphics storage
and may overshot PCI completion timeout.
BMG introduces the ability to have non-posted erase.
Add driver support for non-posted erase with polling
for erase completion.

Signed-off-by: Abliyev, Reuven <reuven.abliyev@intel.com>
Signed-off-by: Alexander Usyskin <alexander.usyskin@intel.com>
---
 drivers/gpu/drm/xe/xe_nvm.c        | 25 +++++++++++++++++
 drivers/mtd/devices/mtd_intel_dg.c | 43 ++++++++++++++++++++++++++++--
 include/linux/intel_dg_nvm_aux.h   |  2 ++
 3 files changed, 68 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/xe/xe_nvm.c b/drivers/gpu/drm/xe/xe_nvm.c
index 8aec20bc629a..dd91f2e37661 100644
--- a/drivers/gpu/drm/xe/xe_nvm.c
+++ b/drivers/gpu/drm/xe/xe_nvm.c
@@ -14,7 +14,15 @@
 #include "xe_sriov.h"
 
 #define GEN12_GUNIT_NVM_BASE 0x00102040
+#define GEN12_DEBUG_NVM_BASE 0x00101018
+
+#define GEN12_CNTL_PROTECTED_NVM_REG 0x0010100C
+
 #define GEN12_GUNIT_NVM_SIZE 0x80
+#define GEN12_DEBUG_NVM_SIZE 0x4
+
+#define NVM_NON_POSTED_ERASE_CHICKEN_BIT BIT(13)
+
 #define HECI_FW_STATUS_2_NVM_ACCESS_MODE BIT(3)
 
 static const struct intel_dg_nvm_region regions[INTEL_DG_NVM_REGIONS] = {
@@ -28,6 +36,16 @@ static void xe_nvm_release_dev(struct device *dev)
 {
 }
 
+static bool xe_nvm_non_posted_erase(struct xe_device *xe)
+{
+	struct xe_gt *gt = xe_root_mmio_gt(xe);
+
+	if (xe->info.platform != XE_BATTLEMAGE)
+		return false;
+	return !(xe_mmio_read32(&gt->mmio, XE_REG(GEN12_CNTL_PROTECTED_NVM_REG)) &
+		 NVM_NON_POSTED_ERASE_CHICKEN_BIT);
+}
+
 static bool xe_nvm_writable_override(struct xe_device *xe)
 {
 	struct xe_gt *gt = xe_root_mmio_gt(xe);
@@ -85,6 +103,7 @@ void xe_nvm_init(struct xe_device *xe)
 	nvm = xe->nvm;
 
 	nvm->writable_override = xe_nvm_writable_override(xe);
+	nvm->non_posted_erase = xe_nvm_non_posted_erase(xe);
 	nvm->bar.parent = &pdev->resource[0];
 	nvm->bar.start = GEN12_GUNIT_NVM_BASE + pdev->resource[0].start;
 	nvm->bar.end = nvm->bar.start + GEN12_GUNIT_NVM_SIZE - 1;
@@ -92,6 +111,12 @@ void xe_nvm_init(struct xe_device *xe)
 	nvm->bar.desc = IORES_DESC_NONE;
 	nvm->regions = regions;
 
+	nvm->bar2.parent = &pdev->resource[0];
+	nvm->bar2.start = GEN12_DEBUG_NVM_BASE + pdev->resource[0].start;
+	nvm->bar2.end = nvm->bar2.start + GEN12_DEBUG_NVM_SIZE - 1;
+	nvm->bar2.flags = IORESOURCE_MEM;
+	nvm->bar2.desc = IORES_DESC_NONE;
+
 	aux_dev = &nvm->aux_dev;
 
 	aux_dev->name = "nvm";
diff --git a/drivers/mtd/devices/mtd_intel_dg.c b/drivers/mtd/devices/mtd_intel_dg.c
index 9f4bb15a03b8..c898107a588f 100644
--- a/drivers/mtd/devices/mtd_intel_dg.c
+++ b/drivers/mtd/devices/mtd_intel_dg.c
@@ -28,6 +28,9 @@ struct intel_dg_nvm {
 	struct mtd_info mtd;
 	struct mutex lock; /* region access lock */
 	void __iomem *base;
+	void __iomem *base2;
+	bool non_posted_erase;
+
 	size_t size;
 	unsigned int nregions;
 	struct {
@@ -44,6 +47,7 @@ struct intel_dg_nvm {
 #define NVM_VALSIG_REG        0x00000010
 #define NVM_ADDRESS_REG       0x00000040
 #define NVM_REGION_ID_REG     0x00000044
+#define NVM_DEBUG_REG         0x00000000
 /*
  * [15:0]-Erase size = 0x0010 4K 0x0080 32K 0x0100 64K
  * [23:16]-Reserved
@@ -75,6 +79,9 @@ struct intel_dg_nvm {
 #define NVM_FREG_ADDR_SHIFT 12
 #define NVM_FREG_MIN_REGION_SIZE 0xFFF
 
+#define NVM_NON_POSTED_ERASE_DONE BIT(23)
+#define NVM_NON_POSTED_ERASE_DONE_ITER 3000
+
 static inline void idg_nvm_set_region_id(struct intel_dg_nvm *nvm, u8 region)
 {
 	iowrite32((u32)region, nvm->base + NVM_REGION_ID_REG);
@@ -370,11 +377,30 @@ idg_erase(struct intel_dg_nvm *nvm, u8 region, loff_t from, u64 len, u64 *fail_a
 {
 	u64 i;
 	const u32 block = 0x10;
+	u32 reg;
+	u32 iter = 0;
 	void __iomem *base = nvm->base;
+	void __iomem *base2 = nvm->base2;
 
 	for (i = 0; i < len; i += SZ_4K) {
 		iowrite32(from + i, base + NVM_ADDRESS_REG);
 		iowrite32(region << 24 | block, base + NVM_ERASE_REG);
+		if (nvm->non_posted_erase) {
+			/* Wait for Erase Done */
+			reg = ioread32(base2 + NVM_DEBUG_REG);
+			while (!(reg & NVM_NON_POSTED_ERASE_DONE) &&
+				++iter < NVM_NON_POSTED_ERASE_DONE_ITER) {
+				msleep(10);
+				reg = ioread32(base2 + NVM_DEBUG_REG);
+			}
+			if (reg & NVM_NON_POSTED_ERASE_DONE) {
+				/* Clear Erase Done */
+				iowrite32(reg, base2 + NVM_DEBUG_REG);
+			} else {
+				*fail_addr = from + i;
+				return -ETIME;
+			}
+		}
 		/* Since the writes are via sguint
 		 * we cannot do back to back erases.
 		 */
@@ -383,7 +409,8 @@ idg_erase(struct intel_dg_nvm *nvm, u8 region, loff_t from, u64 len, u64 *fail_a
 	return len;
 }
 
-static int intel_dg_nvm_init(struct intel_dg_nvm *nvm, struct device *device)
+static int intel_dg_nvm_init(struct intel_dg_nvm *nvm, struct device *device,
+			     bool non_posted_erase)
 {
 	int ret;
 	unsigned int i, n;
@@ -443,7 +470,10 @@ static int intel_dg_nvm_init(struct intel_dg_nvm *nvm, struct device *device)
 			n++;
 	}
 
+	nvm->non_posted_erase = non_posted_erase;
+
 	dev_dbg(device, "Registered %d regions\n", n);
+	dev_dbg(device, "Non posted erase %d\n", nvm->non_posted_erase);
 
 	/* Need to add 1 to the amount of memory
 	 * so it is reported as an even block
@@ -778,7 +808,16 @@ static int intel_dg_mtd_probe(struct auxiliary_device *aux_dev,
 		goto err;
 	}
 
-	ret = intel_dg_nvm_init(nvm, device);
+	if (invm->non_posted_erase) {
+		nvm->base2 = devm_ioremap_resource(device, &invm->bar2);
+		if (IS_ERR(nvm->base2)) {
+			dev_err(device, "base2 mmio not mapped\n");
+			ret = PTR_ERR(nvm->base2);
+			goto err;
+		}
+	}
+
+	ret = intel_dg_nvm_init(nvm, device, invm->non_posted_erase);
 	if (ret < 0) {
 		dev_err(device, "cannot initialize nvm %d\n", ret);
 		goto err;
diff --git a/include/linux/intel_dg_nvm_aux.h b/include/linux/intel_dg_nvm_aux.h
index 68df634c994c..bee25dfc6982 100644
--- a/include/linux/intel_dg_nvm_aux.h
+++ b/include/linux/intel_dg_nvm_aux.h
@@ -17,7 +17,9 @@ struct intel_dg_nvm_region {
 struct intel_dg_nvm_dev {
 	struct auxiliary_device aux_dev;
 	bool writable_override;
+	bool non_posted_erase;
 	struct resource bar;
+	struct resource bar2;
 	const struct intel_dg_nvm_region *regions;
 };
 
-- 
2.43.0

