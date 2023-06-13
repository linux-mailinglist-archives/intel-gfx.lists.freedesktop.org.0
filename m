Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 29A5672E625
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Jun 2023 16:48:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7B9A10E26A;
	Tue, 13 Jun 2023 14:48:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F51210E26A
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Jun 2023 14:48:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1686667719;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=6Au5yHcPaamLUTDAy1lALivyiFfLlJB/EXoLrOXOPPA=;
 b=eUgt1JdpIgmJWBAtRrEES1CYRlF8eo4RRFdpi43dSX0dDV8EBODuqa9pEwPs8zEsAZxN8k
 boS5N3emHPrMkksGMhvE6KF5Yo1tA3hW7wXVE1fyboy2qrvCRDukWuQN8xhEwxpfZS/iWR
 z21M8UMXsYFQ5ihsE2rIMbzjPxa6WFg=
Received: from mail-io1-f69.google.com (mail-io1-f69.google.com
 [209.85.166.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-311-e6J5KmZ5N6CUdR_J_ZOOOw-1; Tue, 13 Jun 2023 10:48:37 -0400
X-MC-Unique: e6J5KmZ5N6CUdR_J_ZOOOw-1
Received: by mail-io1-f69.google.com with SMTP id
 ca18e2360f4ac-77a0fd9d2eeso650095939f.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Jun 2023 07:48:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1686667711; x=1689259711;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=6Au5yHcPaamLUTDAy1lALivyiFfLlJB/EXoLrOXOPPA=;
 b=kuyxA5ovza8cADv+ggiYJNok518Ydy1Ketw7cXivtUd8x//e0JevWR6sJth0sDOkn9
 VwKw6bK0Hn94GzU3wFxtA4Qn3EugV6EYfoTEzRWQu3cL99VoD+clL7kComQt6RN0uF9B
 mUUhz6UWtLIW5GpBU34JMoMY86vRLdkkE3sJSOzcCQjbeJ8ouBC5IiTWZ+FlaTR1wWd3
 HkIDC7If5x4m/aJvyG5p0KaPQkUT0cXobBQOAGwCMILmczD1fVsc3gmPa5vGkfQFLr58
 w1GEcl3mK8SVtACseoQvSCWphayJwSP0aDILkvYYnGe+xmY6nsLNEEoCvTZlgJs+xX3F
 hEcg==
X-Gm-Message-State: AC+VfDxUUri96kq0KW2vNXag2X04Ct8ArSapByen+A3s4HmVzKlpxhWd
 9IM6aCvhkDIAMYOi5nbO9YSaFd13slun1MMuf/+a5gd1ZyI6u/wX3t2vnAWOfy4+6RQ/gfjltno
 i3qxi38PJpjj2Ijxxdf+O0iYLQyzR
X-Received: by 2002:a05:6602:224e:b0:76c:6382:8d5b with SMTP id
 o14-20020a056602224e00b0076c63828d5bmr11619910ioo.10.1686667710780; 
 Tue, 13 Jun 2023 07:48:30 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ7kDLAWaKUO1yUsXW0IekRRbMRMPnfJq0GCOYazAfEkGhrECmQ2ohZ2H0Yn3F4btXNUZoyJKQ==
X-Received: by 2002:a05:6602:224e:b0:76c:6382:8d5b with SMTP id
 o14-20020a056602224e00b0076c63828d5bmr11619888ioo.10.1686667710504; 
 Tue, 13 Jun 2023 07:48:30 -0700 (PDT)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 w12-20020a02968c000000b0041d7ad74b36sm3502462jai.17.2023.06.13.07.48.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Jun 2023 07:48:30 -0700 (PDT)
Date: Tue, 13 Jun 2023 08:48:28 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: "Liu, Yi L" <yi.l.liu@intel.com>
Message-ID: <20230613084828.7af51055.alex.williamson@redhat.com>
In-Reply-To: <DS0PR11MB7529EB2903151B3399F636F5C355A@DS0PR11MB7529.namprd11.prod.outlook.com>
References: <20230602121653.80017-1-yi.l.liu@intel.com>
 <20230602121653.80017-22-yi.l.liu@intel.com>
 <20230612164228.65b500e0.alex.williamson@redhat.com>
 <DS0PR11MB7529AE3701E154BF4C092E57C355A@DS0PR11MB7529.namprd11.prod.outlook.com>
 <20230613081913.279dea9e.alex.williamson@redhat.com>
 <DS0PR11MB7529EB2903151B3399F636F5C355A@DS0PR11MB7529.namprd11.prod.outlook.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.35; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
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

On Tue, 13 Jun 2023 14:33:01 +0000
"Liu, Yi L" <yi.l.liu@intel.com> wrote:

> > From: Alex Williamson <alex.williamson@redhat.com>
> > Sent: Tuesday, June 13, 2023 10:19 PM
> > 
> > On Tue, 13 Jun 2023 05:53:42 +0000
> > "Liu, Yi L" <yi.l.liu@intel.com> wrote:
> >   
> > > > From: Alex Williamson <alex.williamson@redhat.com>
> > > > Sent: Tuesday, June 13, 2023 6:42 AM
> > > >
> > > > On Fri,  2 Jun 2023 05:16:50 -0700
> > > > Yi Liu <yi.l.liu@intel.com> wrote:
> > > >  
> > > > > This moves the noiommu device determination and noiommu taint out of
> > > > > vfio_group_find_or_alloc(). noiommu device is determined in
> > > > > __vfio_register_dev() and result is stored in flag vfio_device->noiommu,
> > > > > the noiommu taint is added in the end of __vfio_register_dev().
> > > > >
> > > > > This is also a preparation for compiling out vfio_group infrastructure
> > > > > as it makes the noiommu detection and taint common between the cdev path
> > > > > and group path though cdev path does not support noiommu.  
> > > >
> > > > Does this really still make sense?  The motivation for the change is
> > > > really not clear without cdev support for noiommu.  Thanks,  
> > >
> > > I think it still makes sense. When CONFIG_VFIO_GROUP==n, the kernel
> > > only supports cdev interface. If there is noiommu device, vfio should
> > > fail the registration. So, the noiommu determination is still needed. But
> > > I'd admit the taint might still be in the group code.  
> > 
> > How is there going to be a noiommu device when VFIO_GROUP is unset?  
> 
> How about booting a kernel with iommu disabled, then all the devices
> are not protected by iommu. I suppose they are noiommu devices. If
> user wants to bound them to vfio, the kernel should have VFIO_GROUP.
> Otherwise, needs to fail.

"noiommu" is a vfio designation of a device, it must be created by
vfio.  There can certainly be devices which are not IOMMU backed, but
without vfio designating them as noiommu devices, which is only done
via the legacy and compat paths, there's no such thing as a noiommu
device.  Devices without an IOMMU are simply out of scope for cdev,
there should never be a vfio cdev entry created for them.  Thanks,

Alex

