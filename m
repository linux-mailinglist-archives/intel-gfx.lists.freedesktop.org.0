Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22BDB6DBB88
	for <lists+intel-gfx@lfdr.de>; Sat,  8 Apr 2023 16:20:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC16310E13F;
	Sat,  8 Apr 2023 14:20:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1040510E0D2
 for <intel-gfx@lists.freedesktop.org>; Sat,  8 Apr 2023 14:20:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1680963623;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=TwBQ3fcgCLoaaPNFBnbMDDhYLG0rf+SbWXB4MPe+GUw=;
 b=KnW57U7WC7OSdZEFvhttxcwMXbT62sS5ZUAj2lUmlfEzXduXgZ9lT4hwf99YgrB4KQ0lkF
 QKwKM69bxQnXPFq5MK4g6uYSV1EyKlK3kRlKl5ci/VH0vU8aOfSvN5uXq3iCc7SbySXaUC
 nXph3NtmRkQgcjoKheEzEqVplx0rKMc=
Received: from mail-io1-f71.google.com (mail-io1-f71.google.com
 [209.85.166.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-593-uBueM89LMVW6lzcc7Hy3_Q-1; Sat, 08 Apr 2023 10:20:22 -0400
X-MC-Unique: uBueM89LMVW6lzcc7Hy3_Q-1
Received: by mail-io1-f71.google.com with SMTP id
 p68-20020a6b8d47000000b007583ebb18fdso885600iod.19
 for <intel-gfx@lists.freedesktop.org>; Sat, 08 Apr 2023 07:20:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680963621; x=1683555621;
 h=content-transfer-encoding:mime-version:organization:references
 :in-reply-to:message-id:subject:cc:to:from:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=TwBQ3fcgCLoaaPNFBnbMDDhYLG0rf+SbWXB4MPe+GUw=;
 b=3dvIRLnj+9Z0B+kH3Y1vjRTW5qYh59dCjY4Otp4Fl+DSs/kSkP26U75yy73zRA0BMT
 F5eRYxX8N1PSeS2CXI1OudzhZ1Ik02wRUVomPi3Cfo6dOA/Evbu75s2ydTlBendTAgxy
 oeq4FAtzUW2TPo4oxW8LHux8hkgyprmpXm9DgaQ/i/RBC1AiQNbwvlWNooLlNeNN4xui
 Xt5gNCr4S4kkKGkvtINSjiMY+UJAp4CebhlutZ0JBLAy6x2ROYYxG3iKedjH9zjfFjzt
 J9f6V1ycgx8g4mV2ON9GJJ60Naw86qIbwtfWcAPQc3v7Xcy+Hp4mWF2yuFtWwdkM9BmK
 6juw==
X-Gm-Message-State: AAQBX9eMY/a0s5dgVFc1r3kfs3GcWO5TDWMlCI/6ahhhdNfhVX5yW8Ir
 E20YW+AJh4E9KM2A2gBHNoi0PInSr1mcNXqQQukdQvD/8oPt8vyiWxzEgzl11v6C5+8pIPHbO1D
 zAyefEjAjk/6+/af0y7A4vVdazgFI
X-Received: by 2002:a92:c010:0:b0:328:6172:a745 with SMTP id
 q16-20020a92c010000000b003286172a745mr2589530ild.17.1680963621627; 
 Sat, 08 Apr 2023 07:20:21 -0700 (PDT)
X-Google-Smtp-Source: AKy350ZG06CZCHjPF9Rl3wT0GBsGjOshJkC3m5OR028WCAVRG/H9aKjSa9KSyR31V4v+hR73BIITZw==
X-Received: by 2002:a92:c010:0:b0:328:6172:a745 with SMTP id
 q16-20020a92c010000000b003286172a745mr2589493ild.17.1680963621212; 
 Sat, 08 Apr 2023 07:20:21 -0700 (PDT)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 s13-20020a92ae0d000000b0030c0dce44b1sm1672815ilh.15.2023.04.08.07.20.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 08 Apr 2023 07:20:20 -0700 (PDT)
Date: Sat, 8 Apr 2023 08:20:18 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: "Liu, Yi L" <yi.l.liu@intel.com>
Message-ID: <20230408082018.04dcd1e3.alex.williamson@redhat.com>
In-Reply-To: <SN7PR11MB75407463181A0D7A4F21D546C3979@SN7PR11MB7540.namprd11.prod.outlook.com>
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
 <20230407150721.395eabc4.alex.williamson@redhat.com>
 <SN7PR11MB75407463181A0D7A4F21D546C3979@SN7PR11MB7540.namprd11.prod.outlook.com>
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

On Sat, 8 Apr 2023 05:07:16 +0000
"Liu, Yi L" <yi.l.liu@intel.com> wrote:

> > From: Alex Williamson <alex.williamson@redhat.com>
> > Sent: Saturday, April 8, 2023 5:07 AM
> > 
> > On Fri, 7 Apr 2023 15:47:10 +0000
> > "Liu, Yi L" <yi.l.liu@intel.com> wrote:
> >   
> > > > From: Alex Williamson <alex.williamson@redhat.com>
> > > > Sent: Friday, April 7, 2023 11:14 PM
> > > >
> > > > On Fri, 7 Apr 2023 14:04:02 +0000
> > > > "Liu, Yi L" <yi.l.liu@intel.com> wrote:
> > > >  
> > > > > > From: Alex Williamson <alex.williamson@redhat.com>
> > > > > > Sent: Friday, April 7, 2023 9:52 PM
> > > > > >
> > > > > > On Fri, 7 Apr 2023 13:24:25 +0000
> > > > > > "Liu, Yi L" <yi.l.liu@intel.com> wrote:
> > > > > >  
> > > > > > > > From: Alex Williamson <alex.williamson@redhat.com>
> > > > > > > > Sent: Friday, April 7, 2023 8:04 PM
> > > > > > > >  
> > > > > > > > > > > > @@ -791,7 +813,21 @@ static int vfio_pci_fill_devs(struct pci_dev  
> > > > *pdev,  
> > > > > > void  
> > > > > > > > > > *data)  
> > > > > > > > > > > >  	if (!iommu_group)
> > > > > > > > > > > >  		return -EPERM; /* Cannot reset non-isolated devices  
> > */  
> > > > > > >
> > > > > > > [1]
> > > > > > >  
> > > > > > > > > > >
> > > > > > > > > > > Hi Alex,
> > > > > > > > > > >
> > > > > > > > > > > Is disabling iommu a sane way to test vfio noiommu mode?  
> > > > > > > > > >
> > > > > > > > > > Yes
> > > > > > > > > >  
> > > > > > > > > > > I added intel_iommu=off to disable intel iommu and bind a device to  
> > vfio-  
> > > > pci.  
> > > > > > > > > > > I can see the /dev/vfio/noiommu-0 and /dev/vfio/devices/noiommu-  
> > vfio0.  
> > > > > > Bind  
> > > > > > > > > > > iommufd==-1 can succeed, but failed to get hot reset info due to the  
> > > > above  
> > > > > > > > > > > group check. Reason is that this happens to have some affected  
> > devices,  
> > > > and  
> > > > > > > > > > > these devices have no valid iommu_group (because they are not  
> > bound to  
> > > > > > vfio-  
> > > > > > > > pci  
> > > > > > > > > > > hence nobody allocates noiommu group for them). So when hot reset  
> > info  
> > > > > > loops  
> > > > > > > > > > > such devices, it failed with -EPERM. Is this expected?  
> > > > > > > > > >
> > > > > > > > > > Hmm, I didn't recall that we put in such a limitation, but given the
> > > > > > > > > > minimally intrusive approach to no-iommu and the fact that we never
> > > > > > > > > > defined an invalid group ID to return to the user, it makes sense that
> > > > > > > > > > we just blocked the ioctl for no-iommu use.  I guess we can do the same
> > > > > > > > > > for no-iommu cdev.  
> > > > > > > > >
> > > > > > > > > I just realize a further issue related to this limitation. Remember that we
> > > > > > > > > may finally compile out the vfio group infrastructure in the future. Say I
> > > > > > > > > want to test noiommu, I may boot such a kernel with iommu disabled. I  
> > think  
> > > > > > > > > the _INFO ioctl would fail as there is no iommu_group. Does it mean we  
> > will  
> > > > > > > > > not support hot reset for noiommu in future if vfio group infrastructure is
> > > > > > > > > compiled out?  
> > > > > > > >
> > > > > > > > We're talking about IOMMU groups, IOMMU groups are always present
> > > > > > > > regardless of whether we expose a vfio group interface to userspace.
> > > > > > > > Remember, we create IOMMU groups even in the no-iommu case.  Even  
> > with  
> > > > > > > > pure cdev, there are underlying IOMMU groups that maintain the DMA
> > > > > > > > ownership.  
> > > > > > >
> > > > > > > hmmm. As [1], when iommu is disabled, there will be no iommu_group for a
> > > > > > > given device unless it is registered to VFIO, which a fake group is created.
> > > > > > > That's why I hit the limitation [1]. When vfio_group is compiled out, then
> > > > > > > even fake group goes away.  
> > > > > >
> > > > > > In the vfio group case, [1] can be hit with no-iommu only when there
> > > > > > are affected devices which are not bound to vfio.  
> > > > >
> > > > > yes. because vfio would allocate fake group when device is registered to
> > > > > it.
> > > > >  
> > > > > > Why are we not
> > > > > > allocating an IOMMU group to no-iommu devices when vfio group is
> > > > > > disabled?  Thanks,  
> > > > >
> > > > > hmmm. when the vfio group code is configured out. The
> > > > > vfio_device_set_group() just returns 0 after below patch is
> > > > > applied and CONFIG_VFIO_GROUP=n. So when there is no
> > > > > vfio group, the fake group also goes away.
> > > > >
> > > > > https://lore.kernel.org/kvm/20230401151833.124749-25-yi.l.liu@intel.com/  
> > > >
> > > > Is this a fundamental issue or just a problem with the current
> > > > implementation proposal?  It seems like the latter.  FWIW, I also don't
> > > > see a taint happening in the cdev path for no-iommu use.  Thanks,  
> > >
> > > yes. the latter case. The reason I raised it here is to confirm the
> > > policy on the new group/bdf capability in the DEVICE_GET_INFO. If
> > > there is no iommu group, perhaps I only need to exclude the new
> > > group/bdf capability from the cap chain of DEVICE_GET_INFO. is it?  
> > 
> > I think we need to revisit the question of why allocating an IOMMU
> > group for a no-iommu device is exclusive to the vfio group support.  
> 
> For no-iommu device, the iommu group is a fake group allocated by vfio.
> is it? And the fake group allocation is part of the vfio group code.
> It is the vfio_device_set_group() in group.c. If vfio group code is not
> compiled in, vfio does not allocate fake groups. Detail for this compiling
> can be found in link [1].
> 
> > We've already been down the path of trying to report a field that only
> > exists for devices with certain properties with dev-id.  It doesn't
> > work well.  I think we've said all along that while the cdev interface
> > is device based, there are still going to be underlying IOMMU groups
> > for the user to be aware of, they're just not as much a fundamental
> > part of the interface.  There should not be a case where a device
> > doesn't have a group to report.  Thanks,  
> 
> As the patch in link [1] makes vfio group optional, so if compile a kernel
> with CONFIG_VFIO_GROUP=n, and boot it with iommu disabled, then there is no
> group to report. Perhaps this is not a typical usage but still a sane usage
> for noiommu mode as I confirmed with you in this thread. So when it comes,
> needs to consider what to report for the group field.
> 
> Perhaps I messed up the discussion by referring to a patch that is part of
> another series. But I think it should be considered when talking about the
> group to be reported.

The question is whether the split that group.c code handles both the
vfio group AND creation of the IOMMU group in such cases is the correct
split.  I'm not arguing that the way the code is currently laid out has
the fake IOMMU group for no-iommu devices created in vfio group
specific code, but we have a common interface that makes use of IOMMU
group information for which we don't have an equivalent alternative
data field to report.

We've shown that dev-id doesn't work here because dev-ids only exist
for devices within the user's IOMMU context.  Also reporting an invalid
ID of any sort fails to indicate the potential implied ownership.
Therefore I recognize that if this interface is to report an IOMMU
group, then the creation of fake IOMMU groups existing only in vfio
group code would need to be refactored.  Thanks,

Alex

