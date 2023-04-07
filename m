Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6C276DAC7C
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Apr 2023 14:03:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5377210E2AA;
	Fri,  7 Apr 2023 12:03:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFA7B10E2AA
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Apr 2023 12:03:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1680869019;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=RkUUy9iLyVeqXpHFSjwkEYxhFcB9vKBhzKxpfaiYE+o=;
 b=EZrVU8BFU76i+Cr77Hd1dnYto4hC6OWDZrZP+9CrB2D0GQ35/daKGO9LFcHrM+Ph/lfsdy
 ii5ZPUGulBHf4bdOu4XZQYfLMT+BVzotbbqLNR6uDdphoaeBvl3AAIM3IKNqt8GLxipL/p
 Fgy2lyG17huzBuagsoAqxRrPKZEYLgE=
Received: from mail-io1-f71.google.com (mail-io1-f71.google.com
 [209.85.166.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-110-RuoHZO5eMfqqrR7R0-y3xg-1; Fri, 07 Apr 2023 08:03:38 -0400
X-MC-Unique: RuoHZO5eMfqqrR7R0-y3xg-1
Received: by mail-io1-f71.google.com with SMTP id
 d204-20020a6bb4d5000000b00758cfdd36c3so25799880iof.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 07 Apr 2023 05:03:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680869018; x=1683461018;
 h=content-transfer-encoding:mime-version:organization:references
 :in-reply-to:message-id:subject:cc:to:from:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=RkUUy9iLyVeqXpHFSjwkEYxhFcB9vKBhzKxpfaiYE+o=;
 b=u8AdpXrbbg/rgePBuxH1LsqVEmM2fHsQWym5tnIYw7C7NReK8cCjKIYM69HkXYtsWi
 bs9Z0/p3OrZWJyKKt3QWyA8i+8yhmY4Op4GNegnDbv9JEEZR2uHn/ywsk9vgm5z2uxGc
 N5ZEzxb0rvncJErjs9QCUzXnXZ8HW2pR/PRSplD9it+8jjmCKGCTuPqRio1XVWk4DYSd
 WtJrruxwCbXAXJtQ+hFDgfqfdy9OG6NxqjccINTAaqnOCqGenr0LvkM2MQbsQlRfFA/9
 Tq9CYNhBswf0/OTe7yoDGDdpg6QQiSGdk51oeAD7Mq3HruPVk/O595u0Bhzzy5OqsLiI
 DkPw==
X-Gm-Message-State: AAQBX9d9KGqAIrY+XrOJ4HARw7NIhfYvrjb8OXA4Rzxgzey5D1l8w1Zv
 pIeRRv27yucLS/VWczId9d0SCCL9MaoPgERRegLFOo+npoIETAtldhoQBN/Wb1i++nH4yPYtsPG
 7uDzZYvuvk2/Mn87Iu8/vADk6HBRR
X-Received: by 2002:a6b:e809:0:b0:74c:aa8f:a83e with SMTP id
 f9-20020a6be809000000b0074caa8fa83emr1736941ioh.6.1680869017715; 
 Fri, 07 Apr 2023 05:03:37 -0700 (PDT)
X-Google-Smtp-Source: AKy350b47GhoP5h7PpNabOBHlWCa/K0lm8L4p8ItVOpFt9aS9p6DIyF0sceWV4C6aZBR6S4P0IdR1A==
X-Received: by 2002:a6b:e809:0:b0:74c:aa8f:a83e with SMTP id
 f9-20020a6be809000000b0074caa8fa83emr1736912ioh.6.1680869017415; 
 Fri, 07 Apr 2023 05:03:37 -0700 (PDT)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 m42-20020a026d2a000000b003a4419ba0c2sm1027418jac.139.2023.04.07.05.03.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 07 Apr 2023 05:03:36 -0700 (PDT)
Date: Fri, 7 Apr 2023 06:03:35 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: "Liu, Yi L" <yi.l.liu@intel.com>
Message-ID: <20230407060335.7babfeb8.alex.williamson@redhat.com>
In-Reply-To: <DS0PR11MB75291E6ED702ADD03AAE023BC3969@DS0PR11MB7529.namprd11.prod.outlook.com>
References: <20230401144429.88673-1-yi.l.liu@intel.com>
 <20230401144429.88673-13-yi.l.liu@intel.com>
 <DS0PR11MB752996A6E6B3263BAD01DAC2C3929@DS0PR11MB7529.namprd11.prod.outlook.com>
 <20230403090151.4cb2158c.alex.williamson@redhat.com>
 <DS0PR11MB75291E6ED702ADD03AAE023BC3969@DS0PR11MB7529.namprd11.prod.outlook.com>
Organization: Red Hat
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
 "linux-s390@vger.kernel.org" <linux-s390@vger.kernel.org>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
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

On Fri, 7 Apr 2023 10:09:58 +0000
"Liu, Yi L" <yi.l.liu@intel.com> wrote:

> Hi Alex,
> 
> > From: Alex Williamson <alex.williamson@redhat.com>
> > Sent: Monday, April 3, 2023 11:02 PM
> > 
> > On Mon, 3 Apr 2023 09:25:06 +0000
> > "Liu, Yi L" <yi.l.liu@intel.com> wrote:
> >   
> > > > From: Liu, Yi L <yi.l.liu@intel.com>
> > > > Sent: Saturday, April 1, 2023 10:44 PM  
> > >  
> > > > @@ -791,7 +813,21 @@ static int vfio_pci_fill_devs(struct pci_dev *pdev, void  
> > *data)  
> > > >  	if (!iommu_group)
> > > >  		return -EPERM; /* Cannot reset non-isolated devices */  
> > >
> > > Hi Alex,
> > >
> > > Is disabling iommu a sane way to test vfio noiommu mode?  
> > 
> > Yes
> >   
> > > I added intel_iommu=off to disable intel iommu and bind a device to vfio-pci.
> > > I can see the /dev/vfio/noiommu-0 and /dev/vfio/devices/noiommu-vfio0. Bind
> > > iommufd==-1 can succeed, but failed to get hot reset info due to the above
> > > group check. Reason is that this happens to have some affected devices, and
> > > these devices have no valid iommu_group (because they are not bound to vfio-pci
> > > hence nobody allocates noiommu group for them). So when hot reset info loops
> > > such devices, it failed with -EPERM. Is this expected?  
> > 
> > Hmm, I didn't recall that we put in such a limitation, but given the
> > minimally intrusive approach to no-iommu and the fact that we never
> > defined an invalid group ID to return to the user, it makes sense that
> > we just blocked the ioctl for no-iommu use.  I guess we can do the same
> > for no-iommu cdev.  
> 
> I just realize a further issue related to this limitation. Remember that we
> may finally compile out the vfio group infrastructure in the future. Say I
> want to test noiommu, I may boot such a kernel with iommu disabled. I think
> the _INFO ioctl would fail as there is no iommu_group. Does it mean we will
> not support hot reset for noiommu in future if vfio group infrastructure is
> compiled out?

We're talking about IOMMU groups, IOMMU groups are always present
regardless of whether we expose a vfio group interface to userspace.
Remember, we create IOMMU groups even in the no-iommu case.  Even with
pure cdev, there are underlying IOMMU groups that maintain the DMA
ownership.

> As another thread, we are going to add a new bdf/group capability to
> DEVICE_GET_INFO. If the above kernel is booted, shall we exclude the new
> bdf/group capability or add a flag in the capability to mark the group_id
> is invalid?

As above, there's always an IOMMU group, it's never invalid.  Thanks,

Alex

