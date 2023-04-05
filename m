Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F5D66D820A
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Apr 2023 17:36:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9140010E9FC;
	Wed,  5 Apr 2023 15:36:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8AAE10E9FC
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Apr 2023 15:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1680709013;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=TuiXIjl7StR1lWcqJYYE1fB/Z6K6yMMeGx6F0a8wvVw=;
 b=ezjmmx8C+sXQZ7rZPQls9R5s0z/Lr2xCgBBXhbnHsbzeeJ1VRkwFyTueUSSdoDalOYH7Vt
 gusO7kd0ORcKH55S+rpzrsqLjyArxn9xKM0Zis9voocmzqZVQVLojhwCSMqbYMefchSD++
 P4S5StCd6MZ+nTwsZjz5ITod665Y5Z0=
Received: from mail-il1-f198.google.com (mail-il1-f198.google.com
 [209.85.166.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-208-ETdyBfgjNdaxiVKJCH8q9g-1; Wed, 05 Apr 2023 11:36:49 -0400
X-MC-Unique: ETdyBfgjNdaxiVKJCH8q9g-1
Received: by mail-il1-f198.google.com with SMTP id
 g12-20020a056e021e0c00b00327c0e193b1so1092834ila.21
 for <intel-gfx@lists.freedesktop.org>; Wed, 05 Apr 2023 08:36:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680709008;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=TuiXIjl7StR1lWcqJYYE1fB/Z6K6yMMeGx6F0a8wvVw=;
 b=28pYbgCadrcReU4Qi60tAe/ZY/6jSdbNuyF0ecHE029hultNG6Yd1Qnldz3BMTrnzU
 bNIt9sReooQS8sNO3ly0KJz7jsUR1OkpywvWfKAgpzf8F9ES3G9awjDcIrwhlHXkAmoo
 J/N1GMIn4pHQdY1NFRvNGMidvB6I6mFMt6bFGLQATYKchLuXbREJJ+hlCmjB0xeqcRlF
 wThkqW1G73Fp4xV8QvzbTXN0+a1/UXPxyF97P3h0zTy6ht1A4pm7Ml+lPm/jwM35bmZ9
 DzF68oH6DYjjicSrFJJE7tlrrXHaeU0OhZfr4b8moblrKFVDxvHz3BakeyNxfJZx4VKB
 Mzng==
X-Gm-Message-State: AAQBX9epV6QT2uNzbGhJFkCSdrpx00ED9A3tcgiNglTbW0sAmf1HAVZN
 TZN8VwtKgXtUr8DNPPRz2nf2FsUA2bKr3irF2jlwaARLo3ubgI+wLZwgv8r5vzYF5voyO+Ht/Xw
 7vtenzcKE2JysQHePIch+IOdb8B6g
X-Received: by 2002:a5e:da44:0:b0:760:1fb6:c7d2 with SMTP id
 o4-20020a5eda44000000b007601fb6c7d2mr3357756iop.5.1680709008440; 
 Wed, 05 Apr 2023 08:36:48 -0700 (PDT)
X-Google-Smtp-Source: AKy350Yiu+6jYuVXySDhz9l7TaJE2CbZAprEqCSA9voKn6Sxg2Pef1TWywH9iD954/Pk6M8+1tZHJQ==
X-Received: by 2002:a5e:da44:0:b0:760:1fb6:c7d2 with SMTP id
 o4-20020a5eda44000000b007601fb6c7d2mr3357742iop.5.1680709008129; 
 Wed, 05 Apr 2023 08:36:48 -0700 (PDT)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 e11-20020a02210b000000b004050d92f6d4sm4046543jaa.50.2023.04.05.08.36.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 05 Apr 2023 08:36:47 -0700 (PDT)
Date: Wed, 5 Apr 2023 09:36:46 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: "Liu, Yi L" <yi.l.liu@intel.com>
Message-ID: <20230405093646.337f0992.alex.williamson@redhat.com>
In-Reply-To: <DS0PR11MB7529730CD29F2BD13F1DD9AEC3909@DS0PR11MB7529.namprd11.prod.outlook.com>
References: <20230401144429.88673-1-yi.l.liu@intel.com>
 <20230401144429.88673-6-yi.l.liu@intel.com>
 <20230404141838.6a4efdd4.alex.williamson@redhat.com>
 <DS0PR11MB752919BC81CCCAB1A13998CAC3909@DS0PR11MB7529.namprd11.prod.outlook.com>
 <DS0PR11MB7529730CD29F2BD13F1DD9AEC3909@DS0PR11MB7529.namprd11.prod.outlook.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.35; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v3 05/12] vfio/pci: Allow passing
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

On Wed, 5 Apr 2023 08:01:49 +0000
"Liu, Yi L" <yi.l.liu@intel.com> wrote:

> > From: Liu, Yi L <yi.l.liu@intel.com>
> > Sent: Wednesday, April 5, 2023 3:55 PM  
>  
> > >
> > > Therefore, I think as written, the singleton dev_set hot-reset is
> > > enabled for iommufd and (unintentionally?) for the group path, while
> > > also negating a requirement for a group fd or that a provided group fd
> > > actually matches the device in this latter case.  The null-array
> > > approach is not however extended to groups for more general use.
> > > Additionally, limiting no-iommu hot-reset to singleton dev_sets
> > > provides only a marginal functional difference vs VFIO_DEVICE_RESET.  
> > 
> > I think the singletion dev_set hot-reset is for iommufd (or more accurately
> > for the noiommu case in cdev path).  
> 
> but actually, singleton dev_set hot-reset can work for group path as well.
> Based on this, I'm also wondering do we really want to have singleton dev_set
> hot-reset only for cdev noiommu case? or we allow it generally or just
> don't support it as it is equivalent with VFIO_DEVICE_RESET?

I think you're taking the potential that VFIO_DEVICE_RESET and
hot-reset could do the same thing too far.  The former is more likely
to do an FLR, or even a PM reset.  QEMU even tries to guess what reset
VFIO_DEVICE_RESET might use in order to choose to do a hot-reset if it
seems like the device might only support a PM reset otherwise.

Changing the reset method of a device requires privilege, which is
maybe something we'd compromise on for no-iommu, but the general
expectation is that VFIO_DEVICE_RESET provides a device level scope and
hot-reset provides a... hot-reset, and sometimes those are the same
thing, but that doesn't mean we can lean on the former.

> If we don't support singletion dev_set hot-reset, noiommu devices in cdev
> path shall fail the hot-reset if empty-fd array is provided. But we may just
> document that empty-fd array does not work for noiommu. User should
> use the device fd array.

I don't see any replies to my comment on 08/12 where I again question
why we need an empty array option.  It's causing all sorts of headaches
and I don't see the justification for it beyond some hand waving that
it reduces complexity for the user.  This singleton dev-set notion
seems equally unjustified.  Do we just need to deal with hot-reset
being unsupported for no-iommu devices with iommufd?  Thanks,

Alex

