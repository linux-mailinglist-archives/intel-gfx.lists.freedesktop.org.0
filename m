Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D963D72E9CF
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Jun 2023 19:30:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5325410E3CE;
	Tue, 13 Jun 2023 17:30:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56D2210E3CE
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Jun 2023 17:30:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1686677431;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=5rNyoH/Y9EWvlZq1BBIGJddx9uEaRVCPkhuzBz1faSI=;
 b=E8+eFF0hxShS2aHUAUC1BEXBQFcCiuf7mRa+U+YDHh2bPpCwqqIULKrayfSsLfMWUTv9Fl
 52bweyOdObAkBGD6iDI4V/aOWnA1BjMvKhzOgBluGQPRkXgcIzOjMiPWX3RAr4hinDukrX
 sjJ5FbDBUpJP7vSZ/DtKNVtYiz1aNHQ=
Received: from mail-io1-f71.google.com (mail-io1-f71.google.com
 [209.85.166.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-589-2RvWbBWuMCaQze2ReIVpxg-1; Tue, 13 Jun 2023 13:30:28 -0400
X-MC-Unique: 2RvWbBWuMCaQze2ReIVpxg-1
Received: by mail-io1-f71.google.com with SMTP id
 ca18e2360f4ac-7775a282e25so648812439f.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Jun 2023 10:30:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1686677428; x=1689269428;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=5rNyoH/Y9EWvlZq1BBIGJddx9uEaRVCPkhuzBz1faSI=;
 b=aItKIhb0VtUtdDQltQoV67YB7xO4fMJIQFbbNe2fTEkwdCOg0rSZZwQSXSpoy8HihS
 /oaWLjX21l5XIZMAD06YycQCUKggzr/f5EbiaJJF+HuTTKmQ+d//3bsx8xGLfrHaa3dU
 RrZ128nwJpWUz7xUAD2TwpGwrOT1a/eqxeNvWafLRGaSX5yhIaiGHeG1AUK9q71UuQQr
 R0HCydnrDVCfdsEoMCIvjDPm8qRN2Uha3dyqZoRf2S6WFJYbSwT7CJa9Zbyx3jUUdtSL
 2eqTuh6aYMHdEsVDWLTyILsbz81mfS/Lvm8ptNrk0SXVYpRsoyKAIWa+t0anQQChgcgi
 fVEw==
X-Gm-Message-State: AC+VfDwFGXkVzuNjvXmqAcQfptiMo9KGQGcOyM8neFsCnw7cv1MVXF5/
 9sEGS6UXhMDL13cTK6wfRs8Wf/O80Bm1r2Mpt6XSk/2Ak4uX9UNQ7VBVIXfG7LbcBiln0sc2WHb
 qs316acGYSE143Y84ooebF1oQMaBK
X-Received: by 2002:a6b:904:0:b0:77a:de11:9725 with SMTP id
 t4-20020a6b0904000000b0077ade119725mr9574440ioi.15.1686677427773; 
 Tue, 13 Jun 2023 10:30:27 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ5BkMZ9qiNe1FeXH/PJLIwHPPeNkq0P/IdFrUDbi6Jh6yHJTHPsdlC06uC/X4+f1OrZwQUOEQ==
X-Received: by 2002:a6b:904:0:b0:77a:de11:9725 with SMTP id
 t4-20020a6b0904000000b0077ade119725mr9574417ioi.15.1686677427520; 
 Tue, 13 Jun 2023 10:30:27 -0700 (PDT)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 y26-20020a056602201a00b007791e286fdbsm4013655iod.21.2023.06.13.10.30.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Jun 2023 10:30:26 -0700 (PDT)
Date: Tue, 13 Jun 2023 11:30:25 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: "Liu, Yi L" <yi.l.liu@intel.com>
Message-ID: <20230613113025.377411ee.alex.williamson@redhat.com>
In-Reply-To: <DS0PR11MB7529C440A84B75234E49C77CC355A@DS0PR11MB7529.namprd11.prod.outlook.com>
References: <20230602121653.80017-1-yi.l.liu@intel.com>
 <20230602121653.80017-25-yi.l.liu@intel.com>
 <20230612170628.661ab2a6.alex.williamson@redhat.com>
 <DS0PR11MB7529B0A71849EA06DA953BBCC355A@DS0PR11MB7529.namprd11.prod.outlook.com>
 <20230613082427.453748f5.alex.williamson@redhat.com>
 <DS0PR11MB75297AC071F2EF4F49D85999C355A@DS0PR11MB7529.namprd11.prod.outlook.com>
 <20230613090403.1eecd1a3.alex.williamson@redhat.com>
 <DS0PR11MB7529C440A84B75234E49C77CC355A@DS0PR11MB7529.namprd11.prod.outlook.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.35; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v12 24/24] docs: vfio: Add vfio device cdev
 description
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
 "linux-s390@vger.kernel.org" <linux-s390@vger.kernel.org>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 "lulu@redhat.com" <lulu@redhat.com>, "Jiang,
 Yanting" <yanting.jiang@intel.com>, "joro@8bytes.org" <joro@8bytes.org>,
 "nicolinc@nvidia.com" <nicolinc@nvidia.com>, "jgg@nvidia.com" <jgg@nvidia.com>,
 "Tian, Kevin" <kevin.tian@intel.com>, "Zhao, 
 Yan Y" <yan.y.zhao@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "eric.auger@redhat.com" <eric.auger@redhat.com>,
 "intel-gvt-dev@lists.freedesktop.org" <intel-gvt-dev@lists.freedesktop.org>,
 "yi.y.sun@linux.intel.com" <yi.y.sun@linux.intel.com>,
 "clegoate@redhat.com" <clegoate@redhat.com>,
 "cohuck@redhat.com" <cohuck@redhat.com>,
 "shameerali.kolothum.thodi@huawei.com" <shameerali.kolothum.thodi@huawei.com>,
 "suravee.suthikulpanit@amd.com" <suravee.suthikulpanit@amd.com>,
 "robin.murphy@arm.com" <robin.murphy@arm.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 13 Jun 2023 15:11:06 +0000
"Liu, Yi L" <yi.l.liu@intel.com> wrote:

> > From: Alex Williamson <alex.williamson@redhat.com>
> > Sent: Tuesday, June 13, 2023 11:04 PM
> >   
> > > > >  
> > > > > >
> > > > > > Unless I missed it, we've not described that vfio device cdev access is
> > > > > > still bound by IOMMU group semantics, ie. there can be one DMA owner
> > > > > > for the group.  That's a pretty common failure point for multi-function
> > > > > > consumer device use cases, so the why, where, and how it fails should
> > > > > > be well covered.  
> > > > >
> > > > > Yes. this needs to be documented. How about below words:
> > > > >
> > > > > vfio device cdev access is still bound by IOMMU group semantics, ie. there
> > > > > can be only one DMA owner for the group.  Devices belonging to the same
> > > > > group can not be bound to multiple iommufd_ctx.  
> > > >
> > > > ... or shared between native kernel and vfio drivers.  
> > >
> > > I suppose you mean the devices in one group are bound to different
> > > drivers. right?  
> > 
> > Essentially, but we need to be careful that we're developing multiple
> > vfio drivers for a given bus now, which is why I try to distinguish
> > between the two sets of drivers.  Thanks,  
> 
> Indeed. There are a set of vfio drivers. Even pci-stub can be considered
> in this set? Perhaps, it is more precise to say : or shared between drivers
> that set the struct pci_driver::driver_managed_dma flag and the drivers
> that do not.

Yeah, I wish there was a less technical way to describe this.  This is
essentially why we have the VIABLE flag on VFIO_GROUP_GET_STATUS in the
legacy interface, which is what QEMU uses to generate the warning
specific to binding all devices to vfio bus drivers.

Technically there are some exceptions, like pci-stub or "no driver" that
can be used to prevent direct access to devices within the group, but
except for that narrow use case a vfio driver is generally recommended,
and is currently required for certain things like the dev_set test
during hot-reset.

If we want to be accurate without being too pedantic, perhaps it would
be something like "vfio bus driver or other driver supporting the
driver_manged_dma flag".  Note the flag is supported for several
drivers other than pci_driver.  Thanks,

Alex

