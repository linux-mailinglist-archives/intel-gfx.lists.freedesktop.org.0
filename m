Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8AD56D26FE
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Mar 2023 19:50:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DCD410E318;
	Fri, 31 Mar 2023 17:50:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DFE710E26E
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Mar 2023 17:49:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1680284996;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=m2hw7lrP24KFanzOvV8I/Ad+4zEqFeH3Txo9b1cjHps=;
 b=IGHVKHtUs88b2VU3vneOwAFlMy9+p/vUw7GxduUW/HWRsIqWlf8TD1hlHWjxQGqppfjWBA
 KtzpXv5Bvxf3ZDNuXtbSVGBavpY6HvEHUtuQWXy1CfQjmBSAOPEhcPqJIjk5h5Ucxoo72d
 raJs2ERrV1vakGAZF99Q+Fy/zHVIwoE=
Received: from mail-il1-f200.google.com (mail-il1-f200.google.com
 [209.85.166.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-149-NkhS8NHgMNOQYsItLaChKg-1; Fri, 31 Mar 2023 13:49:55 -0400
X-MC-Unique: NkhS8NHgMNOQYsItLaChKg-1
Received: by mail-il1-f200.google.com with SMTP id
 d6-20020a92d786000000b00316f1737173so15142908iln.16
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Mar 2023 10:49:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680284993;
 h=content-transfer-encoding:mime-version:organization:references
 :in-reply-to:message-id:subject:cc:to:from:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=m2hw7lrP24KFanzOvV8I/Ad+4zEqFeH3Txo9b1cjHps=;
 b=DEDk19p7f00s8rSyUyNTdb3duXqiiqSiPAKoyt+Kwy4/7iW4DUeGKRiLVrjxf22Epk
 uUqVmKfItYLG+93s2tFX10nc7zLTsI9ZIEgsFYM5tzwm/RsHwHbb0H1TGIWn4iOzxI0u
 bB1KTk3y18I0RqZrhiqmABbqpcDqaLuPF/eHFi3Qtv95OusJNvhQDPt1JrzOF/u6bNDf
 WFgeZWuA0GO0fsUfgrPkbh69MdP7YLuX1A2SE7lF8AauYVTvWKTlGJ+ve4gZ5zgAxBqw
 W1RtFdJRSsgQ1AjdlRA/TcPvG6nQiyrcF43HoF2AGy4zf4h9DCcYOA83YFB2I4aZfkjj
 ylCg==
X-Gm-Message-State: AO0yUKUZYslumQtgldR0YSbiEpo5R5AS/p5I7t7zbZtlWJBl99ef1ECN
 SJKA6rBdupgpN2dRyVAlRewAY1TSd/AoKe10VEKXRXZMKuJn4IekYhaEbc+ixvIaLheeChL54n/
 FrnuTiW5wJU569CefhxaxKRHD3jPz
X-Received: by 2002:a6b:d911:0:b0:759:706d:a0b2 with SMTP id
 r17-20020a6bd911000000b00759706da0b2mr18805419ioc.13.1680284992835; 
 Fri, 31 Mar 2023 10:49:52 -0700 (PDT)
X-Google-Smtp-Source: AK7set+DPRg+uCCuz/U6HNYYJj0QRQjzjZLhse/nHV02SSaPBWJ2hWNldvvYAEt97qV6PiOkx5PxfQ==
X-Received: by 2002:a6b:d911:0:b0:759:706d:a0b2 with SMTP id
 r17-20020a6bd911000000b00759706da0b2mr18805391ioc.13.1680284992497; 
 Fri, 31 Mar 2023 10:49:52 -0700 (PDT)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 c11-20020a5ea80b000000b0075ba6593512sm681396ioa.53.2023.03.31.10.49.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 31 Mar 2023 10:49:51 -0700 (PDT)
Date: Fri, 31 Mar 2023 11:49:49 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: "Xu, Terrence" <terrence.xu@intel.com>
Message-ID: <20230331114949.3dfec232.alex.williamson@redhat.com>
In-Reply-To: <BL3PR11MB64830DC9AC0517B56667532DF08F9@BL3PR11MB6483.namprd11.prod.outlook.com>
References: <20230327093458.44939-1-yi.l.liu@intel.com>
 <BL3PR11MB64830DC9AC0517B56667532DF08F9@BL3PR11MB6483.namprd11.prod.outlook.com>
Organization: Red Hat
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2 00/10] Introduce new methods for
 verifying ownership in vfio PCI hot reset
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
 Xudong" <xudong.hao@intel.com>, "peterx@redhat.com" <peterx@redhat.com>,
 "chao.p.peng@linux.intel.com" <chao.p.peng@linux.intel.com>,
 "linux-s390@vger.kernel.org" <linux-s390@vger.kernel.org>, "Liu,
 Yi L" <yi.l.liu@intel.com>, "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 "lulu@redhat.com" <lulu@redhat.com>, "Jiang,
 Yanting" <yanting.jiang@intel.com>, "joro@8bytes.org" <joro@8bytes.org>,
 "nicolinc@nvidia.com" <nicolinc@nvidia.com>, "jgg@nvidia.com" <jgg@nvidia.com>,
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

On Fri, 31 Mar 2023 17:27:27 +0000
"Xu, Terrence" <terrence.xu@intel.com> wrote:

> > -----Original Message-----
> > From: Liu, Yi L <yi.l.liu@intel.com>
> > Sent: Monday, March 27, 2023 5:35 PM
> > 
> > VFIO_DEVICE_PCI_HOT_RESET requires user to pass an array of group fds to
> > prove that it owns all devices affected by resetting the calling device. This
> > series introduces several extensions to allow the ownership check better
> > aligned with iommufd and coming vfio device cdev support.
> > 
> > First, resetting an unopened device is always safe given nobody is using it. So
> > relax the check to allow such devices not covered by group fd array. [1]
> > 
> > When iommufd is used we can simply verify that all affected devices are
> > bound to a same iommufd then no need for the user to provide extra fd
> > information. This is enabled by the user passing a zero-length fd array and
> > moving forward this should be the preferred way for hot reset. [2]
> > 
> > However the iommufd method has difficulty working with noiommu devices
> > since those devices don't have a valid iommufd, unless the noiommu device
> > is in a singleton dev_set hence no ownership check is required. [3]
> > 
> > For noiommu backward compatibility a 3rd method is introduced by allowing
> > the user to pass an array of device fds to prove ownership. [4]
> > 
> > As suggested by Jason [5], we have this series to introduce the above stuffs
> > to the vfio PCI hot reset. Per the dicussion in [6], this series also adds a new
> > _INFO ioctl to get hot reset scope for given device.
> > 
> > [1] https://lore.kernel.org/kvm/Y%2FdobS6gdSkxnPH7@nvidia.com/
> > [2] https://lore.kernel.org/kvm/Y%2FZOOClu8nXy2toX@nvidia.com/#t
> > [3] https://lore.kernel.org/kvm/ZACX+Np%2FIY7ygqL5@nvidia.com/
> > [4]
> > https://lore.kernel.org/kvm/DS0PR11MB7529BE88460582BD599DC1F7C3B19
> > @DS0PR11MB7529.namprd11.prod.outlook.com/#t
> > [5] https://lore.kernel.org/kvm/ZAcvzvhkt9QhCmdi@nvidia.com/
> > [6] https://lore.kernel.org/kvm/ZBoYgNq60eDpV9Un@nvidia.com/
> > 
> > Change log:
> > 
> > v2:
> >  - Split the patch 03 of v1 to be 03, 04 and 05 of v2 (Jaon)
> >  - Add r-b from Kevin and Jason
> >  - Add patch 10 to introduce a new _INFO ioctl for the usage of device
> >    fd passing usage in cdev path (Jason, Alex)
> > 
> > v1: https://lore.kernel.org/kvm/20230316124156.12064-1-yi.l.liu@intel.com/
> > 
> > Regards,
> > 	Yi Liu
> > 
> > Yi Liu (10):
> >   vfio/pci: Update comment around group_fd get in
> >     vfio_pci_ioctl_pci_hot_reset()
> >   vfio/pci: Only check ownership of opened devices in hot reset
> >   vfio/pci: Move the existing hot reset logic to be a helper
> >   vfio-iommufd: Add helper to retrieve iommufd_ctx and devid for
> >     vfio_device
> >   vfio/pci: Allow passing zero-length fd array in
> >     VFIO_DEVICE_PCI_HOT_RESET
> >   vfio: Refine vfio file kAPIs for vfio PCI hot reset
> >   vfio: Accpet device file from vfio PCI hot reset path
> >   vfio/pci: Renaming for accepting device fd in hot reset path
> >   vfio/pci: Accept device fd in VFIO_DEVICE_PCI_HOT_RESET ioctl
> >   vfio/pci: Add VFIO_DEVICE_GET_PCI_HOT_RESET_GROUP_INFO
> > 
> >  drivers/iommu/iommufd/device.c   |  12 ++
> >  drivers/vfio/group.c             |  32 ++--
> >  drivers/vfio/iommufd.c           |  16 ++
> >  drivers/vfio/pci/vfio_pci_core.c | 244 ++++++++++++++++++++++++-------
> >  drivers/vfio/vfio.h              |   2 +
> >  drivers/vfio/vfio_main.c         |  44 ++++++
> >  include/linux/iommufd.h          |   3 +
> >  include/linux/vfio.h             |  14 ++
> >  include/uapi/linux/vfio.h        |  65 +++++++-
> >  9 files changed, 364 insertions(+), 68 deletions(-)
> > 
> > --
> > 2.34.1  
> 
> Verified this series by "Intel GVT-g GPU device mediated passthrough".
> Passed VFIO legacy mode / compat mode / cdev mode basic functionality and GPU force reset test.
> 
> Tested-by: Terrence Xu <terrence.xu@intel.com>

Seems like only this "GPU force reset test" is relevant to the new
functionality of this series, GVT-g does not and has no reason to
support the HOT_RESET ioctls used here.  Can you provide more details
of the force-reset test?  What userspace driver is being used?  Thanks,

Alex

