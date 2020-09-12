Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6411C267772
	for <lists+intel-gfx@lfdr.de>; Sat, 12 Sep 2020 05:28:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 182296E0E9;
	Sat, 12 Sep 2020 03:28:12 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F14C66E0F2
 for <Intel-gfx@lists.freedesktop.org>; Sat, 12 Sep 2020 03:28:10 +0000 (UTC)
IronPort-SDR: Dp+bPPX+rlCD4W98bHbP4gjwYelT8++3tkp7/nFLNliktKgWePnihWinxiokk7Wy3cIkeZsasd
 T2MaM42JDlvw==
X-IronPort-AV: E=McAfee;i="6000,8403,9741"; a="220441581"
X-IronPort-AV: E=Sophos;i="5.76,418,1592895600"; d="scan'208";a="220441581"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2020 20:28:05 -0700
IronPort-SDR: vAnIu1Sv+EC2IcfvY8nEZeyNa/WSeMrZVFkDgx7RL++t/LyKAc6WdQoss2M0CYiDmJF740nZKt
 oOow2M0qgWOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,418,1592895600"; d="scan'208";a="408321391"
Received: from allen-box.sh.intel.com ([10.239.159.139])
 by fmsmga001.fm.intel.com with ESMTP; 11 Sep 2020 20:28:01 -0700
From: Lu Baolu <baolu.lu@linux.intel.com>
To: Joerg Roedel <joro@8bytes.org>, Tom Murphy <murphyt7@tcd.ie>,
 David Woodhouse <dwmw2@infradead.org>,
 Christoph Hellwig <hch@infradead.org>
Date: Sat, 12 Sep 2020 11:21:54 +0800
Message-Id: <20200912032200.11489-1-baolu.lu@linux.intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH v3 0/6] Convert the intel iommu driver to the
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

Tom Murphy has almost done all the work. His latest patch series was
posted here.

https://lore.kernel.org/linux-iommu/20200903201839.7327-1-murphyt7@tcd.ie/

Thanks a lot!

This series is a follow-up with below changes:

1. Add a quirk for the i915 driver issue described in Tom's cover
letter.
2. Fix several bugs in patch "iommu: Allow the dma-iommu api to use
bounce buffers" to make the bounce buffer work for untrusted devices.
3. Several cleanups in iommu/vt-d driver after the conversion.

Please review and test.

Best regards,
baolu

Lu Baolu (2):
  iommu: Add quirk for Intel graphic devices in map_sg
  iommu/vt-d: Cleanup after converting to dma-iommu ops

Tom Murphy (4):
  iommu: Handle freelists when using deferred flushing in iommu drivers
  iommu: Add iommu_dma_free_cpu_cached_iovas()
  iommu: Allow the dma-iommu api to use bounce buffers
  iommu/vt-d: Convert intel iommu driver to the iommu ops

 .../admin-guide/kernel-parameters.txt         |   5 -
 drivers/iommu/dma-iommu.c                     | 229 ++++-
 drivers/iommu/intel/Kconfig                   |   1 +
 drivers/iommu/intel/iommu.c                   | 885 +++---------------
 include/linux/dma-iommu.h                     |   8 +
 include/linux/iommu.h                         |   1 +
 6 files changed, 323 insertions(+), 806 deletions(-)

-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
