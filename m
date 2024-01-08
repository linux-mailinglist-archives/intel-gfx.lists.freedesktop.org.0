Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D05F9827B3E
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jan 2024 00:07:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E70110E339;
	Mon,  8 Jan 2024 23:07:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 089F710E2CB
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jan 2024 23:07:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704755222; x=1736291222;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cLYE9ybAjiw2dey3xWt0AzmOyTnf35E9EgR0tR+8hME=;
 b=CGPOg8nGxIucwnW7CQ8ivgvG+iSV/FaVTlar+0BughxLH4TiTQBU/xfz
 NWFQu4EgawLnL5OmOMtzvuBtbx43jl9XynaCKYRP3PjV4+7bRPcGzD7gu
 9vf1mECJ+KPYi056yZ/wyaeyE8o+NAs25gJs7/NX4Hhm4usEv0JfDi6sj
 cmEKY2IJmeJB3aeZreVbSX7fQe7fDBsLc+2YDrYgToB+PWor7vpFLowlw
 769jOpZOaA07hywh1bKEr3ASDEjp15+WHwaa/tG8b6X9OsGWkmq1nQnnC
 O8HVfQQ1RfWelO2bQivj0pcthE04WzQlutxPUnYLWEvsizAXI1LVUFWzj A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="11514129"
X-IronPort-AV: E=Sophos;i="6.04,181,1695711600"; d="scan'208";a="11514129"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2024 15:07:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="774647106"
X-IronPort-AV: E=Sophos;i="6.04,181,1695711600"; d="scan'208";a="774647106"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2024 15:07:00 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [RFC 11/15] drm/i915: Make oprom_get_vbt operate on intel_vbt
Date: Mon,  8 Jan 2024 15:05:13 -0800
Message-Id: <20240108230517.1497504-12-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240108230517.1497504-1-radhakrishna.sripada@intel.com>
References: <20240108230517.1497504-1-radhakrishna.sripada@intel.com>
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

Pass newly created intel_vbt to oprom_get_vbt to standardize
the signature and naming. vbt_header explicitly called out within
the body to avoid confusing with intel_vbt.

Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 32 +++++++++++------------
 1 file changed, 16 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 711ae963ed7a..31183ac36c57 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -3051,17 +3051,18 @@ static struct vbt_header *spi_oprom_get_vbt(struct drm_i915_private *i915)
 	return NULL;
 }
 
-static struct vbt_header *oprom_get_vbt(struct drm_i915_private *i915)
+static void oprom_get_vbt(struct drm_i915_private *i915,
+			  struct intel_vbt *vbt)
 {
 	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
 	void __iomem *p = NULL, *oprom;
-	struct vbt_header *vbt;
+	struct vbt_header *header;
 	u16 vbt_size;
 	size_t i, size;
 
 	oprom = pci_map_rom(pdev, &size);
 	if (!oprom)
-		return NULL;
+		return;
 
 	/* Scour memory looking for the VBT signature. */
 	for (i = 0; i + 4 < size; i += 4) {
@@ -3089,30 +3090,31 @@ static struct vbt_header *oprom_get_vbt(struct drm_i915_private *i915)
 	}
 
 	/* The rest will be validated by intel_bios_is_valid_vbt() */
-	vbt = kmalloc(vbt_size, GFP_KERNEL);
-	if (!vbt)
+	header = kmalloc(vbt_size, GFP_KERNEL);
+	if (!header)
 		goto err_unmap_oprom;
 
-	memcpy_fromio(vbt, p, vbt_size);
+	memcpy_fromio(header, p, vbt_size);
 
-	if (!intel_bios_is_valid_vbt(vbt, vbt_size))
+	if (!intel_bios_is_valid_vbt(header, vbt_size))
 		goto err_free_vbt;
 
 	pci_unmap_rom(pdev, oprom);
 
-	i915->display.vbt.vbt = vbt;
-	i915->display.vbt.vbt_size = vbt_size;
-	i915->display.vbt.type = I915_VBT_OPROM;
+	vbt->vbt = header;
+	vbt->vbt_size = vbt_size;
+	vbt->type = I915_VBT_OPROM;
 	drm_dbg_kms(&i915->drm, "Found valid VBT in PCI ROM\n");
 
-	return vbt;
+	return;
 
 err_free_vbt:
 	kfree(vbt);
 err_unmap_oprom:
 	pci_unmap_rom(pdev, oprom);
+	vbt->vbt = NULL;
 
-	return NULL;
+	return;
 }
 
 /**
@@ -3162,10 +3164,8 @@ void intel_bios_init(struct drm_i915_private *i915)
 		vbt->vbt = oprom_vbt;
 	}
 
-	if (!vbt->vbt) {
-		oprom_vbt = oprom_get_vbt(i915);
-		vbt->vbt = oprom_vbt;
-	}
+	if (!vbt->vbt)
+		oprom_get_vbt(i915, vbt);
 
 	if (!vbt->vbt)
 		goto out;
-- 
2.34.1

