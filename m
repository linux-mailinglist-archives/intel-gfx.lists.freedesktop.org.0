Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 07598279EE8
	for <lists+intel-gfx@lfdr.de>; Sun, 27 Sep 2020 08:40:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B9246E03F;
	Sun, 27 Sep 2020 06:40:51 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 362A36E03F
 for <Intel-gfx@lists.freedesktop.org>; Sun, 27 Sep 2020 06:40:50 +0000 (UTC)
IronPort-SDR: JMXa1RUuD/j4BMz98sp+xlJtxAIaIox8RhN7eDI2KdBomdUZ8rZnUMAZ+a5OLa/sMgs5W3Iu52
 sRLEY+rwY+qw==
X-IronPort-AV: E=McAfee;i="6000,8403,9756"; a="141863644"
X-IronPort-AV: E=Sophos;i="5.77,309,1596524400"; d="scan'208";a="141863644"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2020 23:40:49 -0700
IronPort-SDR: BcD1OrQHfpsDohmg8zEQeY/oyfp6Yvh2Q4v/w6YCEht/PqSE8MrvvNg8OhReoQQwT6f09GASjt
 oqbuR5dl6czA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,309,1596524400"; d="scan'208";a="349457807"
Received: from allen-box.sh.intel.com ([10.239.159.139])
 by FMSMGA003.fm.intel.com with ESMTP; 26 Sep 2020 23:40:47 -0700
From: Lu Baolu <baolu.lu@linux.intel.com>
To: Joerg Roedel <joro@8bytes.org>, Tom Murphy <murphyt7@tcd.ie>,
 David Woodhouse <dwmw2@infradead.org>,
 Christoph Hellwig <hch@infradead.org>
Date: Sun, 27 Sep 2020 14:34:30 +0800
Message-Id: <20200927063437.13988-1-baolu.lu@linux.intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH v4 0/7] Convert the intel iommu driver to the
 dma-iommu api
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

Hi,

The previous post of this series could be found here.

https://lore.kernel.org/linux-iommu/20200912032200.11489-1-baolu.lu@linux.intel.com/

This version introduce a new patch [4/7] to fix an issue reported here.

https://lore.kernel.org/linux-iommu/51a1baec-48d1-c0ac-181b-1fba92aa428d@linux.intel.com/

There aren't any other changes.

Please help to test and review.

Best regards,
baolu

Lu Baolu (3):
  iommu: Add quirk for Intel graphic devices in map_sg
  iommu/vt-d: Update domain geometry in iommu_ops.at(de)tach_dev
  iommu/vt-d: Cleanup after converting to dma-iommu ops

Tom Murphy (4):
  iommu: Handle freelists when using deferred flushing in iommu drivers
  iommu: Add iommu_dma_free_cpu_cached_iovas()
  iommu: Allow the dma-iommu api to use bounce buffers
  iommu/vt-d: Convert intel iommu driver to the iommu ops

 .../admin-guide/kernel-parameters.txt         |   5 -
 drivers/iommu/dma-iommu.c                     | 228 ++++-
 drivers/iommu/intel/Kconfig                   |   1 +
 drivers/iommu/intel/iommu.c                   | 901 +++---------------
 include/linux/dma-iommu.h                     |   8 +
 include/linux/iommu.h                         |   1 +
 6 files changed, 336 insertions(+), 808 deletions(-)

-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
