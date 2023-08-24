Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 10023787B9A
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Aug 2023 00:44:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C8FE10E32B;
	Thu, 24 Aug 2023 22:44:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 355A010E32B
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 22:44:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692917068; x=1724453068;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=QefVwFhN6RrM/RUg0hxCw2KeS4ZEOPUAB6qWqXB/J1Q=;
 b=SMVfY3z031wccVMscia1SiOxyXJ0vdhKjY/iK58sx6ZWlw7lzaouNE0z
 fsy3sNjKOWgSSEM2xr+ebe5pjGdT6b0r+MQ4l7skkBqfJVcnFFMUcVlBQ
 Q9E+Ibccd0quoRFB6IZ/YOkvQqUVTJlM5zFK9ycipUbXGr8ZiSwXsU2B8
 twTiTsF8JKKnTY0KsskAPoL24cE6PUiYJ8dUqkwEwsUZ0tuYR6ftnHfZU
 jzQSbqQUYbFrZ1uOkKR6L9scJi7FiG0+iZr1MJ3Dfl4UmErs/oVZFkJ+W
 dBFwzOHLePHozoybM1BycY6P4xFrSsMZIIApsmpkazfYYxll4V/sSCVtD g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="460935483"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="460935483"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 15:44:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="730815466"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="730815466"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 15:44:27 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Aug 2023 15:42:49 -0700
Message-Id: <20230824224249.365665-1-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [topic/core-for-ci v2] iommu/vt-d: Check domain flags
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

Signed-off-by: Ashok Raj <ashok.raj@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/iommu/intel/iommu.c | 2 +-
 drivers/iommu/intel/pasid.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

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
diff --git a/drivers/iommu/intel/pasid.c b/drivers/iommu/intel/pasid.c
index c5d479770e12..a057ecf84d82 100644
--- a/drivers/iommu/intel/pasid.c
+++ b/drivers/iommu/intel/pasid.c
@@ -538,7 +538,7 @@ int intel_pasid_setup_first_level(struct intel_iommu *iommu,
 	if (flags & PASID_FLAG_FL5LP)
 		pasid_set_flpm(pte, 1);
 
-	if (flags & PASID_FLAG_PAGE_SNOOP)
+	if ((flags & PASID_FLAG_PAGE_SNOOP) && ecap_sc_support(iommu->ecap))
 		pasid_set_pgsnp(pte);
 
 	pasid_set_domain_id(pte, did);
-- 
2.34.1

