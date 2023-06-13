Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F42972E57A
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Jun 2023 16:18:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD24F10E26B;
	Tue, 13 Jun 2023 14:18:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10F4C10E264
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Jun 2023 14:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1686665902;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=f7+SABrVLI0amKNwNw1VarYFD9JfcbmTjrTnN+EtSAI=;
 b=BcREn6c3oXITe1JNBxHhDUsVtAyo4wisJ+l12UuW58CKwByD5PCYQj3omL5n9MPg1qWbQ2
 3B9mbenVqISrwruGQlFVojTyOxwmKG86QpygtIX1oJXUTWIqO6Kzk49A5CuhZWBZKs7+RJ
 tad1vys1zT3cWZFLUVo1JVXMCZ3e3cM=
Received: from mail-io1-f71.google.com (mail-io1-f71.google.com
 [209.85.166.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-583-ej3-QAh6Ob2vyZyAe0TnzA-1; Tue, 13 Jun 2023 10:18:13 -0400
X-MC-Unique: ej3-QAh6Ob2vyZyAe0TnzA-1
Received: by mail-io1-f71.google.com with SMTP id
 ca18e2360f4ac-77a1335cf04so760203539f.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Jun 2023 07:18:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1686665890; x=1689257890;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=f7+SABrVLI0amKNwNw1VarYFD9JfcbmTjrTnN+EtSAI=;
 b=ipQ8GUOTha3IEoXYEHDB5+6y43vFU4/szfv1EO0wr/mYLWDuHqpVMH3uoiRL8gt5YC
 cKBh0yJdr8sQsdJOUwb6H0pdMqvP6vvsyD80CiINXjLi8V9dt44YvAjYhAgRnUHU2WjZ
 1k9PFQRRQOSmDmcTmuD7enMu69aKHpLWs8cvmIlJENakBylhBIbcwF6fGqq/PeIdejaZ
 XfYLgECTa896hsnwGqxSEeGR2inLRlqW4T5+KXvh3DzYtCYc6EpM7sfEQtPG4GDc3/dZ
 TaJcUOYjZ/ExROkuBUQYVlnRo4th1BWXwo4HvwhmlbDAssRLJZECIRTn4FLJVcyM60eK
 uc0g==
X-Gm-Message-State: AC+VfDyogqgQHlf1YKM3nf3J6Dt5mk3JADIqTaY+Rn1J44Lhi4yQQpHo
 8ZJRSuc/7LFbhDYTtoXS721Ns9J0Q1ZCNKg9DUcC7PiEbDDkZf/TyxTk9ReZUWp4e+R6rsVYZcF
 9ilEh07ZMi6+34TtrEDJhNEKtZ2iv
X-Received: by 2002:a6b:e602:0:b0:777:a8f0:1fc5 with SMTP id
 g2-20020a6be602000000b00777a8f01fc5mr10407475ioh.5.1686665890170; 
 Tue, 13 Jun 2023 07:18:10 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ6Qxd5MF9xG9Y2ZhF+JHE0l7/i45VWWs07LUNcJeZBnEYj9JwVM4ub9aLTrzGq/bx1Sqe3MHg==
X-Received: by 2002:a6b:e602:0:b0:777:a8f0:1fc5 with SMTP id
 g2-20020a6be602000000b00777a8f01fc5mr10407439ioh.5.1686665889883; 
 Tue, 13 Jun 2023 07:18:09 -0700 (PDT)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 c7-20020a6bfd07000000b00760f256037dsm3841313ioi.44.2023.06.13.07.18.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Jun 2023 07:18:09 -0700 (PDT)
Date: Tue, 13 Jun 2023 08:18:08 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: "Liu, Yi L" <yi.l.liu@intel.com>
Message-ID: <20230613081808.049b9e6d.alex.williamson@redhat.com>
In-Reply-To: <DS0PR11MB752985BA514AFF36CA3A2785C355A@DS0PR11MB7529.namprd11.prod.outlook.com>
References: <20230602121653.80017-1-yi.l.liu@intel.com>
 <20230602121653.80017-19-yi.l.liu@intel.com>
 <20230612162726.16f58ea4.alex.williamson@redhat.com>
 <DS0PR11MB752985BA514AFF36CA3A2785C355A@DS0PR11MB7529.namprd11.prod.outlook.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.35; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v12 18/24] vfio: Add VFIO_DEVICE_BIND_IOMMUFD
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
Cc: "mjrosato@linux.ibm.com" <mjrosato@linux.ibm.com>,
 "jasowang@redhat.com" <jasowang@redhat.com>, "Hao,
 Xudong" <xudong.hao@intel.com>, "Duan, Zhenzhong" <zhenzhong.duan@intel.com>,
 "peterx@redhat.com" <peterx@redhat.com>, "Xu,
 Terrence" <terrence.xu@intel.com>,
 "chao.p.peng@linux.intel.com" <chao.p.peng@linux.intel.com>,
 "linux-s390@vger.kernel.org" <linux-s390@vger.kernel.org>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 "lulu@redhat.com" <lulu@redhat.com>, "Jiang,
 Yanting" <yanting.jiang@intel.com>, "joro@8bytes.org" <joro@8bytes.org>,
 "nicolinc@nvidia.com" <nicolinc@nvidia.com>, "jgg@nvidia.com" <jgg@nvidia.com>,
 "Tian, Kevin" <kevin.tian@intel.com>, "Zhao, 
 Yan Y" <yan.y.zhao@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "eric.auger@redhat.com" <eric.auger@redhat.com>,
 "intel-gvt-dev@lists.freedesktop.org" <intel-gvt-dev@lists.freedesktop.org>,
 "yi.y.sun@linux.intel.com" <yi.y.sun@linux.intel.com>,
 "clegoate@redhat.com" <clegoate@redhat.com>,
 "cohuck@redhat.com" <cohuck@redhat.com>,
 "shameerali.kolothum.thodi@huawei.com" <shameerali.kolothum.thodi@huawei.com>,
 "suravee.suthikulpanit@amd.com" <suravee.suthikulpanit@amd.com>,
 "robin.murphy@arm.com" <robin.murphy@arm.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 13 Jun 2023 05:48:46 +0000
"Liu, Yi L" <yi.l.liu@intel.com> wrote:

> > From: Alex Williamson <alex.williamson@redhat.com>
> > Sent: Tuesday, June 13, 2023 6:27 AM
> > 
> > On Fri,  2 Jun 2023 05:16:47 -0700
> > Yi Liu <yi.l.liu@intel.com> wrote:
> >   
> > > This adds ioctl for userspace to bind device cdev fd to iommufd.
> > >
> > >     VFIO_DEVICE_BIND_IOMMUFD: bind device to an iommufd, hence gain DMA
> > > 			      control provided by the iommufd. open_device
> > > 			      op is called after bind_iommufd op.
> > >
> > > Tested-by: Yanting Jiang <yanting.jiang@intel.com>
> > > Tested-by: Shameer Kolothum <shameerali.kolothum.thodi@huawei.com>
> > > Tested-by: Terrence Xu <terrence.xu@intel.com>
> > > Signed-off-by: Yi Liu <yi.l.liu@intel.com>
> > > ---
> > >  drivers/vfio/device_cdev.c | 123 +++++++++++++++++++++++++++++++++++++
> > >  drivers/vfio/vfio.h        |  13 ++++
> > >  drivers/vfio/vfio_main.c   |   5 ++
> > >  include/linux/vfio.h       |   3 +-
> > >  include/uapi/linux/vfio.h  |  27 ++++++++
> > >  5 files changed, 170 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/vfio/device_cdev.c b/drivers/vfio/device_cdev.c
> > > index 1c640016a824..a4498ddbe774 100644
> > > --- a/drivers/vfio/device_cdev.c
> > > +++ b/drivers/vfio/device_cdev.c
> > > @@ -3,6 +3,7 @@
> > >   * Copyright (c) 2023 Intel Corporation.
> > >   */
> > >  #include <linux/vfio.h>
> > > +#include <linux/iommufd.h>
> > >
> > >  #include "vfio.h"
> > >
> > > @@ -44,6 +45,128 @@ int vfio_device_fops_cdev_open(struct inode *inode, struct  
> > file *filep)  
> > >  	return ret;
> > >  }
> > >
> > > +static void vfio_device_get_kvm_safe(struct vfio_device_file *df)
> > > +{
> > > +	spin_lock(&df->kvm_ref_lock);
> > > +	if (df->kvm)
> > > +		_vfio_device_get_kvm_safe(df->device, df->kvm);
> > > +	spin_unlock(&df->kvm_ref_lock);
> > > +}
> > > +
> > > +void vfio_df_cdev_close(struct vfio_device_file *df)
> > > +{
> > > +	struct vfio_device *device = df->device;
> > > +
> > > +	/*
> > > +	 * In the time of close, there is no contention with another one
> > > +	 * changing this flag.  So read df->access_granted without lock
> > > +	 * and no smp_load_acquire() is ok.
> > > +	 */
> > > +	if (!df->access_granted)
> > > +		return;
> > > +
> > > +	mutex_lock(&device->dev_set->lock);
> > > +	vfio_df_close(df);
> > > +	vfio_device_put_kvm(device);
> > > +	iommufd_ctx_put(df->iommufd);
> > > +	device->cdev_opened = false;
> > > +	mutex_unlock(&device->dev_set->lock);
> > > +	vfio_device_unblock_group(device);
> > > +}
> > > +
> > > +static struct iommufd_ctx *vfio_get_iommufd_from_fd(int fd)
> > > +{
> > > +	struct iommufd_ctx *iommufd;
> > > +	struct fd f;
> > > +
> > > +	f = fdget(fd);
> > > +	if (!f.file)
> > > +		return ERR_PTR(-EBADF);
> > > +
> > > +	iommufd = iommufd_ctx_from_file(f.file);
> > > +
> > > +	fdput(f);
> > > +	return iommufd;
> > > +}
> > > +
> > > +long vfio_df_ioctl_bind_iommufd(struct vfio_device_file *df,
> > > +				struct vfio_device_bind_iommufd __user *arg)
> > > +{
> > > +	struct vfio_device *device = df->device;
> > > +	struct vfio_device_bind_iommufd bind;
> > > +	unsigned long minsz;
> > > +	int ret;
> > > +
> > > +	static_assert(__same_type(arg->out_devid, df->devid));
> > > +
> > > +	minsz = offsetofend(struct vfio_device_bind_iommufd, out_devid);
> > > +
> > > +	if (copy_from_user(&bind, arg, minsz))
> > > +		return -EFAULT;
> > > +
> > > +	if (bind.argsz < minsz || bind.flags || bind.iommufd < 0)
> > > +		return -EINVAL;
> > > +
> > > +	/* BIND_IOMMUFD only allowed for cdev fds */
> > > +	if (df->group)
> > > +		return -EINVAL;
> > > +
> > > +	ret = vfio_device_block_group(device);
> > > +	if (ret)
> > > +		return ret;
> > > +
> > > +	mutex_lock(&device->dev_set->lock);
> > > +	/* one device cannot be bound twice */
> > > +	if (df->access_granted) {
> > > +		ret = -EINVAL;
> > > +		goto out_unlock;
> > > +	}
> > > +
> > > +	df->iommufd = vfio_get_iommufd_from_fd(bind.iommufd);
> > > +	if (IS_ERR(df->iommufd)) {
> > > +		ret = PTR_ERR(df->iommufd);
> > > +		df->iommufd = NULL;
> > > +		goto out_unlock;
> > > +	}
> > > +
> > > +	/*
> > > +	 * Before the device open, get the KVM pointer currently
> > > +	 * associated with the device file (if there is) and obtain
> > > +	 * a reference.  This reference is held until device closed.
> > > +	 * Save the pointer in the device for use by drivers.
> > > +	 */
> > > +	vfio_device_get_kvm_safe(df);
> > > +
> > > +	ret = vfio_df_open(df);
> > > +	if (ret)
> > > +		goto out_put_kvm;
> > > +
> > > +	ret = copy_to_user(&arg->out_devid, &df->devid,
> > > +			   sizeof(df->devid)) ? -EFAULT : 0;
> > > +	if (ret)
> > > +		goto out_close_device;
> > > +
> > > +	/*
> > > +	 * Paired with smp_load_acquire() in vfio_device_fops::ioctl/
> > > +	 * read/write/mmap
> > > +	 */
> > > +	smp_store_release(&df->access_granted, true);
> > > +	device->cdev_opened = true;
> > > +	mutex_unlock(&device->dev_set->lock);
> > > +	return 0;
> > > +
> > > +out_close_device:
> > > +	vfio_df_close(df);
> > > +out_put_kvm:
> > > +	vfio_device_put_kvm(device);
> > > +	iommufd_ctx_put(df->iommufd);
> > > +	df->iommufd = NULL;
> > > +out_unlock:
> > > +	mutex_unlock(&device->dev_set->lock);
> > > +	vfio_device_unblock_group(device);
> > > +	return ret;
> > > +}
> > > +
> > >  static char *vfio_device_devnode(const struct device *dev, umode_t *mode)
> > >  {
> > >  	return kasprintf(GFP_KERNEL, "vfio/devices/%s", dev_name(dev));
> > > diff --git a/drivers/vfio/vfio.h b/drivers/vfio/vfio.h
> > > index d12b5b524bfc..42de40d2cd4d 100644
> > > --- a/drivers/vfio/vfio.h
> > > +++ b/drivers/vfio/vfio.h
> > > @@ -287,6 +287,9 @@ static inline void vfio_device_del(struct vfio_device *device)
> > >  }
> > >
> > >  int vfio_device_fops_cdev_open(struct inode *inode, struct file *filep);
> > > +void vfio_df_cdev_close(struct vfio_device_file *df);
> > > +long vfio_df_ioctl_bind_iommufd(struct vfio_device_file *df,
> > > +				struct vfio_device_bind_iommufd __user *arg);
> > >  int vfio_cdev_init(struct class *device_class);
> > >  void vfio_cdev_cleanup(void);
> > >  #else
> > > @@ -310,6 +313,16 @@ static inline int vfio_device_fops_cdev_open(struct inode  
> > *inode,  
> > >  	return 0;
> > >  }
> > >
> > > +static inline void vfio_df_cdev_close(struct vfio_device_file *df)
> > > +{
> > > +}
> > > +
> > > +static inline long vfio_df_ioctl_bind_iommufd(struct vfio_device_file *df,
> > > +					      struct vfio_device_bind_iommufd __user  
> > *arg)  
> > > +{
> > > +	return -EOPNOTSUPP;
> > > +}
> > > +
> > >  static inline int vfio_cdev_init(struct class *device_class)
> > >  {
> > >  	return 0;
> > > diff --git a/drivers/vfio/vfio_main.c b/drivers/vfio/vfio_main.c
> > > index ef55af75f459..9ba4d420eda2 100644
> > > --- a/drivers/vfio/vfio_main.c
> > > +++ b/drivers/vfio/vfio_main.c
> > > @@ -572,6 +572,8 @@ static int vfio_device_fops_release(struct inode *inode, struct  
> > file *filep)  
> > >
> > >  	if (df->group)
> > >  		vfio_df_group_close(df);
> > > +	else
> > > +		vfio_df_cdev_close(df);
> > >
> > >  	vfio_device_put_registration(device);
> > >
> > > @@ -1145,6 +1147,9 @@ static long vfio_device_fops_unl_ioctl(struct file *filep,
> > >  	struct vfio_device *device = df->device;
> > >  	int ret;
> > >
> > > +	if (cmd == VFIO_DEVICE_BIND_IOMMUFD)
> > > +		return vfio_df_ioctl_bind_iommufd(df, (void __user *)arg);
> > > +
> > >  	/* Paired with smp_store_release() following vfio_df_open() */
> > >  	if (!smp_load_acquire(&df->access_granted))
> > >  		return -EINVAL;
> > > diff --git a/include/linux/vfio.h b/include/linux/vfio.h
> > > index 83cc5dc28b7a..e80a8ac86e46 100644
> > > --- a/include/linux/vfio.h
> > > +++ b/include/linux/vfio.h
> > > @@ -66,6 +66,7 @@ struct vfio_device {
> > >  	struct iommufd_device *iommufd_device;
> > >  	bool iommufd_attached;
> > >  #endif
> > > +	bool cdev_opened:1;  
> > 
> > Perhaps a more strongly defined data type here as well and roll
> > iommufd_attached into the same bit field scheme.  
> 
> Ok, then needs to make iommufd_attached always defined.

That does not follow.  Thanks,

Alex

