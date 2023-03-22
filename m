Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B1866C4A55
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Mar 2023 13:23:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B181510E934;
	Wed, 22 Mar 2023 12:23:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC2FB10E930
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Mar 2023 12:23:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1679487813;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=lWxjY/lbB315S8Voovgb8sq9ON3lgCJYfSAXwg6j0gU=;
 b=FdaJm/NWftz0moIfHAWdZM6o6G3eFMxNDqoHa1psTritOA/SeIR4EF7h8RfV27JnuNYnNf
 MeCq7Bn4NIBrJpjdIR7IhPUoQGBhxtQo5bpwuv0yX9pRlFPEsqcGRYvWPof8jLvI0q7rNc
 KEmsgfwOToLedhbLexerU3zwhh7c4q0=
Received: from mail-il1-f198.google.com (mail-il1-f198.google.com
 [209.85.166.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-189-Z9AW5L3qO0-od6lkX-vxFQ-1; Wed, 22 Mar 2023 08:23:29 -0400
X-MC-Unique: Z9AW5L3qO0-od6lkX-vxFQ-1
Received: by mail-il1-f198.google.com with SMTP id
 h20-20020a056e020d5400b0032324fd7011so9552403ilj.17
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Mar 2023 05:23:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1679487809;
 h=content-transfer-encoding:mime-version:organization:references
 :in-reply-to:message-id:subject:cc:to:from:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=lWxjY/lbB315S8Voovgb8sq9ON3lgCJYfSAXwg6j0gU=;
 b=jN+8B4kgIimM5QlupsB8D/LxxxeyVfYH1d6cc7f7BIhsW4KfDKjC/b8Hc051Bf6fnp
 4BgNJrW/fmlAcNMKUy2Xf2u1EqyMF/rp6QCEETLrEltCZGF1Ig9V27gn2vz2iIz/qiIY
 D/LVspU9Vz7VXGM4hHqF4X2guJOOKj/oHxKIKR9cEEsZMHw/FY/Llt9TiPZ0cqAmQXhw
 qD1MsZTo8g9TIBZOqdyWwg69pwAkjGAcUITDBTYVY7Wpb2q26qvu4uOC+UdPfnCJKa5h
 zkeliAH62yARQfVRUGS8XMW25BOKosk+XWks9gaZltAHggLFh+K18OjN/p0cHXmXscRL
 7fyA==
X-Gm-Message-State: AO0yUKXDhgE3LC/eUOasRJRzOcc8Gw0YOpBcAwDRiUgVOCqi2DmauKy5
 9C7ayh0RaNOxK30soeMqL2iE7J6MUJhc2JbcttNQR6t2Xfc4jF14DMGMrtaEKpbgxT4T90UDVu3
 tAGkD/GWqR7reeYcBicTV9Phhq3h+
X-Received: by 2002:a92:c647:0:b0:316:e6e7:c124 with SMTP id
 7-20020a92c647000000b00316e6e7c124mr4351323ill.15.1679487809124; 
 Wed, 22 Mar 2023 05:23:29 -0700 (PDT)
X-Google-Smtp-Source: AK7set8IQazyOy8MSGW6Fp0jsbHol/yxfq5hFcwO+LPli/AV1KbdKr/2K6g6/4ie3Y5AyD77NDQShA==
X-Received: by 2002:a92:c647:0:b0:316:e6e7:c124 with SMTP id
 7-20020a92c647000000b00316e6e7c124mr4351287ill.15.1679487808774; 
 Wed, 22 Mar 2023 05:23:28 -0700 (PDT)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 p36-20020a056638192400b004062f11d2d9sm4889802jal.130.2023.03.22.05.23.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Mar 2023 05:23:28 -0700 (PDT)
Date: Wed, 22 Mar 2023 06:23:25 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: "Liu, Yi L" <yi.l.liu@intel.com>
Message-ID: <20230322062325.2b4667af.alex.williamson@redhat.com>
In-Reply-To: <DS0PR11MB752996D3DCB2F0CE6728F4B8C3869@DS0PR11MB7529.namprd11.prod.outlook.com>
References: <BN9PR11MB5276F7879E428080D2B214D98CBC9@BN9PR11MB5276.namprd11.prod.outlook.com>
 <20230316182256.6659bbbd.alex.williamson@redhat.com>
 <BN9PR11MB5276D5A71E43EA4CDD1C960A8CBD9@BN9PR11MB5276.namprd11.prod.outlook.com>
 <20230317091557.196638a6.alex.williamson@redhat.com>
 <ZBiUiEC8Xj9sOphr@nvidia.com>
 <20230320165217.5b1019a4.alex.williamson@redhat.com>
 <ZBjum1wQ1L2AIfhB@nvidia.com>
 <20230321143122.632f7e63.alex.williamson@redhat.com>
 <ZBoYgNq60eDpV9Un@nvidia.com>
 <20230321150112.1c482380.alex.williamson@redhat.com>
 <ZBottXxBlOsXmnmX@nvidia.com>
 <20230321164737.62b45132.alex.williamson@redhat.com>
 <DS0PR11MB752996D3DCB2F0CE6728F4B8C3869@DS0PR11MB7529.namprd11.prod.outlook.com>
Organization: Red Hat
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v6 12/24] vfio/pci: Allow passing
 zero-length fd array in VFIO_DEVICE_PCI_HOT_RESET
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
 "lulu@redhat.com" <lulu@redhat.com>, "joro@8bytes.org" <joro@8bytes.org>,
 "nicolinc@nvidia.com" <nicolinc@nvidia.com>, Jason Gunthorpe <jgg@nvidia.com>,
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

On Wed, 22 Mar 2023 04:42:16 +0000
"Liu, Yi L" <yi.l.liu@intel.com> wrote:

> > From: Alex Williamson <alex.williamson@redhat.com>
> > Sent: Wednesday, March 22, 2023 6:48 AM
> > 
> > On Tue, 21 Mar 2023 19:20:37 -0300
> > Jason Gunthorpe <jgg@nvidia.com> wrote:
> >   
> > > On Tue, Mar 21, 2023 at 03:01:12PM -0600, Alex Williamson wrote:
> > >  
> > > > > Though it would be nice if qemu didn't need two implementations so Yi
> > > > > I'd rather see a new info in this series as well and qemu can just
> > > > > consistently use dev_id and never bdf in iommufd mode.  
> > > >
> > > > We also need to consider how libvirt determines if QEMU has the kernel
> > > > support it needs to pass file descriptors.  It'd be a lot cleaner if
> > > > this aligned with the introduction of vfio cdevs.  
> > >
> > > Yes, that would be much better if it was one package.
> > >
> > > But this is starting to grow and we have so many threads that need to
> > > progress blocked on this cdev enablement :(
> > >
> > > Could we go forward with the cdev main patches and kconfig it to
> > > experimental or something while the rest of the parts are completed
> > > and tested through qemu? ie move the vfio-pci reset enablment to after
> > > the cdev patches?  
> > 
> > We need to be able to guarantee that there cannot be any significant
> > builds of the kernel with vfio cdev support if our intention is to stage
> > it for libvirt.  We don't have a global EXPERIMENTAL config option any
> > more.  Adding new code under BROKEN seems wrong.  Fedora ships with
> > STAGING enabled.  A sternly worded Kconfig entry is toothless.  What is
> > the proposed mechanism to make this not look like a big uncompiled code
> > dump?  Thanks,  
> 
> Just out of curious, is the BDF mapping gap only for cdev or it also
> exists in the traditional group path?

The group path doesn't support passing file descriptors, getting access
to the device files requires a full container configuration, which
implies significant policy decisions in libvirt.  Even if groups were
passed, QEMU would need to know the device name, ie. BDF in string
format, to get the device from the group.

> IMHO, if it is only a gap for cdev, maybe
> we can use CONFIG_VFIO_DEVICE_CDEV to stage it. This kconfig is N by
> default. I think it won't change until one day the whole ecosystem is
> updated.

See the "toothless" comment above, disabling vfio cdev support by
default because we don't have feature parity in reset support does not
provide any guarantees to libvirt that it can effectively take
advantage of passing cdev fds to QEMU.  Thanks,

Alex

