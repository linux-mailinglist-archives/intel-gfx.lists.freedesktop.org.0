Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B31A5ED856
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Sep 2022 10:59:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE96A10E3C3;
	Wed, 28 Sep 2022 08:59:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA35F10E366
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Sep 2022 08:59:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664355546; x=1695891546;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=27w9w4hVNJiuDZ9dvk2T9A7YheSJolGmdLIv7utThMM=;
 b=dqPQuQ9HrhHYvtaHpXYQn+tDb9P3efHF1urRjQGrJlhtlTez5RVgv/Yj
 ldY4I/dxKGUT2MVsx6A844sZFTdu3fYL92O+FtoKDfVUcdBu62ZlCO686
 nTAziq+7TMKLVi7i+hg/aFLcsEXR43GZs6DYOY6iyWdkmZcvGDvCoZW94
 b3U3NNw1g2G6fpWhxYUd66rwOJ/KG+T1Nr0vLudNbezkxsREPb40MN0wq
 FGYY23pvcl/kFehgDcya33p+e59SBJk3U7RcE8Z7oT+Sc1IPPgNiI+9Td
 6OWf8GMuS5KJlNT6qqpRijlQpfr2YXLw7DmJTCTyZpLwyRysf50EmBM1t A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="303030954"
X-IronPort-AV: E=Sophos;i="5.93,351,1654585200"; d="scan'208";a="303030954"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2022 01:59:00 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="690319981"
X-IronPort-AV: E=Sophos;i="5.93,351,1654585200"; d="scan'208";a="690319981"
Received: from jkrzyszt-mobl1.ger.corp.intel.com ([10.213.5.184])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2022 01:58:58 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Date: Wed, 28 Sep 2022 10:58:26 +0200
Message-Id: <20220928085826.243721-3-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220928085826.243721-1-janusz.krzysztofik@linux.intel.com>
References: <20220928085826.243721-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [core-for-CI][PATCH v2 2/2] Restore "iommu/dma: Fix
 race condition during iova_domain initialization"
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
Cc: intel-gfx@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This reverts commit bc79ef6d5a223ea59acf874f0493b79c835b17d4 that
reverted commit ac9a5d522bb80be50ea84965699e1c8257d745ce.  That revert is
no longer needed with "iommu: Remove iova cpu hotplugging flushing" in
place that breaks more instances of the same lockdep loop.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 drivers/iommu/dma-iommu.c | 17 +++++++++++++----
 1 file changed, 13 insertions(+), 4 deletions(-)

diff --git a/drivers/iommu/dma-iommu.c b/drivers/iommu/dma-iommu.c
index 9616b473e4c7e..17dd683b2fcea 100644
--- a/drivers/iommu/dma-iommu.c
+++ b/drivers/iommu/dma-iommu.c
@@ -65,6 +65,7 @@ struct iommu_dma_cookie {
 
 	/* Domain for flush queue callback; NULL if flush queue not in use */
 	struct iommu_domain		*fq_domain;
+	struct mutex			mutex;
 };
 
 static DEFINE_STATIC_KEY_FALSE(iommu_deferred_attach_enabled);
@@ -311,6 +312,7 @@ int iommu_get_dma_cookie(struct iommu_domain *domain)
 	if (!domain->iova_cookie)
 		return -ENOMEM;
 
+	mutex_init(&domain->iova_cookie->mutex);
 	return 0;
 }
 
@@ -561,26 +563,33 @@ static int iommu_dma_init_domain(struct iommu_domain *domain, dma_addr_t base,
 	}
 
 	/* start_pfn is always nonzero for an already-initialised domain */
+	mutex_lock(&cookie->mutex);
 	if (iovad->start_pfn) {
 		if (1UL << order != iovad->granule ||
 		    base_pfn != iovad->start_pfn) {
 			pr_warn("Incompatible range for DMA domain\n");
-			return -EFAULT;
+			ret = -EFAULT;
+			goto done_unlock;
 		}
 
-		return 0;
+		ret = 0;
+		goto done_unlock;
 	}
 
 	init_iova_domain(iovad, 1UL << order, base_pfn);
 	ret = iova_domain_init_rcaches(iovad);
 	if (ret)
-		return ret;
+		goto done_unlock;
 
 	/* If the FQ fails we can simply fall back to strict mode */
 	if (domain->type == IOMMU_DOMAIN_DMA_FQ && iommu_dma_init_fq(domain))
 		domain->type = IOMMU_DOMAIN_DMA;
 
-	return iova_reserve_iommu_regions(dev, domain);
+	ret = iova_reserve_iommu_regions(dev, domain);
+
+done_unlock:
+	mutex_unlock(&cookie->mutex);
+	return ret;
 }
 
 /**
-- 
2.25.1

