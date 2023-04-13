Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B2C76E13E2
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Apr 2023 20:07:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 842B210E160;
	Thu, 13 Apr 2023 18:07:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 039EF10EB99
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Apr 2023 18:07:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1681409237;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=IOA7GIourt4XlsCYYtkutlqTOJFvaYitvC0BAJCLNRU=;
 b=Sdk/ORLwJ+JKUP9ok4oUPwp73qLmdLaXmdRAhGLe/Kob52pKteViL1HdFEmYRkIJxXlHkD
 o9QeyvhPjwLSJO4ucWrz9t0sHkAPKxfvQUz2bcWS5PHgFULnCVGLgYF/6xqiqjG+mwmxz/
 fqxEFhOaHXU+9WTrQSEuuIwZnXcIZxs=
Received: from mail-io1-f69.google.com (mail-io1-f69.google.com
 [209.85.166.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-180-mVQTAncNOI-zsueokdyc0Q-1; Thu, 13 Apr 2023 14:07:15 -0400
X-MC-Unique: mVQTAncNOI-zsueokdyc0Q-1
Received: by mail-io1-f69.google.com with SMTP id
 188-20020a6b15c5000000b007590817bcfbso9277058iov.12
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Apr 2023 11:07:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1681409235; x=1684001235;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=IOA7GIourt4XlsCYYtkutlqTOJFvaYitvC0BAJCLNRU=;
 b=WUO3GE7B919Z3828oBuj8ct/KI6pxW2vU6TkJ+++DeSdKVSr9ixAt7ki6lXkw0wCyl
 PGYf7eFo6G/sUQF/VSnid3mXfJOpRzS1RcfXDfnBMX6QnVpNdACXnOjavVDuJTIICoee
 lkRGu1oYe+YhZPMKuzh8UJb3UobWKrbtCEyn/LaRGr8xY74+ueWLJ20icHTrlUDkWRN+
 N2+RYCJPkv46bLewOGtTPfg3m+KDTD9c4bfPB2LPq8OhZqZHy0ewM60GA75n0CgStDzy
 XFmcWGYDDxneT2lw8aGqRQK82CRVRRj4IReiRnd38CuAibbyKy7OtdoIUV6/8Q6wDevu
 lYzw==
X-Gm-Message-State: AAQBX9c2zZaWydOc71oPJyhNGRHSx0UMZswOGlHdhLlyafzDVilMc+A8
 q7gppMG4a5kLV/MLZ27roPY0y9UE+8afWYfNYChWGLlEWsJ6haOyWTD6PiZz45PW9eCHcR4hVyz
 W85Ssdz0s8MgcEAS8Sq86IxhLox/w
X-Received: by 2002:a5e:a80b:0:b0:74d:1318:618c with SMTP id
 c11-20020a5ea80b000000b0074d1318618cmr2016126ioa.10.1681409234973; 
 Thu, 13 Apr 2023 11:07:14 -0700 (PDT)
X-Google-Smtp-Source: AKy350aNIxbTK4D/1WKJFyoeXfJddaFP2YjlcKRNN7MPTcaqR3ipJt2l6zNqwAhtPjb9PRhgDB1hHQ==
X-Received: by 2002:a5e:a80b:0:b0:74d:1318:618c with SMTP id
 c11-20020a5ea80b000000b0074d1318618cmr2016087ioa.10.1681409234657; 
 Thu, 13 Apr 2023 11:07:14 -0700 (PDT)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 g7-20020a5ec747000000b00746cb6d90c0sm618854iop.14.2023.04.13.11.07.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 13 Apr 2023 11:07:14 -0700 (PDT)
Date: Thu, 13 Apr 2023 12:07:12 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: Jason Gunthorpe <jgg@nvidia.com>
Message-ID: <20230413120712.3b9bf42d.alex.williamson@redhat.com>
In-Reply-To: <ZDfslVwqk6JtPpyD@nvidia.com>
References: <20230406115347.7af28448.alex.williamson@redhat.com>
 <ZDVfqpOCnImKr//m@nvidia.com>
 <20230411095417.240bac39.alex.williamson@redhat.com>
 <20230411111117.0766ad52.alex.williamson@redhat.com>
 <ZDWph7g0hcbJHU1B@nvidia.com>
 <20230411155827.3489400a.alex.williamson@redhat.com>
 <ZDX0wtcvZuS4uxmG@nvidia.com>
 <20230412105045.79adc83d.alex.williamson@redhat.com>
 <ZDcPTTPlni/Mi6p3@nvidia.com>
 <BN9PR11MB5276782DA56670C8209470828C989@BN9PR11MB5276.namprd11.prod.outlook.com>
 <ZDfslVwqk6JtPpyD@nvidia.com>
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

On Thu, 13 Apr 2023 08:50:45 -0300
Jason Gunthorpe <jgg@nvidia.com> wrote:

> On Thu, Apr 13, 2023 at 08:25:52AM +0000, Tian, Kevin wrote:
> > > From: Jason Gunthorpe <jgg@nvidia.com>
> > > Sent: Thursday, April 13, 2023 4:07 AM
> > > 
> > >   
> > > > in which case we need c) a way to
> > > > report the overall set of affected devices regardless of ownership in
> > > > support of 4), BDF?  
> > > 
> > > Yes, continue to use INFO unmodified.
> > >   
> > > > Are we back to replacing group-ids with dev-ids in the INFO structure,
> > > > where an invalid dev-id either indicates an affected device with
> > > > implied ownership (ok) or a gap in ownership (bad) and a flag somewhere
> > > > is meant to indicate the overall disposition based on the availability
> > > > of reset?  
> > > 
> > > As you explore in the following this gets ugly. I prefer to keep INFO
> > > unchanged and add INFO2.
> > >   
> > 
> > INFO needs a change when VFIO_GROUP is disabled. Now it assumes
> > a valid iommu group always exists:
> > 
> > vfio_pci_fill_devs()
> > {
> > 	...
> > 	iommu_group = iommu_group_get(&pdev->dev);
> > 	if (!iommu_group)
> > 		return -EPERM; /* Cannot reset non-isolated devices */
> > 	...
> > }  
> 
> This can still work in a ugly way. With a INFO2 the only purpose of
> INFO would be debugging, so if someone uses no-iommu, with hotreset
> and misconfigures it then the only downside is they don't get the
> debugging print. But we know of nothing that uses this combination
> anyhow..
> 
> > with that plus BDF cap, I'm curious what is the actual purpose of
> > INFO2 or why cannot requirement#3 reuse the information collected
> > via existing INFO?  
> 
> It can - it is just more complicated for userspace to do it, it has to
> extract and match the BDFs and then run some algorithm to determine if
> the opened devices cover the right set of devices in the reset group,
> and it has to have some special code for no-iommu.
> 
> VS info2 would return the dev_id's and a single yes/no if the right
> set is present. Kernel runs the algorithm instead of userspace, it
> seems more abstract this way.
> 
> Also, if we make iommufd return a 'ioas dev_id group' as well it
> composes nicely that userspace just needs one translation from dev_id.


