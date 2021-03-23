Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EA6EE34691B
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Mar 2021 20:31:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0E816E943;
	Tue, 23 Mar 2021 19:31:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FBD06E943;
 Tue, 23 Mar 2021 19:31:07 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id 144AA68C7B; Tue, 23 Mar 2021 20:31:03 +0100 (CET)
Date: Tue, 23 Mar 2021 20:31:03 +0100
From: Christoph Hellwig <hch@lst.de>
To: Jason Gunthorpe <jgg@nvidia.com>
Message-ID: <20210323193103.GP17735@lst.de>
References: <0-v1-7dedf20b2b75+4f785-vfio2_jgg@nvidia.com>
 <18-v1-7dedf20b2b75+4f785-vfio2_jgg@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <18-v1-7dedf20b2b75+4f785-vfio2_jgg@nvidia.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
Subject: Re: [Intel-gfx] [PATCH 18/18] vfio/mdev: Correct the function
 signatures for the mdev_type_attributes
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
 dri-devel@lists.freedesktop.org, Kirti Wankhede <kwankhede@nvidia.com>,
 Vineeth Vijayan <vneethv@linux.ibm.com>, Leon Romanovsky <leonro@nvidia.com>,
 Christoph Hellwig <hch@lst.de>, linux-s390@vger.kernel.org, "Raj,
 Ashok" <ashok.raj@intel.com>, Halil Pasic <pasic@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Tarun Gupta <targupta@nvidia.com>, intel-gfx@lists.freedesktop.org,
 Max Gurtovoy <mgurtovoy@nvidia.com>, Eric Farman <farman@linux.ibm.com>,
 Vasily Gorbik <gor@linux.ibm.com>, Heiko Carstens <hca@linux.ibm.com>,
 Harald Freudenberger <freude@linux.ibm.com>,
 Dan Williams <dan.j.williams@intel.com>, intel-gvt-dev@lists.freedesktop.org,
 Tony Krowiak <akrowiak@linux.ibm.com>, Pierre Morel <pmorel@linux.ibm.com>,
 Cornelia Huck <cohuck@redhat.com>, Peter Oberparleiter <oberpar@linux.ibm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Mar 23, 2021 at 02:55:35PM -0300, Jason Gunthorpe wrote:
> The driver core standard is to pass in the properly typed object, the
> properly typed attribute and the buffer data. It stems from the root
> kobject method:
> 
>   ssize_t (*show)(struct kobject *kobj, struct kobj_attribute *attr,..)
> 
> Each subclass of kobject should provide their own function with the same
> signature but more specific types, eg struct device uses:
> 
>   ssize_t (*show)(struct device *dev, struct device_attribute *attr,..)
> 
> In this case the existing signature is:
> 
>   ssize_t (*show)(struct kobject *kobj, struct device *dev,..)
> 
> Where kobj is a 'struct mdev_type *' and dev is 'mdev_type->parent->dev'.
> 
> Change the mdev_type related sysfs attribute functions to:
> 
>   ssize_t (*show)(struct mdev_type *mtype, struct mdev_type_attribute *attr,..)
> 
> In order to restore type safety and match the driver core standard
> 
> There are no current users of 'attr', but if it is ever needed it would be
> hard to add in retroactively, so do it now.
> 
> Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>
> ---
>  drivers/gpu/drm/i915/gvt/gvt.c    | 21 +++++++++++----------
>  drivers/s390/cio/vfio_ccw_ops.c   | 15 +++++++++------
>  drivers/s390/crypto/vfio_ap_ops.c | 12 +++++++-----
>  drivers/vfio/mdev/mdev_core.c     | 14 ++++++++++++--
>  drivers/vfio/mdev/mdev_sysfs.c    | 11 ++++++-----
>  include/linux/mdev.h              | 11 +++++++----
>  samples/vfio-mdev/mbochs.c        | 26 +++++++++++++++-----------
>  samples/vfio-mdev/mdpy.c          | 24 ++++++++++++++----------
>  samples/vfio-mdev/mtty.c          | 18 +++++++++---------
>  9 files changed, 90 insertions(+), 62 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gvt/gvt.c b/drivers/gpu/drm/i915/gvt/gvt.c
> index 4b47a18e9dfa0f..3703814a669b46 100644
> --- a/drivers/gpu/drm/i915/gvt/gvt.c
> +++ b/drivers/gpu/drm/i915/gvt/gvt.c
> @@ -54,14 +54,15 @@ intel_gvt_find_vgpu_type(struct intel_gvt *gvt, unsigned int type_group_id)
>  	return &gvt->types[type_group_id];
>  }
>  
> -static ssize_t available_instances_show(struct kobject *kobj,
> -					struct device *dev, char *buf)
> +static ssize_t available_instances_show(struct mdev_type *mtype,
> +					struct mdev_type_attribute *attr,
> +					char *buf)
>  {
>  	struct intel_vgpu_type *type;
>  	unsigned int num = 0;
> -	void *gvt = kdev_to_i915(dev)->gvt;
> +	void *gvt = kdev_to_i915(mtype_get_parent_dev(mtype))->gvt;
>  
> -	type = intel_gvt_find_vgpu_type(gvt, mtype_get_type_group_id(kobj));
> +	type = intel_gvt_find_vgpu_type(gvt, mtype_get_type_group_id(mtype));

Somewhere in this series you should probably
switch intel_gvt_find_vgpu_type to only get the mtype, as it can trivially
deduct the gvt from it (which also seems to have lost its type somewhere..)

Otherwise looks good:

Reviewed-by: Christoph Hellwig <hch@lst.de>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
