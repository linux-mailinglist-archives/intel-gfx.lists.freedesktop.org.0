Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C70E732C06
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jun 2023 11:40:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93D9710E59A;
	Fri, 16 Jun 2023 09:40:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D086710E59C;
 Fri, 16 Jun 2023 09:40:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686908406; x=1718444406;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rC0cWcpZrxfYPuekRu8VQHVu+ABI71JddyKzkKLjRcw=;
 b=Y+En7Wm2xyYZKyqtpfUXcfK5HSNCyRx7YMjtPg1jKSKumXZ7ogh1mqm+
 mXIShnwEvGpbFgI5WwOzXEtx5ohm/Hvs4wCjKA4Rk+0Tvvo++pnf2wrK+
 8MOlRrFhgJqqV3FOiYZR/xEYPIkePglzpeozotfTsu8yjA7Z1KOj6AO+U
 ixc+qIaZCdD3WmkeNyduUn3YeIpsY7BCjeqCoUxpARs17FaRRpFiRZETe
 IAnT0lX9GaVVstWC+5vofz+MgI/SXXDMZHWwoqFmaWq3I5fE8gxO++tyV
 QojE/mL2UioRdpxDoScYbDtiD82pfCeEIjIoEbywJJYEvvMV2y9h1PJTZ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="361700254"
X-IronPort-AV: E=Sophos;i="6.00,247,1681196400"; d="scan'208";a="361700254"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2023 02:40:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="715951105"
X-IronPort-AV: E=Sophos;i="6.00,247,1681196400"; d="scan'208";a="715951105"
Received: from 984fee00a4c6.jf.intel.com ([10.165.58.231])
 by fmsmga007.fm.intel.com with ESMTP; 16 Jun 2023 02:40:05 -0700
From: Yi Liu <yi.l.liu@intel.com>
To: alex.williamson@redhat.com,
	jgg@nvidia.com,
	kevin.tian@intel.com
Date: Fri, 16 Jun 2023 02:39:32 -0700
Message-Id: <20230616093946.68711-9-yi.l.liu@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230616093946.68711-1-yi.l.liu@intel.com>
References: <20230616093946.68711-1-yi.l.liu@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v13 08/22] vfio: Add cdev_device_open_cnt to
 vfio_group
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
Cc: mjrosato@linux.ibm.com, jasowang@redhat.com, xudong.hao@intel.com,
 zhenzhong.duan@intel.com, peterx@redhat.com, terrence.xu@intel.com,
 chao.p.peng@linux.intel.com, linux-s390@vger.kernel.org, yi.l.liu@intel.com,
 kvm@vger.kernel.org, lulu@redhat.com, yanting.jiang@intel.com, joro@8bytes.org,
 nicolinc@nvidia.com, yan.y.zhao@intel.com, intel-gfx@lists.freedesktop.org,
 eric.auger@redhat.com, intel-gvt-dev@lists.freedesktop.org,
 yi.y.sun@linux.intel.com, clegoate@redhat.com, cohuck@redhat.com,
 shameerali.kolothum.thodi@huawei.com, suravee.suthikulpanit@amd.com,
 robin.murphy@arm.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is for counting the devices that are opened via the cdev path. This
count is increased and decreased by the cdev path. The group path checks
it to achieve exclusion with the cdev path. With this, only one path
(group path or cdev path) will claim DMA ownership. This avoids scenarios
in which devices within the same group may be opened via different paths.

Reviewed-by: Kevin Tian <kevin.tian@intel.com>
Reviewed-by: Jason Gunthorpe <jgg@nvidia.com>
Reviewed-by: Eric Auger <eric.auger@redhat.com>
Tested-by: Terrence Xu <terrence.xu@intel.com>
Tested-by: Nicolin Chen <nicolinc@nvidia.com>
Tested-by: Matthew Rosato <mjrosato@linux.ibm.com>
Tested-by: Yanting Jiang <yanting.jiang@intel.com>
Tested-by: Shameer Kolothum <shameerali.kolothum.thodi@huawei.com>
Signed-off-by: Yi Liu <yi.l.liu@intel.com>
---
 drivers/vfio/group.c | 33 +++++++++++++++++++++++++++++++++
 drivers/vfio/vfio.h  |  3 +++
 2 files changed, 36 insertions(+)

diff --git a/drivers/vfio/group.c b/drivers/vfio/group.c
index 088dd34c8931..2751d61689c4 100644
--- a/drivers/vfio/group.c
+++ b/drivers/vfio/group.c
@@ -383,6 +383,33 @@ static long vfio_group_fops_unl_ioctl(struct file *filep,
 	}
 }
 
+int vfio_device_block_group(struct vfio_device *device)
+{
+	struct vfio_group *group = device->group;
+	int ret = 0;
+
+	mutex_lock(&group->group_lock);
+	if (group->opened_file) {
+		ret = -EBUSY;
+		goto out_unlock;
+	}
+
+	group->cdev_device_open_cnt++;
+
+out_unlock:
+	mutex_unlock(&group->group_lock);
+	return ret;
+}
+
+void vfio_device_unblock_group(struct vfio_device *device)
+{
+	struct vfio_group *group = device->group;
+
+	mutex_lock(&group->group_lock);
+	group->cdev_device_open_cnt--;
+	mutex_unlock(&group->group_lock);
+}
+
 static int vfio_group_fops_open(struct inode *inode, struct file *filep)
 {
 	struct vfio_group *group =
@@ -405,6 +432,11 @@ static int vfio_group_fops_open(struct inode *inode, struct file *filep)
 		goto out_unlock;
 	}
 
+	if (group->cdev_device_open_cnt) {
+		ret = -EBUSY;
+		goto out_unlock;
+	}
+
 	/*
 	 * Do we need multiple instances of the group open?  Seems not.
 	 */
@@ -479,6 +511,7 @@ static void vfio_group_release(struct device *dev)
 	mutex_destroy(&group->device_lock);
 	mutex_destroy(&group->group_lock);
 	WARN_ON(group->iommu_group);
+	WARN_ON(group->cdev_device_open_cnt);
 	ida_free(&vfio.group_ida, MINOR(group->dev.devt));
 	kfree(group);
 }
diff --git a/drivers/vfio/vfio.h b/drivers/vfio/vfio.h
index 4478a1e77a5e..ae7dd2ca14b9 100644
--- a/drivers/vfio/vfio.h
+++ b/drivers/vfio/vfio.h
@@ -84,8 +84,11 @@ struct vfio_group {
 	struct blocking_notifier_head	notifier;
 	struct iommufd_ctx		*iommufd;
 	spinlock_t			kvm_ref_lock;
+	unsigned int			cdev_device_open_cnt;
 };
 
+int vfio_device_block_group(struct vfio_device *device);
+void vfio_device_unblock_group(struct vfio_device *device);
 int vfio_device_set_group(struct vfio_device *device,
 			  enum vfio_group_type type);
 void vfio_device_remove_group(struct vfio_device *device);
-- 
2.34.1

