Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6637F9E336F
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Dec 2024 07:09:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01CA710EC00;
	Wed,  4 Dec 2024 06:09:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Fq14xl4Y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0A8910EBFE;
 Wed,  4 Dec 2024 06:09:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733292595; x=1764828595;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=aqSenYlA75OihojP/g0qsM3tGjxUObdyT2IvZOh3EfU=;
 b=Fq14xl4Y2MkF3JN8BPTc/PgwZ7IbF1RZTwAz7kmFQ4YKlGKxVEIGLsz3
 5TYz5UdEsPEGaOSb6fEZ2QkZx6cGDrHb9TBOej5RKtHsWeIz3Cjq3bm+k
 3tzEFSIM9M7ZQIR6uys8N65Ghu8qu7YFtk5JScof1/dqLg1O9enI2+34c
 BZLZws1EfywVxUmq8pveSVPB2fwfEkNGVp2kyLCspz2ZppleyY5mDOwNo
 PIvPp4dTx5a1iA/VlWCgYw2ubyW3Zzb6cAsGydmBfxTCoeUsnDpxEnfQ2
 it8xqWCqNkdoTUelOUa/SQsmKfe1Tny6OQpctAOf7NsD/tbo0vklCMdtl w==;
X-CSE-ConnectionGUID: 8OuVALlFSYq0z0cdkTFnpQ==
X-CSE-MsgGUID: AjNWysncRNGYeKPckEKn9Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11275"; a="44203501"
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="44203501"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2024 22:09:55 -0800
X-CSE-ConnectionGUID: wLnOQ8/sRkawJKkgJNz/+Q==
X-CSE-MsgGUID: b2pLJ6B/QXyMDKf3nlelVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="124493483"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by orviesa002.jf.intel.com with ESMTP; 03 Dec 2024 22:09:55 -0800
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Subject: [core-for-CI] nvme-pci: don't use dma_alloc_noncontiguous with 0
 merge boundary
Date: Wed,  4 Dec 2024 11:36:01 +0530
Message-Id: <20241204060601.1813514-1-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
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

From: Christoph Hellwig <hch@lst.de>

Only call into nvme_alloc_host_mem_single which uses
dma_alloc_noncontiguous when there is non-null dma merge boundary.
Without this we'll call into dma_alloc_noncontiguous for device using
dma-direct, which can work fine as long as the preferred size is below the
MAX_ORDER of the page allocator, but blows up with a warning if it is
too large.

Fixes: 63a5c7a4b4c4 ("nvme-pci: use dma_alloc_noncontigous if possible")
Reported-by: Leon Romanovsky <leon@kernel.org>
Reported-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Signed-off-by: Christoph Hellwig <hch@lst.de>
References: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13227
Link: https://lore.kernel.org/linux-nvme/39a67024-2926-4a20-8feb-77dd64ab7c39@kernel.dk/T/#mfef47937b20e33aa3cc63a3af930f8a9f9baf8c2
---
 drivers/nvme/host/pci.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index 4c644bb7f069..778f124c2e21 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -2172,6 +2172,7 @@ static int nvme_alloc_host_mem_multi(struct nvme_dev *dev, u64 preferred,
 
 static int nvme_alloc_host_mem(struct nvme_dev *dev, u64 min, u64 preferred)
 {
+	unsigned long dma_merge_moundary = dma_get_merge_boundary(dev->dev);
 	u64 min_chunk = min_t(u64, preferred, PAGE_SIZE * MAX_ORDER_NR_PAGES);
 	u64 hmminds = max_t(u32, dev->ctrl.hmminds * 4096, PAGE_SIZE * 2);
 	u64 chunk_size;
@@ -2180,7 +2181,7 @@ static int nvme_alloc_host_mem(struct nvme_dev *dev, u64 min, u64 preferred)
 	 * If there is an IOMMU that can merge pages, try a virtually
 	 * non-contiguous allocation for a single segment first.
 	 */
-	if (!(PAGE_SIZE & dma_get_merge_boundary(dev->dev))) {
+	if (dma_merge_moundary && (PAGE_SIZE & dma_merge_moundary) == 0) {
 		if (!nvme_alloc_host_mem_single(dev, preferred))
 			return 0;
 	}
-- 
2.25.1

