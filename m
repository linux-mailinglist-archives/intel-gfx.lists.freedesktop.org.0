Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C5886DC863
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Apr 2023 17:23:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E866F10E0E8;
	Mon, 10 Apr 2023 15:23:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C597010E0A3
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Apr 2023 15:23:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1681140188;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=rCgDEUmv/CjkscGtysIfI5mrBVbUfE93OLHcbjWui/4=;
 b=F68v9i6lDFukvwaWAKxNh23O73JqJ+rMp5m8leM4PqyVhT2zEnqPAQ82/vx0ij4Sala0t3
 gsTPSjUxgFHiNNGJEzM1U44OpkZuQoblww5ny0Ocui5tWH9QPG8nY0lTtl6hWWo4KcAzfG
 BK925pAbTkmyzHRBKelWDBWGd6rVG9k=
Received: from mail-io1-f70.google.com (mail-io1-f70.google.com
 [209.85.166.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-529-QKcXcwAoPsCDZomfnSDKbA-1; Mon, 10 Apr 2023 11:23:05 -0400
X-MC-Unique: QKcXcwAoPsCDZomfnSDKbA-1
Received: by mail-io1-f70.google.com with SMTP id
 z5-20020a6bc905000000b007584beb0e28so3779353iof.21
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Apr 2023 08:23:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1681140184; x=1683732184;
 h=content-transfer-encoding:mime-version:organization:references
 :in-reply-to:message-id:subject:cc:to:from:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=rCgDEUmv/CjkscGtysIfI5mrBVbUfE93OLHcbjWui/4=;
 b=Jzz+CQ9Tv5vEZbZYxJaRzQQpPxiWfJXcM5S22MG9vfEvAWXA1Y+Kypnoan5L4Cpo0B
 0/50OhUi4wBvo/aLrHW+CpVZYp7zFS35VDjf9KvwpIDSZyn7UQ/ZHcfXJrtzmzj5O4mx
 TyMgCerLqEISCQ7McFjom98AszRHXW+pLyStv0RQhdioBYc66qlHGBOTzFBW3Ao3tfET
 4c6krTErD/9J2TtPsW57Dv5ldDVuy8ZpWtg1nHUdzvGPKjdGTKbeFHVh8WUC+QVZhYCL
 +LTj8gUU07PM7kvNJ44lbJ1qC52jLvEQus8K7JfkKhB5oZ5uFLvb5YCzs0qmfv83mVcx
 GjJw==
X-Gm-Message-State: AAQBX9dikBjAe9FI+CM3NlvFWhlvcSjQTm//vCH0HY3t4dO1f6yMsn1k
 56lOf6pm4SxHv9yV8d+5Pav6lufyxoQUCxjSqHljUAahT2nrzFw6D71JmTLZOs4FS1NHDVS14/g
 LGWvRnwqhuvVUJcEmlIRyKMilfPrm
X-Received: by 2002:a92:d749:0:b0:328:c3ae:12be with SMTP id
 e9-20020a92d749000000b00328c3ae12bemr1720984ilq.13.1681140184474; 
 Mon, 10 Apr 2023 08:23:04 -0700 (PDT)
X-Google-Smtp-Source: AKy350Zd8kH3Fim2Wf3jPlRI4rz2SMT25bUANonexe5jW14MxGNkXbo/N1+NeBTSUlUqEjt1czK3RQ==
X-Received: by 2002:a92:d749:0:b0:328:c3ae:12be with SMTP id
 e9-20020a92d749000000b00328c3ae12bemr1720959ilq.13.1681140184200; 
 Mon, 10 Apr 2023 08:23:04 -0700 (PDT)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 s13-20020a92ae0d000000b0030c0dce44b1sm2983450ilh.15.2023.04.10.08.23.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Apr 2023 08:23:03 -0700 (PDT)
Date: Mon, 10 Apr 2023 09:23:02 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: "Liu, Yi L" <yi.l.liu@intel.com>
Message-ID: <20230410092302.678d3fb1.alex.williamson@redhat.com>
In-Reply-To: <DS0PR11MB752938649DE21B96577C2B1CC3959@DS0PR11MB7529.namprd11.prod.outlook.com>
References: <20230401144429.88673-1-yi.l.liu@intel.com>
 <20230407060335.7babfeb8.alex.williamson@redhat.com>
 <DS0PR11MB7529B0A91FF97C078BEA3783C3969@DS0PR11MB7529.namprd11.prod.outlook.com>
 <20230407075155.3ad4c804.alex.williamson@redhat.com>
 <DS0PR11MB7529C1CA38D7D1035869F358C3969@DS0PR11MB7529.namprd11.prod.outlook.com>
 <20230407091401.1c847419.alex.williamson@redhat.com>
 <DS0PR11MB7529A9D103F88381F84CF390C3969@DS0PR11MB7529.namprd11.prod.outlook.com>
 <20230407150721.395eabc4.alex.williamson@redhat.com>
 <SN7PR11MB75407463181A0D7A4F21D546C3979@SN7PR11MB7540.namprd11.prod.outlook.com>
 <20230408082018.04dcd1e3.alex.williamson@redhat.com>
 <81a3e148-89de-e399-fefa-0785dac75f85@intel.com>
 <20230409072951.629af3a7.alex.williamson@redhat.com>
 <DS0PR11MB7529BE00767D7ABC1136BF7CC3959@DS0PR11MB7529.namprd11.prod.outlook.com>
 <20230410084115.3c6604f1.alex.williamson@redhat.com>
 <DS0PR11MB752938649DE21B96577C2B1CC3959@DS0PR11MB7529.namprd11.prod.outlook.com>
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

On Mon, 10 Apr 2023 15:18:27 +0000
"Liu, Yi L" <yi.l.liu@intel.com> wrote:

> > From: Alex Williamson <alex.williamson@redhat.com>
> > Sent: Monday, April 10, 2023 10:41 PM
> > 
> > On Mon, 10 Apr 2023 08:48:54 +0000
> > "Liu, Yi L" <yi.l.liu@intel.com> wrote:
> >   
> > > > From: Alex Williamson <alex.williamson@redhat.com>
> > > > Sent: Sunday, April 9, 2023 9:30 PM  
> > > [...]  
> > > > > yeah, needs to move the iommu group creation back to vfio_main.c. This
> > > > > would be a prerequisite for [1]
> > > > >
> > > > > [1] https://lore.kernel.org/kvm/20230401151833.124749-25-yi.l.liu@intel.com/
> > > > >
> > > > > I'll also try out your suggestion to add a capability like below and link
> > > > > it in the vfio_device_info cap chain.
> > > > >
> > > > > #define VFIO_DEVICE_INFO_CAP_PCI_BDF          5
> > > > >
> > > > > struct vfio_device_info_cap_pci_bdf {
> > > > >          struct vfio_info_cap_header header;
> > > > >          __u32   group_id;
> > > > >          __u16   segment;
> > > > >          __u8    bus;
> > > > >          __u8    devfn; /* Use PCI_SLOT/PCI_FUNC */
> > > > > };
> > > > >  
> > > >
> > > > Group-id and bdf should be separate capabilities, all device should
> > > > report a group-id capability and only PCI devices a bdf capability.  
> > >
> > > ok. Since this is to support the device fd passing usage, so we need to
> > > let all the vfio device drivers report group-id capability. is it? So may
> > > have a below helper in vfio_main.c. How about the sample drivers?
> > > seems not necessary for them. right?  
> > 
> > The more common we can make it, the better, but if it ends up that the
> > individual drivers need to initialize the capability then it would
> > probably be limited to those driver with a need to expose the group.  
> 
> looks to be such a case. vfio_device_info is assembled by the individual
> drivers. If want to report group_id capability as a common behavior, needs
> to change all of them. Had a quick draft for it as below commit:
> 
> https://github.com/yiliu1765/iommufd/commit/ff4b8bee90761961041126305183a9a7e0f0542d
> 
> https://github.com/yiliu1765/iommufd/commits/report_group_id
> 
> > Sample drivers for the purpose of illustrating the interface and of
> > course anything based on vfio-pci-core which exposes hot-reset.  Thanks  
> 
> do you see any sample drivers need to report group_id cap? IMHO, seems
> no.

As in the quoted text, part of the purpose of the sample drivers is to
act both as a proof-of-concept and illustration of the API, therefore
gratuitous exposure of such capabilities should be encouraged.  They
would also provide a proof point of an mdev device, ie. emulated IOMMU
device, exposing the capability.  Thanks,

Alex

