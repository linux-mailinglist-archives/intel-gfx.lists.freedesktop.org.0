Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CF5986DFBCE
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Apr 2023 18:50:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3A1110E8BB;
	Wed, 12 Apr 2023 16:50:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 531BF10E8B6
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Apr 2023 16:50:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1681318250;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=4lhLbSYpbZYeKCMwr7jqJzIyJ3NJnM2U7MStHY7FRFQ=;
 b=fXx0b6lWTSz6mMpPPfEnFKLLchaJqLe8+DReObSwnNLeBEtO0WXBm9qron5LT43AQf1vjk
 8lCQMw78jdaQ9cjYt0mpOVWvmwbQHECMXwCdEb0mXviT3YouAEu2w85ZSsK7IWWcxn1QeC
 MUK/jjzw5ym90cHYlxqPmdli9xcfTs8=
Received: from mail-io1-f72.google.com (mail-io1-f72.google.com
 [209.85.166.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-621-RKRNqgKLPA-A4qe-R6UniA-1; Wed, 12 Apr 2023 12:50:49 -0400
X-MC-Unique: RKRNqgKLPA-A4qe-R6UniA-1
Received: by mail-io1-f72.google.com with SMTP id
 g19-20020a056602243300b00758e7dbd0dbso7889240iob.16
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Apr 2023 09:50:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1681318248; x=1683910248;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=4lhLbSYpbZYeKCMwr7jqJzIyJ3NJnM2U7MStHY7FRFQ=;
 b=d3G0V82HxJEWI4+kNvxAgyfO+Y+GdI4id7Fg5GZlo55zodnPpOVd+gdHTmBkzL/+sp
 QZ3nXL8o+frR+8cI1HGDOpci+ZJrFUeLIgr4oVHQJrRgkrbLxpHC3FwmN26+2PPmY61W
 uMlMckLbAyjn0DlbG4WeACrzq51vLZyWuSNYgM33wSQ5WC0Uzh0Mbeu9NxV55qJ8JfYI
 0/Mhb9YgqKe/WbUEI+BscN3fyXztNMf5mkZMgqsDo6s8AdYPBFjrWvimPfrkXD+LCOmg
 O2fsxNFAYn4XO7rjn7GD5JKsYWTP8s3EXM8YZIj66B1GhDgd+FDoORKdrcWmVm6ARtOf
 lsuw==
X-Gm-Message-State: AAQBX9fq7722Tchs01ldIDH46N7QpyoCH3gohZBJk02M9IRPcTAlpFPs
 fcg0GeJydAuGrYoWLryVGTftRrUL7k46g6FBvTAR9dHotV02X5mHUlUh4NTbPvNwSBxGywUeUC0
 vd8itu6cCL6wPMCtxZ+YYYT6PhkNK
X-Received: by 2002:a6b:d207:0:b0:758:c30c:d7d0 with SMTP id
 q7-20020a6bd207000000b00758c30cd7d0mr8974958iob.14.1681318247966; 
 Wed, 12 Apr 2023 09:50:47 -0700 (PDT)
X-Google-Smtp-Source: AKy350ZGk6PpK+GFlviQCXPCEo6dP2SxaFnU+ZyEpTU+LsQ2QgcNee6w8KXzKQFdiYSdHDl2VYLMbQ==
X-Received: by 2002:a6b:d207:0:b0:758:c30c:d7d0 with SMTP id
 q7-20020a6bd207000000b00758c30cd7d0mr8974934iob.14.1681318247609; 
 Wed, 12 Apr 2023 09:50:47 -0700 (PDT)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 z8-20020a6b5c08000000b007592d781128sm4560375ioh.30.2023.04.12.09.50.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 12 Apr 2023 09:50:46 -0700 (PDT)
Date: Wed, 12 Apr 2023 10:50:45 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: Jason Gunthorpe <jgg@nvidia.com>
Message-ID: <20230412105045.79adc83d.alex.williamson@redhat.com>
In-Reply-To: <ZDX0wtcvZuS4uxmG@nvidia.com>
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
 "linux-s390@vger.kernel.org" <linux-s390@vger.kernel.org>, "Liu,
 Yi L" <yi.l.liu@intel.com>, "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 "lulu@redhat.com" <lulu@redhat.com>, "Jiang,
 Yanting" <yanting.jiang@intel.com>, "joro@8bytes.org" <joro@8bytes.org>,
 "nicolinc@nvidia.com" <nicolinc@nvidia.com>, "Zhao, 
 Yan Y" <yan.y.zhao@intel.com>,
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

On Tue, 11 Apr 2023 21:01:06 -0300
Jason Gunthorpe <jgg@nvidia.com> wrote:

> On Tue, Apr 11, 2023 at 03:58:27PM -0600, Alex Williamson wrote:
> 
> > > Management tools already need to understand dev_set if they want to
> > > offer reliable reset support to the VMs. Same as today.  
> > 
> > I don't think that's true. Our primary hot-reset use case is GPUs and
> > subordinate functions, where the isolation and reset scope are often
> > sufficiently similar to make hot-reset possible, regardless whether
> > all the functions are assigned to a VM.  I don't think you'll find any
> > management tools that takes reset scope into account otherwise.  
> 
> When I think of "reliable reset support" I think of the management
> tool offering a checkbox that says "ensure PCI function reset
> availability" and if checked it will not launch the VM without a
> working reset.

This doesn't exist.

> If the user configures a set of VFIO devices and then hopes they get
> working reset, that is fine, but doesn't require any reporting of
> reset groups, or iommu groups to the management layer to work.

I think there's more than hope involved here, there are recipes to
create working hot-reset configurations because it is well specified
and predictable currently.  QEMU can indicate whether hot-reset is
available thanks to the information provided in the INFO ioctl and a VM
that owns the necessary set of groups may consistently and repeatedly
perform hot-resets.

> > > > As I understand the proposal, QEMU now gets to attempt to
> > > > claim ownership of the dev_set, so it opportunistically extends its
> > > > ownership and may block other users from the affected devices.    
> > > 
> > > We can decide the policy for the kernel to accept a claim. I suggested
> > > below "same as today" - it must hold all the groups within the
> > > iommufd_ctx.  
> > 
> > It must hold all the groups [that the user doesn't know about because
> > it's not a formal part of the cdev API] within the iommufd_ctx?  
> 
> You keep going back to this, but I maintain userspace doesn't
> care. qemu is given a list of VFIO devices to use, all it wants to
> know is if it is allowed to use reset or not. Why should it need to
> know groups and group_ids to get that binary signal out of the kernel?

hw/vfio/pci.c:2320
        error_report("vfio: Cannot reset device %s, "
                     "depends on group %d which is not owned.",
                     vdev->vbasedev.name, devices[i].group_id);

That creates a feedback loop where a user can take corrective action
with actual information in hand to resolve the issue.

> > > The simplest option for no-iommu is to require it to pass in every
> > > device fd to the reset ioctl.  
> > 
> > Which ironically is exactly how it ends up working today, each no-iommu
> > device has a fake IOMMU group, so every affected device (group) needs
> > to be provided.  
> 
> Sure, that is probably the way forward for no-iommu. Not that anyone
> uses it..
> 
> The kicker is we don't force the user to generate a de-duplicated list
> of devices FDs, one per group, just because.

So on one hand you're asking for simplicity, but on the other you're
criticizing a trivial simplification that we chose to allow the user to
pass number of group fds equal to number of devices affected so that
the user doesn't need to take that step to de-duplicate the list.  We
can't win.
 
> > > I want to re-focus on the basics of what cdev is supposed to be doing,
> > > because several of the idea you suggested seem against this direction:
> > > 
> > >  - cdev does not have, and cannot rely on vfio_groups. We enforce this
> > >    by compiling all the vfio_group infrastructure out. iommu_groups
> > >    continue to exist.
> > >    
> > >    So converting a cdev to a vfio_group is not an allowed operation.  
> > 
> > My only statements in this respect were towards the notion that IOMMU
> > groups continue to exist.  I'm well aware of the desire to deprecate
> > and remove vfio groups.  
> 
> Yes
> 
> > >  - no-iommu should not have iommu_groups. We enforce this by compiling
> > >    out all the no-iommu vfio_group infrastructure.  
> > 
> > This is not logically inferred from the above if IOMMU groups continue
> > to exist and continue to be a basis for describing DMA ownership as
> > well as "reset groups"  
> 
> It is not ment to flow out of the above, it is a seperate statement. I
> want the iommu_group mechanism to stop being abused outside the iommu
> core code. The only thing that should be creating groups is an
> attached iommu driver operating under ops->device_group().
> 
> VFIO needed this to support mdev and no-iommu. We already have mdev
> free of iommu_groups, I would like no-iommu to also be free of it too,
> we are very close.
> 
> That would leave POWER as the only abuser of the
> iommu_group_add_device() API, and it is only doing it because it
> hasn't got a proper iommu driver implementation yet. It turns out
> their abuse is mislocked and maybe racy to boot :(
> 
> > >  - cdev APIs should ideally not require the user to know the group_id,
> > >    we should try hard to design APIs to avoid this.  
> > 
> > This is a nuance, group_id vs group, where it's been previously
> > discussed that users will need to continue to know the boundaries of a
> > group for the purpose of DMA isolation and potentially IOAS
> > independence should cdev/iommufd choose to tackle those topics.  
> 
> Yes, group_id is a value we have no specific use for and would require
> userspace to keep seperate track of. I'd prefer to rely on dev_id as
> much as possible instead.

But dev-id only has meaning in relation to an iommufd_ctx, so it fails
to be useful in the context of implied ownership.

> > What is the actual proposal here?  
> 
> I don't know anymore, you don't seem to like this direction either...
> 
> > You've said that hot-reset works if the iommufd_ctx has
> > representation from each affected group, the INFO ioctl remains as
> > it is, which suggests that it's reporting group ID and BDF, yet only
> > sysfs tells the user the relation between a vfio cdev and a group
> > and we're trying to enable a pass-by-fd model for cdev where the
> > user has no reference to a sysfs node for the device.  Show me how
> > these pieces fit together.  
> 
> I prefer the version where INFO2 returns the dev_id, but info can work
> if we do the BDF cap like you suggested to Yi

As discussed ad nauseam, dev-id is useless if an affected device is not
already within the iommufd ctx.  BDF provides a mapping to specific
affected devices, but can't express implied ownership.  Group id
provides the implied ownership, but can't express specific devices.  As
Yi has pointed out, QEMU needs to know both if it has ownership of all
the affected devices, both direct and implied, and which specific
devices that it owns are affected.

> > OTOH, if we say IOMMU groups continue to exist [agreed], every vfio
> > device has an IOMMU group  
> 
> I don't desire every VFIO device to have an iommu_group. I want VFIO
> devices with real IOMMU drivers to have an iommu_group. mdev and
> no-iommu should not. I don't want to add them back into the design
> just so INFO has a value to return.
> 
> I'd rather give no-iommu a dummy dev_id in iommufdctx then give it an
> iommu_group...

It's not been shown to me that dev-id is a useful replacement for
anything here.

> I see this problem as a few basic requirements from a qemu-like
> application:
> 
>  1) Does the configuration I was given support reset right now?
>  2) Will the configuration I was given support reset for the duration
>     of my execution?
>  3) What groups of the devices I already have open does the reset
>     effect?
>  4) For debugging, report to the user the full list of devices in the
>     reset group, in a way that relates back to sysfs.
>  5) Away to trigger a reset on a group of devices
> 
> #1/#2 is the API I suggested here. Ask the kernel if the current
> configuration works, and ask it to keep it working.

