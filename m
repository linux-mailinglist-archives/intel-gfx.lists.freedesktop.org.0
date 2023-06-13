Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 500C5737427
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Jun 2023 20:29:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D316010E378;
	Tue, 20 Jun 2023 18:29:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3732510E389
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Jun 2023 15:13:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1686669193;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=1mDWZ2DpsM1voqtbZ2HaVjGlMW3IbraSXu8qPf879nY=;
 b=KrxpRsvsdQz6tWNa0fKfxc+FxsYwDl9l6ARu8oOm/gTmqTHUKx0zdNGj9eSIpfB+XHlqDJ
 KE/RFXLh6Tk9teOIwAIJCZVujqleG/Ptuj7YGemtKOtH3DElbgKvUq+9kecu6Ovp7NRn0W
 DNOPZY9uO4atW3VY0eD2KvkIwYdg+hU=
Received: from mail-il1-f199.google.com (mail-il1-f199.google.com
 [209.85.166.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-462-qoU5wCO_MT-pA82YDYdplA-1; Tue, 13 Jun 2023 11:13:11 -0400
X-MC-Unique: qoU5wCO_MT-pA82YDYdplA-1
Received: by mail-il1-f199.google.com with SMTP id
 e9e14a558f8ab-33d63df7cd7so64877945ab.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Jun 2023 08:13:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1686669184; x=1689261184;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=1mDWZ2DpsM1voqtbZ2HaVjGlMW3IbraSXu8qPf879nY=;
 b=b7UAizZLwTHXhQlfnGkSTUPtQEZPEYdafRAH0JFnkKXnnubTCiih19wNRSo9hVbvDw
 MoGiAcs3ISz3KtiphTrVQ+lz/0SE4bkXbP7pYIBfF26RsrxW9Ml14aMC5ohLmP0qE+rW
 as59DiRzboqsqO9ilqAVNEGgUb23P1OA0wjdqMovuF5KQpD4qpUdDk6nGWo+8gvdKKaO
 IKx5hZgiwn1JUEKZzzEgB+yy0+2by+Siwaf/I241tVWmQRYLbyjVTu+LjwZv8CTb2LXf
 MCDwBr53kM4SwncO93wFj9eAvQQYryqfg4rXUdT8wbSUkrsMdm32TIKsBRl9kFpG51b1
 /2sQ==
X-Gm-Message-State: AC+VfDxaAvpYeFWFIBUI1dwDR1kuLlVeB0zIuSmdH1f7zj2GfzA1GM4o
 zUgUFMX0dyees9JeNZ3c++CCzLLwbj/NvxsP3cHLZk5jio4ElMs6DHI9Mg5c0A4L96jNX5vrU6z
 cYRkRS5pXflGHlNNe9rr+gz2ybCmH
X-Received: by 2002:a05:6e02:4ca:b0:33a:efd3:add3 with SMTP id
 f10-20020a056e0204ca00b0033aefd3add3mr11576616ils.14.1686669183930; 
 Tue, 13 Jun 2023 08:13:03 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ5ui0B1gApskWN6xtQUGtTPUB904SgOA6ukqpFQvQFNVqEAlU3F3uxEuAqAFfnNywMpdaw+TQ==
X-Received: by 2002:a05:6e02:4ca:b0:33a:efd3:add3 with SMTP id
 f10-20020a056e0204ca00b0033aefd3add3mr11576597ils.14.1686669183671; 
 Tue, 13 Jun 2023 08:13:03 -0700 (PDT)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 c8-20020a92cf48000000b00340060ed9bbsm1738768ilr.7.2023.06.13.08.13.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Jun 2023 08:13:02 -0700 (PDT)
Date: Tue, 13 Jun 2023 09:13:01 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: "Liu, Yi L" <yi.l.liu@intel.com>
Message-ID: <20230613091301.56986440.alex.williamson@redhat.com>
In-Reply-To: <DS0PR11MB7529E84BCB100DE620FD2468C355A@DS0PR11MB7529.namprd11.prod.outlook.com>
References: <20230602121653.80017-1-yi.l.liu@intel.com>
 <20230602121653.80017-22-yi.l.liu@intel.com>
 <20230612164228.65b500e0.alex.williamson@redhat.com>
 <DS0PR11MB7529AE3701E154BF4C092E57C355A@DS0PR11MB7529.namprd11.prod.outlook.com>
 <20230613081913.279dea9e.alex.williamson@redhat.com>
 <DS0PR11MB7529EB2903151B3399F636F5C355A@DS0PR11MB7529.namprd11.prod.outlook.com>
 <20230613084828.7af51055.alex.williamson@redhat.com>
 <DS0PR11MB7529E84BCB100DE620FD2468C355A@DS0PR11MB7529.namprd11.prod.outlook.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.35; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Tue, 20 Jun 2023 18:28:21 +0000
Subject: Re: [Intel-gfx] [PATCH v12 21/24] vfio: Determine noiommu device in
 __vfio_register_dev()
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
	"kvm@vger.kernel.org" <kvm@vger.kernel.org>,
	"joro@8bytes.org" <joro@8bytes.org>, Zhenzhong@freedesktop.org,
	" <zhenzhong.duan@intel.com>,   "@freedesktop.org,
	clegoate@redhat.com, Yan@freedesktop.org,
	"nicolinc@nvidia.com" <nicolinc@nvidia.com>,
	"jgg@nvidia.com" <jgg@nvidia.com>,
	"     <intel-gvt-dev@lists.freedesktop.org>,  "@freedesktop.org,
	intel-gfx@lists.freedesktop.org, <linux-s390@vger.kernel.org>, ,
	"Tian,  Kevin" <kevin.tian@intel.com>, Xudong@freedesktop.org,
	"  <suravee.suthikulpanit@amd.com>, "@freedesktop.org,
	intel-gvt-dev@lists.freedesktop.org,,
	" <intel-gfx@lists.freedesktop.org>,   "@freedesktop.org,
	linux-s390@vger.kernel.org, Terrence@freedesktop.org,
	"yi.y.sun@linux.intel.com" <yi.y.sun@linux.intel.com>,
	"eric.auger@redhat.com" <eric.auger@redhat.com>,
	"cohuck@redhat.com" <cohuck@redhat.com>, <clegoate@redhat.com>,
	"robin.murphy@arm.com" <robin.murphy@arm.com>,
	"shameerali.kolothum.thodi@huawei.com\"          <shameerali.kolothum.thodi@huawei.com>, "@freedesktop.org,
	lulu@redhat.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 13 Jun 2023 15:01:35 +0000
"Liu, Yi L" <yi.l.liu@intel.com> wrote:

> > From: Alex Williamson <alex.williamson@redhat.com>
> > Sent: Tuesday, June 13, 2023 10:48 PM
> > 
> > On Tue, 13 Jun 2023 14:33:01 +0000
> > "Liu, Yi L" <yi.l.liu@intel.com> wrote:
> >   
> > > > From: Alex Williamson <alex.williamson@redhat.com>
> > > > Sent: Tuesday, June 13, 2023 10:19 PM
> > > >
> > > > On Tue, 13 Jun 2023 05:53:42 +0000
> > > > "Liu, Yi L" <yi.l.liu@intel.com> wrote:
> > > >  
> > > > > > From: Alex Williamson <alex.williamson@redhat.com>
> > > > > > Sent: Tuesday, June 13, 2023 6:42 AM
> > > > > >
> > > > > > On Fri,  2 Jun 2023 05:16:50 -0700
> > > > > > Yi Liu <yi.l.liu@intel.com> wrote:
> > > > > >  
> > > > > > > This moves the noiommu device determination and noiommu taint out of
> > > > > > > vfio_group_find_or_alloc(). noiommu device is determined in
> > > > > > > __vfio_register_dev() and result is stored in flag vfio_device->noiommu,
> > > > > > > the noiommu taint is added in the end of __vfio_register_dev().
> > > > > > >
> > > > > > > This is also a preparation for compiling out vfio_group infrastructure
> > > > > > > as it makes the noiommu detection and taint common between the cdev path
> > > > > > > and group path though cdev path does not support noiommu.  
> > > > > >
> > > > > > Does this really still make sense?  The motivation for the change is
> > > > > > really not clear without cdev support for noiommu.  Thanks,  
> > > > >
> > > > > I think it still makes sense. When CONFIG_VFIO_GROUP==n, the kernel
> > > > > only supports cdev interface. If there is noiommu device, vfio should
> > > > > fail the registration. So, the noiommu determination is still needed. But
> > > > > I'd admit the taint might still be in the group code.  
> > > >
> > > > How is there going to be a noiommu device when VFIO_GROUP is unset?  
> > >
> > > How about booting a kernel with iommu disabled, then all the devices
> > > are not protected by iommu. I suppose they are noiommu devices. If
> > > user wants to bound them to vfio, the kernel should have VFIO_GROUP.
> > > Otherwise, needs to fail.  
> > 
> > "noiommu" is a vfio designation of a device, it must be created by
> > vfio.    
> 
> Sure.
> 
> > There can certainly be devices which are not IOMMU backed, but
> > without vfio designating them as noiommu devices, which is only done
> > via the legacy and compat paths, there's no such thing as a noiommu
> > device.   
> 
> Yes.
> 
> > Devices without an IOMMU are simply out of scope for cdev,
> > there should never be a vfio cdev entry created for them.  Thanks,  
> 
> Actually, this is what I want to solve. I need to check if a device is
> IOMMU backed or not, and based on this info to prevent creating
> cdev entry for them in the coming cdev support or may need to
> fail registration if VFIO_GROUP is unset.
> 
> If this patch is not good. I can use the vfio_device_is_noiommu()
> written like below when VFIO_GROUP is unset. What about your
> opinion?
> 
> static inline bool vfio_device_is_noiommu(struct vfio_device *vdev)
> {
> 	struct iommu_group *iommu_group;
> 
> 	iommu_group = iommu_group_get(vdev->dev);
> 	iommu_group_put(iommu_group); /* Accepts NULL */
> 	return !iommu_group;
> }


No, please do not confuse the issue.  As we agreed above "noiommu"
means a specific thing, it's a device without IOMMU backing that vfio
has artificially included in the environment.  If we don't have
VFIO_NOIOMMU then there's no such thing as a "noiommu" device.

You can certainly use an iommu_group test to decide if a device should
be represented, but there absolutely should never be a vfio_device
created without IOMMU backing and without VFIO_NOIOMMU.  Thanks,

Alex

