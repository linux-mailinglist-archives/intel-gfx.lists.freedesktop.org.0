Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BFF8C6A9C78
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Mar 2023 17:55:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A536610E70D;
	Fri,  3 Mar 2023 16:55:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1281F89289
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Mar 2023 16:55:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1677862550;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=K2FFa2yfYrCiaVu7okbqhPwZrwGrmF/P4YR4gLz07iw=;
 b=TXX/sKzThVf1W4W1PKGcdt6xliVMODudobS9ReoIT9bzFyjf7mqDrmRn3IhUm3rbVd8OfS
 c0D6wom9tvLt308JhzEBWaZWQWDpHe1oa1/KYqJTzV1+RnBK9bClsi/AgcPBRj82a2lgvq
 0Biqm/ojqt1jCiDI6IP+DM24Ua3qnmY=
Received: from mail-il1-f197.google.com (mail-il1-f197.google.com
 [209.85.166.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-112-ie8j21yXONuzo3OP2r2HXQ-1; Fri, 03 Mar 2023 11:55:46 -0500
X-MC-Unique: ie8j21yXONuzo3OP2r2HXQ-1
Received: by mail-il1-f197.google.com with SMTP id
 z2-20020a926502000000b00317558bed21so1625711ilb.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 03 Mar 2023 08:55:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:organization:references
 :in-reply-to:message-id:subject:cc:to:from:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=wQaN2w6WPy4qe2LbDS5GqBL5o5ir0ZpFEJOy/c7VAXk=;
 b=ObqU2QluGHNlOeiez1hCQWqYaiaMejSEpKVmBb5KS4IEnViECFFtul4PH4Ov8FUyhK
 GAz3Pb8LtL5UnavPdXPeQ78+RDpInfX0n+2bNREPh8ttUdNxYjl0pbftlwpNolJmLs/p
 rR+e7TulIk81ZbKYSWymXGnRAUWmVzp5KcIiMmmwqne1qgX5UL8UjZuHsFHVNebXimEm
 6ouOg7vP/Q87D/iRbJA2FP6pS+3FRl5/1F3tYfOu3O/+bo7sM/4LnoiHbLIA3XQCpHWB
 fDlZFZKJ5k7/7+mVBEWxNleW+yrANquolvKA4DRqqB0ERfS6/vKE29EuU6a2Ljyj+Ek2
 68sA==
X-Gm-Message-State: AO0yUKXPEL0oE6c8jzMw+uYOo2Zg4LQ6rTG+RNonhyKfPrcJ4XINqhwd
 BYQze14sns+VLLARC1896YuTbWhlVzVg0exzSaLDVQx/ldh6woROsJT96K9K95juGyTuADx1HIU
 RUz/kxyQTiepLFph9F7jXgCIZ9Z9R
X-Received: by 2002:a05:6e02:1b0b:b0:314:e56:54fc with SMTP id
 i11-20020a056e021b0b00b003140e5654fcmr2317800ilv.1.1677862546151; 
 Fri, 03 Mar 2023 08:55:46 -0800 (PST)
X-Google-Smtp-Source: AK7set+zTdgOdL+Cvm/GHdzHlk9qNHC8FUzt7q1k0ffumCIR03rPcZWQtCDbvcczq+7wSTu39R/sFQ==
X-Received: by 2002:a05:6e02:1b0b:b0:314:e56:54fc with SMTP id
 i11-20020a056e021b0b00b003140e5654fcmr2317767ilv.1.1677862545900; 
 Fri, 03 Mar 2023 08:55:45 -0800 (PST)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 p5-20020a02b385000000b003de9d8de0edsm871392jan.88.2023.03.03.08.55.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Mar 2023 08:55:44 -0800 (PST)
Date: Fri, 3 Mar 2023 09:55:42 -0700
From: Alex Williamson <alex.williamson@redhat.com>
To: "Tian, Kevin" <kevin.tian@intel.com>
Message-ID: <20230303095542.2bfce5c2.alex.williamson@redhat.com>
In-Reply-To: <BN9PR11MB5276B825071A4819479079A68CB39@BN9PR11MB5276.namprd11.prod.outlook.com>
References: <20230227111135.61728-1-yi.l.liu@intel.com>
 <20230227111135.61728-10-yi.l.liu@intel.com>
 <DS0PR11MB75295B4B2578765C8B08AC7EC3B29@DS0PR11MB7529.namprd11.prod.outlook.com>
 <BN9PR11MB527688810514A262471E4BB78CB29@BN9PR11MB5276.namprd11.prod.outlook.com>
 <ZACX+Np/IY7ygqL5@nvidia.com>
 <DS0PR11MB7529531834C0A9F1D294A5CCC3B29@DS0PR11MB7529.namprd11.prod.outlook.com>
 <BN9PR11MB5276B825071A4819479079A68CB39@BN9PR11MB5276.namprd11.prod.outlook.com>
Organization: Red Hat
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v5 09/19] vfio/pci: Allow passing
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

On Fri, 3 Mar 2023 06:36:35 +0000
"Tian, Kevin" <kevin.tian@intel.com> wrote:

> > From: Liu, Yi L <yi.l.liu@intel.com>
> > Sent: Thursday, March 2, 2023 10:20 PM
> >  =20
> > > From: Jason Gunthorpe <jgg@nvidia.com>
> > > Sent: Thursday, March 2, 2023 8:35 PM
> > >
> > > On Thu, Mar 02, 2023 at 09:55:46AM +0000, Tian, Kevin wrote: =20
> > > > > From: Liu, Yi L <yi.l.liu@intel.com>
> > > > > Sent: Thursday, March 2, 2023 2:07 PM
> > > > > =20
> > > > > > -=09=09if (!vfio_dev_in_groups(cur_vma, groups)) {
> > > > > > +=09=09if (cur_vma->vdev.open_count &&
> > > > > > +=09=09    !vfio_dev_in_groups(cur_vma, groups) &&
> > > > > > +=09=09    !vfio_dev_in_iommufd_ctx(cur_vma, =20
> > iommufd_ctx)) { =20
> > > > >
> > > > > Hi Alex, Jason,
> > > > >
> > > > > There is one concern on this approach which is related to the
> > > > > cdev noiommu mode. As patch 16 of this series, cdev path
> > > > > supports noiommu mode by passing a negative iommufd to
> > > > > kernel. In such case, the vfio_device is not bound to a valid
> > > > > iommufd. Then the check in vfio_dev_in_iommufd_ctx() is
> > > > > to be broken.
> > > > >
> > > > > An idea is to add a cdev_noiommu flag in vfio_device, when
> > > > > checking the iommufd_ictx, also check this flag. If all the opene=
d
> > > > > devices in the dev_set have vfio_device->cdev_noiommu=3D=3Dtrue,
> > > > > then the reset is considered to be doable. But there is a special
> > > > > case. If devices in this dev_set are opened by two applications
> > > > > that operates in cdev noiommu mode, then this logic is not able
> > > > > to differentiate them. In that case, should we allow the reset?
> > > > > It seems to ok to allow reset since noiommu mode itself means
> > > > > no security between the applications that use it. thoughts?
> > > > > =20
> > > >
> > > > Probably we need still pass in a valid iommufd (instead of using
> > > > a negative value) in noiommu case to mark the ownership so the
> > > > check in the reset path can correctly catch whether an opened
> > > > device belongs to this user. =20
> > >
> > > There should be no iommufd at all in no-iommu mode
> > >
> > > Adding one just to deal with noiommu reset seems pretty sad :\
> > >
> > > no-iommu is only really used by dpdk, and it doesn't invoke
> > > VFIO_DEVICE_PCI_HOT_RESET at all. =20
> >=20
> > Does it happen to be or by design, this ioctl is not needed by dpdk? =
=20

I can't think of a reason DPDK couldn't use hot-reset.  If we want to
make it a policy, it should be enforced by code, but creating that
policy based on a difficulty in supporting that mode with iommufd isn't
great.
=20
> use of noiommu should be discouraged.
>=20
> if only known noiommu user doesn't use it then having certain
> new restriction for noiommu in the hot reset path might be an
> acceptable tradeoff.
>=20
> but again needs Alex's input as he knows all the history about
> noiommu. =F0=9F=98=8A

No-IOMMU mode was meant to be a minimally invasive code change to
re-use the vfio device interface, or alternatively avoid extending
uio-pci-generic to support MSI/X, with better logging/tainting to know
when userspace is driving devices without IOMMU protection, and as a
means to promote a transition to standard support of vfio.  AFAIK,
there are still environments without v/IOMMU that make use of no-iommu
mode.  Thanks,

Alex

