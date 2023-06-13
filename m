Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B6C2072E5A2
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Jun 2023 16:24:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE2A110E26A;
	Tue, 13 Jun 2023 14:24:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE39610E265
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Jun 2023 14:24:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1686666273;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=uNaTTX2jpfAAP/LJoW3TLJvil6qu1dd8mTfnU5F8em0=;
 b=Q8oVyZv87ec/kdtpyS0v9pUu7ugUnln9IyWdA9AlbXwHNZB20RYmZ/In2lzUNQqRcxxpX6
 vHbZrTlmKbTcGztGwq3g4P/0wXLf+0EMZ1D8UbIRzvwrD4RcmOtLZy33av2oEb7zB/ff0g
 Pxu/phordQPCvLtrkbxa52WbTwgawKw=
Received: from mail-il1-f198.google.com (mail-il1-f198.google.com
 [209.85.166.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-163-y4Aj3LR-PVmzlstZRV6VYA-1; Tue, 13 Jun 2023 10:24:30 -0400
X-MC-Unique: y4Aj3LR-PVmzlstZRV6VYA-1
Received: by mail-il1-f198.google.com with SMTP id
 e9e14a558f8ab-33b2e96ea07so59827265ab.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Jun 2023 07:24:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1686666270; x=1689258270;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=uNaTTX2jpfAAP/LJoW3TLJvil6qu1dd8mTfnU5F8em0=;
 b=A7RL5+dUOa/nmdEIxFuVIBQWjlj0SCOdhwDdPV5KeLoCT4hezVKhbr3GTsjPk3QO7z
 bCrm8jD4IC1IWM70CVoco8US/4F5lyCQFPWTRx3elCneqAtUQDwoihp3miz62OufKOCr
 vZbVjFgeb7JR3KFY6preB7TxlXaUi7dQUeKMvFSIrMXwtryDPER1LCfH3hhsxoT9H1+t
 2GUHh3W99EUvcd7Dxmu8RqCYdoRP71XksfcFGFOofAmGh8kCrx2SAbEJEmfsms9x80tH
 zhrqS43rOndviOBEFTo9R/WRSw8tSp2vSBDuZpNX2lRjA37YM+uhXiOyxDT3WW/G4abK
 rfyw==
X-Gm-Message-State: AC+VfDxk677x58mNrrcVWCLoj3sIYNCBXZbCibWVv0BWcb5HCclqh6I6
 y5RP5nBLcaWXVx6qwXJ9w2+4gNZvjSqi4PLOQG7JkKKYHBGesJwS8Iapsy0UvrX9ytd8QeGqMZ9
 GSEElk+CgUNJ+p0ddqkE7hW2yJn33
X-Received: by 2002:a92:d7cd:0:b0:32b:5e:e22a with SMTP id
 g13-20020a92d7cd000000b0032b005ee22amr10785993ilq.17.1686666269814; 
 Tue, 13 Jun 2023 07:24:29 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ5KU1E6AFjVveX2o9hXRzGdCkKtng9KR4tZYBJtO5BSqSOb3FWAM0AzE8jKPCez7h5MNkFahQ==
X-Received: by 2002:a92:d7cd:0:b0:32b:5e:e22a with SMTP id
 g13-20020a92d7cd000000b0032b005ee22amr10785970ilq.17.1686666269583; 
 Tue, 13 Jun 2023 07:24:29 -0700 (PDT)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 ee24-20020a056638293800b0041658c1838asm3436802jab.81.2023.06.13.07.24.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Jun 2023 07:24:29 -0700 (PDT)
Date: Tue, 13 Jun 2023 08:24:27 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: "Liu, Yi L" <yi.l.liu@intel.com>
Message-ID: <20230613082427.453748f5.alex.williamson@redhat.com>
In-Reply-To: <DS0PR11MB7529B0A71849EA06DA953BBCC355A@DS0PR11MB7529.namprd11.prod.outlook.com>
References: <20230602121653.80017-1-yi.l.liu@intel.com>
 <20230602121653.80017-25-yi.l.liu@intel.com>
 <20230612170628.661ab2a6.alex.williamson@redhat.com>
 <DS0PR11MB7529B0A71849EA06DA953BBCC355A@DS0PR11MB7529.namprd11.prod.outlook.com>
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

On Tue, 13 Jun 2023 12:01:51 +0000
"Liu, Yi L" <yi.l.liu@intel.com> wrote:

> > From: Alex Williamson <alex.williamson@redhat.com>
> > Sent: Tuesday, June 13, 2023 7:06 AM
> > 
> > On Fri,  2 Jun 2023 05:16:53 -0700
> > Yi Liu <yi.l.liu@intel.com> wrote:
> >   
> > > This gives notes for userspace applications on device cdev usage.
> > >
> > > Reviewed-by: Kevin Tian <kevin.tian@intel.com>
> > > Signed-off-by: Yi Liu <yi.l.liu@intel.com>
> > > ---
> > >  Documentation/driver-api/vfio.rst | 132 ++++++++++++++++++++++++++++++
> > >  1 file changed, 132 insertions(+)
> > >
> > > diff --git a/Documentation/driver-api/vfio.rst b/Documentation/driver-api/vfio.rst
> > > index 363e12c90b87..f00c9b86bda0 100644
> > > --- a/Documentation/driver-api/vfio.rst
> > > +++ b/Documentation/driver-api/vfio.rst
> > > @@ -239,6 +239,130 @@ group and can access them as follows::
> > >  	/* Gratuitous device reset and go... */
> > >  	ioctl(device, VFIO_DEVICE_RESET);
> > >
> > > +IOMMUFD and vfio_iommu_type1
> > > +----------------------------
> > > +
> > > +IOMMUFD is the new user API to manage I/O page tables from userspace.
> > > +It intends to be the portal of delivering advanced userspace DMA
> > > +features (nested translation [5]_, PASID [6]_, etc.) while also providing
> > > +a backwards compatibility interface for existing VFIO_TYPE1v2_IOMMU use
> > > +cases.  Eventually the vfio_iommu_type1 driver, as well as the legacy
> > > +vfio container and group model is intended to be deprecated.
> > > +
> > > +The IOMMUFD backwards compatibility interface can be enabled two ways.
> > > +In the first method, the kernel can be configured with
> > > +CONFIG_IOMMUFD_VFIO_CONTAINER, in which case the IOMMUFD subsystem
> > > +transparently provides the entire infrastructure for the VFIO
> > > +container and IOMMU backend interfaces.  The compatibility mode can
> > > +also be accessed if the VFIO container interface, ie. /dev/vfio/vfio is
> > > +simply symlink'd to /dev/iommu.  Note that at the time of writing, the
> > > +compatibility mode is not entirely feature complete relative to
> > > +VFIO_TYPE1v2_IOMMU (ex. DMA mapping MMIO) and does not attempt to
> > > +provide compatibility to the VFIO_SPAPR_TCE_IOMMU interface.  Therefore
> > > +it is not generally advisable at this time to switch from native VFIO
> > > +implementations to the IOMMUFD compatibility interfaces.
> > > +
> > > +Long term, VFIO users should migrate to device access through the cdev
> > > +interface described below, and native access through the IOMMUFD
> > > +provided interfaces.
> > > +
> > > +VFIO Device cdev
> > > +----------------
> > > +
> > > +Traditionally user acquires a device fd via VFIO_GROUP_GET_DEVICE_FD
> > > +in a VFIO group.
> > > +
> > > +With CONFIG_VFIO_DEVICE_CDEV=y the user can now acquire a device fd
> > > +by directly opening a character device /dev/vfio/devices/vfioX where
> > > +"X" is the number allocated uniquely by VFIO for registered devices.
> > > +cdev interface does not support noiommu, so user should use the legacy
> > > +group interface if noiommu is needed.
> > > +
> > > +The cdev only works with IOMMUFD.  Both VFIO drivers and applications
> > > +must adapt to the new cdev security model which requires using
> > > +VFIO_DEVICE_BIND_IOMMUFD to claim DMA ownership before starting to
> > > +actually use the device.  Once BIND succeeds then a VFIO device can
> > > +be fully accessed by the user.
> > > +
> > > +VFIO device cdev doesn't rely on VFIO group/container/iommu drivers.
> > > +Hence those modules can be fully compiled out in an environment
> > > +where no legacy VFIO application exists.
> > > +
> > > +So far SPAPR does not support IOMMUFD yet.  So it cannot support device
> > > +cdev neither.  
> > 
> > s/neither/either/  
> 
> Got it.
> 
> > 
> > Unless I missed it, we've not described that vfio device cdev access is
> > still bound by IOMMU group semantics, ie. there can be one DMA owner
> > for the group.  That's a pretty common failure point for multi-function
> > consumer device use cases, so the why, where, and how it fails should
> > be well covered.  
> 
> Yes. this needs to be documented. How about below words:
> 
> vfio device cdev access is still bound by IOMMU group semantics, ie. there
> can be only one DMA owner for the group.  Devices belonging to the same
> group can not be bound to multiple iommufd_ctx.

... or shared between native kernel and vfio drivers.


>  The users that try to bind
> such device to different iommufd shall be failed in VFIO_DEVICE_BIND_IOMMUFD
> which is the start point to get full access for the device.

"A violation of this ownership requirement will fail at the
VFIO_DEVICE_BIND_IOMMUFD ioctl, which gates full device access."

Thanks,
Alex

