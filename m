Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B6A3A52B3C1
	for <lists+intel-gfx@lfdr.de>; Wed, 18 May 2022 09:48:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05300113E58;
	Wed, 18 May 2022 07:48:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bombadil.infradead.org (bombadil.infradead.org
 [IPv6:2607:7c80:54:e::133])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1E22113E41;
 Wed, 18 May 2022 07:47:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=aexzG6QT7OwxTkVV+awVYjuMAu3L2V7mGlqxPgNrxYU=; b=EeO0qMprxdclZ/T8O5w4wRGgBl
 yK0/SLxrtiPXqvDFHbKQtiWVdp64UUltfCI1iRQnDWSYMd3RlVxHG9ta+pJwcJCSTA/mKQE15m0lq
 erOEmg0Id8OWhU5wRqbxttRf+G8qjAbJZM5s/iK87aHb2mOwadXq9j5/qaxRJ2yjAzP6ANeXODmGd
 U+YNi9VopdTaZoHirm7hf0+1oivBlF9vpqLLI8c+suSdyS0GXyVhx5rjrdFfa5Jg3vYrksBV+MEkI
 04rYnOCMwrm+a1zIiUk4IyLU+z3bDUxaENtVN4TbyAFLQHxTwu91d2cZ8qIWq8G/p5d+e9e5Rs7rn
 XOdHS+KQ==;
Received: from hch by bombadil.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1nrEPR-000EBP-Sb; Wed, 18 May 2022 07:47:53 +0000
Date: Wed, 18 May 2022 00:47:53 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Matthew Rosato <mjrosato@linux.ibm.com>
Message-ID: <YoSkqWl7YkqYksG5@infradead.org>
References: <20220517180851.166538-1-mjrosato@linux.ibm.com>
 <20220517180851.166538-2-mjrosato@linux.ibm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220517180851.166538-2-mjrosato@linux.ibm.com>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
Subject: Re: [Intel-gfx] [PATCH 1/1] vfio: remove VFIO_GROUP_NOTIFY_SET_KVM
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
Cc: jjherne@linux.ibm.com, akrowiak@linux.ibm.com, kvm@vger.kernel.org,
 hch@infradead.org, linux-s390@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 cohuck@redhat.com, linux-kernel@vger.kernel.org, pasic@linux.ibm.com,
 jgg@nvidia.com, borntraeger@linux.ibm.com, intel-gvt-dev@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

With this the release_work in gvt can go away as well:

diff --git a/drivers/gpu/drm/i915/gvt/gvt.h b/drivers/gpu/drm/i915/gvt/gvt.h
index 633acfcf76bf2..aee1a45da74bc 100644
--- a/drivers/gpu/drm/i915/gvt/gvt.h
+++ b/drivers/gpu/drm/i915/gvt/gvt.h
@@ -227,7 +227,6 @@ struct intel_vgpu {
 	struct mutex cache_lock;
 
 	struct notifier_block iommu_notifier;
-	struct work_struct release_work;
 	atomic_t released;
 
 	struct kvm_page_track_notifier_node track_node;
diff --git a/drivers/gpu/drm/i915/gvt/kvmgt.c b/drivers/gpu/drm/i915/gvt/kvmgt.c
index b317ae4cc7d2d..917617d7599a9 100644
--- a/drivers/gpu/drm/i915/gvt/kvmgt.c
+++ b/drivers/gpu/drm/i915/gvt/kvmgt.c
@@ -228,8 +228,6 @@ static void intel_gvt_cleanup_vgpu_type_groups(struct intel_gvt *gvt)
 	}
 }
 
-static void intel_vgpu_release_work(struct work_struct *work);
-
 static void gvt_unpin_guest_page(struct intel_vgpu *vgpu, unsigned long gfn,
 		unsigned long size)
 {
@@ -850,8 +848,9 @@ static void intel_vgpu_release_msi_eventfd_ctx(struct intel_vgpu *vgpu)
 	}
 }
 
-static void __intel_vgpu_release(struct intel_vgpu *vgpu)
+static void intel_vgpu_close_device(struct vfio_device *vfio_dev)
 {
+	struct intel_vgpu *vgpu = vfio_dev_to_vgpu(vfio_dev);
 	struct drm_i915_private *i915 = vgpu->gvt->gt->i915;
 	int ret;
 
@@ -880,19 +879,6 @@ static void __intel_vgpu_release(struct intel_vgpu *vgpu)
 	vgpu->attached = false;
 }
 
-static void intel_vgpu_close_device(struct vfio_device *vfio_dev)
-{
-	__intel_vgpu_release(vfio_dev_to_vgpu(vfio_dev));
-}
-
-static void intel_vgpu_release_work(struct work_struct *work)
-{
-	struct intel_vgpu *vgpu =
-		container_of(work, struct intel_vgpu, release_work);
-
-	__intel_vgpu_release(vgpu);
-}
-
 static u64 intel_vgpu_get_bar_addr(struct intel_vgpu *vgpu, int bar)
 {
 	u32 start_lo, start_hi;
@@ -1639,7 +1625,6 @@ static int intel_vgpu_probe(struct mdev_device *mdev)
 		return PTR_ERR(vgpu);
 	}
 
-	INIT_WORK(&vgpu->release_work, intel_vgpu_release_work);
 	vfio_init_group_dev(&vgpu->vfio_device, &mdev->dev,
 			    &intel_vgpu_dev_ops);
 
