Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 165136D4BF6
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Apr 2023 17:32:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33B5D10E4E5;
	Mon,  3 Apr 2023 15:32:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8295B10E4E5
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Apr 2023 15:32:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1680535942;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ENDFTObQ8xi63y8peRGoyO2GGKdY0wLoCLsXYTaUyEw=;
 b=fAmTxEHnX8RodlgFjS78py786CqhewEzb4zVs02DD0XxQTUJGW922UQU1sjSA3pwV8RgpT
 M1+M9xAiQJPfephUUNRVsvVRwdLAUqMgGfvgxDrUndND7z/Xr4WgNWCkCRGuTRlxKzM6VJ
 N2uQrlPnTplEQJ6WsHClghoNZ9RN6SQ=
Received: from mail-io1-f71.google.com (mail-io1-f71.google.com
 [209.85.166.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-279-tH2z9dA5OtCEvUE9GriMgg-1; Mon, 03 Apr 2023 11:32:21 -0400
X-MC-Unique: tH2z9dA5OtCEvUE9GriMgg-1
Received: by mail-io1-f71.google.com with SMTP id
 l7-20020a0566022dc700b0074cc9aba965so18032111iow.11
 for <intel-gfx@lists.freedesktop.org>; Mon, 03 Apr 2023 08:32:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680535940;
 h=content-transfer-encoding:mime-version:organization:references
 :in-reply-to:message-id:subject:cc:to:from:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=mg/WY/5QTApvYEdExo6w0NW+ojlwZZElJz9ZdPVvAZI=;
 b=ix3svvkcA35e+6/EOKpdS+0xvrcziKT7PuCK3WPUai4NvK9I+tluseLtex7S0nniqR
 mscx5ce+ot2nH06nRUEI0xIHP2P+XzpkRdFaljUCVydXdptoyOOqaQs4ZAWtlNqqcqg4
 gFnza8XCG8u+OF/ENLsuT6YsPu1iB9hnNknhY+xaINFaH6v4L4ajJca37S7/hnbde2uT
 njtEQIrzongt4F76TCJHU4PhQLziTtxgAobGBZ0jgeGE1e1CBzWppwEYIj9pscUvML4F
 JCTd4OUNAKFLjipvYLqo5+nA1DmzFNchLZHR/M3fRmkpTv3tvelVCbOueFTGDWxQ1IWC
 NH+A==
X-Gm-Message-State: AAQBX9dIuF89VABkGWcoVizW2WKtreO3xvL2RnI0QoGefjgRSmwLJrlZ
 ro38g5yHkKcunoE/vwwLiSDQG2gXnooRTvfiappW7Ijd6Hb0SZO8M0nfzKT5+a2SZNZmgDmJhCA
 RkKqxdCVM1mG766vOm/3BQvwM29wj
X-Received: by 2002:a6b:7d03:0:b0:74c:e1a5:c5e3 with SMTP id
 c3-20020a6b7d03000000b0074ce1a5c5e3mr11053639ioq.0.1680535940484; 
 Mon, 03 Apr 2023 08:32:20 -0700 (PDT)
X-Google-Smtp-Source: AKy350bXWtL5Bw8Ad/8Ov2pt5McA0ZU3giGQcsZasTbEv+jukxYVvdtKYYQhb5IUNd4UqwaLyXy2hA==
X-Received: by 2002:a6b:7d03:0:b0:74c:e1a5:c5e3 with SMTP id
 c3-20020a6b7d03000000b0074ce1a5c5e3mr11053599ioq.0.1680535940161; 
 Mon, 03 Apr 2023 08:32:20 -0700 (PDT)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 q20-20020a5ea614000000b0075c47fb539asm2681451ioi.0.2023.04.03.08.32.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 03 Apr 2023 08:32:19 -0700 (PDT)
Date: Mon, 3 Apr 2023 09:32:18 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: "Liu, Yi L" <yi.l.liu@intel.com>
Message-ID: <20230403093218.04e79d32.alex.williamson@redhat.com>
In-Reply-To: <DS0PR11MB7529A380EF7E3F33C5DCEE3EC3929@DS0PR11MB7529.namprd11.prod.outlook.com>
References: <20230401144429.88673-1-yi.l.liu@intel.com>
 <20230401144429.88673-13-yi.l.liu@intel.com>
 <DS0PR11MB752996A6E6B3263BAD01DAC2C3929@DS0PR11MB7529.namprd11.prod.outlook.com>
 <20230403090151.4cb2158c.alex.williamson@redhat.com>
 <DS0PR11MB7529A380EF7E3F33C5DCEE3EC3929@DS0PR11MB7529.namprd11.prod.outlook.com>
Organization: Red Hat
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
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

On Mon, 3 Apr 2023 15:22:03 +0000
"Liu, Yi L" <yi.l.liu@intel.com> wrote:

> > From: Alex Williamson <alex.williamson@redhat.com>
> > Sent: Monday, April 3, 2023 11:02 PM
> >=20
> > On Mon, 3 Apr 2023 09:25:06 +0000
> > "Liu, Yi L" <yi.l.liu@intel.com> wrote:
> >  =20
> > > > From: Liu, Yi L <yi.l.liu@intel.com>
> > > > Sent: Saturday, April 1, 2023 10:44 PM =20
> > > =20
> > > > @@ -791,7 +813,21 @@ static int vfio_pci_fill_devs(struct pci_dev *=
pdev, void =20
> > *data) =20
> > > >  =09if (!iommu_group)
> > > >  =09=09return -EPERM; /* Cannot reset non-isolated devices */ =20
> > >
> > > Hi Alex,
> > >
> > > Is disabling iommu a sane way to test vfio noiommu mode? =20
> >=20
> > Yes
> >  =20
> > > I added intel_iommu=3Doff to disable intel iommu and bind a device to=
 vfio-pci.
> > > I can see the /dev/vfio/noiommu-0 and /dev/vfio/devices/noiommu-vfio0=
. Bind
> > > iommufd=3D=3D-1 can succeed, but failed to get hot reset info due to =
the above
> > > group check. Reason is that this happens to have some affected device=
s, and
> > > these devices have no valid iommu_group (because they are not bound t=
o vfio-pci
> > > hence nobody allocates noiommu group for them). So when hot reset inf=
o loops
> > > such devices, it failed with -EPERM. Is this expected? =20
> >=20
> > Hmm, I didn't recall that we put in such a limitation, but given the
> > minimally intrusive approach to no-iommu and the fact that we never
> > defined an invalid group ID to return to the user, it makes sense that
> > we just blocked the ioctl for no-iommu use.  I guess we can do the same
> > for no-iommu cdev. =20
>=20
> sure.
>=20
> >=20
> > BTW, what does this series apply on?  I'm assuming[1], but I don't see
> > a branch from Jason yet.  Thanks, =20
>=20
> yes, this series is applied on [1]. I put the [1], this series and cdev s=
eries
> in https://github.com/yiliu1765/iommufd/commits/vfio_device_cdev_v9.
>=20
> Jason has taken [1] in the below branch. It is based on rc1. So I hesitat=
ed
> to apply this series and cdev series on top of it. Maybe I should have do=
ne
> it to make life easier. =F0=9F=98=8A
>=20
> https://git.kernel.org/pub/scm/linux/kernel/git/jgg/iommufd.git/log/?h=3D=
for-next

Seems like it must be in the vfio_mdev_ops branch which has not been
pushed aside from the merge back to for-next.  Jason?  Thanks,

Alex