That is super sketchy because you're also advocating for
opportunistically supporting reset if the instantaneous conditions
allow is (ex. unopened devices), and going back and forth whether "ask
it to keep working" suggests that a user is able to extend their
granted ownership themselves.  I think both needs to be based on some
form of granted, not requested, ownership and not opportunism.

> #3 is either INFO and a CAP for BDF or INFO2 reporting dev_id

Where dev-id is useful for... ?  I think there's a misuse of "groups"
in 3) above, userspace needs to know specific devices affected, thus
BDF.

> #4 is either INFO and print the BDFs or INFO2 reporting the struct
> vfio_device IDR # (eg /sys/class/vfio/vfioXXX/).

We can't assume that all the affected devices are bound to vfio,
therefore we cannot assume a vfio_device IDR exists.

> #5 is adjusting the FD list in existing RESET ioctl. Remove the need
> for userspace to specify a minimal exact list of FDs means userspace
> doesn't need the information to figure out what that list actually
> is. Pass a 0 length list and use iommufdctx.

"...doesn't need the information to figure out what the list actually
is."  That's false, userspace needs the information whether it uses it
to make a list or not, ex. pre- and post-reset processing of specific
affected devices.  Furthermore, supporting a zero length array removes
context from the existing ioctl, which has been shown to make it prone
to creating gaps in legacy group use cases, so I don't understand why
this optimization is so pervasive or important.
 
> None of these requirements suggests to me that qemu needs to know the
> group_id, or that it needs to have enough information to know how to
> fix an unavailable reset.
> 
> Did I miss a requirement here?

So what is the exact proposal?  We can't have an INFO ioctl that simply
returns error if the ownership requirements are not met as that doesn't
support 4).  So we need one or more ioctls that a) indicates whether
the ownership requirements are met and b) indicates the set of affected
devices.  Is b) only the set of affected devices within the calling
devices iommufd_ctx (ie. dev-ids), in which case we need c) a way to
report the overall set of affected devices regardless of ownership in
support of 4), BDF?

Are we back to replacing group-ids with dev-ids in the INFO structure,
where an invalid dev-id either indicates an affected device with
implied ownership (ok) or a gap in ownership (bad) and a flag somewhere
is meant to indicate the overall disposition based on the availability
of reset?  I'm not sure how that fully supports 4) since the user can't
determine if a given invalid dev-id is in fact a blocker, so do we end
up with multiple invalid IDs, perhaps one to indicate unknown but ok
and another to indicate an ownership gap?  Are devices outside of the
iommufd_ctx, but with implied ownership via group omitted entirely from
the lists?  I think we need an actual proposal here.  Thanks,

Alex

