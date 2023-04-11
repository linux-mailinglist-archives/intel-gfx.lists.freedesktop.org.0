Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 259916EAC5E
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Apr 2023 16:10:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E201F10EE38;
	Fri, 21 Apr 2023 14:10:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 349CA10E5DC
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Apr 2023 17:11:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1681233082;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Pru4wSn1J8eS15hl8Fm55x4gAkwrxfQ4lSZCtGAnlEY=;
 b=BpZDqzkIe/bymfiUKbLS/85XMKP1OlDGyGlTAJuBrnA05HXDa1rq0dd2c81beKBrrh63Z9
 TG7aOQji11YkjHmUWvSbb6ZgDpeTTXjXdNMiNyzxTohEHEdQapuD6ROIZX4TqqPtJwoiN7
 Fhck+iF9/GurBBs/1BILT6ycxnHFEag=
Received: from mail-il1-f197.google.com (mail-il1-f197.google.com
 [209.85.166.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-327-Ca0LHNrXONG_HBoX-Ulc_g-1; Tue, 11 Apr 2023 13:11:21 -0400
X-MC-Unique: Ca0LHNrXONG_HBoX-Ulc_g-1
Received: by mail-il1-f197.google.com with SMTP id
 b9-20020a923409000000b00326156e3a8bso829932ila.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Apr 2023 10:11:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1681233080; x=1683825080;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Pru4wSn1J8eS15hl8Fm55x4gAkwrxfQ4lSZCtGAnlEY=;
 b=f3Y61mLxaHue9sU7BCEZqlqyYvbKegwm7fhX1nJhu0B17+HOZU7bfsKd0bbRmxKV8L
 DuJNH4R+LfvQPJEsrqSYR2H6rU8HQcIAmSvWKqH5nmGT1w/rQqrc/4NgIUKvehBjQnFa
 ZTebsflZ10RibbgmXakIeeKVWTJoIAbrPEq0beOVSY1ygRyKyFNlLarhbuC5FZ4v9lHI
 1lAQ0BSMizebPhDc+8/DVTezh/2ULz/55S+ZdFxo5pqHEH2NfAvXeYwVXrMvb7VC+8Qq
 W+8LOZ71ZCQP277YtMtbg7Wa0oIn6CMgMtsEZ6TK3B4fFneMk9xdswRVWOal0CJZKW1f
 2IjQ==
X-Gm-Message-State: AAQBX9eblUOKbaDjvfqoxzoR08AsVXbvYnOWhif6DmUFuecoqyUqfJhI
 NwQzoqpgymSbFLzeZffkDYwtELjI/tLJi1LtRdpiO5drXiHL7uoXZhW8LP7vsyemlRDs62GBnhP
 ejh2veUjYzROdIyjtjTs7DbX4ZVxN
X-Received: by 2002:a6b:c897:0:b0:760:a418:2507 with SMTP id
 y145-20020a6bc897000000b00760a4182507mr188867iof.1.1681233080313; 
 Tue, 11 Apr 2023 10:11:20 -0700 (PDT)
X-Google-Smtp-Source: AKy350ZYsautaeHqRkRwEXJm6JG4hlSAmw0cm1T0Wkx7MrW3wE/+JenB6cHwiIQ+rkkkN+Jf4bTjMw==
X-Received: by 2002:a6b:c897:0:b0:760:a418:2507 with SMTP id
 y145-20020a6bc897000000b00760a4182507mr188846iof.1.1681233080012; 
 Tue, 11 Apr 2023 10:11:20 -0700 (PDT)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 v3-20020a05663812c300b0040b64b68862sm4155947jas.165.2023.04.11.10.11.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 11 Apr 2023 10:11:19 -0700 (PDT)
Date: Tue, 11 Apr 2023 11:11:17 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: Jason Gunthorpe <jgg@nvidia.com>
Message-ID: <20230411111117.0766ad52.alex.williamson@redhat.com>
In-Reply-To: <20230411095417.240bac39.alex.williamson@redhat.com>
References: <20230405102545.41a61424.alex.williamson@redhat.com>
 <ZC2jsQuWiMYM6JZb@nvidia.com>
 <20230405105215.428fa9f5.alex.williamson@redhat.com>
 <ZC2un1LaTUR1OrrJ@nvidia.com>
 <20230405125621.4627ca19.alex.williamson@redhat.com>
 <ZC3KJUxJa0O0M+9O@nvidia.com>
 <20230405134945.29e967be.alex.williamson@redhat.com>
 <ZC4CwH2ouTfZ9DNN@nvidia.com>
 <DS0PR11MB75292DA91ED15AE94A85EB3DC3919@DS0PR11MB7529.namprd11.prod.outlook.com>
 <20230406115347.7af28448.alex.williamson@redhat.com>
 <ZDVfqpOCnImKr//m@nvidia.com>
 <20230411095417.240bac39.alex.williamson@redhat.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.35; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Fri, 21 Apr 2023 14:09:20 +0000
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
Cc: Yanting@freedesktop.org,
	"mjrosato@linux.ibm.com" <mjrosato@linux.ibm.com>,
	"jasowang@redhat.com" <jasowang@redhat.com>,
	"peterx@redhat.com" <peterx@redhat.com>,
	"  <lulu@redhat.com>, "@freedesktop.org,
	suravee.suthikulpanit@amd.com,
	"chao.p.peng@linux.intel.com" <chao.p.peng@linux.intel.com>,
	"Liu,  Yi L" <yi.l.liu@intel.com>,
	"kvm@vger.kernel.org" <kvm@vger.kernel.org>,
	"joro@8bytes.org" <joro@8bytes.org>, Yan@freedesktop.org,
	"nicolinc@nvidia.com" <nicolinc@nvidia.com>,
	"     <intel-gvt-dev@lists.freedesktop.org>,  "@freedesktop.org,
	intel-gfx@lists.freedesktop.org, <linux-s390@vger.kernel.org>, ,
	Xudong@freedesktop.org, Zhenzhong@freedesktop.org,
	"  <suravee.suthikulpanit@amd.com>, "@freedesktop.org,
	intel-gvt-dev@lists.freedesktop.org,,
	" <intel-gfx@lists.freedesktop.org>,   "@freedesktop.org,
	linux-s390@vger.kernel.org, Terrence@freedesktop.org,
	"yi.y.sun@linux.intel.com" <yi.y.sun@linux.intel.com>,
	"eric.auger@redhat.com" <eric.auger@redhat.com>,
	"cohuck@redhat.com" <cohuck@redhat.com>,
	"robin.murphy@arm.com" <robin.murphy@arm.com>,
	"shameerali.kolothum.thodi@huawei.com\"          <shameerali.kolothum.thodi@huawei.com>, "@freedesktop.org,
	lulu@redhat.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

[Appears the list got dropped, replying to my previous message to re-add]

On Tue, 11 Apr 2023 13:32:16 -0300
Jason Gunthorpe <jgg@nvidia.com> wrote:

> On Tue, Apr 11, 2023 at 09:54:17AM -0600, Alex Williamson wrote:
> > On Tue, 11 Apr 2023 10:24:58 -0300
> > Jason Gunthorpe <jgg@nvidia.com> wrote:
> >   
> > > On Thu, Apr 06, 2023 at 11:53:47AM -0600, Alex Williamson wrote:
> > >   
> > > > Where whether a device is opened is subject to change outside of the
> > > > user's control.  This essentially allows the user to perform hot-resets
> > > > of devices outside of their ownership so long as the device is not
> > > > used elsewhere, versus the current requirement that the user own all the
> > > > affected groups, which implies device ownership.  It's not been
> > > > justified why this feature needs to exist, imo.    
> > > 
> > > The cdev API doesn't have the notion that owning a group means you
> > > "own" some collection of devices. It still happens as a side effect,
> > > but it isn't obviously part of the API. I'm really loath to
> > > re-introduce that group-based concept just for this. We are trying
> > > reduce the group API surface.
> > > 
> > > How about a different direction.
> > > 
> > > We add a new uAPI for cdev mode that is "take ownership of the reset
> > > group". Maybe it can be a flag in during bind.
> > > 
> > > When requested vfio will ensure that every device in the reset group
> > > is only bound to this iommufd_ctx or left closed. Now and in the
> > > future. Since no-iommu has no iommufd_ctx this means we can open only
> > > one device in the reset group.
> > > 
> > > With this flag RESET is guaranteed to always work by definition.
> > > 
> > > We continue with the zero-length FD, but we can just replace the
> > > security checks with a check if we are in reset group ownership mode.
> > > 
> > > _INFO is unchanged.
> > > 
> > > We decide if we add a new IOCTL to return the BDF so the existing
> > > _INFO can get back to the dev_id or a new IOCTL that returns the
> > > dev_id list of the reset group.
> > > 
> > > Userspace is required to figure out the extent of the reset, but we
> > > don't require that userspace prove to the kernel it did this when
> > > requesting the reset.  
> > 
> > Take for example a multi-function PCIe device with ACS isolation between
> > functions, are you going to allow a user who has only been granted
> > ownership of a subset of functions control of the entire dev_set?  
> 
> Our cdev model says that opening a cdev locks out other cdevs from
> independent use, eg because of the group sharing. Extending this to
> include the reset group as well seems consistent.

The DMA ownership model based on the IOMMU group is consistent with
legacy vfio, but now you're proposing a new ownership model that
optionally allows a user to extend their ownership, opportunistically
lock out other users, and wreaking havoc for management utilities that
also have no insight into dev_sets or userspace driver behavior.

> There is some security concern here, but that goes both ways, a 3rd
> party should not be able to break an application that needs to use
> this RESET and had sufficient privileges to assert an ownership.

There are clearly scenarios we have now that could break.  For example,
today if QEMU doesn't own all the IOMMU groups for a mult-function
device, it can't do a reset, the remaining functions are available for
other users.  As I understand the proposal, QEMU now gets to attempt to
claim ownership of the dev_set, so it opportunistically extends its
ownership and may block other users from the affected devices.
Ordering makes this effectively unpredictable, if a userspace like DPDK
that doesn't assert dev_set ownership is started first, QEMU can start
and be denied hot-reset support.  In the reverse ordering, the DPDK
application can be locked out by QEMU.

> I'd say anyone should be able to assert RESET ownership if, like
> today, the iommufd_ctx has all the groups of the dev_set inside
> it. Once asserted it becomes safe against all forms of hotplug, and
> continues to be safe even if some of the devices are closed. eg hot
> unplugging from the VM doesn't change the availability of RESET.
> 
> This comes from your ask that qemu know clearly if RESET works, and it
> doesn't change while qemu is running. This seems stronger and clearer
> than the current implicit scheme. It also doesn't require usespace to
> do any calculations with groups or BDFs to figure out of RESET is
> available, kernel confirms it directly.

As above, clarity and predictability seem lacking in this proposal.
With the current scheme, the ownership of the affected devices is
implied if they exist within an owned group, but the strength of that
ownership is clear.  Affected devices outside the set of owned groups
says that hot-reset is unavailable without any of this "but QEMU might
be able to request it" or "unless the affected device is currently
unopened" variables.

> > seems this proposal essentially extends the ownership model to the
> > greater of the dev_set or iommu group, apparently neither of which
> > are explicitly exposed to the user in the cdev API.  
> 
> IIRC the group id can be learned from sysfs before opening the cdev
> file. Something like /sys/class/vfio/XX/../../iommu_group

And in the passed cdev fd model... ?

> We should also have an iommufd ioctl to report the "same ioas"
> groupings of dev_ids to make it easy on userspace. I haven't checked
> to see what the current qemu patches are doing with this..

Seems we're ignoring that no-iommu doesn't have a valid iommufd.

> > How does a user determine when devices cannot be used independently
> > in the cdev API?   
> 
> We have this problem right now. The only way to learn the reset group
> is to call the _INFO ioctl. We could add a sysfs "pci_reset_group"
> under /sys/class/vfio/XX/ if something needs it earlier.

For all the complaints about complexity, now we're asking management
tools to not only take into account IOMMU groups, but also reset
groups, and some inferred knowledge about the application and devices
to speculate whether reset group ownership is taken by a given
userspace??  Thanks,

Alex

