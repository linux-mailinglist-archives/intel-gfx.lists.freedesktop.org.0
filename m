Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 887866971EA
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Feb 2023 00:42:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46F2110E064;
	Tue, 14 Feb 2023 23:42:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4103710E10C
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Feb 2023 23:42:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1676418162;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ZUUIJ0cR3hLFYeEAbqlgShBHqdmwbGBdBl0fRIuzsMc=;
 b=S9+yx2Xz8MgtgpdQ/xRh0pJuIIvnuKqkId+SOv29VcivcN6E5OSAJCv8g/6HLe20VQqEOM
 8YiyaHPM0Ibot8Jp5Zsx5sdDNzovUDDU8j1NnMctvI+3bw7+KRrJsu1mwjljfdGwKf5uo6
 lXhCdy9Z5I1409lSWPf8q5qnRTNAC/0=
Received: from mail-il1-f199.google.com (mail-il1-f199.google.com
 [209.85.166.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-549-N6Bo3tFwNPCcXrRtO3jc6g-1; Tue, 14 Feb 2023 18:42:38 -0500
X-MC-Unique: N6Bo3tFwNPCcXrRtO3jc6g-1
Received: by mail-il1-f199.google.com with SMTP id
 w3-20020a92d2c3000000b003152aeb055eso7295271ilg.11
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Feb 2023 15:42:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=ZUUIJ0cR3hLFYeEAbqlgShBHqdmwbGBdBl0fRIuzsMc=;
 b=ZvMLtjByGNKB8jXkSnTXzYaGlgP1swgEgI2zGc8j5Kq6NCjRQMA5ywwDyUPkvEhqRW
 fdgrwvacFZKG7gxKY9dOoir4o6po6uIuM8CjeMmk82HuJMa15iaYhY5SzLoh6MPG0CUE
 BTWxVFVGnOduFTu/W/mF9nR+a2XFcQm5rUGiZRfL9zm1bcS8tbWrUSzuj3lgZudsYxUg
 pYf0360oMV26MEg54FOlJuth4fX1V5l4aaFmVM0+OFARYUijBeV3/VgKnKlRfHKmdjuW
 tcTq0QB+8mXXgksdhcV3elPWRR8PE7DaJyodRCIEVNcr+9e3ScThCFahz2jFB5sbmine
 AjTw==
X-Gm-Message-State: AO0yUKUq4ElWAJwjqxpL/HcXqwmymzs1X0cuOQcpEROEZ0ONDJ48vKS5
 bvVQoAjp/NXNuv3pqdxEiYSdAdn6hZNrGqDQm33FslKhGxYD5jw+NwSxZgEqy3B0ptvy4Lp567G
 uPahO84lcokcAelS7EZ0+446ZKkhW
X-Received: by 2002:a05:6e02:1989:b0:311:66d:47aa with SMTP id
 g9-20020a056e02198900b00311066d47aamr486645ilf.26.1676418158125; 
 Tue, 14 Feb 2023 15:42:38 -0800 (PST)
X-Google-Smtp-Source: AK7set+cnwaRu+xYLJYwKfQ18mKejRaIiksmj5ioXJ6on5Mp2TS8hLl7ygq6BKPlyKgT13iA1wicDA==
X-Received: by 2002:a05:6e02:1989:b0:311:66d:47aa with SMTP id
 g9-20020a056e02198900b00311066d47aamr486634ilf.26.1676418157875; 
 Tue, 14 Feb 2023 15:42:37 -0800 (PST)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 b4-20020a02a584000000b003c4e8efcd09sm310027jam.32.2023.02.14.15.42.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Feb 2023 15:42:37 -0800 (PST)
Date: Tue, 14 Feb 2023 16:42:35 -0700
From: Alex Williamson <alex.williamson@redhat.com>
To: Jason Gunthorpe <jgg@nvidia.com>
Message-ID: <20230214164235.64e2dccb.alex.williamson@redhat.com>
In-Reply-To: <Y+wYX34sPvPQmGSr@nvidia.com>
References: <20230213151348.56451-1-yi.l.liu@intel.com>
 <20230213151348.56451-6-yi.l.liu@intel.com>
 <20230214152627.3a399523.alex.williamson@redhat.com>
 <Y+wYX34sPvPQmGSr@nvidia.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.35; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v3 05/15] kvm/vfio: Accept vfio device file
 from userspace
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
Cc: linux-s390@vger.kernel.org, Yi Liu <yi.l.liu@intel.com>,
 yi.y.sun@linux.intel.com, mjrosato@linux.ibm.com, kvm@vger.kernel.org,
 Michael Ellerman <mpe@ellerman.id.au>, intel-gvt-dev@lists.freedesktop.org,
 joro@8bytes.org, cohuck@redhat.com, peterx@redhat.com, eric.auger@redhat.com,
 Timothy Pearson <tpearson@raptorengineering.com>, nicolinc@nvidia.com,
 shameerali.kolothum.thodi@huawei.com, suravee.suthikulpanit@amd.com,
 intel-gfx@lists.freedesktop.org, chao.p.peng@linux.intel.com, lulu@redhat.com,
 robin.murphy@arm.com, jasowang@redhat.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 14 Feb 2023 19:25:19 -0400
Jason Gunthorpe <jgg@nvidia.com> wrote:

> On Tue, Feb 14, 2023 at 03:26:27PM -0700, Alex Williamson wrote:
> > > index 857d6ba349e1..d869913baafd 100644
> > > --- a/virt/kvm/vfio.c
> > > +++ b/virt/kvm/vfio.c
> > > @@ -286,18 +286,18 @@ static int kvm_vfio_set_file(struct kvm_device *dev, long attr,
> > >  	int32_t fd;
> > >  
> > >  	switch (attr) {
> > > -	case KVM_DEV_VFIO_GROUP_ADD:
> > > +	case KVM_DEV_VFIO_FILE_ADD:
> > >  		if (get_user(fd, argp))
> > >  			return -EFAULT;
> > >  		return kvm_vfio_file_add(dev, fd);
> > >  
> > > -	case KVM_DEV_VFIO_GROUP_DEL:
> > > +	case KVM_DEV_VFIO_FILE_DEL:
> > >  		if (get_user(fd, argp))
> > >  			return -EFAULT;
> > >  		return kvm_vfio_file_del(dev, fd);
> > >  
> > >  #ifdef CONFIG_SPAPR_TCE_IOMMU
> > > -	case KVM_DEV_VFIO_GROUP_SET_SPAPR_TCE:
> > > +	case KVM_DEV_VFIO_FILE_SET_SPAPR_TCE:
> > >  		return kvm_vfio_file_set_spapr_tce(dev, arg);  
> > 
> > I don't see that the SPAPR code is so easily fungible to a device
> > file descriptor.  The kvm_vfio_spapr_tce data structure includes a
> > groupfd, which is required to match a groupfd on the file_list.  So
> > a SPAPR user cannot pass a cdev via FILE_ADD if they intend to use
> > this TCE code.  
> 
> SPAPR cannot use cdev at all, cdev mode only works with iommufd.
> 
> So with my other remark about blocking unbound cdevs, in SPAPR mode
> you can never open a cdev and make it bound thus
> kvm_vfio_file_iommu_group() and others will return NULL always for
> cdev.
> 
> Thus AFAICT this is all fine.

A device file opened through a group could be passed through this
interface though, right?  Do we just chalk that up to user error?
Maybe the SPAPR extension at least needs to be documented as relying on
registering groups rather than devices.
 
> Yi, you should also add some kconfig stuff to ensure that SPAPR always
> has the group interface compiled in.
> 
> > That also makes me wonder what we're really gaining in forcing this
> > generalization from group to file.    
> 
> I think it is just less code overall. Otherwise we need to needlessly
> double quite a lot of stuff, rather pointlessly, IMHO.
> 
> I'm still thinking about proposing to just delete all this SPAPR
> stuff. Power still hasn't had the patches applied to make it work
> again so it seems to all be dead.

There's been some off-list discussion about at least fixing SPAPR
support, but yes, it either needs to get some love or we ought to think
about its future.  Thanks,

Alex

