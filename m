Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39ECA5B2C7B
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Sep 2022 05:06:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C844810EA79;
	Fri,  9 Sep 2022 03:05:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8D6610EA33;
 Fri,  9 Sep 2022 03:05:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662692719; x=1694228719;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Mdk7i5r1Q4jvMSjb8yKHvxvRcwp1UXLwmv8Eh1azr44=;
 b=i7d8ptxVrduQ2z6dI+sNeFo5lehRDNXPbUY/M2Xb0zPp9+/U2jQ2+gX8
 2t0QwuLU2GYuVR6gS357scmRQrksE1V7koc2+h3N+NqAkXKxUwVTuEkxw
 o8EVC54YnPNyOksxTJpbwtDvtoyHZSFC7U4JuwALEPLE9+Y+1gpZXsP88
 eAOjDxxWeb5M/5c0FsqfmQ+X1BygusYXXSFxUpMp1LBFTJl81/kHZTaNu
 rsi4NkHNfUnAv4lPbUvkW41Mx6oclzYPjrTE8L6KJJaYkQvMV3RstHgbH
 wyHAH+gCHkk+pO0/cXIPDlWH9iZQG1IikuUqpZoENM9/sK+dYuH8Ki+gD A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10464"; a="280410132"
X-IronPort-AV: E=Sophos;i="5.93,300,1654585200"; d="scan'208";a="280410132"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2022 20:04:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,300,1654585200"; d="scan'208";a="740909027"
Received: from sqa-gate.sh.intel.com (HELO michael.clx.dev.tsp.org)
 ([10.239.48.212])
 by orsmga004.jf.intel.com with ESMTP; 08 Sep 2022 20:04:40 -0700
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
Date: Fri,  9 Sep 2022 18:22:40 +0800
Message-Id: <20220909102247.67324-9-kevin.tian@intel.com>
X-Mailer: git-send-email 2.21.3
In-Reply-To: <20220909102247.67324-1-kevin.tian@intel.com>
References: <20220909102247.67324-1-kevin.tian@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 08/15] drm/i915/gvt: Use the new device life
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

Move vfio_device to the start of intel_vgpu as required by the new
helpers.

Change intel_gvt_create_vgpu() to use intel_vgpu as the first param
as other vgpu helpers do.

Signed-off-by: Kevin Tian <kevin.tian@intel.com>
Reviewed-by: Jason Gunthorpe <jgg@nvidia.com>
Reviewed-by: Zhenyu Wang <zhenyuw@linux.intel.com>
---
 drivers/gpu/drm/i915/gvt/gvt.h   |  5 ++-
 drivers/gpu/drm/i915/gvt/kvmgt.c | 52 ++++++++++++++++++++++----------
 drivers/gpu/drm/i915/gvt/vgpu.c  | 33 ++++++++------------
 3 files changed, 50 insertions(+), 40 deletions(-)

