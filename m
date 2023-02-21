Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ADEDA69D99A
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Feb 2023 04:48:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC2B910E152;
	Tue, 21 Feb 2023 03:48:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C27D10E045;
 Tue, 21 Feb 2023 03:48:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676951301; x=1708487301;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=X+QN4g7gTAMMs8znNFnYax1SUbnU2yRxiDmKpTZqxMw=;
 b=iNZT7mtdaB7pf1jo7VXfIN8rEG+fAD7g9nC6pmnNhIdruZ3Quhks6sjh
 lA062jHV8xDid8VMHkwhqVHShH/usk3y6N0jqfG3KjikSUvrLdcM2mXvE
 KfOVO9SFDD1BkxxXS/eJyHMsEWJZlitAKuuzHQwhs8hDgZPidHlXN2V2B
 D4O8hR+BoCeqH1JvJw4+sKUOH5n7VV5cfVglx4wwVq1oxet0tNT/G2qCk
 sR+xVQtzIggWUbAQNcrll7zt8XQw8ozBbW9rvjA44q8lCj/Lpp4hD0yJJ
 cNkDzJi4GlU1rkWigMrSGH4FouKrPmh6mIyeyk+mcip4pI6p/enWOK3o1 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="397218450"
X-IronPort-AV: E=Sophos;i="5.97,314,1669104000"; d="scan'208";a="397218450"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2023 19:48:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="664822174"
X-IronPort-AV: E=Sophos;i="5.97,314,1669104000"; d="scan'208";a="664822174"
Received: from 984fee00a4c6.jf.intel.com ([10.165.58.231])
 by orsmga007.jf.intel.com with ESMTP; 20 Feb 2023 19:48:20 -0800
From: Yi Liu <yi.l.liu@intel.com>
To: alex.williamson@redhat.com,
	jgg@nvidia.com,
	kevin.tian@intel.com
Date: Mon, 20 Feb 2023 19:48:01 -0800
Message-Id: <20230221034812.138051-9-yi.l.liu@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230221034812.138051-1-yi.l.liu@intel.com>
References: <20230221034812.138051-1-yi.l.liu@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 08/19] vfio/pci: Update comment around
 group_fd get in vfio_pci_ioctl_pci_hot_reset()
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
Cc: linux-s390@vger.kernel.org, yi.l.liu@intel.com, yi.y.sun@linux.intel.com,
 kvm@vger.kernel.org, mjrosato@linux.ibm.com, joro@8bytes.org,
 cohuck@redhat.com, xudong.hao@intel.com, peterx@redhat.com,
 yan.y.zhao@intel.com, eric.auger@redhat.com, terrence.xu@intel.com,
 nicolinc@nvidia.com, shameerali.kolothum.thodi@huawei.com,
 suravee.suthikulpanit@amd.com, intel-gfx@lists.freedesktop.org,
 chao.p.peng@linux.intel.com, lulu@redhat.com,
 intel-gvt-dev@lists.freedesktop.org, jasowang@redhat.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

this suits more on what the code does.

Signed-off-by: Yi Liu <yi.l.liu@intel.com>
---
 drivers/vfio/pci/vfio_pci_core.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/vfio/pci/vfio_pci_core.c b/drivers/vfio/pci/vfio_pci_core.c
index 4704c1babae3..827524510f3f 100644
--- a/drivers/vfio/pci/vfio_pci_core.c
+++ b/drivers/vfio/pci/vfio_pci_core.c
@@ -1308,8 +1308,7 @@ static int vfio_pci_ioctl_pci_hot_reset(struct vfio_pci_core_device *vdev,
 	}
 
 	/*
-	 * For each group_fd, get the group through the vfio external user
-	 * interface and store the group and iommu ID.  This ensures the group
+	 * For each group_fd, get the group file, this ensures the group
 	 * is held across the reset.
 	 */
 	for (file_idx = 0; file_idx < hdr.count; file_idx++) {
-- 
2.34.1

