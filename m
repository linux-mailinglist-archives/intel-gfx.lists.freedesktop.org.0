Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13D965BF47A
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Sep 2022 05:27:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13E2210E589;
	Wed, 21 Sep 2022 03:27:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A11610E586;
 Wed, 21 Sep 2022 03:26:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663730816; x=1695266816;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=skgmGscZ2kyxbcP3Qrb84b9U5QJneyv4cZnCXlCPC/k=;
 b=nyHkuINS3cvPt3/7VN3nigdZlzEV3l6bQsZ9paeAalIRArQ5HFFURof8
 5FvdeFYHfa81uLHDKbEp5loX6If5CIUvAl92r2eIobKUFF7VlEhK+OWFc
 8qnZpjTp+JnAida0SAIOIUrrv/WpFSEkAzCLqTTHiLoHAOReSTL2yNviB
 nNMlRKGLZ5lQYkfCB2GspSXxlEyaTvQD7laeLGxLnJwqJ4wG9dtre9pLZ
 EOSQzBH5HWqG7yM0vFYNS36OP2wmw8i6aa5sfw8f9KS0wb20bgEMpZPQ8
 DOw79Lq3Fx9+Jjr1/RyVhC/3dPzDDVPzdryvRGGii+TaGyLZ2yr+QSnUr w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10476"; a="279612519"
X-IronPort-AV: E=Sophos;i="5.93,332,1654585200"; d="scan'208";a="279612519"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2022 20:26:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,332,1654585200"; d="scan'208";a="761574191"
Received: from sqa-gate.sh.intel.com (HELO michael.clx.dev.tsp.org)
 ([10.239.48.212])
 by fmsmga001.fm.intel.com with ESMTP; 20 Sep 2022 20:26:47 -0700
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
Date: Wed, 21 Sep 2022 18:43:50 +0800
Message-Id: <20220921104401.38898-5-kevin.tian@intel.com>
X-Mailer: git-send-email 2.21.3
In-Reply-To: <20220921104401.38898-1-kevin.tian@intel.com>
References: <20220921104401.38898-1-kevin.tian@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 04/15] vfio/hisi_acc: Use the new device life
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

Tidy up @probe so all migration specific initialization logic is moved
to migration specific @init callback.

Remove vfio_pci_core_{un}init_device() given no user now.

Signed-off-by: Yi Liu <yi.l.liu@intel.com>
Signed-off-by: Kevin Tian <kevin.tian@intel.com>
Reviewed-by: Jason Gunthorpe <jgg@nvidia.com>
Reviewed-by: Shameer Kolothum <shameerali.kolothum.thodi@huawei.com>
---
 .../vfio/pci/hisilicon/hisi_acc_vfio_pci.c    | 80 +++++++++----------
 drivers/vfio/pci/vfio_pci_core.c              | 30 -------
 include/linux/vfio_pci_core.h                 |  4 -
 3 files changed, 37 insertions(+), 77 deletions(-)

diff --git a/drivers/vfio/pci/hisilicon/hisi_acc_vfio_pci.c b/drivers/vfio/pci/hisilicon/hisi_acc_vfio_pci.c
index 258cae0863ea..47174e2b61bd 100644
--- a/drivers/vfio/pci/hisilicon/hisi_acc_vfio_pci.c
+++ b/drivers/vfio/pci/hisilicon/hisi_acc_vfio_pci.c
@@ -1213,8 +1213,28 @@ static const struct vfio_migration_ops hisi_acc_vfio_pci_migrn_state_ops = {
 	.migration_get_state = hisi_acc_vfio_pci_get_device_state,
 };
 
