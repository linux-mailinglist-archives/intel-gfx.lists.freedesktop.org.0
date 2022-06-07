Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CDCDE53F5A1
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jun 2022 07:48:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB432112D70;
	Tue,  7 Jun 2022 05:48:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 511 seconds by postgrey-1.36 at gabe;
 Tue, 07 Jun 2022 05:48:31 UTC
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2801C89F24;
 Tue,  7 Jun 2022 05:48:31 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id 4704568AFE; Tue,  7 Jun 2022 07:39:56 +0200 (CEST)
Date: Tue, 7 Jun 2022 07:39:55 +0200
From: Christoph Hellwig <hch@lst.de>
To: Jason Gunthorpe <jgg@nvidia.com>
Message-ID: <20220607053955.GA8508@lst.de>
References: <0-v1-896844109f36+a-vfio_unmap_notif_jgg@nvidia.com>
 <1-v1-896844109f36+a-vfio_unmap_notif_jgg@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1-v1-896844109f36+a-vfio_unmap_notif_jgg@nvidia.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
Subject: Re: [Intel-gfx] [PATCH 1/2] vfio: Replace the DMA unmapping
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
 Halil Pasic <pasic@linux.ibm.com>,
 Christian Borntraeger <borntraeger@linux.ibm.com>,
 intel-gfx@lists.freedesktop.org, Jason Herne <jjherne@linux.ibm.com>,
 Eric Farman <farman@linux.ibm.com>, Vasily Gorbik <gor@linux.ibm.com>,
 Heiko Carstens <hca@linux.ibm.com>,
 Harald Freudenberger <freude@linux.ibm.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-gvt-dev@lists.freedesktop.org,
 Tony Krowiak <akrowiak@linux.ibm.com>, Cornelia Huck <cohuck@redhat.com>,
 Peter Oberparleiter <oberpar@linux.ibm.com>,
 Sven Schnelle <svens@linux.ibm.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jun 06, 2022 at 09:34:35PM -0300, Jason Gunthorpe wrote:
> +static void intel_vgpu_dma_unmap(struct vfio_device *vfio_dev, u64 iova,
> +				 u64 length)
>  {
> +	struct intel_vgpu *vgpu = vfio_dev_to_vgpu(vfio_dev);
> +	struct gvt_dma *entry;
> +	u64 iov_pfn, end_iov_pfn;
>  
> +	iov_pfn = iova >> PAGE_SHIFT;
> +	end_iov_pfn = iov_pfn + length / PAGE_SIZE;

I'd just initialize these at declaration time.  The mix between
shifting and division here is also kind weird, but we probably
shouldn't change too much from the original version.

> +	/* Vendor drivers MUST unpin pages in response to an invalidation. */

s/Vendor//g

>  /**
> + * vfio_ap_mdev_dma_unmap - Notifier that IOVA has been unmapped
> + * @vdev: The VFIO device
> + * @unmap: IOVA range unmapped
>   *
> + * Unpin the guest IOVA (the NIB guest address we pinned before).
>   */

kerneldoc comments for method instances are a bit silly..

> +static int vfio_iommu_notifier(struct notifier_block *nb, unsigned long action,
> +			       void *data)
> +{
> +	struct vfio_device *vfio_device =
> +		container_of(nb, struct vfio_device, iommu_nb);
> +	struct vfio_iommu_type1_dma_unmap *unmap = data;

Using the iommu type 1 UAPI structure in the core vfio code for a
subset of its field is kinda weird.  But we can fix this later.

Otherwise looks good:

Reviewed-by: Christoph Hellwig <hch@lst.de>
