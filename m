Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 72946405D0F
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Sep 2021 20:56:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C66F06E8FD;
	Thu,  9 Sep 2021 18:56:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC71C6E8FD
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Sep 2021 18:56:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10102"; a="200404836"
X-IronPort-AV: E=Sophos;i="5.85,281,1624345200"; d="scan'208";a="200404836"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2021 11:56:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,281,1624345200"; d="scan'208";a="539821288"
Received: from 10.jf.intel.com (HELO 10.23.184.90) ([10.165.21.216])
 by FMSMGA003.fm.intel.com with ESMTP; 09 Sep 2021 11:56:52 -0700
From: Stuart Summers <stuart.summers@intel.com>
To: 
Cc: joonas.lahtinen@linux.intel.com, aravind.iddamsetty@intel.com,
 intel-gfx@lists.freedesktop.org
Date: Thu,  9 Sep 2021 11:56:48 -0700
Message-Id: <20210909185648.23683-1-stuart.summers@intel.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/1] drm/i915: Add support for sbr and flr as a
 fallback
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

In the event engine or GT reset fails, fall back to function
level reset and then secondary bus reset. If nothing works,
wedge the device.

Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Aravind Iddamsetty <aravind.iddamsetty@intel.com>
Signed-off-by: Stuart Summers <stuart.summers@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_reset.c | 52 +++++++++++++++++++++++++++
 1 file changed, 52 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index 91200c43951f7..939d1c63224ef 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -594,6 +594,45 @@ static void gen8_engine_reset_cancel(struct intel_engine_cs *engine)
 			      _MASKED_BIT_DISABLE(RESET_CTL_REQUEST_RESET));
 }
 
+enum pcie_reset_type {
+	PCIE_RESET_TYPE_FLR,
+	PCIE_RESET_TYPE_SBR
+};
+
+static int gen12_pcie_reset(struct drm_i915_private *i915,
+			    enum pcie_reset_type type)
+{
+	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
+	int ret;
+
+	ret = pci_save_state(pdev);
+	if (!ret)
+		goto out;
+
+	switch (type) {
+	case PCIE_RESET_TYPE_FLR:
+		ret = pcie_has_flr(pdev);
+		if (ret)
+			goto out;
+		ret = pcie_flr(pdev);
+		break;
+	case PCIE_RESET_TYPE_SBR:
+		if (!IS_DGFX(i915))
+			return -ENODEV;
+		ret = pci_bridge_secondary_bus_reset(pdev->bus->self);
+		break;
+	default:
+		goto out;
+	}
+	if (ret)
+		goto out;
+
+	pci_restore_state(pdev);
+
+out:
+	return ret;
+}
+
 static int gen8_reset_engines(struct intel_gt *gt,
 			      intel_engine_mask_t engine_mask,
 			      unsigned int retry)
@@ -628,6 +667,19 @@ static int gen8_reset_engines(struct intel_gt *gt,
 	else
 		ret = gen6_reset_engines(gt, engine_mask, retry);
 
+	if (ret && engine_mask == ALL_ENGINES) {
+		/*
+		 * If the full GT reset fails, try the bigger hammer with
+		 * FLR and SBR if available. Capability checks happen
+		 * in the called functions.
+		 */
+		if (ret)
+			ret = gen12_pcie_reset(gt->i915, PCIE_RESET_TYPE_FLR);
+
+		if (ret)
+			ret = gen12_pcie_reset(gt->i915, PCIE_RESET_TYPE_SBR);
+	}
+
 skip_reset:
 	for_each_engine_masked(engine, gt, engine_mask, tmp)
 		gen8_engine_reset_cancel(engine);
-- 
2.29.2

