Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13AB76DB5AE
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Apr 2023 23:07:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55C8010EE48;
	Fri,  7 Apr 2023 21:07:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29DF410EC36
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Apr 2023 21:07:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1680901647;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=/5KpsOJOZ4YA+v0e7h56AcRCS0K0kPfTOJnEBGf/OGY=;
 b=hxUitRYjVorv7oiVAwYes3FKJOTagGEZRWmNkalkJyHi5bL4ICgUwPR97GcXWMXGEiDprC
 bG5kgXUqE3EJo4Ye5ZCfJczcCoNQsmGoRyirvuGpv10e/cb47UtONLzoJebeHzGLbzSr7g
 a9V8t7Oaqy+AaXhZoa+SvaScRoUPvXg=
Received: from mail-io1-f70.google.com (mail-io1-f70.google.com
 [209.85.166.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-626-s4IDpPr_PUiX3fuR5wWDRw-1; Fri, 07 Apr 2023 17:07:25 -0400
X-MC-Unique: s4IDpPr_PUiX3fuR5wWDRw-1
Received: by mail-io1-f70.google.com with SMTP id
 h136-20020a6bb78e000000b00758b105cdd3so27131654iof.23
 for <intel-gfx@lists.freedesktop.org>; Fri, 07 Apr 2023 14:07:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680901645; x=1683493645;
 h=content-transfer-encoding:mime-version:organization:references
 :in-reply-to:message-id:subject:cc:to:from:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=/5KpsOJOZ4YA+v0e7h56AcRCS0K0kPfTOJnEBGf/OGY=;
 b=3IhN2zveXnkAcvDK+Ew1ssVTJ3RrS4apuquOHcDYE4ACQy32pBYuDCpL4a7Q3v8g6A
 cc7ez3dSghMmcsNwS2yISCT7AayYg2qaIlrMFG0h85WGbBRty8Y+rOsOifQhCI8K4MOI
 qAk30R05KDN5FNVcroQ/KGK+ML9ocQYm9u3j4p/kzyu/3R0q6Xm6lJ6zmFkun9be3MU1
 DpbZ4xsyvXLxBpZMMIEFmgy7HZBLroEMVn8YVa6Cwjv7ec8CeJp9H0sn4vvagUP3RmAR
 u/E2JMZco/7n3OF305ieidtQoklbq7dnTOuCP4xruyBwnPOBd3tunstz8CsHTde+isW1
 8npQ==
X-Gm-Message-State: AAQBX9e1W4S99Wdj/uvYf3Diw6ljBThEM9pJYS7dOzzrgL5/7AdtBKiB
 C+dZSWUNl9KLwfgN2GfRTqI7X4EG+FHr8i34n53PSdnsb4xWyWFsCBjl7/0zFPpSb+Jv+dQm4Nl
 K7FAIQp+XBleJL6Oj3Moj/Ia7WmZk
X-Received: by 2002:a92:c842:0:b0:310:c6f7:c1e9 with SMTP id
 b2-20020a92c842000000b00310c6f7c1e9mr46530ilq.5.1680901644900; 
 Fri, 07 Apr 2023 14:07:24 -0700 (PDT)
X-Google-Smtp-Source: AKy350blmaCJLT4o9hbUAuzSGLAYyai8t8DDOomZycals9fmQUkixA3uNQMnu5k2ngdyGVebYrNjzQ==
X-Received: by 2002:a92:c842:0:b0:310:c6f7:c1e9 with SMTP id
 b2-20020a92c842000000b00310c6f7c1e9mr46508ilq.5.1680901644577; 
 Fri, 07 Apr 2023 14:07:24 -0700 (PDT)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 y17-20020a027311000000b0040b1f6db720sm1389567jab.29.2023.04.07.14.07.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 07 Apr 2023 14:07:23 -0700 (PDT)
Date: Fri, 7 Apr 2023 15:07:21 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: "Liu, Yi L" <yi.l.liu@intel.com>
Message-ID: <20230407150721.395eabc4.alex.williamson@redhat.com>
In-Reply-To: <DS0PR11MB7529A9D103F88381F84CF390C3969@DS0PR11MB7529.namprd11.prod.outlook.com>
References: <20230401144429.88673-1-yi.l.liu@intel.com>
 <20230401144429.88673-13-yi.l.liu@intel.com>
 <DS0PR11MB752996A6E6B3263BAD01DAC2C3929@DS0PR11MB7529.namprd11.prod.outlook.com>
 <20230403090151.4cb2158c.alex.williamson@redhat.com>
 <DS0PR11MB75291E6ED702ADD03AAE023BC3969@DS0PR11MB7529.namprd11.prod.outlook.com>
 <20230407060335.7babfeb8.alex.williamson@redhat.com>
 <DS0PR11MB7529B0A91FF97C078BEA3783C3969@DS0PR11MB7529.namprd11.prod.outlook.com>
 <20230407075155.3ad4c804.alex.williamson@redhat.com>
 <DS0PR11MB7529C1CA38D7D1035869F358C3969@DS0PR11MB7529.namprd11.prod.outlook.com>
 <20230407091401.1c847419.alex.williamson@redhat.com>
 <DS0PR11MB7529A9D103F88381F84CF390C3969@DS0PR11MB7529.namprd11.prod.outlook.com>
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

On Fri, 7 Apr 2023 15:47:10 +0000
"Liu, Yi L" <yi.l.liu@intel.com> wrote:

> > From: Alex Williamson <alex.williamson@redhat.com>
> > Sent: Friday, April 7, 2023 11:14 PM
> > 
> > On Fri, 7 Apr 2023 14:04:02 +0000
> > "Liu, Yi L" <yi.l.liu@intel.com> wrote:
> >   
> > > > From: Alex Williamson <alex.williamson@redhat.com>
> > > > Sent: Friday, April 7, 2023 9:52 PM
> > > >
> > > > On Fri, 7 Apr 2023 13:24:25 +0000
> > > > "Liu, Yi L" <yi.l.liu@intel.com> wrote:
> > > >  
> > > > > > From: Alex Williamson <alex.williamson@redhat.com>
> > > > > > Sent: Friday, April 7, 2023 8:04 PM
> > > > > >  
> > > > > > > > > > @@ -791,7 +813,21 @@ static int vfio_pci_fill_devs(struct pci_dev  
> > *pdev,  
> > > > void  
> > > > > > > > *data)  
> > > > > > > > > >  	if (!iommu_group)
> > > > > > > > > >  		return -EPERM; /* Cannot reset non-isolated devices */  
> > > > >
> > > > > [1]
> > > > >  
> > > > > > > > >
> > > > > > > > > Hi Alex,
> > > > > > > > >
> > > > > > > > > Is disabling iommu a sane way to test vfio noiommu mode?  
> > > > > > > >
> > > > > > > > Yes
> > > > > > > >  
> > > > > > > > > I added intel_iommu=off to disable intel iommu and bind a device to vfio-  
> > pci.  
> > > > > > > > > I can see the /dev/vfio/noiommu-0 and /dev/vfio/devices/noiommu-vfio0.  
> > > > Bind  
> > > > > > > > > iommufd==-1 can succeed, but failed to get hot reset info due to the  
> > above  
> > > > > > > > > group check. Reason is that this happens to have some affected devices,  
> > and  
> > > > > > > > > these devices have no valid iommu_group (because they are not bound to  
> > > > vfio-  
> > > > > > pci  
> > > > > > > > > hence nobody allocates noiommu group for them). So when hot reset info  
> > > > loops  
> > > > > > > > > such devices, it failed with -EPERM. Is this expected?  
> > > > > > > >
> > > > > > > > Hmm, I didn't recall that we put in such a limitation, but given the
> > > > > > > > minimally intrusive approach to no-iommu and the fact that we never
> > > > > > > > defined an invalid group ID to return to the user, it makes sense that
> > > > > > > > we just blocked the ioctl for no-iommu use.  I guess we can do the same
> > > > > > > > for no-iommu cdev.  
> > > > > > >
> > > > > > > I just realize a further issue related to this limitation. Remember that we
> > > > > > > may finally compile out the vfio group infrastructure in the future. Say I
> > > > > > > want to test noiommu, I may boot such a kernel with iommu disabled. I think
> > > > > > > the _INFO ioctl would fail as there is no iommu_group. Does it mean we will
> > > > > > > not support hot reset for noiommu in future if vfio group infrastructure is
> > > > > > > compiled out?  
> > > > > >
> > > > > > We're talking about IOMMU groups, IOMMU groups are always present
> > > > > > regardless of whether we expose a vfio group interface to userspace.
> > > > > > Remember, we create IOMMU groups even in the no-iommu case.  Even with
> > > > > > pure cdev, there are underlying IOMMU groups that maintain the DMA
> > > > > > ownership.  
> > > > >
> > > > > hmmm. As [1], when iommu is disabled, there will be no iommu_group for a
> > > > > given device unless it is registered to VFIO, which a fake group is created.
> > > > > That's why I hit the limitation [1]. When vfio_group is compiled out, then
> > > > > even fake group goes away.  
> > > >
> > > > In the vfio group case, [1] can be hit with no-iommu only when there
> > > > are affected devices which are not bound to vfio.  
> > >
> > > yes. because vfio would allocate fake group when device is registered to
> > > it.
> > >  
> > > > Why are we not
> > > > allocating an IOMMU group to no-iommu devices when vfio group is
> > > > disabled?  Thanks,  
> > >
> > > hmmm. when the vfio group code is configured out. The
> > > vfio_device_set_group() just returns 0 after below patch is
> > > applied and CONFIG_VFIO_GROUP=n. So when there is no
> > > vfio group, the fake group also goes away.
> > >
> > > https://lore.kernel.org/kvm/20230401151833.124749-25-yi.l.liu@intel.com/  
> > 
> > Is this a fundamental issue or just a problem with the current
> > implementation proposal?  It seems like the latter.  FWIW, I also don't
> > see a taint happening in the cdev path for no-iommu use.  Thanks,  
> 
> yes. the latter case. The reason I raised it here is to confirm the
> policy on the new group/bdf capability in the DEVICE_GET_INFO. If
> there is no iommu group, perhaps I only need to exclude the new
> group/bdf capability from the cap chain of DEVICE_GET_INFO. is it?

I think we need to revisit the question of why allocating an IOMMU
group for a no-iommu device is exclusive to the vfio group support.
We've already been down the path of trying to report a field that only
exists for devices with certain properties with dev-id.  It doesn't
work well.  I think we've said all along that while the cdev interface
is device based, there are still going to be underlying IOMMU groups
for the user to be aware of, they're just not as much a fundamental
part of the interface.  There should not be a case where a device
doesn't have a group to report.  Thanks,

Alex

