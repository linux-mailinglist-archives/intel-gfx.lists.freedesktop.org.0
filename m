Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 455B958300E
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jul 2022 19:33:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0476AAE287;
	Wed, 27 Jul 2022 17:33:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60811AE176
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jul 2022 17:33:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658943194; x=1690479194;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=iI/7KgmayweNYy4hw0FLqChovEsgx1L2tlVXx1LNLuU=;
 b=UuxwfslMDJwKaIAvk7sRyYBX4NFS2jOo01m2fEikhzQb0YBH2d6Ef0tJ
 COFomMzAkQhKB6/svG2iHutWhXCmYq3Wqn1YiRo2bfUnFXsZyTl4lj4Lx
 R3HY58/t5eCdAx9UXT0dDztb6IHPFnrT+3ssd3Vq/lsoLrzXJaodXR97y
 I5LHyXiU8xqHg3HIVQYUFXztdkbqWLsVEimvzK4+h+D7X+p0p+J3MCY8R
 +pF9zgONL/8IJlSd9kPkYteimL4XB7guifpnl4qGIBgL0RRu3/dyZgMoh
 +3fPqaAaIA+BlmxqNKIc3m2uCqAWLMSJda8BoXXpgYk/YV5YhnvAfv7fx Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10421"; a="268682814"
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="268682814"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 10:33:13 -0700
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="628470215"
Received: from nirmoyda-desk.igk.intel.com ([10.102.13.19])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 10:33:12 -0700
From: Nirmoy Das <nirmoy.das@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Jul 2022 19:33:06 +0200
Message-Id: <20220727173306.16247-1-nirmoy.das@intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Organization: Intel Deutschland GmbH, Registered Address: Am Campeon 10,
 85579 Neubiberg, Germany,
 Commercial Register: Amtsgericht Muenchen HRB 186928 
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915: disable pci resize on 32-bit
 machine
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
this on 32-bit machine and resolve below compilation error:

drivers/gpu/drm/i915/gt/intel_region_lmem.c:94:23: error: result of
comparison of constant 4294967296 with expression of type
'resource_size_t' (aka 'unsigned int') is always false
[-Werror,-Wtautological-constant-out-of-range-compare]
                    root_res->start > 0x100000000ull)

Fixes: a91d1a17cd341 ("drm/i915: Add support for LMEM PCIe resizable bar")
Reported-by: Linux Kernel Functional Testing <lkft@linaro.org>
Tested-by: Linux Kernel Functional Testing <lkft@linaro.org>
Acked-by: Matthew Auld <matthew.auld@intel.com>
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

