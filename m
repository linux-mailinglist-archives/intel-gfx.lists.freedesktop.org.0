Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7484D57BEBA
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Jul 2022 21:41:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F04F10E58A;
	Wed, 20 Jul 2022 19:41:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34C1210E58A
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Jul 2022 19:41:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1658346080;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ehh4V90wN0RJR9qCy+oaecsD0c4O/PC+hN+Ir98d0Ho=;
 b=XlT8hWmKQcazn9UC/cEMWe1bkxLkc2ENuiUDZKlvwOcdevpycZs2FcqeXkmTVrbuKB8ULh
 BNzog7A21HhqUvl2KOnO2ghNu1Z5NecnIRvCyhgMglf+IHOPs/NpTXf+8HhdJb2qcwujW/
 S0tM6/XKW7xVoqMNEZyEoE9TLBAq6e0=
Received: from mail-il1-f200.google.com (mail-il1-f200.google.com
 [209.85.166.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-462-Fykgz-IgMI6LHAMxLesxfQ-1; Wed, 20 Jul 2022 15:41:17 -0400
X-MC-Unique: Fykgz-IgMI6LHAMxLesxfQ-1
Received: by mail-il1-f200.google.com with SMTP id
 i8-20020a056e020d8800b002d931252904so11923781ilj.23
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Jul 2022 12:41:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=ehh4V90wN0RJR9qCy+oaecsD0c4O/PC+hN+Ir98d0Ho=;
 b=KWShN6BMeN2L0ab0nY1s7Swp66raTPFW9rmZ9eb7pwSIK0X0OLQRQCrx+Jo5UGYTal
 Cmxz0H7PTMd2LsMBj49hcfJILsCuMQHQgGgHsmF5XMmwbn9gGXLE31V1gOfOG+PMlGnW
 Jjtgzj4i03A4X9fYDC9iVptwYe5uDaBFUuB4vqVc8K1L1oxnBDc9OUAkaQY4+F8+8JHA
 YGk1DnRI5it0NnQLMpVFa0m3FfMUp28CFWCCMzgNYdhH4wbFAdYXoqVaLwa5uNA6glCe
 nggxPV75q38JixWDty9s3wkCTX7FaFGpTnu1AAv34fglKyHhLnS/kk9REgS3MdRE0PD7
 rZ0w==
X-Gm-Message-State: AJIora/npyyjoAA5Aazs5juGhDEeJ4fQuFuJVE1wOsQLg7DRuxbFi+ho
 LfvFL/sLPKY/nHtU8ejTuj9pxA00G5V2Osov3Kn57uWxDzdAD8TwKpLm4FhVmDbluGir74H2wwm
 ENuYGeuu5NLKCKXgQdZx4l7I4qD0s
X-Received: by 2002:a05:6e02:1a0c:b0:2dc:8921:a8d9 with SMTP id
 s12-20020a056e021a0c00b002dc8921a8d9mr20755581ild.145.1658346076567; 
 Wed, 20 Jul 2022 12:41:16 -0700 (PDT)
X-Google-Smtp-Source: AGRyM1vYxHlGrytgU3tCmIJ+Uhn7Hc+/RyJhZDLkKiiqtiSiv/P5YPbnk+rkd8QUKXd1S1jL+Xv4Pg==
X-Received: by 2002:a05:6e02:1a0c:b0:2dc:8921:a8d9 with SMTP id
 s12-20020a056e021a0c00b002dc8921a8d9mr20755544ild.145.1658346076213; 
 Wed, 20 Jul 2022 12:41:16 -0700 (PDT)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 g40-20020a022728000000b00339eedc7840sm8267773jaa.94.2022.07.20.12.41.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 Jul 2022 12:41:15 -0700 (PDT)
Date: Wed, 20 Jul 2022 13:41:13 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: Jason Gunthorpe <jgg@nvidia.com>
Message-ID: <20220720134113.4225f9d6.alex.williamson@redhat.com>
In-Reply-To: <1-v4-681e038e30fd+78-vfio_unmap_notif_jgg@nvidia.com>
References: <0-v4-681e038e30fd+78-vfio_unmap_notif_jgg@nvidia.com>
 <1-v4-681e038e30fd+78-vfio_unmap_notif_jgg@nvidia.com>
Organization: Red Hat
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=alex.williamson@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v4 1/2] vfio: Replace the DMA unmapping
 notifier with a callback
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
Cc: kvm@vger.kernel.org, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, Vineeth Vijayan <vneethv@linux.ibm.com>,
 Alexander Gordeev <agordeev@linux.ibm.com>, Christoph Hellwig <hch@lst.de>,
 linux-s390@vger.kernel.org, Matthew Rosato <mjrosato@linux.ibm.com>,
 Halil Pasic <pasic@linux.ibm.com>, Nicolin Chen <nicolinc@nvidia.com>,
 Christian Borntraeger <borntraeger@linux.ibm.com>,
 intel-gfx@lists.freedesktop.org, Tony Krowiak <akrowiak@linux.ibm.com>,
 Eric Farman <farman@linux.ibm.com>, Vasily Gorbik <gor@linux.ibm.com>,
 Heiko Carstens <hca@linux.ibm.com>,
 Harald Freudenberger <freude@linux.ibm.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-gvt-dev@lists.freedesktop.org,
 Jason Herne <jjherne@linux.ibm.com>, Cornelia Huck <cohuck@redhat.com>,
 Peter Oberparleiter <oberpar@linux.ibm.com>,
 Sven Schnelle <svens@linux.ibm.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 19 Jul 2022 21:02:48 -0300
Jason Gunthorpe <jgg@nvidia.com> wrote:
> diff --git a/drivers/s390/crypto/vfio_ap_ops.c b/drivers/s390/crypto/vfio_ap_ops.c
> index a7d2a95796d360..bb1a1677c5c230 100644
> --- a/drivers/s390/crypto/vfio_ap_ops.c
> +++ b/drivers/s390/crypto/vfio_ap_ops.c
> @@ -1226,34 +1226,14 @@ static int vfio_ap_mdev_set_kvm(struct ap_matrix_mdev *matrix_mdev,
>  	return 0;
>  }
>  
> -/**
> - * vfio_ap_mdev_iommu_notifier - IOMMU notifier callback
> - *
> - * @nb: The notifier block
> - * @action: Action to be taken
> - * @data: data associated with the request
> - *
> - * For an UNMAP request, unpin the guest IOVA (the NIB guest address we
> - * pinned before). Other requests are ignored.
> - *
> - * Return: for an UNMAP request, NOFITY_OK; otherwise NOTIFY_DONE.
> - */
> -static int vfio_ap_mdev_iommu_notifier(struct notifier_block *nb,
> -				       unsigned long action, void *data)
> +static void vfio_ap_mdev_dma_unmap(struct vfio_device *vdev, u64 iova,
> +				   u64 length)
>  {
> -	struct ap_matrix_mdev *matrix_mdev;
> -
> -	matrix_mdev = container_of(nb, struct ap_matrix_mdev, iommu_notifier);
> -
> -	if (action == VFIO_IOMMU_NOTIFY_DMA_UNMAP) {
> -		struct vfio_iommu_type1_dma_unmap *unmap = data;
> -		unsigned long g_pfn = unmap->iova >> PAGE_SHIFT;
> -
> -		vfio_unpin_pages(&matrix_mdev->vdev, &g_pfn, 1);
> -		return NOTIFY_OK;
> -	}
> +	struct ap_matrix_mdev *matrix_mdev =
> +		container_of(vdev, struct ap_matrix_mdev, vdev);
> +	unsigned long g_pfn = iova >> PAGE_SHIFT;
>  
> -	return NOTIFY_DONE;
> +	vfio_unpin_pages(&matrix_mdev->vdev, &g_pfn, 1);
>  }
>  
>  /**


I tried to apply this on top of Nicolin's series which results in a
conflict that can be resolved as below:

diff --git a/drivers/s390/crypto/vfio_ap_ops.c b/drivers/s390/crypto/vfio_ap_ops.c
index e8856a7e151c..d7c38c82f694 100644
--- a/drivers/s390/crypto/vfio_ap_ops.c
+++ b/drivers/s390/crypto/vfio_ap_ops.c
@@ -1219,33 +1219,13 @@ static int vfio_ap_mdev_set_kvm(struct ap_matrix_mdev *matrix_mdev,
 	return 0;
 }
 
-/**
- * vfio_ap_mdev_iommu_notifier - IOMMU notifier callback
- *
- * @nb: The notifier block
- * @action: Action to be taken
- * @data: data associated with the request
- *
- * For an UNMAP request, unpin the guest IOVA (the NIB guest address we
- * pinned before). Other requests are ignored.
- *
- * Return: for an UNMAP request, NOFITY_OK; otherwise NOTIFY_DONE.
- */
-static int vfio_ap_mdev_iommu_notifier(struct notifier_block *nb,
-				       unsigned long action, void *data)
+static void vfio_ap_mdev_dma_unmap(struct vfio_device *vdev, u64 iova,
+				   u64 length)
 {
-	struct ap_matrix_mdev *matrix_mdev;
-
-	matrix_mdev = container_of(nb, struct ap_matrix_mdev, iommu_notifier);
-
-	if (action == VFIO_IOMMU_NOTIFY_DMA_UNMAP) {
-		struct vfio_iommu_type1_dma_unmap *unmap = data;
-
-		vfio_unpin_pages(&matrix_mdev->vdev, unmap->iova, 1);
-		return NOTIFY_OK;
-	}
+	struct ap_matrix_mdev *matrix_mdev =
+		container_of(vdev, struct ap_matrix_mdev, vdev);
 
-	return NOTIFY_DONE;
+	vfio_unpin_pages(&matrix_mdev->vdev, iova, 1);
 }
 
 /**

ie. we don't need the gfn, we only need the iova.

However then I start to wonder why we're passing in 1 for the number of
pages because this previously notifier, now callback is called for the
entire vfio_dma range when we find any pinned pages.  It makes no sense for
a driver to assume that the first iova is pinned and is the only pinned
page.

ccw has the same issue:

static void vfio_ccw_dma_unmap(struct vfio_device *vdev, u64 iova, u64 length)
{
        struct vfio_ccw_private *private =
                container_of(vdev, struct vfio_ccw_private, vdev);

        /* Drivers MUST unpin pages in response to an invalidation. */
        if (!cp_iova_pinned(&private->cp, iova))
                return;

        vfio_ccw_mdev_reset(private);
}

Entirely ignoring the length arg.

It seems only GVT-g has this correct to actually look through the
extent of the range being unmapped:

static void intel_vgpu_dma_unmap(struct vfio_device *vfio_dev, u64 iova,
                                 u64 length)
{
        struct intel_vgpu *vgpu = vfio_dev_to_vgpu(vfio_dev);
        struct gvt_dma *entry;
        u64 iov_pfn = iova >> PAGE_SHIFT;
        u64 end_iov_pfn = iov_pfn + length / PAGE_SIZE;

        mutex_lock(&vgpu->cache_lock);
        for (; iov_pfn < end_iov_pfn; iov_pfn++) {
                entry = __gvt_cache_find_gfn(vgpu, iov_pfn);
                if (!entry)
                        continue;

                gvt_dma_unmap_page(vgpu, entry->gfn, entry->dma_addr,
                                   entry->size);
                __gvt_cache_remove_entry(vgpu, entry);
        }
        mutex_unlock(&vgpu->cache_lock);
}

Should ap and ccw implementations of .dma_unmap just be replaced with a
BUG_ON(1)?  Thanks,

Alex

