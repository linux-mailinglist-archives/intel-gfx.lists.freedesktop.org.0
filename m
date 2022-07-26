Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E51E5580F0B
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Jul 2022 10:32:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D807112C7D;
	Tue, 26 Jul 2022 08:32:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70DFD112D9A
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Jul 2022 08:32:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658824346; x=1690360346;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=yEet9RRLNEob4O1rxO5gtFAcxqZvF8aO7gYzD9IIu+I=;
 b=TwH720P4T+iBOYYnhW1t58R2bhbUE9ZsOUeRN/hfm8+opKeB9d/0dypS
 9DCaS7A+jWRAbazViy0tbsHRDCEuCgIIzFMzb+9GfZXEIdleVW4K0IA4O
 f1er6bHqBEc59UqrdMqH+MgX0yS+AYd/4FQlQ7M/IW+0RTg/mn3R4A0r9
 FnTH5MLtflDSWsqziIQqtS+LKAbz1oUz0ajMAJXuixX8OEzrBR5DHXTeu
 p5hWzY5hGE6BQx/q/BSMS+VFRxeup/wsypZlENWHx6UGcUrHG+T1yzAQV
 Qqe5JcuokpYcBUVPI1/ZGgt+l0vOQzqLEZvQQVJI+QkfYCVFh6un6p6nX Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10419"; a="313657105"
X-IronPort-AV: E=Sophos;i="5.93,193,1654585200"; d="scan'208";a="313657105"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2022 01:32:25 -0700
X-IronPort-AV: E=Sophos;i="5.93,193,1654585200"; d="scan'208";a="575401037"
Received: from nirmoyda-desk.igk.intel.com ([10.102.13.19])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2022 01:32:24 -0700
From: Nirmoy Das <nirmoy.das@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Jul 2022 10:32:12 +0200
Message-Id: <20220726083212.24071-1-nirmoy.das@intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Organization: Intel Deutschland GmbH, Registered Address: Am Campeon 10,
 85579 Neubiberg, Germany,
 Commercial Register: Amtsgericht Muenchen HRB 186928 
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: disable pci resize on 32-bit machine
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
Cc: priyanka.dandamudi@intel.com, naresh.kamboju@linaro.org,
 matthew.auld@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PCI bar resize only works with 64 bit BAR so disable
this on 32-bit machine.

Fixes: a91d1a17cd341 ("drm/i915: Add support for LMEM PCIe resizable bar")
Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_region_lmem.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_region_lmem.c b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
index 6e90032e12e9..aa6aed837194 100644
--- a/drivers/gpu/drm/i915/gt/intel_region_lmem.c
+++ b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
@@ -15,6 +15,7 @@
 #include "gt/intel_gt_mcr.h"
 #include "gt/intel_gt_regs.h"
 
+#ifdef CONFIG_64BIT
 static void _release_bars(struct pci_dev *pdev)
 {
 	int resno;
@@ -111,6 +112,9 @@ static void i915_resize_lmem_bar(struct drm_i915_private *i915, resource_size_t
 	pci_assign_unassigned_bus_resources(pdev->bus);
 	pci_write_config_dword(pdev, PCI_COMMAND, pci_cmd);
 }
+#else
+static void i915_resize_lmem_bar(struct drm_i915_private *i915, resource_size_t lmem_size) {}
+#endif
 
 static int
 region_lmem_release(struct intel_memory_region *mem)
-- 
2.35.1

