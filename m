Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BDA0701756
	for <lists+intel-gfx@lfdr.de>; Sat, 13 May 2023 15:29:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A04CD10E123;
	Sat, 13 May 2023 13:29:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E63C10E0E6;
 Sat, 13 May 2023 13:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683984533; x=1715520533;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BBJRq3qZNBqtx20tG6OP6phR2tRqYeQ+5aeFBb+MBro=;
 b=K6iF2EZKcZKWQbAP6wHCJEW7mNPCa9HMw//I1oQUptwTCQOGZF2PO0vA
 9i/V+qiQ+ikmcrJAwTBR23o5LvIwMSNPkSuG4aCxrlNaztE0NNW1Eym+J
 NTydZzVUXjBuZPPH9jiatmcNmaGLs2hJlLyAlOp9b2nou6uKvARvhCz0+
 9MqDIQwfx2INQO0Wj7F5ZjDKOQ0AKV83/29Ficpq1LNEeAbiwHLQ/X8or
 ZW0EVgMX61K+qLatP/4m/pFdJp5c1128+jHTCajs7Ii/ofuomE3gYUTJx
 Lu4bIVIyrZNkQq+hFKYFbtrTt7jOVq3al6cnr/V0jo+Q+S7rWVqMi3bez g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="354100800"
X-IronPort-AV: E=Sophos;i="5.99,272,1677571200"; d="scan'208";a="354100800"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2023 06:28:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="703459511"
X-IronPort-AV: E=Sophos;i="5.99,272,1677571200"; d="scan'208";a="703459511"
Received: from 984fee00a4c6.jf.intel.com ([10.165.58.231])
 by fmsmga007.fm.intel.com with ESMTP; 13 May 2023 06:28:52 -0700
From: Yi Liu <yi.l.liu@intel.com>
To: alex.williamson@redhat.com,
	jgg@nvidia.com,
	kevin.tian@intel.com
Date: Sat, 13 May 2023 06:28:20 -0700
Message-Id: <20230513132827.39066-17-yi.l.liu@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230513132827.39066-1-yi.l.liu@intel.com>
References: <20230513132827.39066-1-yi.l.liu@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v11 16/23] vfio: Name noiommu vfio_device with
 "noiommu-" prefix
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

For noiommu device, vfio core names the cdev node with prefix "noiommu-".

Reviewed-by: Kevin Tian <kevin.tian@intel.com>
Tested-by: Nicolin Chen <nicolinc@nvidia.com>
Tested-by: Yanting Jiang <yanting.jiang@intel.com>
Tested-by: Shameer Kolothum <shameerali.kolothum.thodi@huawei.com>
Signed-off-by: Yi Liu <yi.l.liu@intel.com>
---
 drivers/vfio/vfio_main.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/vfio/vfio_main.c b/drivers/vfio/vfio_main.c
index 599d551fc4b5..89720b73fa30 100644
--- a/drivers/vfio/vfio_main.c
+++ b/drivers/vfio/vfio_main.c
@@ -284,13 +284,14 @@ static int __vfio_register_dev(struct vfio_device *device,
 	if (!device->dev_set)
 		vfio_assign_device_set(device, device);
 
-	ret = dev_set_name(&device->device, "vfio%d", device->index);
+	ret = vfio_device_set_group(device, type);
 	if (ret)
 		return ret;
 
-	ret = vfio_device_set_group(device, type);
+	ret = dev_set_name(&device->device, "%svfio%d",
+			   vfio_device_is_noiommu(device) ? "noiommu-" : "", device->index);
 	if (ret)
-		return ret;
+		goto err_out;
 
 	ret = device_add(&device->device);
 	if (ret)
-- 
2.34.1

