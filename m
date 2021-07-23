Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 48F3C3D3571
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jul 2021 09:39:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1EB86EA75;
	Fri, 23 Jul 2021 07:39:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E14236E93F;
 Fri, 23 Jul 2021 07:39:17 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id BF95067373; Fri, 23 Jul 2021 09:39:14 +0200 (CEST)
Date: Fri, 23 Jul 2021 09:39:14 +0200
From: Christoph Hellwig <hch@lst.de>
To: Jason Gunthorpe <jgg@nvidia.com>
Message-ID: <20210723073914.GC864@lst.de>
References: <0-v2-b6a5582525c9+ff96-vfio_reflck_jgg@nvidia.com>
 <4-v2-b6a5582525c9+ff96-vfio_reflck_jgg@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4-v2-b6a5582525c9+ff96-vfio_reflck_jgg@nvidia.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
Subject: Re: [Intel-gfx] [PATCH v2 04/14] vfio: Provide better generic
 support for open/release vfio_device_ops
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
Cc: kvm@vger.kernel.org, linux-doc@vger.kernel.org,
 David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 Kirti Wankhede <kwankhede@nvidia.com>, Max Gurtovoy <mgurtovoy@nvidia.com>,
 Vineeth Vijayan <vneethv@linux.ibm.com>,
 Diana Craciun <diana.craciun@oss.nxp.com>, Leon Romanovsky <leonro@nvidia.com>,
 Christoph Hellwig <hch@lst.de>, linux-s390@vger.kernel.org,
 Matthew Rosato <mjrosato@linux.ibm.com>, Jonathan Corbet <corbet@lwn.net>,
 Halil Pasic <pasic@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 intel-gfx@lists.freedesktop.org, Jason Herne <jjherne@linux.ibm.com>,
 Eric Farman <farman@linux.ibm.com>, Vasily Gorbik <gor@linux.ibm.com>,
 Heiko Carstens <hca@linux.ibm.com>, Eric Auger <eric.auger@redhat.com>,
 Harald Freudenberger <freude@linux.ibm.com>,
 intel-gvt-dev@lists.freedesktop.org, "Raj, Ashok" <ashok.raj@intel.com>,
 Tony Krowiak <akrowiak@linux.ibm.com>, Yishai Hadas <yishaih@nvidia.com>,
 Cornelia Huck <cohuck@redhat.com>, Peter Oberparleiter <oberpar@linux.ibm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> +int vfio_assign_device_set(struct vfio_device *device, void *set_id)
> +{
> +	struct vfio_device_set *alloc_dev_set = NULL;
> +	struct vfio_device_set *dev_set;
> +
> +	if (WARN_ON(!set_id))
> +		return -EINVAL;
> +
> +	/*
> +	 * Atomically acquire a singleton object in the xarray for this set_id
> +	 */
> +again:
> +	xa_lock(&vfio_device_set_xa);
> +	if (alloc_dev_set) {
> +		dev_set = __xa_cmpxchg(&vfio_device_set_xa,
> +				       (unsigned long)set_id, NULL,
> +				       alloc_dev_set, GFP_KERNEL);
> +		if (xa_is_err(dev_set)) {
> +			xa_unlock(&vfio_device_set_xa);
> +			kfree(alloc_dev_set);
> +			return xa_err(dev_set);
> +		}
> +		if (!dev_set)
> +			dev_set = alloc_dev_set;
> +	} else {
> +		dev_set = xa_load(&vfio_device_set_xa, (unsigned long)set_id);
> +	}
> +
> +	if (dev_set) {
> +		dev_set->device_count++;
> +		xa_unlock(&vfio_device_set_xa);
> +		device->dev_set = dev_set;
> +		if (dev_set != alloc_dev_set)
> +			kfree(alloc_dev_set);
> +		return 0;
> +	}
> +	xa_unlock(&vfio_device_set_xa);
> +
> +	if (WARN_ON(alloc_dev_set))
> +		return -EINVAL;
> +
> +	alloc_dev_set = kzalloc(sizeof(*alloc_dev_set), GFP_KERNEL);
> +	if (!alloc_dev_set)
> +		return -ENOMEM;
> +	mutex_init(&alloc_dev_set->lock);
> +	alloc_dev_set->set_id = set_id;
> +	goto again;
> +}
> +EXPORT_SYMBOL_GPL(vfio_assign_device_set);

This looks unessecarily complicated.  We can just try to load first
and then store it under the same lock, e.g.:

int vfio_assign_device_set(struct vfio_device *device, void *set_id)
{
	unsigned long idx = (unsigned long)set_id;
	struct vfio_device_set *set, *new;
	int err;

	if (WARN_ON(!set_id))
		return -EINVAL;

	xa_lock(&vfio_device_set_xa);
	set = xa_load(&vfio_device_set_xa, idx);
	if (set)
		goto found;
	xa_unlock(&vfio_device_set_xa);

	new = kzalloc(sizeof(*new), GFP_KERNEL);
	if (!new)
		return -ENOMEM;
	mutex_init(&new->lock);
	alloc_dev_set->set_id = set_id;

	xa_lock(&vfio_device_set_xa);
	set = xa_load(&vfio_device_set_xa, idx);
	if (set) {
		kfree(new);
		goto found;
	}
	err = xa_err(__xa_store(&vfio_device_set_xa, idx, new, GFP_KERNEL));
	xa_unlock(&vfio_device_set_xa);
	if (err)
		kfree(new);
	return err;

found:
	set->device_count++;
	xa_unlock(&vfio_device_set_xa);

	device->dev_set = set;
	return 0;
}

> +static void vfio_release_device_set(struct vfio_device *device)
> +{
> +	struct vfio_device_set *dev_set = device->dev_set;
> +
> +	if (!dev_set)
> +		return;
> +
> +	xa_lock(&vfio_device_set_xa);
> +	dev_set->device_count--;
> +	if (!dev_set->device_count) {

Nit, by I'd find

	if (!--dev_set->device_count) {

easier to follow as it clearly documents the dec_and_test pattern.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
