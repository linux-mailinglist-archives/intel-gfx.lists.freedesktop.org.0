Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 578226DFBE9
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Apr 2023 18:54:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6603810E8D2;
	Wed, 12 Apr 2023 16:54:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C42210E8D1
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Apr 2023 16:54:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1681318481;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=2CbYOXhl6XdFxVMn7Zf930SygI8z4y7jKNdiR8hTUP8=;
 b=EOQlgR2vTfXAwPGdTrcXoYPWxzvBtoMrL838jdcbBWNu5+ZG0vlFTzkXewUeU7LKhnkwx2
 X5EPnXH0uLWlgp+UyPI3YZLDt4nJYSb+SSeOY/UVio5p3X6NSuF0YM3JYe4Pny2XC14pg/
 CEVr0iHz39XBoI7R06sQtiEIA6iIdWg=
Received: from mail-io1-f72.google.com (mail-io1-f72.google.com
 [209.85.166.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-489-wK0nhDrYNsCo1G4QkyPirg-1; Wed, 12 Apr 2023 12:54:40 -0400
X-MC-Unique: wK0nhDrYNsCo1G4QkyPirg-1
Received: by mail-io1-f72.google.com with SMTP id
 j4-20020a6b5504000000b00758646159fbso7844088iob.20
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Apr 2023 09:54:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1681318479; x=1683910479;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=2CbYOXhl6XdFxVMn7Zf930SygI8z4y7jKNdiR8hTUP8=;
 b=Vgp6CQs0n5oAzRjnMPycxjsmgmdgJ6c9cDl7k2iH3YseXLCgYauP/fYj5OuFv4Yyf3
 zKGf7cpnJxYStRaoFtTP56dtb3l/6JZ2D1Z37OfWokGdboOhLt1WFtQrgmTwFZ7HbnPi
 0lROmJh0EaVMhAAnE67COe9l6dyn1iwz0lGsO/WoKj/7PQVmfQXUFhupLFWDu5iNqwKQ
 5Ww3Ry82hoafuAImSb3X2cIq4ynK2eNiGaoHMd13w5zrkUbOOv4PSWZud0SqNNfWGrSN
 cZvmDKIDC9UcWqEHHQ5I729WZmwjeRy91dN3gVHokknIuhNwe4w1KGg74JHdRfNBPWHv
 GT0w==
X-Gm-Message-State: AAQBX9dt156JtA+ogm1eBZuTr5zLSpF8PMntLfINOkiBOM9b3CbiL2uv
 7r7wGHRBNJ3yyYzvHqQ+y0yPT/45J74t/N+Bv9YLC7Ylh50594C/9szQ4hkrYMPrCQd4KZd4ngY
 6xo8YfXLLj7wqomUDgJoXBae4DGb8
X-Received: by 2002:a6b:e319:0:b0:743:7742:1bc2 with SMTP id
 u25-20020a6be319000000b0074377421bc2mr1804356ioc.16.1681318479421; 
 Wed, 12 Apr 2023 09:54:39 -0700 (PDT)
X-Google-Smtp-Source: AKy350a3Pitf43mDrPE5tmKIlKyUkniHhu0RzzuVQ/lCT9u6Bt39OQ6P0qj93bcbOzPZeG3CFFrfXg==
X-Received: by 2002:a6b:e319:0:b0:743:7742:1bc2 with SMTP id
 u25-20020a6be319000000b0074377421bc2mr1804344ioc.16.1681318479088; 
 Wed, 12 Apr 2023 09:54:39 -0700 (PDT)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 e10-20020a02210a000000b0040b38102b79sm4825302jaa.82.2023.04.12.09.54.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 12 Apr 2023 09:54:38 -0700 (PDT)
Date: Wed, 12 Apr 2023 10:54:37 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: "Liu, Yi L" <yi.l.liu@intel.com>
Message-ID: <20230412105437.13897845.alex.williamson@redhat.com>
In-Reply-To: <DS0PR11MB7529E75A0868B338F5AFD014C39B9@DS0PR11MB7529.namprd11.prod.outlook.com>
References: <ZC3KJUxJa0O0M+9O@nvidia.com>
 <20230405134945.29e967be.alex.williamson@redhat.com>
 <ZC4CwH2ouTfZ9DNN@nvidia.com>
 <DS0PR11MB75292DA91ED15AE94A85EB3DC3919@DS0PR11MB7529.namprd11.prod.outlook.com>
 <20230406115347.7af28448.alex.williamson@redhat.com>
 <ZDVfqpOCnImKr//m@nvidia.com>
 <20230411095417.240bac39.alex.williamson@redhat.com>
 <20230411111117.0766ad52.alex.williamson@redhat.com>
 <ZDWph7g0hcbJHU1B@nvidia.com>
 <20230411155827.3489400a.alex.williamson@redhat.com>
 <ZDX0wtcvZuS4uxmG@nvidia.com>
 <DS0PR11MB7529E75A0868B338F5AFD014C39B9@DS0PR11MB7529.namprd11.prod.outlook.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.35; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v3 12/12] vfio/pci: Report dev_id in
 VFIO_DEVICE_GET_PCI_HOT_RESET_INFO
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
 "nicolinc@nvidia.com" <nicolinc@nvidia.com>, Jason Gunthorpe <jgg@nvidia.com>,
 "Zhao, Yan Y" <yan.y.zhao@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "eric.auger@redhat.com" <eric.auger@redhat.com>,
 "intel-gvt-dev@lists.freedesktop.org" <intel-gvt-dev@lists.freedesktop.org>,
 "yi.y.sun@linux.intel.com" <yi.y.sun@linux.intel.com>,
 "cohuck@redhat.com" <cohuck@redhat.com>,
 "shameerali.kolothum.thodi@huawei.com" <shameerali.kolothum.thodi@huawei.com>,
 "suravee.suthikulpanit@amd.com" <suravee.suthikulpanit@amd.com>,
 "robin.murphy@arm.com" <robin.murphy@arm.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 12 Apr 2023 10:09:32 +0000
"Liu, Yi L" <yi.l.liu@intel.com> wrote:

> > From: Jason Gunthorpe <jgg@nvidia.com>
> > Sent: Wednesday, April 12, 2023 8:01 AM
> > 
> > On Tue, Apr 11, 2023 at 03:58:27PM -0600, Alex Williamson wrote:
> >   
> > > > Management tools already need to understand dev_set if they want to
> > > > offer reliable reset support to the VMs. Same as today.  
> > >
> > > I don't think that's true. Our primary hot-reset use case is GPUs and
> > > subordinate functions, where the isolation and reset scope are often
> > > sufficiently similar to make hot-reset possible, regardless whether
> > > all the functions are assigned to a VM.  I don't think you'll find any
> > > management tools that takes reset scope into account otherwise.  
> > 
> > When I think of "reliable reset support" I think of the management
> > tool offering a checkbox that says "ensure PCI function reset
> > availability" and if checked it will not launch the VM without a
> > working reset.
> > 
> > If the user configures a set of VFIO devices and then hopes they get
> > working reset, that is fine, but doesn't require any reporting of
> > reset groups, or iommu groups to the management layer to work.
> >   
> > > > > As I understand the proposal, QEMU now gets to attempt to
> > > > > claim ownership of the dev_set, so it opportunistically extends its
> > > > > ownership and may block other users from the affected devices.  
> > > >
> > > > We can decide the policy for the kernel to accept a claim. I suggested
> > > > below "same as today" - it must hold all the groups within the
> > > > iommufd_ctx.  
> > >
> > > It must hold all the groups [that the user doesn't know about because
> > > it's not a formal part of the cdev API] within the iommufd_ctx?  
> > 
> > You keep going back to this, but I maintain userspace doesn't
> > care. qemu is given a list of VFIO devices to use, all it wants to
> > know is if it is allowed to use reset or not. Why should it need to
> > know groups and group_ids to get that binary signal out of the kernel?
> >   
> > > > The simplest option for no-iommu is to require it to pass in every
> > > > device fd to the reset ioctl.  
> > >
> > > Which ironically is exactly how it ends up working today, each no-iommu
> > > device has a fake IOMMU group, so every affected device (group) needs
> > > to be provided.  
> > 
> > Sure, that is probably the way forward for no-iommu. Not that anyone
> > uses it..
> > 
> > The kicker is we don't force the user to generate a de-duplicated list
> > of devices FDs, one per group, just because.
> >   
> > > > I want to re-focus on the basics of what cdev is supposed to be doing,
> > > > because several of the idea you suggested seem against this direction:
> > > >
> > > >  - cdev does not have, and cannot rely on vfio_groups. We enforce this
> > > >    by compiling all the vfio_group infrastructure out. iommu_groups
> > > >    continue to exist.
> > > >
> > > >    So converting a cdev to a vfio_group is not an allowed operation.  
> > >
> > > My only statements in this respect were towards the notion that IOMMU
> > > groups continue to exist.  I'm well aware of the desire to deprecate
> > > and remove vfio groups.  
> > 
> > Yes
> >   
> > > >  - no-iommu should not have iommu_groups. We enforce this by compiling
> > > >    out all the no-iommu vfio_group infrastructure.  
> > >
> > > This is not logically inferred from the above if IOMMU groups continue
> > > to exist and continue to be a basis for describing DMA ownership as
> > > well as "reset groups"  
> > 
> > It is not ment to flow out of the above, it is a seperate statement. I
> > want the iommu_group mechanism to stop being abused outside the iommu
> > core code. The only thing that should be creating groups is an
> > attached iommu driver operating under ops->device_group().
> > 
> > VFIO needed this to support mdev and no-iommu. We already have mdev
> > free of iommu_groups, I would like no-iommu to also be free of it too,
> > we are very close.
> > 
> > That would leave POWER as the only abuser of the
> > iommu_group_add_device() API, and it is only doing it because it
> > hasn't got a proper iommu driver implementation yet. It turns out
> > their abuse is mislocked and maybe racy to boot :(
> >   
> > > >  - cdev APIs should ideally not require the user to know the group_id,
> > > >    we should try hard to design APIs to avoid this.  
> > >
> > > This is a nuance, group_id vs group, where it's been previously
> > > discussed that users will need to continue to know the boundaries of a
> > > group for the purpose of DMA isolation and potentially IOAS
> > > independence should cdev/iommufd choose to tackle those topics.  
> > 
> > Yes, group_id is a value we have no specific use for and would require
> > userspace to keep seperate track of. I'd prefer to rely on dev_id as
> > much as possible instead.
> >   
> > > What is the actual proposal here?  
> > 
> > I don't know anymore, you don't seem to like this direction either...
> >   
> > > You've said that hot-reset works if the iommufd_ctx has
> > > representation from each affected group, the INFO ioctl remains as
> > > it is, which suggests that it's reporting group ID and BDF, yet only
> > > sysfs tells the user the relation between a vfio cdev and a group
> > > and we're trying to enable a pass-by-fd model for cdev where the
> > > user has no reference to a sysfs node for the device.  Show me how
> > > these pieces fit together.  
> > 
> > I prefer the version where INFO2 returns the dev_id, but info can work
> > if we do the BDF cap like you suggested to Yi
> >   
> > > OTOH, if we say IOMMU groups continue to exist [agreed], every vfio
> > > device has an IOMMU group  
> > 
> > I don't desire every VFIO device to have an iommu_group. I want VFIO
> > devices with real IOMMU drivers to have an iommu_group. mdev and
> > no-iommu should not. I don't want to add them back into the design
> > just so INFO has a value to return.
> > 
> > I'd rather give no-iommu a dummy dev_id in iommufdctx then give it an
> > iommu_group...
> > 
> > I see this problem as a few basic requirements from a qemu-like
> > application:
> > 
> >  1) Does the configuration I was given support reset right now?
> >  2) Will the configuration I was given support reset for the duration
> >     of my execution?
> >  3) What groups of the devices I already have open does the reset
> >     effect?
> >  4) For debugging, report to the user the full list of devices in the
> >     reset group, in a way that relates back to sysfs.
> >  5) Away to trigger a reset on a group of devices
> > 
> > #1/#2 is the API I suggested here. Ask the kernel if the current
> > configuration works, and ask it to keep it working.
> > 
> > #3 is either INFO and a CAP for BDF or INFO2 reporting dev_id
> > 
> > #4 is either INFO and print the BDFs or INFO2 reporting the struct
> > vfio_device IDR # (eg /sys/class/vfio/vfioXXX/).  
> 
> I hope we can have a clear statement on the _INFO or INFO2 usage.
> Today, per QEMU's implementation, the output of _INFO is used to:
> 
> 1) do a self-check to see if all the affected groups are opened by the
>     current user before it can invoke hot-reset.
> 2) figure out the devices that are already opened by the user. QEMU
>     needs to save the state of such devices as the device may already
>     been in use. If so, its state should be saved and restored prior/post
>     the hot-reset.
> 
> Seems like we are relaxing the self-check as it may be done by locking
> the reset group. is it?

I hope not.  Locking the reset group suggests the user is able to
extend their ownership.  IMO we should not allow that.  Thanks,

Alex

