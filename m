Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 97D186D323A
	for <lists+intel-gfx@lfdr.de>; Sat,  1 Apr 2023 17:19:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 955C710E10C;
	Sat,  1 Apr 2023 15:19:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86D5110E105;
 Sat,  1 Apr 2023 15:18:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680362322; x=1711898322;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UokUYeM4rR64gCGp21F4Z3uW+9LSpKJiXFcdGNm8PF0=;
 b=iIulnkIFkdD5sH7VF005j8wzsH+j9exewqwN4KQueiCtoke+oZOVqNmu
 W+1MiaoAjNwwi0BCb4zv+Cw28yW00YX/c+4oYrmUDGoVAxRgWPdTUMtbP
 QznHblLfcj/7EXgQx8omcTtYFkzAUQcpZxfshctq1MSNfXOzJAqikIF2m
 5EzXA9u+VZTJhhomX3v7u/xAk3cKXZ9sbnNXcDzSTMDPvmFyZt9y2Kjhl
 ch05g95Somb3y1mAYcln4JvmBDOJ3lqVzkiEW0Rz2ANmhOsKmj3oTx3IN
 qwi6LBmC0rp1tzIenqwJ7M/ZJ+rXRma5unsxtx3Ks5xvhIHcCH3ofi1Fz Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10667"; a="404411280"
X-IronPort-AV: E=Sophos;i="5.98,310,1673942400"; d="scan'208";a="404411280"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2023 08:18:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10667"; a="678937193"
X-IronPort-AV: E=Sophos;i="5.98,310,1673942400"; d="scan'208";a="678937193"
Received: from 984fee00a4c6.jf.intel.com ([10.165.58.231])
 by orsmga007.jf.intel.com with ESMTP; 01 Apr 2023 08:18:41 -0700
From: Yi Liu <yi.l.liu@intel.com>
To: alex.williamson@redhat.com,
	jgg@nvidia.com,
	kevin.tian@intel.com
Date: Sat,  1 Apr 2023 08:18:19 -0700
Message-Id: <20230401151833.124749-12-yi.l.liu@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230401151833.124749-1-yi.l.liu@intel.com>
References: <20230401151833.124749-1-yi.l.liu@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v9 11/25] vfio: Make vfio_device_first_open() to
 accept NULL iommufd for noiommu
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
 peterx@redhat.com, terrence.xu@intel.com, chao.p.peng@linux.intel.com,
 linux-s390@vger.kernel.org, yi.l.liu@intel.com, kvm@vger.kernel.org,
 lulu@redhat.com, yanting.jiang@intel.com, joro@8bytes.org, nicolinc@nvidia.com,
 yan.y.zhao@intel.com, intel-gfx@lists.freedesktop.org, eric.auger@redhat.com,
 intel-gvt-dev@lists.freedesktop.org, yi.y.sun@linux.intel.com,
 cohuck@redhat.com, shameerali.kolothum.thodi@huawei.com,
 suravee.suthikulpanit@amd.com, robin.murphy@arm.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

vfio_device_first_open() requires the caller to provide either a valid
iommufd (the group path in iommufd compat mode) or a valid container
(the group path in legacy container mode). As preparation for noiommu
support in device cdev path it's extended to allow both being NULL. The
caller is expected to verify noiommu permission before passing NULL
to this function.

Reviewed-by: Kevin Tian <kevin.tian@intel.com>
Reviewed-by: Jason Gunthorpe <jgg@nvidia.com>
Tested-by: Terrence Xu <terrence.xu@intel.com>
Tested-by: Nicolin Chen <nicolinc@nvidia.com>
Tested-by: Yanting Jiang <yanting.jiang@intel.com>
Signed-off-by: Yi Liu <yi.l.liu@intel.com>
---
 drivers/vfio/group.c     |  6 ++++++
 drivers/vfio/vfio.h      |  1 +
 drivers/vfio/vfio_main.c | 12 ++++++++----
 3 files changed, 15 insertions(+), 4 deletions(-)

diff --git a/drivers/vfio/group.c b/drivers/vfio/group.c
index 1af4b9e012a7..63a4bf06ab9f 100644
--- a/drivers/vfio/group.c
+++ b/drivers/vfio/group.c
@@ -771,6 +771,12 @@ void vfio_device_group_unregister(struct vfio_device *device)
 	mutex_unlock(&device->group->device_lock);
 }
 
+/* No group lock since df->group and df->group->container cannot change */
+bool vfio_device_group_uses_container(struct vfio_device_file *df)
+{
+	return df->group && READ_ONCE(df->group->container);
+}
+
 int vfio_device_group_use_iommu(struct vfio_device *device)
 {
 	struct vfio_group *group = device->group;
diff --git a/drivers/vfio/vfio.h b/drivers/vfio/vfio.h
index f1a448f9d067..7d4108cbc185 100644
--- a/drivers/vfio/vfio.h
+++ b/drivers/vfio/vfio.h
@@ -95,6 +95,7 @@ int vfio_device_set_group(struct vfio_device *device,
 void vfio_device_remove_group(struct vfio_device *device);
 void vfio_device_group_register(struct vfio_device *device);
 void vfio_device_group_unregister(struct vfio_device *device);
+bool vfio_device_group_uses_container(struct vfio_device_file *df);
 int vfio_device_group_use_iommu(struct vfio_device *device);
 void vfio_device_group_unuse_iommu(struct vfio_device *device);
 void vfio_device_group_close(struct vfio_device_file *df);
diff --git a/drivers/vfio/vfio_main.c b/drivers/vfio/vfio_main.c
index c8721d5d05fa..f4c9c27c7d74 100644
--- a/drivers/vfio/vfio_main.c
+++ b/drivers/vfio/vfio_main.c
@@ -423,16 +423,20 @@ static int vfio_device_first_open(struct vfio_device_file *df)
 {
 	struct vfio_device *device = df->device;
 	struct iommufd_ctx *iommufd = df->iommufd;
-	int ret;
+	int ret = 0;
 
 	lockdep_assert_held(&device->dev_set->lock);
 
 	if (!try_module_get(device->dev->driver->owner))
 		return -ENODEV;
 
+	/*
+	 * if neither iommufd nor container is used the device is in
+	 * noiommu mode then just go ahead to open it.
+	 */
 	if (iommufd)
 		ret = vfio_iommufd_bind(device, iommufd);
-	else
+	else if (vfio_device_group_uses_container(df))
 		ret = vfio_device_group_use_iommu(device);
 	if (ret)
 		goto err_module_put;
@@ -447,7 +451,7 @@ static int vfio_device_first_open(struct vfio_device_file *df)
 err_unuse_iommu:
 	if (iommufd)
 		vfio_iommufd_unbind(device);
-	else
+	else if (vfio_device_group_uses_container(df))
 		vfio_device_group_unuse_iommu(device);
 err_module_put:
 	module_put(device->dev->driver->owner);
@@ -465,7 +469,7 @@ static void vfio_device_last_close(struct vfio_device_file *df)
 		device->ops->close_device(device);
 	if (iommufd)
 		vfio_iommufd_unbind(device);
-	else
+	else if (vfio_device_group_uses_container(df))
 		vfio_device_group_unuse_iommu(device);
 	module_put(device->dev->driver->owner);
 }
-- 
2.34.1

