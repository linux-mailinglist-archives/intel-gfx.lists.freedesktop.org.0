Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 47C016D86A9
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Apr 2023 21:18:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3934410E194;
	Wed,  5 Apr 2023 19:18:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F8C610E194
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Apr 2023 19:18:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1680722326;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=27u0zO9v+ob0UQ7ffRwx7K9DmjDruN2pjLXeoypPuEc=;
 b=i7sH1mI6NoVGbGaSN0g+7g2bZ3zHJEJwyo0XZ6e7D8PiPTR1iFInVe+AoweBgtplTYd0ta
 89OskPHDGal8QaLHwmCcnrrnV4BtcOfMATdSmoZTNNg4KjbiW9aG0uCn3NyRSvLZoCgozx
 fVM0CiHum9S+VvQjVKFTyl0HYOVN74M=
Received: from mail-il1-f197.google.com (mail-il1-f197.google.com
 [209.85.166.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-3-KQQjnct8NYysRk4-NI5dYA-1; Wed, 05 Apr 2023 15:18:44 -0400
X-MC-Unique: KQQjnct8NYysRk4-NI5dYA-1
Received: by mail-il1-f197.google.com with SMTP id
 l4-20020a056e02066400b00326ce9ccbadso2869014ilt.5
 for <intel-gfx@lists.freedesktop.org>; Wed, 05 Apr 2023 12:18:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680722324;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=27u0zO9v+ob0UQ7ffRwx7K9DmjDruN2pjLXeoypPuEc=;
 b=BkFGgX4XwVabYRuo9v/Mm6MoaUKBXEGMNvdleQGMbkztDE9h5PuA57pHaM3ICizWky
 LwiYoW4ueTvPQioV5uZG+l9xIY7noggBkg/5CRu+pKwezCeEjHOyWs0mjp4eZhDggzWU
 IYSUgRvTbRdRKt5+nOWWxCpqLqZcQlNXkORPOnzoyg+q/Z7wt+sfqDQ7WRN7Esalk/Fh
 GiGmpeYSPZCFXyxxTSLAcpifHo/HHhMrYfOc6ZCEuUIAcuLP7PlN+J2U7EZw4yXoY8LN
 ct+JqOTGPwEDh4VsSMl8AJR7rHpZKiimozS53XJIPiRoMQRjwEVkBBKk7VwrEQs1mxW4
 cErg==
X-Gm-Message-State: AAQBX9dcPgWkN3g0n4dnMHBEr8RPYhtX89tUdjEdMI+bSu7S+MrX7MY6
 jeHIAs2gMF/mnYvavnQ2n4Xkv/9I5ATVKR+cbJ5Vb8hkQRzXW4Y/+OdOC37RtrSgbT/2yrgxFTJ
 NEsmrtDzktyzg9iSKxIXplkrYG/Zv
X-Received: by 2002:a5e:c01a:0:b0:6df:fa5a:fa05 with SMTP id
 u26-20020a5ec01a000000b006dffa5afa05mr5158335iol.0.1680722324048; 
 Wed, 05 Apr 2023 12:18:44 -0700 (PDT)
X-Google-Smtp-Source: AKy350aKp1rN/Q9seH+uDr5Kxzn5Y5DEGvl7YEySn1ATsYRV0m1WagFqXA1p2GEjk9lkOc3YbYLwjQ==
X-Received: by 2002:a5e:c01a:0:b0:6df:fa5a:fa05 with SMTP id
 u26-20020a5ec01a000000b006dffa5afa05mr5158303iol.0.1680722323678; 
 Wed, 05 Apr 2023 12:18:43 -0700 (PDT)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 b4-20020a056602218400b00758917bc309sm4128612iob.31.2023.04.05.12.18.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 05 Apr 2023 12:18:43 -0700 (PDT)
Date: Wed, 5 Apr 2023 13:18:42 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: Jason Gunthorpe <jgg@nvidia.com>
Message-ID: <20230405131842.3bbc53f3.alex.williamson@redhat.com>
In-Reply-To: <20230405125621.4627ca19.alex.williamson@redhat.com>
References: <20230401144429.88673-1-yi.l.liu@intel.com>
 <20230401144429.88673-13-yi.l.liu@intel.com>
 <a937e622-ce32-6dda-d77c-7d8d76474ee0@redhat.com>
 <DS0PR11MB7529D4E354C3B85D7698017DC3909@DS0PR11MB7529.namprd11.prod.outlook.com>
 <20230405102545.41a61424.alex.williamson@redhat.com>
 <ZC2jsQuWiMYM6JZb@nvidia.com>
 <20230405105215.428fa9f5.alex.williamson@redhat.com>
 <ZC2un1LaTUR1OrrJ@nvidia.com>
 <20230405125621.4627ca19.alex.williamson@redhat.com>
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
 Xudong" <xudong.hao@intel.com>, "peterx@redhat.com" <peterx@redhat.com>, "Xu,
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

On Wed, 5 Apr 2023 12:56:21 -0600
Alex Williamson <alex.williamson@redhat.com> wrote:

> On Wed, 5 Apr 2023 14:23:43 -0300
> Jason Gunthorpe <jgg@nvidia.com> wrote:
> 
> > On Wed, Apr 05, 2023 at 10:52:15AM -0600, Alex Williamson wrote:  
> > > On Wed, 5 Apr 2023 13:37:05 -0300
> > > Jason Gunthorpe <jgg@nvidia.com> wrote:
> > >     
> > > > On Wed, Apr 05, 2023 at 10:25:45AM -0600, Alex Williamson wrote:
> > > >     
> > > > > But that kind of brings to light the question of what does the user do
> > > > > when they encounter this situation.      
> > > > 
> > > > What does it do now when it encounters a group_id it doesn't
> > > > understand? Userspace already doesn't know if the foreign group is
> > > > open or not, right?    
> > > 
> > > It's simple, there is currently no screwiness around opened devices.
> > > If the caller doesn't own all the groups mapping to the affected
> > > devices, hot-reset is not available.    
> > 
> > That still has nasty edge cases. If the reset group spans beyond a
> > single iommu group you end up with qemu being unable to operate reset
> > at all, and it is unfixable from an API perspective as we can't pass
> > in groups that VFIO isn't going to use.  
> 
> Hmm, s/nasty/niche/?  Yes, QEMU currently has no way to own a group
> without assigning a device from the group, but technically that could
> be fixed within QEMU.  If QEMU doesn't own that affected group, then it
> can't very well count on that group to not be used in some other way
> when it comes time to actually do a hot-reset.
>  
> > I think you are right, the fact we'd have to return -1 dev_ids to this
> > modified API is pretty damaging, it doesn't seem like a good
> > direction.
> >   
> > > This leads to scenarios where the info ioctl indicates a hot-reset is
> > > initially available, perhaps only because one of the affected devices
> > > was not opened at the time, and now it fails when QEMU actually tries
> > > to use it.    
> > 
> > I would like it if the APIs toward the kernel were only about the
> > kernel's security apparatus. It is makes it easier to reason about the
> > kernel side and gives nice simple well defined APIs.  
> 
> Usability needs to be a consideration as well.  An interface where the
> result is effectively arbitrary from a user perspective because the
> kernel is solely focused on whether the operation is allowed,
> evaluating constraints that the user is unaware of and cannot control,
> is unusable.
> 
> > This is a good point that qemu needs to make a policy decision if it
> > is happy about the VFIO configuration - but that is a policy decision
> > that should not become entangled with the kernel's security checks.
> > 
> > Today qemu can make this policy choice the same way it does right now
> > - call _INFO and check the group_ids. It gets the exact same outcome
> > as today. We already discussed that we need to expose the group ID
> > through an ioctl someplace.  
> 
> QEMU can make a policy decision today because the kernel provides a
> sufficiently reliable interface, ie. based on the set of owned groups, a
> hot-reset is all but guaranteed to work.  If we focus only on whether a
> given reset is allowed from a kernel perspective and ignore that
> userspace needs some predictability of the kernel behavior, then QEMU
> cannot reasonable make that policy decision.
> 
> > If this is too awkward we could add a query to the kernel if the cdev
> > is "reset exclusive" - eg the iommufd covers all the groups that span
> > the reset set.  
> 
> That's essentially what we have if there are valid dev-ids for each
> affected device in the info ioctl.  I don't think it helps the user
> experience to create loopholes where the hot-reset ioctl can still work
> in spite of those missing devices.  The group interface uses the fact
> that ownership of the group implies ownership of all devices within the
> group such that the user only needs to prove group ownership.
> 
> But we still have underlying groups even with the cdev model, with the
> same ownership principles, so don't we just need to prove group
> ownership based on a device fd rather than a group fd?
> 
> For example, we have a VFIO_DEVICE_GET_INFO ioctl that supports
> capability chains, we could add a capability that reports the group ID
> for the device.  The hot-reset info ioctl remains as it is today,
> reporting group-ids and bdfs.  The hot-reset ioctl itself is modified to
> transparently support either group fds or device fds.  The user can now
> map cdevs to group-ids and therefore follow the same rules as groups,
> providing at least one representative device fd for each group.  We've
> essentially already enabled this by allowing the limit of user provided
> fds equal to the number of affected devices.

If I'm not mistaken, I think this resolves cdev no-iommu to work
equivalently to groups as well.  Thanks,

Alex

