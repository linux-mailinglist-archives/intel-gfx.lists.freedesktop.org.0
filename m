Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D7107409B4
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jun 2023 09:31:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92A0E10E364;
	Wed, 28 Jun 2023 07:31:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7C4910E2F8
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Jun 2023 17:34:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1687887276;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=SLQBNUM5FHtynC0irarbej/SUugesa8v8fP4Rv0Fy+0=;
 b=H+/qQeyM/ywsH31prP/20RaTgvvyPHF+yfPUjR7j33M3aDB+TKreeNSL4xIktQjfGXEOub
 0ByNTxpv2Xv6rYQKefSyi+1s16Ee3PXGlG/JVqgaRoV02leHDGBEnXxcOY8msi1b5Q409O
 UbGd160n5c1U8Qri7qwaVHZX9bsX5ww=
Received: from mail-il1-f197.google.com (mail-il1-f197.google.com
 [209.85.166.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-259-qg56juCdPL6TBnBq2VU0Hg-1; Tue, 27 Jun 2023 13:34:34 -0400
X-MC-Unique: qg56juCdPL6TBnBq2VU0Hg-1
Received: by mail-il1-f197.google.com with SMTP id
 e9e14a558f8ab-34576279335so567875ab.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Jun 2023 10:34:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1687887273; x=1690479273;
 h=content-transfer-encoding:mime-version:organization:references
 :in-reply-to:message-id:subject:cc:to:from:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=SLQBNUM5FHtynC0irarbej/SUugesa8v8fP4Rv0Fy+0=;
 b=TbqP64FSHI7K7EPFVhBuhkgWmcaEsr1lD9VcnheUMQYnU1fl8rBE8uYcu2KFktkLRj
 8xwZooNQV3rUvEpCP/AY2c2kCunMW6sWz9EPo5O2YOj/pT02vEdG5n6oo/e+MkV0APin
 y9Ytj1SAOAsr4bqNlf44fNhrOKzGgydF01JGgFzaaGZhyKIxlmU9HyMzXQtxzADt7S3l
 pv4a2lSJ++iEn4rWtcItq74hfHL1lB0DpZjKs/xpz+yKhuxRnrbadfxeNYxusF8sbo9g
 yI7MUHhLHApUQbUybvCYRKzPE3il0/WPpBz6lukvXVSLo2fhz1X23n7DGWuGqMXfgHZo
 DrCA==
X-Gm-Message-State: AC+VfDyZb9vH/uUB6bfffSX2QsEskSUiMwxhJ08DnCrSh7G9OP+zGYr7
 S1GqTaoGgm8Dzwl8ULmyuLjOnTwCrAHNLoB1xO3BiZWmHrnKc/skFJy7fs4+ld7iLrjVekRKyes
 hKlsB9lyShjxAo00kMD7h6uexE6Am
X-Received: by 2002:a92:da48:0:b0:340:7643:d5a7 with SMTP id
 p8-20020a92da48000000b003407643d5a7mr25826826ilq.4.1687887273343; 
 Tue, 27 Jun 2023 10:34:33 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ6sh5kJwLWUdrc16h4DWUHj//aQz8U2OtcmsUP4A7PvR0Vurrjj4oWgexr7iDjlk3OiufApkw==
X-Received: by 2002:a92:da48:0:b0:340:7643:d5a7 with SMTP id
 p8-20020a92da48000000b003407643d5a7mr25826802ilq.4.1687887273010; 
 Tue, 27 Jun 2023 10:34:33 -0700 (PDT)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 i18-20020a92c952000000b00345abfa24c2sm1389163ilq.59.2023.06.27.10.34.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Jun 2023 10:34:32 -0700 (PDT)
Date: Tue, 27 Jun 2023 11:34:30 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: Jason Gunthorpe <jgg@nvidia.com>
Message-ID: <20230627113430.129811ef.alex.williamson@redhat.com>
In-Reply-To: <ZJsKXoK7SF359Tb2@nvidia.com>
References: <20230616093946.68711-1-yi.l.liu@intel.com>
 <20230616093946.68711-23-yi.l.liu@intel.com>
 <20230621155406.437d3b4d.alex.williamson@redhat.com>
 <DS0PR11MB7529C5F9C31CE343AB66B0D4C327A@DS0PR11MB7529.namprd11.prod.outlook.com>
 <ZJsKXoK7SF359Tb2@nvidia.com>
Organization: Red Hat
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Wed, 28 Jun 2023 07:31:28 +0000
Subject: Re: [Intel-gfx] [PATCH v13 22/22] docs: vfio: Add vfio device cdev
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
Cc: Yanting@freedesktop.org,
	"mjrosato@linux.ibm.com" <mjrosato@linux.ibm.com>,
	"jasowang@redhat.com" <jasowang@redhat.com>,
	"peterx@redhat.com" <peterx@redhat.com>,
	"  <lulu@redhat.com>, "@freedesktop.org,
	suravee.suthikulpanit@amd.com,
	"chao.p.peng@linux.intel.com" <chao.p.peng@linux.intel.com>,
	"Liu,  Yi L" <yi.l.liu@intel.com>,
	"kvm@vger.kernel.org" <kvm@vger.kernel.org>,
	"joro@8bytes.org" <joro@8bytes.org>, Zhenzhong@freedesktop.org,
	" <zhenzhong.duan@intel.com>,   "@freedesktop.org,
	clegoate@redhat.com, Yan@freedesktop.org,
	"nicolinc@nvidia.com" <nicolinc@nvidia.com>,
	"     <intel-gvt-dev@lists.freedesktop.org>,  "@freedesktop.org,
	intel-gfx@lists.freedesktop.org, <linux-s390@vger.kernel.org>, ,
	"Tian,  Kevin" <kevin.tian@intel.com>, Xudong@freedesktop.org,
	"  <suravee.suthikulpanit@amd.com>, "@freedesktop.org,
	intel-gvt-dev@lists.freedesktop.org,,
	" <intel-gfx@lists.freedesktop.org>,   "@freedesktop.org,
	linux-s390@vger.kernel.org, Terrence@freedesktop.org,
	"yi.y.sun@linux.intel.com" <yi.y.sun@linux.intel.com>,
	"eric.auger@redhat.com" <eric.auger@redhat.com>,
	"cohuck@redhat.com" <cohuck@redhat.com>, <clegoate@redhat.com>,
	"robin.murphy@arm.com" <robin.murphy@arm.com>,
	"shameerali.kolothum.thodi@huawei.com\"          <shameerali.kolothum.thodi@huawei.com>, "@freedesktop.org,
	lulu@redhat.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 27 Jun 2023 13:12:14 -0300
Jason Gunthorpe <jgg@nvidia.com> wrote:

> On Tue, Jun 27, 2023 at 08:54:33AM +0000, Liu, Yi L wrote:
> > > From: Alex Williamson <alex.williamson@redhat.com>
> > > Sent: Thursday, June 22, 2023 5:54 AM
> > >=20
> > > On Fri, 16 Jun 2023 02:39:46 -0700
> > > Yi Liu <yi.l.liu@intel.com> wrote: =20
> >  =20
> > > > +VFIO device cdev doesn't rely on VFIO group/container/iommu driver=
s.
> > > > +Hence those modules can be fully compiled out in an environment
> > > > +where no legacy VFIO application exists.
> > > > +
> > > > +So far SPAPR does not support IOMMUFD yet.  So it cannot support d=
evice
> > > > +cdev either. =20
> > >=20
> > > Why isn=C2=B4t this enforced via Kconfig?  At the vfio level we could=
 simply
> > > add the following in patch 17/:
> > >=20
> > > config VFIO_DEVICE_CDEV
> > >         bool "Support for the VFIO cdev /dev/vfio/devices/vfioX"
> > >         depends on IOMMUFD && !SPAPR_TCE_IOMMU
> > >                            ^^^^^^^^^^^^^^^^^^^
> > >=20
> > > Or if Jason wants, IOMMUFD could depend on !SPAPR_TCE_IOMMU for now a=
nd
> > > the existing Kconfig options would exclude it.  If we know it doesn't
> > > work, let's not put the burden on the user to figure that out.  A
> > > follow-up patch for this would be fine if there's no other reason to
> > > respin the series. =20
> >=20
> > @Jason,
> > How about your opinion? Seems reasonable to make IOMMUFD
> > depend on !SPAPR_TCE_IOMMU. Is it? =20
>=20
> The right kconfig would be to list all the iommu drivers that can
> support iommufd and allow it to be selected if any of them are
> enabled.
>=20
> This seems too complex to bother with, so I like Alex's version above..
>=20
> > > Otherwise the series is looking pretty good to me.  It still requires
> > > some reviews/acks in the iommufd space and it would be good to see mo=
re
> > > reviews for the remainder given the amount of collaboration here.
> > >=20
> > > I'm out for the rest of the week, but I'll leave open accepting this
> > > and the hot-reset series next week for the merge window.  Thanks, =20
> >=20
> > @Alex,
> > Given Jason's remarks on cdev v12, I've already got a new version as be=
low.
> > I can post it once the above kconfig open is closed. =20
>=20
> I think we don't need to bend the rules, Linus would not be happy to
> see 30 major patches that never hit linux-next at all.
>=20
> I'm happy if we put it on a branch at RC1 and merge it to the vfio &
> iommufd trees, it is functionally the same outcome in the same time
> frame.

Not sure I'm clear on the plan.  My intention would have been to apply
v14 to my next branch, make sure it did see linux-next exposure,
and send a pull request for rc1 next week.

Are you suggesting a post-merge-window pull request for v6.5 (also
frowned on) or are you suggesting that it simmers in both our next
branches until v6.6?  Thanks,

Alex

