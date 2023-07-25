Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 82B907620C8
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jul 2023 20:00:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6398988668;
	Tue, 25 Jul 2023 18:00:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B50C10E194
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jul 2023 18:00:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1690308014;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Xe7YC8PFiFz0x9zHH/WNZAVHTrl6dN5xMKZiMTBXnw4=;
 b=PWHYqAqBN8KvOF4NigOcJPILsTrj7Xv06tpdv7bOFqMkx2Vx/uNkcwH+27UnWh+Jj9tiVT
 c4g+08hEvOYO9+5yccjDtZNBronSCkz9L9RD0uIm9Vkux7kQvGgPrih9sC1efmcL85zFRe
 fMtFiIraB0CHiTjv+CKEN/1HZAq8R8U=
Received: from mail-io1-f69.google.com (mail-io1-f69.google.com
 [209.85.166.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-60-5jbgC4CkMGGciE8fhTbpZQ-1; Tue, 25 Jul 2023 14:00:13 -0400
X-MC-Unique: 5jbgC4CkMGGciE8fhTbpZQ-1
Received: by mail-io1-f69.google.com with SMTP id
 ca18e2360f4ac-780addd7382so396016339f.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jul 2023 11:00:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1690308012; x=1690912812;
 h=content-transfer-encoding:mime-version:organization:references
 :in-reply-to:message-id:subject:cc:to:from:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=Xe7YC8PFiFz0x9zHH/WNZAVHTrl6dN5xMKZiMTBXnw4=;
 b=hn0UtCIEGrAb6qebouEQunIOZmlijZ9WsVOswAVp9nmh9mV4I+0pg65rD1L/bSDShu
 k7lHZGuuhoHiFhqWO+LyIzNzOFZh8urkQNPwWyQ7iQ3S3ychFDmX7CKKf7Gl7/AlVWBQ
 dXmPvsfHgLOps9DsvIL4AVBZ8wfA1S1MrNzff/FxxhU15HP1/2T+nP7HCPVGjtZe5r/s
 553TmlW45cgAp22oaFkjfksIrbiXioYb0ePA7/ohvq/D58/rG2myYw/SV4bU5TnL6/7S
 BmCusg5o1bbqDvmGnpMWHxTJWOgACa0f9a1Zllv0iZfN+KA2bYUHdEFcpTCB+JULSnzM
 /ZpA==
X-Gm-Message-State: ABy/qLYnZH9822orMVo2vUoBLiN/Zhlk6wyyZpn5Yh1Wg7LZcWgF/wt1
 McE0gWK31yHsnw3G+yqd9UnrQst2i8BCct5jRh9PjpaCjrTj4kSYzIN4q+uu7yUsRf2zPr1yDih
 U2uWMUanZjZwoGrZmLtXKEuqKCNDi
X-Received: by 2002:a05:6602:2152:b0:783:39e9:e05c with SMTP id
 y18-20020a056602215200b0078339e9e05cmr4017880ioy.19.1690308012465; 
 Tue, 25 Jul 2023 11:00:12 -0700 (PDT)
X-Google-Smtp-Source: APBJJlEswRuWsSRte35iym9JYqbkB3ZMjf8sbcpiuOxEhMW7ciOh8iPue7ZHMMRIzwaONt5+B6ZTvQ==
X-Received: by 2002:a05:6602:2152:b0:783:39e9:e05c with SMTP id
 y18-20020a056602215200b0078339e9e05cmr4017834ioy.19.1690308012106; 
 Tue, 25 Jul 2023 11:00:12 -0700 (PDT)
Received: from redhat.com ([38.15.60.12]) by smtp.gmail.com with ESMTPSA id
 j13-20020a5e9e4d000000b0078bb0ff8a33sm2828643ioq.44.2023.07.25.11.00.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Jul 2023 11:00:11 -0700 (PDT)
Date: Tue, 25 Jul 2023 12:00:09 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: Jason Gunthorpe <jgg@nvidia.com>
Message-ID: <20230725120009.2ff17e77.alex.williamson@redhat.com>
In-Reply-To: <20230724130922.5bf567ef.alex.williamson@redhat.com>
References: <20230718135551.6592-1-yi.l.liu@intel.com>
 <ZLbEigQvwSZFiCqv@nvidia.com>
 <20230724130922.5bf567ef.alex.williamson@redhat.com>
Organization: Red Hat
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v15 00/26] Add vfio_device cdev for iommufd
 support
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
Cc: mjrosato@linux.ibm.com, jasowang@redhat.com, xudong.hao@intel.com,
 zhenzhong.duan@intel.com, peterx@redhat.com, terrence.xu@intel.com,
 chao.p.peng@linux.intel.com, linux-s390@vger.kernel.org,
 Yi Liu <yi.l.liu@intel.com>, kvm@vger.kernel.org, lulu@redhat.com,
 yanting.jiang@intel.com, joro@8bytes.org, nicolinc@nvidia.com,
 kevin.tian@intel.com, yan.y.zhao@intel.com, intel-gfx@lists.freedesktop.org,
 eric.auger@redhat.com, intel-gvt-dev@lists.freedesktop.org,
 yi.y.sun@linux.intel.com, clegoate@redhat.com, cohuck@redhat.com,
 shameerali.kolothum.thodi@huawei.com, suravee.suthikulpanit@amd.com,
 robin.murphy@arm.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 24 Jul 2023 13:09:22 -0600
Alex Williamson <alex.williamson@redhat.com> wrote:

> On Tue, 18 Jul 2023 13:57:46 -0300
> Jason Gunthorpe <jgg@nvidia.com> wrote:
> 
> > On Tue, Jul 18, 2023 at 06:55:25AM -0700, Yi Liu wrote:  
> > > Existing VFIO provides group-centric user APIs for userspace. Userspace
> > > opens the /dev/vfio/$group_id first before getting device fd and hence
> > > getting access to device. This is not the desired model for iommufd. Per
> > > the conclusion of community discussion[1], iommufd provides device-centric
> > > kAPIs and requires its consumer (like VFIO) to be device-centric user
> > > APIs. Such user APIs are used to associate device with iommufd and also
> > > the I/O address spaces managed by the iommufd.
> > > 
> > > This series first introduces a per device file structure to be prepared
> > > for further enhancement and refactors the kvm-vfio code to be prepared
> > > for accepting device file from userspace. After this, adds a mechanism for
> > > blocking device access before iommufd bind. Then refactors the vfio to be
> > > able to handle cdev paths (e.g. iommufd binding, no-iommufd, [de]attach ioas).
> > > This refactor includes making the device_open exclusive between the group
> > > and the cdev path, only allow single device open in cdev path; vfio-iommufd
> > > code is also refactored to support cdev. e.g. split the vfio_iommufd_bind()
> > > into two steps. Eventually, adds the cdev support for vfio device and the
> > > new ioctls, then makes group infrastructure optional as it is not needed
> > > when vfio device cdev is compiled.
> > > 
> > > This series is based on some preparation works done to vfio emulated devices[2]
> > > and vfio pci hot reset enhancements[3]. Per discussion[4], this series does not
> > > support cdev for physical devices that do not have IOMMU. Such devices only
> > > have group-centric user APIs.
> > > 
> > > This series is a prerequisite for iommu nesting for vfio device[5] [6].
> > > 
> > > The complete code can be found in below branch, simple tests done to the
> > > legacy group path and the cdev path. QEMU changes are in upstreaming[7]
> > > and the complete code can be found at[8]
> > > 
> > > https://github.com/yiliu1765/iommufd/tree/vfio_device_cdev_v15
> > > (config CONFIG_IOMMUFD=y CONFIG_VFIO_DEVICE_CDEV=y)    
> > 
> > Alex, if you are still good with this lets make this into a shared
> > branch, do you want to do it or would you like a PR from me?  
> 
> Sorry, was out much of last week.  Yes, my intent would be to put this
> both in a shared branch and my next branch for v6.6.  Given this is
> mostly vfio, it seems like it'd make sense for me to provide that
> branch but I may not get to it until tomorrow.  Thanks,

Both series are applied to my next branch for v6.6 and I've also
published them to the v6.6/vfio/cdev branch[1].  Thanks for all the
work and collaboration on this effort!

Alex

[1]https://github.com/awilliam/linux-vfio/tree/v6.6/vfio/cdev

