Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DC6D279EF2
	for <lists+intel-gfx@lfdr.de>; Sun, 27 Sep 2020 08:41:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6944D6E0F1;
	Sun, 27 Sep 2020 06:41:04 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1D5F6E0F1
 for <Intel-gfx@lists.freedesktop.org>; Sun, 27 Sep 2020 06:41:01 +0000 (UTC)
IronPort-SDR: Xg7DXJ8lU214oSn3O/qYPjmcDJOlCA+oiR0OZePL+rsLb42tHEJKJ0uubAHnqQPGU5lGeL2MtL
 gv5kbjuKk0fA==
X-IronPort-AV: E=McAfee;i="6000,8403,9756"; a="141863665"
X-IronPort-AV: E=Sophos;i="5.77,309,1596524400"; d="scan'208";a="141863665"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2020 23:41:01 -0700
IronPort-SDR: k1JBwksq+zQLGQg/GY67JMP3d5ieKmC8g4e5VzE0J+hFMT7I3qwQcs5mHGWqHYv/xd7tOH5DYL
 EPAXUwd+s4nw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,309,1596524400"; d="scan'208";a="349457853"
Received: from allen-box.sh.intel.com ([10.239.159.139])
 by FMSMGA003.fm.intel.com with ESMTP; 26 Sep 2020 23:40:59 -0700
From: Lu Baolu <baolu.lu@linux.intel.com>
To: Joerg Roedel <joro@8bytes.org>, Tom Murphy <murphyt7@tcd.ie>,
 David Woodhouse <dwmw2@infradead.org>,
 Christoph Hellwig <hch@infradead.org>
Date: Sun, 27 Sep 2020 14:34:35 +0800
Message-Id: <20200927063437.13988-6-baolu.lu@linux.intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200927063437.13988-1-baolu.lu@linux.intel.com>
References: <20200927063437.13988-1-baolu.lu@linux.intel.com>
Subject: [Intel-gfx] [PATCH v4 5/7] iommu/vt-d: Update domain geometry in
 iommu_ops.at(de)tach_dev
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
Cc: Ashok Raj <ashok.raj@intel.com>, Intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 Lu Baolu <baolu.lu@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The iommu-dma constrains IOVA allocation based on the domain geometry
that the driver reports. Update domain geometry everytime a domain is
attached to or detached from a device.

Signed-off-by: Lu Baolu <baolu.lu@linux.intel.com>
---
 drivers/iommu/intel/iommu.c | 16 ++++++++++++++--
 1 file changed, 14 insertions(+), 2 deletions(-)

diff --git a/drivers/iommu/intel/iommu.c b/drivers/iommu/intel/iommu.c
index fdd514c8b2d4..7d3c73d1e498 100644
--- a/drivers/iommu/intel/iommu.c
+++ b/drivers/iommu/intel/iommu.c
@@ -67,8 +67,8 @@
 #define MAX_AGAW_WIDTH 64
 #define MAX_AGAW_PFN_WIDTH	(MAX_AGAW_WIDTH - VTD_PAGE_SHIFT)
 
-#define __DOMAIN_MAX_PFN(gaw)  ((((uint64_t)1) << (gaw-VTD_PAGE_SHIFT)) - 1)
-#define __DOMAIN_MAX_ADDR(gaw) ((((uint64_t)1) << gaw) - 1)
+#define __DOMAIN_MAX_PFN(gaw)  ((((uint64_t)1) << ((gaw) - VTD_PAGE_SHIFT)) - 1)
+#define __DOMAIN_MAX_ADDR(gaw) ((((uint64_t)1) << (gaw)) - 1)
 
 /* We limit DOMAIN_MAX_PFN to fit in an unsigned long, and DOMAIN_MAX_ADDR
    to match. That way, we can use 'unsigned long' for PFNs with impunity. */
@@ -739,6 +739,18 @@ static void domain_update_iommu_cap(struct dmar_domain *domain)
 	 */
 	if (domain->nid == NUMA_NO_NODE)
 		domain->nid = domain_update_device_node(domain);
+
+	/*
+	 * First-level translation restricts the input-address to a
+	 * canonical address (i.e., address bits 63:N have the same
+	 * value as address bit [N-1], where N is 48-bits with 4-level
+	 * paging and 57-bits with 5-level paging). Hence, skip bit
+	 * [N-1].
+	 */
+	if (domain_use_first_level(domain))
+		domain->domain.geometry.aperture_end = __DOMAIN_MAX_ADDR(domain->gaw - 1);
+	else
+		domain->domain.geometry.aperture_end = __DOMAIN_MAX_ADDR(domain->gaw);
 }
 
 struct context_entry *iommu_context_addr(struct intel_iommu *iommu, u8 bus,
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
