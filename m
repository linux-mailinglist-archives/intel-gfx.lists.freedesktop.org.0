Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DB4276D1A8
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Aug 2023 17:19:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCCCE10E18C;
	Wed,  2 Aug 2023 15:19:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5574910E18C
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Aug 2023 15:19:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690989557; x=1722525557;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=STuMFXF17D+dPXppitgrjiAKeQynIxaLaYmXJ4F2fnE=;
 b=SR41tbCjeC1X9aaXOTJVsSQo5LmiKNZsEHff/PSqDAzVLqzd7olgI04J
 ISpSae9mzpNMBERbXL6qEVyTfIn5aYMg/3n3KMiNQ7assE0wgfvaf3dVf
 P7su34Onjd1Z7osa6By/sSckmSFM7fH0TpVpCtOR8PbaDCVZiQTc0hcoU
 9LIS9gBoC/BdkEUyNR/ga3dzkqUBUz7tbY66y7EcFR6fj7JX+PVdwWQSR
 Ql6m4L7lUIlhXCB0YtDaC3rYmmKCw3Uy1r2ad/Ajn9L985irei3Jao0af
 7y55pjJn8JEZbzuQDzLtRW+uEYaHdsTFnDTz0Ufm99wG2ka2SZjqtlL4x w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10790"; a="433454237"
X-IronPort-AV: E=Sophos;i="6.01,249,1684825200"; d="scan'208";a="433454237"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2023 08:19:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10790"; a="706212155"
X-IronPort-AV: E=Sophos;i="6.01,249,1684825200"; d="scan'208";a="706212155"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2023 08:19:15 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  2 Aug 2023 08:17:55 -0700
Message-Id: <20230802151755.2874738-1-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [topic/core-for-ci] iommu/vt-d: Check domain flags
 before setting snp bit in page-control
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
Cc: Ashok Raj <ashok.raj@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ashok Raj <ashok.raj@intel.com>

Check domain flags before setting snp bit in PTE.

Signed-off-by: Ashok Raj <ashok.raj@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/iommu/intel/iommu.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/iommu/intel/iommu.c b/drivers/iommu/intel/iommu.c
index 5c8c5cdc36cf..71da6f818e96 100644
--- a/drivers/iommu/intel/iommu.c
+++ b/drivers/iommu/intel/iommu.c
@@ -2150,7 +2150,7 @@ __domain_mapping(struct dmar_domain *domain, unsigned long iov_pfn,
 	if ((prot & (DMA_PTE_READ|DMA_PTE_WRITE)) == 0)
 		return -EINVAL;
 
-	attr = prot & (DMA_PTE_READ | DMA_PTE_WRITE | DMA_PTE_SNP);
+	attr = prot & (DMA_PTE_READ | DMA_PTE_WRITE);
 	attr |= DMA_FL_PTE_PRESENT;
 	if (domain->use_first_level) {
 		attr |= DMA_FL_PTE_XD | DMA_FL_PTE_US | DMA_FL_PTE_ACCESS;
-- 
2.34.1