+static int hisi_acc_vfio_pci_migrn_init_dev(struct vfio_device *core_vdev)
+{
+	struct hisi_acc_vf_core_device *hisi_acc_vdev = container_of(core_vdev,
+			struct hisi_acc_vf_core_device, core_device.vdev);
+	struct pci_dev *pdev = to_pci_dev(core_vdev->dev);
+	struct hisi_qm *pf_qm = hisi_acc_get_pf_qm(pdev);
+
+	hisi_acc_vdev->vf_id = pci_iov_vf_id(pdev) + 1;
+	hisi_acc_vdev->pf_qm = pf_qm;
+	hisi_acc_vdev->vf_dev = pdev;
+	mutex_init(&hisi_acc_vdev->state_mutex);
+
+	core_vdev->migration_flags = VFIO_MIGRATION_STOP_COPY;
+	core_vdev->mig_ops = &hisi_acc_vfio_pci_migrn_state_ops;
+
+	return vfio_pci_core_init_dev(core_vdev);
+}
+
 static const struct vfio_device_ops hisi_acc_vfio_pci_migrn_ops = {
 	.name = "hisi-acc-vfio-pci-migration",
+	.init = hisi_acc_vfio_pci_migrn_init_dev,
+	.release = vfio_pci_core_release_dev,
 	.open_device = hisi_acc_vfio_pci_open_device,
 	.close_device = hisi_acc_vfio_pci_close_device,
 	.ioctl = hisi_acc_vfio_pci_ioctl,
@@ -1228,6 +1248,8 @@ static const struct vfio_device_ops hisi_acc_vfio_pci_migrn_ops = {
 
 static const struct vfio_device_ops hisi_acc_vfio_pci_ops = {
 	.name = "hisi-acc-vfio-pci",
+	.init = vfio_pci_core_init_dev,
+	.release = vfio_pci_core_release_dev,
 	.open_device = hisi_acc_vfio_pci_open_device,
 	.close_device = vfio_pci_core_close_device,
 	.ioctl = vfio_pci_core_ioctl,
@@ -1239,63 +1261,36 @@ static const struct vfio_device_ops hisi_acc_vfio_pci_ops = {
 	.match = vfio_pci_core_match,
 };
 
-static int
-hisi_acc_vfio_pci_migrn_init(struct hisi_acc_vf_core_device *hisi_acc_vdev,
-			     struct pci_dev *pdev, struct hisi_qm *pf_qm)
-{
-	int vf_id;
-
-	vf_id = pci_iov_vf_id(pdev);
-	if (vf_id < 0)
-		return vf_id;
-
-	hisi_acc_vdev->vf_id = vf_id + 1;
-	hisi_acc_vdev->core_device.vdev.migration_flags =
-					VFIO_MIGRATION_STOP_COPY;
-	hisi_acc_vdev->pf_qm = pf_qm;
-	hisi_acc_vdev->vf_dev = pdev;
-	mutex_init(&hisi_acc_vdev->state_mutex);
-
-	return 0;
-}
-
 static int hisi_acc_vfio_pci_probe(struct pci_dev *pdev, const struct pci_device_id *id)
 {
 	struct hisi_acc_vf_core_device *hisi_acc_vdev;
+	const struct vfio_device_ops *ops = &hisi_acc_vfio_pci_ops;
 	struct hisi_qm *pf_qm;
+	int vf_id;
 	int ret;
 
-	hisi_acc_vdev = kzalloc(sizeof(*hisi_acc_vdev), GFP_KERNEL);
-	if (!hisi_acc_vdev)
-		return -ENOMEM;
-
 	pf_qm = hisi_acc_get_pf_qm(pdev);
 	if (pf_qm && pf_qm->ver >= QM_HW_V3) {
-		ret = hisi_acc_vfio_pci_migrn_init(hisi_acc_vdev, pdev, pf_qm);
-		if (!ret) {
-			vfio_pci_core_init_device(&hisi_acc_vdev->core_device, pdev,
-						  &hisi_acc_vfio_pci_migrn_ops);
-			hisi_acc_vdev->core_device.vdev.mig_ops =
-					&hisi_acc_vfio_pci_migrn_state_ops;
-		} else {
+		vf_id = pci_iov_vf_id(pdev);
+		if (vf_id >= 0)
+			ops = &hisi_acc_vfio_pci_migrn_ops;
+		else
 			pci_warn(pdev, "migration support failed, continue with generic interface\n");
-			vfio_pci_core_init_device(&hisi_acc_vdev->core_device, pdev,
-						  &hisi_acc_vfio_pci_ops);
-		}
-	} else {
-		vfio_pci_core_init_device(&hisi_acc_vdev->core_device, pdev,
-					  &hisi_acc_vfio_pci_ops);
 	}
 
+	hisi_acc_vdev = vfio_alloc_device(hisi_acc_vf_core_device,
+					  core_device.vdev, &pdev->dev, ops);
+	if (IS_ERR(hisi_acc_vdev))
+		return PTR_ERR(hisi_acc_vdev);
+
 	dev_set_drvdata(&pdev->dev, &hisi_acc_vdev->core_device);
 	ret = vfio_pci_core_register_device(&hisi_acc_vdev->core_device);
 	if (ret)
-		goto out_free;
+		goto out_put_vdev;
 	return 0;
 
-out_free:
-	vfio_pci_core_uninit_device(&hisi_acc_vdev->core_device);
-	kfree(hisi_acc_vdev);
+out_put_vdev:
+	vfio_put_device(&hisi_acc_vdev->core_device.vdev);
 	return ret;
 }
 
@@ -1304,8 +1299,7 @@ static void hisi_acc_vfio_pci_remove(struct pci_dev *pdev)
 	struct hisi_acc_vf_core_device *hisi_acc_vdev = hisi_acc_drvdata(pdev);
 
 	vfio_pci_core_unregister_device(&hisi_acc_vdev->core_device);
-	vfio_pci_core_uninit_device(&hisi_acc_vdev->core_device);
-	kfree(hisi_acc_vdev);
+	vfio_put_device(&hisi_acc_vdev->core_device.vdev);
 }
 
 static const struct pci_device_id hisi_acc_vfio_pci_table[] = {
diff --git a/drivers/vfio/pci/vfio_pci_core.c b/drivers/vfio/pci/vfio_pci_core.c
index 77d33739c6e8..59a28251bb0b 100644
--- a/drivers/vfio/pci/vfio_pci_core.c
+++ b/drivers/vfio/pci/vfio_pci_core.c
@@ -2113,36 +2113,6 @@ void vfio_pci_core_release_dev(struct vfio_device *core_vdev)
 }
 EXPORT_SYMBOL_GPL(vfio_pci_core_release_dev);
 
-void vfio_pci_core_init_device(struct vfio_pci_core_device *vdev,
-			       struct pci_dev *pdev,
-			       const struct vfio_device_ops *vfio_pci_ops)
-{
-	vfio_init_group_dev(&vdev->vdev, &pdev->dev, vfio_pci_ops);
-	vdev->pdev = pdev;
-	vdev->irq_type = VFIO_PCI_NUM_IRQS;
-	mutex_init(&vdev->igate);
-	spin_lock_init(&vdev->irqlock);
-	mutex_init(&vdev->ioeventfds_lock);
-	INIT_LIST_HEAD(&vdev->dummy_resources_list);
-	INIT_LIST_HEAD(&vdev->ioeventfds_list);
-	mutex_init(&vdev->vma_lock);
-	INIT_LIST_HEAD(&vdev->vma_list);
-	INIT_LIST_HEAD(&vdev->sriov_pfs_item);
-	init_rwsem(&vdev->memory_lock);
-}
-EXPORT_SYMBOL_GPL(vfio_pci_core_init_device);
-
-void vfio_pci_core_uninit_device(struct vfio_pci_core_device *vdev)
-{
-	mutex_destroy(&vdev->igate);
-	mutex_destroy(&vdev->ioeventfds_lock);
-	mutex_destroy(&vdev->vma_lock);
-	vfio_uninit_group_dev(&vdev->vdev);
-	kfree(vdev->region);
-	kfree(vdev->pm_save);
-}
-EXPORT_SYMBOL_GPL(vfio_pci_core_uninit_device);
-
 int vfio_pci_core_register_device(struct vfio_pci_core_device *vdev)
 {
 	struct pci_dev *pdev = vdev->pdev;
diff --git a/include/linux/vfio_pci_core.h b/include/linux/vfio_pci_core.h
index 0499ea836058..367fd79226a3 100644
--- a/include/linux/vfio_pci_core.h
+++ b/include/linux/vfio_pci_core.h
@@ -106,13 +106,9 @@ int vfio_pci_core_register_dev_region(struct vfio_pci_core_device *vdev,
 void vfio_pci_core_set_params(bool nointxmask, bool is_disable_vga,
 			      bool is_disable_idle_d3);
 void vfio_pci_core_close_device(struct vfio_device *core_vdev);
-void vfio_pci_core_init_device(struct vfio_pci_core_device *vdev,
-			       struct pci_dev *pdev,
-			       const struct vfio_device_ops *vfio_pci_ops);
 int vfio_pci_core_init_dev(struct vfio_device *core_vdev);
 void vfio_pci_core_release_dev(struct vfio_device *core_vdev);
 int vfio_pci_core_register_device(struct vfio_pci_core_device *vdev);
-void vfio_pci_core_uninit_device(struct vfio_pci_core_device *vdev);
 void vfio_pci_core_unregister_device(struct vfio_pci_core_device *vdev);
 extern const struct pci_error_handlers vfio_pci_core_err_handlers;
 int vfio_pci_core_sriov_configure(struct vfio_pci_core_device *vdev,
-- 
2.21.3