diff --git a/drivers/gpu/drm/i915/gvt/gvt.h b/drivers/gpu/drm/i915/gvt/gvt.h
index 705689e64011..89fab7896fc6 100644
--- a/drivers/gpu/drm/i915/gvt/gvt.h
+++ b/drivers/gpu/drm/i915/gvt/gvt.h
@@ -172,6 +172,7 @@ struct intel_vgpu_submission {
 #define KVMGT_DEBUGFS_FILENAME		"kvmgt_nr_cache_entries"
 
 struct intel_vgpu {
+	struct vfio_device vfio_device;
 	struct intel_gvt *gvt;
 	struct mutex vgpu_lock;
 	int id;
@@ -211,7 +212,6 @@ struct intel_vgpu {
 
 	u32 scan_nonprivbb;
 
-	struct vfio_device vfio_device;
 	struct vfio_region *region;
 	int num_regions;
 	struct eventfd_ctx *intx_trigger;
@@ -494,8 +494,7 @@ void intel_gvt_clean_vgpu_types(struct intel_gvt *gvt);
 
 struct intel_vgpu *intel_gvt_create_idle_vgpu(struct intel_gvt *gvt);
 void intel_gvt_destroy_idle_vgpu(struct intel_vgpu *vgpu);
-struct intel_vgpu *intel_gvt_create_vgpu(struct intel_gvt *gvt,
-					 struct intel_vgpu_type *type);
+int intel_gvt_create_vgpu(struct intel_vgpu *vgpu, struct intel_vgpu_type *type);
 void intel_gvt_destroy_vgpu(struct intel_vgpu *vgpu);
 void intel_gvt_release_vgpu(struct intel_vgpu *vgpu);
 void intel_gvt_reset_vgpu_locked(struct intel_vgpu *vgpu, bool dmlr,
diff --git a/drivers/gpu/drm/i915/gvt/kvmgt.c b/drivers/gpu/drm/i915/gvt/kvmgt.c
index e3cd58946477..41bba40feef8 100644
--- a/drivers/gpu/drm/i915/gvt/kvmgt.c
+++ b/drivers/gpu/drm/i915/gvt/kvmgt.c
@@ -1546,7 +1546,33 @@ static const struct attribute_group *intel_vgpu_groups[] = {
 	NULL,
 };
 
+static int intel_vgpu_init_dev(struct vfio_device *vfio_dev)
+{
+	struct mdev_device *mdev = to_mdev_device(vfio_dev->dev);
+	struct device *pdev = mdev_parent_dev(mdev);
+	struct intel_gvt *gvt = kdev_to_i915(pdev)->gvt;
+	struct intel_vgpu_type *type;
+	struct intel_vgpu *vgpu = vfio_dev_to_vgpu(vfio_dev);
+
+	type = &gvt->types[mdev_get_type_group_id(mdev)];
+	if (!type)
+		return -EINVAL;
+
+	vgpu->gvt = gvt;
+	return intel_gvt_create_vgpu(vgpu, type);
+}
+
+static void intel_vgpu_release_dev(struct vfio_device *vfio_dev)
+{
+	struct intel_vgpu *vgpu = vfio_dev_to_vgpu(vfio_dev);
+
+	intel_gvt_destroy_vgpu(vgpu);
+	vfio_free_device(vfio_dev);
+}
+
 static const struct vfio_device_ops intel_vgpu_dev_ops = {
+	.init		= intel_vgpu_init_dev,
+	.release	= intel_vgpu_release_dev,
 	.open_device	= intel_vgpu_open_device,
 	.close_device	= intel_vgpu_close_device,
 	.read		= intel_vgpu_read,
@@ -1558,35 +1584,28 @@ static const struct vfio_device_ops intel_vgpu_dev_ops = {
 
 static int intel_vgpu_probe(struct mdev_device *mdev)
 {
-	struct device *pdev = mdev_parent_dev(mdev);
-	struct intel_gvt *gvt = kdev_to_i915(pdev)->gvt;
-	struct intel_vgpu_type *type;
 	struct intel_vgpu *vgpu;
 	int ret;
 
-	type = &gvt->types[mdev_get_type_group_id(mdev)];
-	if (!type)
-		return -EINVAL;
-
-	vgpu = intel_gvt_create_vgpu(gvt, type);
+	vgpu = vfio_alloc_device(intel_vgpu, vfio_device, &mdev->dev,
+				 &intel_vgpu_dev_ops);
 	if (IS_ERR(vgpu)) {
 		gvt_err("failed to create intel vgpu: %ld\n", PTR_ERR(vgpu));
 		return PTR_ERR(vgpu);
 	}
 
-	vfio_init_group_dev(&vgpu->vfio_device, &mdev->dev,
-			    &intel_vgpu_dev_ops);
-
 	dev_set_drvdata(&mdev->dev, vgpu);
 	ret = vfio_register_emulated_iommu_dev(&vgpu->vfio_device);
-	if (ret) {
-		intel_gvt_destroy_vgpu(vgpu);
-		return ret;
-	}
+	if (ret)
+		goto out_put_vdev;
 
 	gvt_dbg_core("intel_vgpu_create succeeded for mdev: %s\n",
 		     dev_name(mdev_dev(mdev)));
 	return 0;
+
+out_put_vdev:
+	vfio_put_device(&vgpu->vfio_device);
+	return ret;
 }
 
 static void intel_vgpu_remove(struct mdev_device *mdev)
@@ -1595,7 +1614,8 @@ static void intel_vgpu_remove(struct mdev_device *mdev)
 
 	if (WARN_ON_ONCE(vgpu->attached))
 		return;
-	intel_gvt_destroy_vgpu(vgpu);
+
+	vfio_put_device(&vgpu->vfio_device);
 }
 
 static struct mdev_driver intel_vgpu_mdev_driver = {
diff --git a/drivers/gpu/drm/i915/gvt/vgpu.c b/drivers/gpu/drm/i915/gvt/vgpu.c
index 46da19b3225d..5c533fbc2c8d 100644
--- a/drivers/gpu/drm/i915/gvt/vgpu.c
+++ b/drivers/gpu/drm/i915/gvt/vgpu.c
@@ -302,8 +302,6 @@ void intel_gvt_destroy_vgpu(struct intel_vgpu *vgpu)
 	mutex_lock(&gvt->lock);
 	intel_gvt_update_vgpu_types(gvt);
 	mutex_unlock(&gvt->lock);
-
-	vfree(vgpu);
 }
 
 #define IDLE_VGPU_IDR 0
@@ -363,28 +361,23 @@ void intel_gvt_destroy_idle_vgpu(struct intel_vgpu *vgpu)
 	vfree(vgpu);
 }
 
-static struct intel_vgpu *__intel_gvt_create_vgpu(struct intel_gvt *gvt,
-		struct intel_vgpu_creation_params *param)
+static int __intel_gvt_create_vgpu(struct intel_vgpu *vgpu,
+				   struct intel_vgpu_creation_params *param)
 {
+	struct intel_gvt *gvt = vgpu->gvt;
 	struct drm_i915_private *dev_priv = gvt->gt->i915;
-	struct intel_vgpu *vgpu;
 	int ret;
 
 	gvt_dbg_core("low %llu MB high %llu MB fence %llu\n",
 			param->low_gm_sz, param->high_gm_sz,
 			param->fence_sz);
 
-	vgpu = vzalloc(sizeof(*vgpu));
-	if (!vgpu)
-		return ERR_PTR(-ENOMEM);
-
 	ret = idr_alloc(&gvt->vgpu_idr, vgpu, IDLE_VGPU_IDR + 1, GVT_MAX_VGPU,
 		GFP_KERNEL);
 	if (ret < 0)
-		goto out_free_vgpu;
+		return ret;
 
 	vgpu->id = ret;
-	vgpu->gvt = gvt;
 	vgpu->sched_ctl.weight = param->weight;
 	mutex_init(&vgpu->vgpu_lock);
 	mutex_init(&vgpu->dmabuf_lock);
@@ -437,7 +430,7 @@ static struct intel_vgpu *__intel_gvt_create_vgpu(struct intel_gvt *gvt,
 	if (ret)
 		goto out_clean_sched_policy;
 
-	return vgpu;
+	return 0;
 
 out_clean_sched_policy:
 	intel_vgpu_clean_sched_policy(vgpu);
@@ -455,9 +448,7 @@ static struct intel_vgpu *__intel_gvt_create_vgpu(struct intel_gvt *gvt,
 	intel_vgpu_clean_mmio(vgpu);
 out_clean_idr:
 	idr_remove(&gvt->vgpu_idr, vgpu->id);
-out_free_vgpu:
-	vfree(vgpu);
-	return ERR_PTR(ret);
+	return ret;
 }
 
 /**
@@ -470,11 +461,11 @@ static struct intel_vgpu *__intel_gvt_create_vgpu(struct intel_gvt *gvt,
  * Returns:
  * pointer to intel_vgpu, error pointer if failed.
  */
-struct intel_vgpu *intel_gvt_create_vgpu(struct intel_gvt *gvt,
-				struct intel_vgpu_type *type)
+int intel_gvt_create_vgpu(struct intel_vgpu *vgpu, struct intel_vgpu_type *type)
 {
+	struct intel_gvt *gvt = vgpu->gvt;
 	struct intel_vgpu_creation_params param;
-	struct intel_vgpu *vgpu;
+	int ret;
 
 	param.primary = 1;
 	param.low_gm_sz = type->low_gm_size;
@@ -488,15 +479,15 @@ struct intel_vgpu *intel_gvt_create_vgpu(struct intel_gvt *gvt,
 	param.high_gm_sz = BYTES_TO_MB(param.high_gm_sz);
 
 	mutex_lock(&gvt->lock);
-	vgpu = __intel_gvt_create_vgpu(gvt, &param);
-	if (!IS_ERR(vgpu)) {
+	ret = __intel_gvt_create_vgpu(vgpu, &param);
+	if (!ret) {
 		/* calculate left instance change for types */
 		intel_gvt_update_vgpu_types(gvt);
 		intel_gvt_update_reg_whitelist(vgpu);
 	}
 	mutex_unlock(&gvt->lock);
 
-	return vgpu;
+	return ret;
 }
 
 /**
-- 
2.21.3

