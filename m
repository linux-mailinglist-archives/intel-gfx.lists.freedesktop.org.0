Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0056F6DC7F6
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Apr 2023 16:41:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99AEF10E39E;
	Mon, 10 Apr 2023 14:41:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8907810E39E
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Apr 2023 14:41:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1681137685;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=dONRC9HtKL/GspXEC12wUQrG7qQwFgtFDXnmhXkq9zg=;
 b=F3uEtpdlcXhRypLt3y1NAm1vjOw4hKe0pGVBm3DXqeVqR8gO/1Mj9tdvutGRjg2GQMF0+S
 cQlcl9E2kCAj9L0DyZCtDP7i6mIZeov7/WCOoez2eRkRlp+VvSu7S8F8zl61Dwjj8ze4RU
 8VCilKBD+HAISmp91+F4/w6a2jN44BY=
Received: from mail-io1-f72.google.com (mail-io1-f72.google.com
 [209.85.166.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-657-d1ZnBMa1Or-P3v-_nQyqJQ-1; Mon, 10 Apr 2023 10:41:23 -0400
X-MC-Unique: d1ZnBMa1Or-P3v-_nQyqJQ-1
Received: by mail-io1-f72.google.com with SMTP id
 bc13-20020a056602360d00b0074ca36737d2so3498589iob.7
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Apr 2023 07:41:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1681137683; x=1683729683;
 h=content-transfer-encoding:mime-version:organization:references
 :in-reply-to:message-id:subject:cc:to:from:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=dONRC9HtKL/GspXEC12wUQrG7qQwFgtFDXnmhXkq9zg=;
 b=KrsmcIujjduzS22bu8QzCT8UIbrZa9/YMlR3ZNhurAaZwwrBeZC/SQFmWroFhlgtpU
 ajAc/+9FbSM9rEjUe+h/woFXTGy2z/8kePiDDcLVF9NAESJWsLFtx7n5cofG6BmieLjy
 tVMHxQdRKCddze+rxnLa9MPEemoF4S7DDBJLyOioZyS/n1pQeMvPcBRCjMjtqQCRE1z/
 B/iyxc+bpNEDmbgiIT7B81nIok4TMC7fTDOg4TV9dvN8r426D6DS5rm3BNNtg3R1eM0K
 H3NFPP32qPpv92wxjcdAK7aP4aFCE9HArFZtYuQYt5R9Kujul3T7JBM6mZrSVTznQ+Pj
 BXmA==
X-Gm-Message-State: AAQBX9fjOXWFFzLoxikNqI53nD1CGFMz7n45qtn2creOtDcXA5SJ4kUP
 ugoFT4wgn6kGNVECPiDchLivPij3TBsQqOLDBI4I1BILkvrQ7P/O9y55kaI+7Y8XEojEiRbCs0s
 V7irWTh0uqNn/U/Hd8MLO2XQ83M/x
X-Received: by 2002:a05:6602:25d5:b0:74d:771:6ed5 with SMTP id
 d21-20020a05660225d500b0074d07716ed5mr6833620iop.21.1681137683059; 
 Mon, 10 Apr 2023 07:41:23 -0700 (PDT)
X-Google-Smtp-Source: AKy350blVL+ZATHmuWAsdL6ecOUcA15qMfGx9qDZU2dPurXS6S+nHpcIDUqvh4MmE9dSGa4ICBuUjA==
X-Received: by 2002:a05:6602:25d5:b0:74d:771:6ed5 with SMTP id
 d21-20020a05660225d500b0074d07716ed5mr6833593iop.21.1681137682766; 
 Mon, 10 Apr 2023 07:41:22 -0700 (PDT)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 m17-20020a056638261100b003eafd76dc3fsm3331755jat.23.2023.04.10.07.41.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Apr 2023 07:41:22 -0700 (PDT)
Date: Mon, 10 Apr 2023 08:41:15 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: "Liu, Yi L" <yi.l.liu@intel.com>
Message-ID: <20230410084115.3c6604f1.alex.williamson@redhat.com>
In-Reply-To: <DS0PR11MB7529BE00767D7ABC1136BF7CC3959@DS0PR11MB7529.namprd11.prod.outlook.com>
References: <20230401144429.88673-1-yi.l.liu@intel.com>
 <20230403090151.4cb2158c.alex.williamson@redhat.com>
 <DS0PR11MB75291E6ED702ADD03AAE023BC3969@DS0PR11MB7529.namprd11.prod.outlook.com>
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

On Mon, 10 Apr 2023 08:48:54 +0000
"Liu, Yi L" <yi.l.liu@intel.com> wrote:

> > From: Alex Williamson <alex.williamson@redhat.com>
> > Sent: Sunday, April 9, 2023 9:30 PM  
> [...]
> > > yeah, needs to move the iommu group creation back to vfio_main.c. This
> > > would be a prerequisite for [1]
> > >
> > > [1] https://lore.kernel.org/kvm/20230401151833.124749-25-yi.l.liu@intel.com/
> > >
> > > I'll also try out your suggestion to add a capability like below and link
> > > it in the vfio_device_info cap chain.
> > >
> > > #define VFIO_DEVICE_INFO_CAP_PCI_BDF          5
> > >
> > > struct vfio_device_info_cap_pci_bdf {
> > >          struct vfio_info_cap_header header;
> > >          __u32   group_id;
> > >          __u16   segment;
> > >          __u8    bus;
> > >          __u8    devfn; /* Use PCI_SLOT/PCI_FUNC */
> > > };
> > >  
> > 
> > Group-id and bdf should be separate capabilities, all device should
> > report a group-id capability and only PCI devices a bdf capability.  
> 
> ok. Since this is to support the device fd passing usage, so we need to
> let all the vfio device drivers report group-id capability. is it? So may
> have a below helper in vfio_main.c. How about the sample drivers?
> seems not necessary for them. right?

The more common we can make it, the better, but if it ends up that the
individual drivers need to initialize the capability then it would
probably be limited to those driver with a need to expose the group.
Sample drivers for the purpose of illustrating the interface and of
course anything based on vfio-pci-core which exposes hot-reset.  Thanks

Alex

