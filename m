Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1742A5B2C80
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Sep 2022 05:06:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 026F210EA80;
	Fri,  9 Sep 2022 03:05:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8890910EA2F;
 Fri,  9 Sep 2022 03:05:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662692715; x=1694228715;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QCqnH5yyFKRSM/tDdALx86Zz7Ypn4WP/5pwxdmZHGPQ=;
 b=GKxIxp1QJISRJd6swfohytwhj8r7CUn5j6n/fNNTbT3rR+uKwOE6+6IN
 sQ5RSZx0eZ+RxBiUAmMr9cem12u30Z9bTubhiGVViRfVQtD/jwOCKf5nG
 2igjI8sD7MDohI+UTl2nQox8IE6QkKTBph0ZwHr8Oe1IJbrHkw6cpjk+V
 ziJFFJ8RuZyotsinEZ6RWOVZjX6KpzYpKskcnVJjOJJYkRySaiw0CySOp
 RgSyiNpWu+jbssAjBxTFadmlaYABjqT7acSUNKML4lSTj70t7+yfU/iW2
 Y9RQKPzJDQ0j2kHjcZECB2n+H2Qn9qzhizkQC1+KGTzj29mPvMXRlDmP+ g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10464"; a="280410084"
X-IronPort-AV: E=Sophos;i="5.93,300,1654585200"; d="scan'208";a="280410084"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2022 20:04:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,300,1654585200"; d="scan'208";a="740908783"
Received: from sqa-gate.sh.intel.com (HELO michael.clx.dev.tsp.org)
 ([10.239.48.212])
 by orsmga004.jf.intel.com with ESMTP; 08 Sep 2022 20:04:13 -0700
From: Kevin Tian <kevin.tian@intel.com>
To: Zhenyu Wang <zhenyuw@linux.intel.com>, Zhi Wang <zhi.a.wang@intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Eric Farman <farman@linux.ibm.com>,
 Matthew Rosato <mjrosato@linux.ibm.com>, Halil Pasic <pasic@linux.ibm.com>,
 Vineeth Vijayan <vneethv@linux.ibm.com>,
 Peter Oberparleiter <oberpar@linux.ibm.com>,
 Heiko Carstens <hca@linux.ibm.com>, Vasily Gorbik <gor@linux.ibm.com>,
 Alexander Gordeev <agordeev@linux.ibm.com>,
 Christian Borntraeger <borntraeger@linux.ibm.com>,
 Sven Schnelle <svens@linux.ibm.com>, Tony Krowiak <akrowiak@linux.ibm.com>,
 Jason Herne <jjherne@linux.ibm.com>,
 Harald Freudenberger <freude@linux.ibm.com>,
 Diana Craciun <diana.craciun@oss.nxp.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Cornelia Huck <cohuck@redhat.com>, Longfang Liu <liulongfang@huawei.com>,
 Shameer Kolothum <shameerali.kolothum.thodi@huawei.com>,
 Jason Gunthorpe <jgg@ziepe.ca>, Yishai Hadas <yishaih@nvidia.com>,
 Kevin Tian <kevin.tian@intel.com>, Eric Auger <eric.auger@redhat.com>,
 Kirti Wankhede <kwankhede@nvidia.com>, Leon Romanovsky <leon@kernel.org>,
 Abhishek Sahu <abhsahu@nvidia.com>, Christoph Hellwig <hch@infradead.org>,
 intel-gvt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-s390@vger.kernel.org, kvm@vger.kernel.org
Date: Fri,  9 Sep 2022 18:22:37 +0800
Message-Id: <20220909102247.67324-6-kevin.tian@intel.com>
X-Mailer: git-send-email 2.21.3
In-Reply-To: <20220909102247.67324-1-kevin.tian@intel.com>
References: <20220909102247.67324-1-kevin.tian@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 05/15] vfio/mdpy: Use the new device life
 cycle helpers
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
Cc: Yi Liu <yi.l.liu@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Yi Liu <yi.l.liu@intel.com>

and manage mdpy_count inside @init/@release.

Signed-off-by: Yi Liu <yi.l.liu@intel.com>
Signed-off-by: Kevin Tian <kevin.tian@intel.com>
Reviewed-by: Jason Gunthorpe <jgg@nvidia.com>
---
 samples/vfio-mdev/mdpy.c | 81 +++++++++++++++++++++++-----------------
 1 file changed, 47 insertions(+), 34 deletions(-)

diff --git a/samples/vfio-mdev/mdpy.c b/samples/vfio-mdev/mdpy.c
index e8c46eb2e246..a07dac16d873 100644
--- a/samples/vfio-mdev/mdpy.c
+++ b/samples/vfio-mdev/mdpy.c
@@ -216,61 +216,77 @@ static int mdpy_reset(struct mdev_state *mdev_state)
 	return 0;
 }
 