IIUC, the semantics we're proposing is that an INFO2 ioctl would return
success or failure indicating whether the user has sufficient ownership
of the affected devices, and in the success case returns an array of
affected dev-ids within the user's iommufd_ctx.  Unopened, affected
devices, are not reported via INFO2, and unopened, affected devices
outside the user's scope of ownership (ie. outside the owned IOMMU
group) will generate a failure condition.

As for the INFO ioctl, it's described as unchanged, which does raise
the question of what is reported for IOMMU groups and how does the
value there coherently relate to anything else in the cdev-exclusive
vfio API...

We had already iterated a proposal where the group-id is replaced with
a dev-id in the existing ioctl and a flag indicates when the return
value is a dev-id vs group-id.  This had a gap that userspace cannot
determine if a reset is available given this information since un-owned
devices report an invalid dev-id and userspace can't know if it has
implicit ownership.

It seems cleaner to me though that we would could still re-use INFO in
a similar way, simply defining a new flag bit which is valid only in
the case of returning dev-ids and indicates if the reset is available.
Therefore in one ioctl, userspace knows if hot-reset is available
(based on a kernel determination) and can pull valid dev-ids from the
array to associate affected, owned devices, and still has the
equivalent information to know that one or more of the devices listed
with an invalid dev-id are preventing the hot-reset from being
available.

Is that an option?  Thanks,

Alex

