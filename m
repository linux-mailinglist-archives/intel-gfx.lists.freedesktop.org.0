Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5391A53F5B9
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jun 2022 07:53:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BBD311A1E6;
	Tue,  7 Jun 2022 05:53:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14A1389CE3;
 Tue,  7 Jun 2022 05:53:31 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id B899068BEB; Tue,  7 Jun 2022 07:44:37 +0200 (CEST)
Date: Tue, 7 Jun 2022 07:44:37 +0200
From: Christoph Hellwig <hch@lst.de>
To: Jason Gunthorpe <jgg@nvidia.com>
Message-ID: <20220607054437.GB8508@lst.de>
References: <0-v1-896844109f36+a-vfio_unmap_notif_jgg@nvidia.com>
 <2-v1-896844109f36+a-vfio_unmap_notif_jgg@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2-v1-896844109f36+a-vfio_unmap_notif_jgg@nvidia.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
Subject: Re: [Intel-gfx] [PATCH 2/2] vfio: Replace the iommu notifier with a
 device list
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

On Mon, Jun 06, 2022 at 09:34:36PM -0300, Jason Gunthorpe wrote:
> +			if (!list_empty(&iommu->device_list)) {
> +				mutex_lock(&iommu->device_list_lock);
> +				mutex_unlock(&iommu->lock);
> +
> +				list_for_each_entry(device,
> +						    &iommu->device_list,
> +						    iommu_entry)
> +					device->ops->dma_unmap(
> +						device, dma->iova, dma->size);
> +
> +				mutex_unlock(&iommu->device_list_lock);
> +				mutex_lock(&iommu->lock);
> +			}

I wonder if factoring this into a little helper instead of the
very deep indentation might be a bit better for readability.

> +static void vfio_iommu_type1_register_device(void *iommu_data,
> +					     struct vfio_device *vdev)
>  {
>  	struct vfio_iommu *iommu = iommu_data;
>  
> +	if (!vdev->ops->dma_unmap)
> +		return;
>  
> +	mutex_lock(&iommu->lock);
> +	mutex_lock(&iommu->device_list_lock);
> +	list_add(&vdev->iommu_entry, &iommu->device_list);
> +	mutex_unlock(&iommu->device_list_lock);
> +	mutex_unlock(&iommu->lock);

Why do we need both iommu->lock and the device_list_lock everywhere?
Maybe explain the locking scheme somewhere so that people don't have
to guess, because it seems to me that just using iommu->lock would
be enough right now.