-static int mdpy_probe(struct mdev_device *mdev)
+static int mdpy_init_dev(struct vfio_device *vdev)
 {
+	struct mdev_state *mdev_state =
+		container_of(vdev, struct mdev_state, vdev);
+	struct mdev_device *mdev = to_mdev_device(vdev->dev);
 	const struct mdpy_type *type =
 		&mdpy_types[mdev_get_type_group_id(mdev)];
-	struct device *dev = mdev_dev(mdev);
-	struct mdev_state *mdev_state;
 	u32 fbsize;
-	int ret;
+	int ret = -ENOMEM;
 
 	if (mdpy_count >= max_devices)
-		return -ENOMEM;
-
-	mdev_state = kzalloc(sizeof(struct mdev_state), GFP_KERNEL);
-	if (mdev_state == NULL)
-		return -ENOMEM;
-	vfio_init_group_dev(&mdev_state->vdev, &mdev->dev, &mdpy_dev_ops);
+		return ret;
 
 	mdev_state->vconfig = kzalloc(MDPY_CONFIG_SPACE_SIZE, GFP_KERNEL);
-	if (mdev_state->vconfig == NULL) {
-		ret = -ENOMEM;
-		goto err_state;
-	}
+	if (!mdev_state->vconfig)
+		return ret;
 
 	fbsize = roundup_pow_of_two(type->width * type->height * type->bytepp);
 
 	mdev_state->memblk = vmalloc_user(fbsize);
-	if (!mdev_state->memblk) {
-		ret = -ENOMEM;
-		goto err_vconfig;
-	}
-	dev_info(dev, "%s: %s (%dx%d)\n", __func__, type->name, type->width,
-		 type->height);
+	if (!mdev_state->memblk)
+		goto out_vconfig;
 
 	mutex_init(&mdev_state->ops_lock);
 	mdev_state->mdev = mdev;
-	mdev_state->type    = type;
+	mdev_state->type = type;
 	mdev_state->memsize = fbsize;
 	mdpy_create_config_space(mdev_state);
 	mdpy_reset(mdev_state);
 
+	dev_info(vdev->dev, "%s: %s (%dx%d)\n", __func__, type->name, type->width,
+		 type->height);
+
 	mdpy_count++;
+	return 0;
+
+out_vconfig:
+	kfree(mdev_state->vconfig);
+	return ret;
+}
+
+static int mdpy_probe(struct mdev_device *mdev)
+{
+	struct mdev_state *mdev_state;
+	int ret;
+
+	mdev_state = vfio_alloc_device(mdev_state, vdev, &mdev->dev,
+				       &mdpy_dev_ops);
+	if (IS_ERR(mdev_state))
+		return PTR_ERR(mdev_state);
 
 	ret = vfio_register_emulated_iommu_dev(&mdev_state->vdev);
 	if (ret)
-		goto err_mem;
+		goto err_put_vdev;
 	dev_set_drvdata(&mdev->dev, mdev_state);
 	return 0;
-err_mem:
+
+err_put_vdev:
+	vfio_put_device(&mdev_state->vdev);
+	return ret;
+}
+
+static void mdpy_release_dev(struct vfio_device *vdev)
+{
+	struct mdev_state *mdev_state =
+		container_of(vdev, struct mdev_state, vdev);
+
 	vfree(mdev_state->memblk);
-err_vconfig:
 	kfree(mdev_state->vconfig);
-err_state:
-	vfio_uninit_group_dev(&mdev_state->vdev);
-	kfree(mdev_state);
-	return ret;
+	vfio_free_device(vdev);
+	mdpy_count--;
 }
 
 static void mdpy_remove(struct mdev_device *mdev)
@@ -280,12 +296,7 @@ static void mdpy_remove(struct mdev_device *mdev)
 	dev_info(&mdev->dev, "%s\n", __func__);
 
 	vfio_unregister_group_dev(&mdev_state->vdev);
-	vfree(mdev_state->memblk);
-	kfree(mdev_state->vconfig);
-	vfio_uninit_group_dev(&mdev_state->vdev);
-	kfree(mdev_state);
-
-	mdpy_count--;
+	vfio_put_device(&mdev_state->vdev);
 }
 
 static ssize_t mdpy_read(struct vfio_device *vdev, char __user *buf,
@@ -708,6 +719,8 @@ static struct attribute_group *mdev_type_groups[] = {
 };
 
 static const struct vfio_device_ops mdpy_dev_ops = {
+	.init = mdpy_init_dev,
+	.release = mdpy_release_dev,
 	.read = mdpy_read,
 	.write = mdpy_write,
 	.ioctl = mdpy_ioctl,
-- 
2.21.3

