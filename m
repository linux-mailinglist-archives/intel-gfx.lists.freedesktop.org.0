Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2075B6C3DD5
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Mar 2023 23:47:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2767E10E0DB;
	Tue, 21 Mar 2023 22:47:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4854C10E0DB
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Mar 2023 22:47:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1679438861;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=pkqj6f0mmvcRZY6WGcLhSYjSkEneOC6n3/87lujTtak=;
 b=E/FN7OSole7Ev8l7nlXxXfiOv+0BvbSYc0EIFq1PIkn6bKG/NGYVO7AVFL+JDEM9fHaOEF
 Qt+aI69yOjwrKhArt1HQf/3oVL8wb3E4KrPaS2GNccCm3guPPAuKP7BWE7ifAf41pquv1D
 ekDDyxBxu+wibL72FNvulsJWoDrsJkU=
Received: from mail-il1-f200.google.com (mail-il1-f200.google.com
 [209.85.166.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-628-ocom_g0KPMSqjPHD5IfSBg-1; Tue, 21 Mar 2023 18:47:40 -0400
X-MC-Unique: ocom_g0KPMSqjPHD5IfSBg-1
Received: by mail-il1-f200.google.com with SMTP id
 d3-20020a056e02050300b00317999dcfb1so8642451ils.4
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Mar 2023 15:47:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1679438859;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=pkqj6f0mmvcRZY6WGcLhSYjSkEneOC6n3/87lujTtak=;
 b=De01UFq6ne/Wfb5lXNVh+7MJ+AoIPC79eFZQOvUnRw9uJdePJeqund6skRne2nuVlp
 ModaCbQ9bu2SJaaedyhIuce5uLmll4fhk5ON7hyYCsbu/6PYorbrrgWkeTSi18z3qTKE
 z50kNiIULLUCMz3FY3ICaX09gAp267WemOvFNj/u7MqUnHTVgC687AxEFoJ3cuVlx1Wp
 SZ9wPK5POTQStCkZu0dRAQ4qI1iAC1bzw11Y7E7bu7eZOchzqLjjTiN/ZEr/Tsx0wshD
 iR523xQrCFs955pL9XRa0hNxRFn0SuLtbOm06CBpzMDqoH8rdepom+K/wJCuebXKT8Pi
 nWGw==
X-Gm-Message-State: AO0yUKUYqgr2x2HFJ3Nu2yUohoPp7KJrInkNc8EagdAcX1nNf3ZuhldI
 VcbQl3YlQFf6RpVwRHUWe1aMlx/yzNoQUcTLJDSolc7Pf41V2JsB/LRm1aInFr0rg7eYpktZ9l7
 /1nCSRXtNn4VnvAiVRoFyCVyMLbw+
X-Received: by 2002:a6b:db09:0:b0:74c:bc54:def6 with SMTP id
 t9-20020a6bdb09000000b0074cbc54def6mr3056430ioc.16.1679438859337; 
 Tue, 21 Mar 2023 15:47:39 -0700 (PDT)
X-Google-Smtp-Source: AK7set9EbNNXSPjEUSnoMvgIPdEGf1CXd6ABSfzKBINcdwi6xMSz3jsAv4ymlWXyfvMVdfEnqs2RsA==
X-Received: by 2002:a6b:db09:0:b0:74c:bc54:def6 with SMTP id
 t9-20020a6bdb09000000b0074cbc54def6mr3056419ioc.16.1679438859071; 
 Tue, 21 Mar 2023 15:47:39 -0700 (PDT)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 y16-20020a027310000000b004061d6abcd1sm4452110jab.162.2023.03.21.15.47.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Mar 2023 15:47:38 -0700 (PDT)
Date: Tue, 21 Mar 2023 16:47:37 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: Jason Gunthorpe <jgg@nvidia.com>
Message-ID: <20230321164737.62b45132.alex.williamson@redhat.com>
In-Reply-To: <ZBottXxBlOsXmnmX@nvidia.com>
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
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.35; x86_64-redhat-linux-gnu)
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
 "linux-s390@vger.kernel.org" <linux-s390@vger.kernel.org>, "Liu,
 Yi L" <yi.l.liu@intel.com>, "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 "lulu@redhat.com" <lulu@redhat.com>, "joro@8bytes.org" <joro@8bytes.org>,
 "nicolinc@nvidia.com" <nicolinc@nvidia.com>, "Zhao,
 Yan Y" <yan.y.zhao@intel.com>,
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

On Tue, 21 Mar 2023 19:20:37 -0300
Jason Gunthorpe <jgg@nvidia.com> wrote:

> On Tue, Mar 21, 2023 at 03:01:12PM -0600, Alex Williamson wrote:
> 
> > > Though it would be nice if qemu didn't need two implementations so Yi
> > > I'd rather see a new info in this series as well and qemu can just
> > > consistently use dev_id and never bdf in iommufd mode.  
> > 
> > We also need to consider how libvirt determines if QEMU has the kernel
> > support it needs to pass file descriptors.  It'd be a lot cleaner if
> > this aligned with the introduction of vfio cdevs.  
> 
> Yes, that would be much better if it was one package.
> 
> But this is starting to grow and we have so many threads that need to
> progress blocked on this cdev enablement :(
> 
> Could we go forward with the cdev main patches and kconfig it to
> experimental or something while the rest of the parts are completed
> and tested through qemu? ie move the vfio-pci reset enablment to after
> the cdev patches?

We need to be able to guarantee that there cannot be any significant
builds of the kernel with vfio cdev support if our intention is to stage
it for libvirt.  We don't have a global EXPERIMENTAL config option any
more.  Adding new code under BROKEN seems wrong.  Fedora ships with
STAGING enabled.  A sternly worded Kconfig entry is toothless.  What is
the proposed mechanism to make this not look like a big uncompiled code
dump?  Thanks,

Alex

