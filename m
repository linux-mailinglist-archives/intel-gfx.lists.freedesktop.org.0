Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B23CD720172
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Jun 2023 14:15:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4A1210E692;
	Fri,  2 Jun 2023 12:15:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AD3310E678;
 Fri,  2 Jun 2023 12:15:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685708120; x=1717244120;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tq1GOmJD6WuTKme98Xeh7Q69MdFtHwg29DpraLcbJMg=;
 b=XHj4uL12QixNh7s/YlkQZ0N1xtsBjnFo++RhC2zrXYZJxSWgJ/FlbWXC
 +UlNvcNbWkbJqmtCGQy3fFnXBSiy/fYBXpdA3L543BFCPfXvD8uj4Jgal
 Y1lriIN29uP5qoOSejU0ogfExTfSxyF1rUOkzQY6vslGpg5i2Fqibx3/8
 f7+2oHetx9d8ja3j9ng/gFrEgKdIXNk0C+KkZwPGm3ZGlhhY9E4/eyJnH
 2LnxbKarwUfLV5g+EYccgHmMYDoUTfDurQKStZbbM75N+7+W5BvKJh8kq
 1SgnZRjgcNIcA6UhnrOr7TWF7vAtOsls5WKgOt3HBXB/xKxJArO5hmRKD A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10728"; a="335467479"
X-IronPort-AV: E=Sophos;i="6.00,212,1681196400"; d="scan'208";a="335467479"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2023 05:15:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10728"; a="772876464"
X-IronPort-AV: E=Sophos;i="6.00,212,1681196400"; d="scan'208";a="772876464"
Received: from 984fee00a4c6.jf.intel.com ([10.165.58.231])
 by fmsmga008.fm.intel.com with ESMTP; 02 Jun 2023 05:15:19 -0700
From: Yi Liu <yi.l.liu@intel.com>
To: alex.williamson@redhat.com,
	jgg@nvidia.com,
	kevin.tian@intel.com
Date: Fri,  2 Jun 2023 05:15:10 -0700
Message-Id: <20230602121515.79374-5-yi.l.liu@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230602121515.79374-1-yi.l.liu@intel.com>
References: <20230602121515.79374-1-yi.l.liu@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v7 4/9] iommufd: Add iommufd_ctx_has_group()
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

This adds the helper to check if any device within the given iommu_group
has been bound with the iommufd_ctx. This is helpful for the checking on
device ownership for the devices which have not been bound but cannot be
bound to any other iommufd_ctx as the iommu_group has been bound.

Tested-by: Terrence Xu <terrence.xu@intel.com>
Signed-off-by: Yi Liu <yi.l.liu@intel.com>
---
 drivers/iommu/iommufd/device.c | 30 ++++++++++++++++++++++++++++++
 include/linux/iommufd.h        |  8 ++++++++
 2 files changed, 38 insertions(+)

diff --git a/drivers/iommu/iommufd/device.c b/drivers/iommu/iommufd/device.c
index 4f9b2142274c..4571344c8508 100644
--- a/drivers/iommu/iommufd/device.c
+++ b/drivers/iommu/iommufd/device.c
@@ -98,6 +98,36 @@ struct iommufd_device *iommufd_device_bind(struct iommufd_ctx *ictx,
 }
 EXPORT_SYMBOL_NS_GPL(iommufd_device_bind, IOMMUFD);
 
+/**
+ * iommufd_ctx_has_group - True if any device within the group is bound
+ *                         to the ictx
+ * @ictx: iommufd file descriptor
+ * @group: Pointer to a physical iommu_group struct
+ *
+ * True if any device within the group has been bound to this ictx, ex. via
+ * iommufd_device_bind(), therefore implying ictx ownership of the group.
+ */
+bool iommufd_ctx_has_group(struct iommufd_ctx *ictx, struct iommu_group *group)
+{
+	struct iommufd_object *obj;
+	unsigned long index;
+
+	if (!ictx || !group)
+		return false;
+
+	xa_lock(&ictx->objects);
+	xa_for_each(&ictx->objects, index, obj) {
+		if (obj->type == IOMMUFD_OBJ_DEVICE &&
+		    container_of(obj, struct iommufd_device, obj)->group == group) {
+			xa_unlock(&ictx->objects);
+			return true;
+		}
+	}
+	xa_unlock(&ictx->objects);
+	return false;
+}
+EXPORT_SYMBOL_NS_GPL(iommufd_ctx_has_group, IOMMUFD);
+
 /**
  * iommufd_device_unbind - Undo iommufd_device_bind()
  * @idev: Device returned by iommufd_device_bind()
diff --git a/include/linux/iommufd.h b/include/linux/iommufd.h
index 1129a36a74c4..33fe57e95e42 100644
--- a/include/linux/iommufd.h
+++ b/include/linux/iommufd.h
@@ -16,6 +16,7 @@ struct page;
 struct iommufd_ctx;
 struct iommufd_access;
 struct file;
+struct iommu_group;
 
 struct iommufd_device *iommufd_device_bind(struct iommufd_ctx *ictx,
 					   struct device *dev, u32 *id);
@@ -50,6 +51,7 @@ void iommufd_ctx_get(struct iommufd_ctx *ictx);
 #if IS_ENABLED(CONFIG_IOMMUFD)
 struct iommufd_ctx *iommufd_ctx_from_file(struct file *file);
 void iommufd_ctx_put(struct iommufd_ctx *ictx);
+bool iommufd_ctx_has_group(struct iommufd_ctx *ictx, struct iommu_group *group);
 
 int iommufd_access_pin_pages(struct iommufd_access *access, unsigned long iova,
 			     unsigned long length, struct page **out_pages,
@@ -71,6 +73,12 @@ static inline void iommufd_ctx_put(struct iommufd_ctx *ictx)
 {
 }
 
+static inline bool iommufd_ctx_has_group(struct iommufd_ctx *ictx,
+					 struct iommu_group *group)
+{
+	return false;
+}
+
 static inline int iommufd_access_pin_pages(struct iommufd_access *access,
 					   unsigned long iova,
 					   unsigned long length,
-- 
2.34.1

