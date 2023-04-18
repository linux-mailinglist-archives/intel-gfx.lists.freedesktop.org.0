Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 517FD6E6A1F
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Apr 2023 18:50:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5141C10E817;
	Tue, 18 Apr 2023 16:50:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2963710E817
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Apr 2023 16:49:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1681836597;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=QW4OejsqAutNiGQJiYZJkfIFG7vwNJbOHeoSgw01y+o=;
 b=fGTF8JJCwXReaYEtOX9mTBoMQKRroGh4FHXoL2s0r4S2DbZOr5lWQgB22uZZqbTkhcuPMi
 fPOa6MB2Sm/j+fwZqWrCCN+A4HY79KcU/I0jvg+ofM5DJ0ij22Rd5x+HER2MDg8U6RVkwM
 idNfMZo3pII0uPKGmdYUy437usU5Kw4=
Received: from mail-il1-f197.google.com (mail-il1-f197.google.com
 [209.85.166.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-333-Io8ZAgDzM9iOo5IYSc6gaw-1; Tue, 18 Apr 2023 12:49:56 -0400
X-MC-Unique: Io8ZAgDzM9iOo5IYSc6gaw-1
Received: by mail-il1-f197.google.com with SMTP id
 e9e14a558f8ab-32b532ee15bso61477835ab.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Apr 2023 09:49:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1681836595; x=1684428595;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=QW4OejsqAutNiGQJiYZJkfIFG7vwNJbOHeoSgw01y+o=;
 b=SLK9erl2piYkWGVZ36IRhar9XDrd2lK8/zOisokYEuIdP4UfCPt9QMW36rLoWjSUgi
 nfiHP5PHUwCvbLLOOhDhKuYcI/s16DBeCkWokxlDfhJ8ozG9p9yft14Wt5F6Q/WJPfRG
 ZvqDebiznKnTXG6/tVc4oVnR/8LvbKVON08imD8NuK8sNrRNQPiGvfsZV0yLrf+24zxI
 SPLOmCGS6YXYmkrWy9n/cC8Pl/AiOHfiBW8wWeFmMAUd0eJb0PT0l3z0OaKozxOQ/ml7
 cJKkrjijV7Rt1vr8N+vGBRFjGe+k5qGiXzauCqBl8pakgVk9BaJ7d2htyLIb7q/gtNml
 +WqQ==
X-Gm-Message-State: AAQBX9csLbpvxKKWDrWjPMDiciWh1uQT3wy+iYf+A3L+aKF1Ycgcb0Gm
 Lx7g2IUYO+ul+EA8QF9mEhhdf+TZ06PNi+oT4i/tbfSfmXFNNNe4azPHTubbUfjypkEz61fHmu+
 Jq0RoDQz4P381UcrZSmLMOPjrSdqS
X-Received: by 2002:a6b:1452:0:b0:760:e776:18c0 with SMTP id
 79-20020a6b1452000000b00760e77618c0mr2235551iou.9.1681836595276; 
 Tue, 18 Apr 2023 09:49:55 -0700 (PDT)
X-Google-Smtp-Source: AKy350ZVsgHFq5DkfTVjZLoX8ZDscMPn0l0IcDwaF7P4VYcMS0dy9AZqf3xGlcdGUdzNLu695Of27Q==
X-Received: by 2002:a6b:1452:0:b0:760:e776:18c0 with SMTP id
 79-20020a6b1452000000b00760e77618c0mr2235519iou.9.1681836594980; 
 Tue, 18 Apr 2023 09:49:54 -0700 (PDT)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 ay29-20020a056638411d00b003c5170ddcedsm4254803jab.110.2023.04.18.09.49.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Apr 2023 09:49:54 -0700 (PDT)
Date: Tue, 18 Apr 2023 10:49:53 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: "Liu, Yi L" <yi.l.liu@intel.com>
Message-ID: <20230418104953.28cfe9cb.alex.williamson@redhat.com>
In-Reply-To: <DS0PR11MB7529F0992BD2C5CAC1BEA088C39D9@DS0PR11MB7529.namprd11.prod.outlook.com>
References: <20230412105045.79adc83d.alex.williamson@redhat.com>
 <ZDcPTTPlni/Mi6p3@nvidia.com>
 <BN9PR11MB5276782DA56670C8209470828C989@BN9PR11MB5276.namprd11.prod.outlook.com>
 <ZDfslVwqk6JtPpyD@nvidia.com>
 <20230413120712.3b9bf42d.alex.williamson@redhat.com>
 <BN9PR11MB5276A160CA699933B897C8C18C999@BN9PR11MB5276.namprd11.prod.outlook.com>
 <DS0PR11MB7529B7481AC97261E12AA116C3999@DS0PR11MB7529.namprd11.prod.outlook.com>
 <20230414111043.40c15dde.alex.williamson@redhat.com>
 <DS0PR11MB75290A78D6879EC2E31E21AEC39C9@DS0PR11MB7529.namprd11.prod.outlook.com>
 <20230417130140.1b68082e.alex.williamson@redhat.com>
 <ZD2erN3nKbnyqei9@nvidia.com>
 <20230417140642.650fc165.alex.williamson@redhat.com>
 <BN9PR11MB5276D93DDFE3ED97CD1B923B8C9D9@BN9PR11MB5276.namprd11.prod.outlook.com>
 <20230417221033.778c00c9.alex.williamson@redhat.com>
 <DS0PR11MB7529F0992BD2C5CAC1BEA088C39D9@DS0PR11MB7529.namprd11.prod.outlook.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.35; x86_64-redhat-linux-gnu)
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
 Xudong" <xudong.hao@intel.com>, "Duan, Zhenzhong" <zhenzhong.duan@intel.com>,
 "peterx@redhat.com" <peterx@redhat.com>, "Xu,
 Terrence" <terrence.xu@intel.com>,
 "chao.p.peng@linux.intel.com" <chao.p.peng@linux.intel.com>,
 "linux-s390@vger.kernel.org" <linux-s390@vger.kernel.org>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 "lulu@redhat.com" <lulu@redhat.com>, "Jiang,
 Yanting" <yanting.jiang@intel.com>, "joro@8bytes.org" <joro@8bytes.org>,
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

On Tue, 18 Apr 2023 10:34:45 +0000
"Liu, Yi L" <yi.l.liu@intel.com> wrote:

> > From: Alex Williamson <alex.williamson@redhat.com>
> > Sent: Tuesday, April 18, 2023 12:11 PM
> >   
> [...]
> >
> > We haven't discussed how it fails when called on a group-opened device
> > in a mixed environment.  I'd propose that the INFO ioctl behaves
> > exactly as it does today, reporting group-id and BDF for each affected
> > device.  However, the hot-reset ioctl itself is not extended to accept
> > devicefd because there is no proof-of-ownership model for cdevs.
> > Therefore even if the user could map group-id to devicefd, they get
> > -EINVAL calling HOT_RESET with a devicefd when the ioctl is called from
> > a group-opened device.  Thanks,  
> 
> Will it be better to let userspace know it shall fail if invoking hot
> reset due to no proof-of-ownership as it also has cdev devices? Maybe
> the RESETTABLE flag should always be meaningful. Even if the calling
> device of _INFO is group-opened device. Old user applications does not
> need to check it as it will never have such mixed environment. But for
> new applications or the applications that have been updated per latest
> vfio uapi, it should strictly check this flag before going ahead to do
> hot-reset.

The group-opened model cannot consistently predict whether the user can
provide proof-of-ownership.  I don't think we should define a flag
simply because there's a case that we can predict, the definition of
that flag becomes problematic.  Let's not complicate the interface by
trying to optimize a case that will likely never exist in practice and
can be handled via the existing legacy API.  Thanks,

Alex

