Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AAAB26FB850
	for <lists+intel-gfx@lfdr.de>; Mon,  8 May 2023 22:30:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6328410E2F9;
	Mon,  8 May 2023 20:30:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6E8F10E2F9
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 May 2023 20:30:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1683577802;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=DVSAqbGo/SYymxziE0Ynvj5CJeQ8fOYfiV63Ae36Jlg=;
 b=AwczbfUKuui4kYbdBEC2OFlwG/WfoubMAVH6F4Qt9QP3wPZuFohKRswX1qSmFyFjwe1dYW
 Few3o7kKHqN++QCBCLhgzpCan/0J1KdUSYH/jrCKrgaEDMKKemXbFCoROXM62cCP4gN6vD
 RhXS3om7vKXCTWpXOyXeKks01AzLO2c=
Received: from mail-il1-f199.google.com (mail-il1-f199.google.com
 [209.85.166.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-379-lydU-fOaPAW77V-s3pyCVQ-1; Mon, 08 May 2023 16:29:59 -0400
X-MC-Unique: lydU-fOaPAW77V-s3pyCVQ-1
Received: by mail-il1-f199.google.com with SMTP id
 e9e14a558f8ab-33172d0eb28so73345535ab.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 08 May 2023 13:29:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1683577798; x=1686169798;
 h=content-transfer-encoding:mime-version:organization:references
 :in-reply-to:message-id:subject:cc:to:from:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=DVSAqbGo/SYymxziE0Ynvj5CJeQ8fOYfiV63Ae36Jlg=;
 b=d39nuZYEHp7ARkoWzVsYwuY7U91C6S+/xTPaeYb5yIlbMjwcS+NUK8PRIU69SK6XwK
 CVNBEvdu6xGQFz7EuoHc4kzY0uWlNS6bY0a1C4oltq4tspRQ4cuuDPV8ixlhwVGwQuTP
 v00x06Rekr32KSNU5wqdoO/wHVFzxW6TweSxkw2tXrJ7K1qE6KErKYDGWtDwIKhGWF7d
 tQE1q426o+eXBvp4OS6mU9Gd6JCQ5KfZjLEWitfSmi46iNO1zUUQgRRk7ByaK2rnJYZI
 GVh+Uvzw1YC+f96F7H2VMqUY4CUSylLxwMp0syMJPWJj6T2r4O+rw0tC0v3Ssr1KIaEv
 f8xg==
X-Gm-Message-State: AC+VfDwlktN6P9Uf7OsRySjplTh8cnCzSH7upHZ0Hjrx/cSsdhTpdzlv
 BvOAB7+K1K6zLY16kDOcbBCJfODVfl8v7qvwpURCAQJ4GPqrOLHe5XoNcldCR0gGq3YTtkvGCN9
 TFAPXR4ELSAy/suIUJXYI3+zXWq3G
X-Received: by 2002:a92:d403:0:b0:326:3a39:89d0 with SMTP id
 q3-20020a92d403000000b003263a3989d0mr8107231ilm.1.1683577798627; 
 Mon, 08 May 2023 13:29:58 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ7DrZnriZETaQ/90S6mqc6FkPi+6no4KK3rwJGM0g691+Xcp+XCrkWFWkbvezVgZkHdFJFtOw==
X-Received: by 2002:a92:d403:0:b0:326:3a39:89d0 with SMTP id
 q3-20020a92d403000000b003263a3989d0mr8107209ilm.1.1683577798310; 
 Mon, 08 May 2023 13:29:58 -0700 (PDT)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 l2-20020a056e0205c200b00334faa50484sm1915883ils.54.2023.05.08.13.29.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 May 2023 13:29:57 -0700 (PDT)
Date: Mon, 8 May 2023 14:29:55 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: "Liu, Yi L" <yi.l.liu@intel.com>
Message-ID: <20230508142955.44566026.alex.williamson@redhat.com>
In-Reply-To: <DS0PR11MB75295210DA7C4C2896D1FB6DC3719@DS0PR11MB7529.namprd11.prod.outlook.com>
References: <20230426145419.450922-1-yi.l.liu@intel.com>
 <20230426145419.450922-9-yi.l.liu@intel.com>
 <20230427140405.2afe27d4.alex.williamson@redhat.com>
 <20230427141533.7d8861ed.alex.williamson@redhat.com>
 <DS0PR11MB75295210DA7C4C2896D1FB6DC3719@DS0PR11MB7529.namprd11.prod.outlook.com>
Organization: Red Hat
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v4 8/9] vfio/pci: Extend
 VFIO_DEVICE_GET_PCI_HOT_RESET_INFO for vfio device cdev
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

On Mon, 8 May 2023 15:32:44 +0000
"Liu, Yi L" <yi.l.liu@intel.com> wrote:

> > From: Alex Williamson <alex.williamson@redhat.com>
> > Sent: Friday, April 28, 2023 4:16 AM
> >  
> > > > + *
> > > >   * Return: 0 on success, -errno on failure:
> > > >   *	-enospc = insufficient buffer, -enodev = unsupported for device.
> > > >   */
> > > >  struct vfio_pci_dependent_device {
> > > > -	__u32	group_id;
> > > > +	union {
> > > > +		__u32   group_id;
> > > > +		__u32	dev_id;
> > > > +#define VFIO_PCI_DEVID_NONBLOCKING	0
> > > > +#define VFIO_PCI_DEVID_BLOCKING	-1  
> > >
> > > The above description seems like it's leaning towards OWNED rather than
> > > BLOCKING.  
> > 
> > Also these should be defined relative to something defined in IOMMUFD
> > rather than inventing values here.  We can't have the valid devid
> > number space owned by IOMMUFD conflict with these definitions.  Thanks,  
> 
> Jason has proposed to reserve all negative IDs and 0 in iommufd. In that case,
> can vfio define the numbers now?

Ok, as long as it's guaranteed that we're overlapping invalid dev-ids,
as specified by IOMMUFD, then the mapping of specific invalid dev-ids
to error values here is interface specific and can be defined here.
Thanks,

Alex

