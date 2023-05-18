Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B48B2708888
	for <lists+intel-gfx@lfdr.de>; Thu, 18 May 2023 21:43:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBE2610E547;
	Thu, 18 May 2023 19:43:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0C9710E134
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 May 2023 19:43:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1684439025;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=PA8QlisVvQUIBeB7cAo5RqDhEmfbmuvIuFemkqkHNmY=;
 b=SG0KXQZH+iTbfzvk5mPOQOAxaiiFBHPnSXFGFiwj97pufkShBB/tk3JgU1OTxxmFgNij2B
 JhGXEDAH12MMWnmiPRMO+fZrVM93mL8RgLrjte01aJlkAWzNrgQUfMQ4Lny9p8pL6VvoIb
 DM05Dmcu04kFoNxyVs+tOBuQE3KdwBY=
Received: from mail-io1-f71.google.com (mail-io1-f71.google.com
 [209.85.166.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-616-KJJj1Fo2MQS1amXT3C3kuA-1; Thu, 18 May 2023 15:43:43 -0400
X-MC-Unique: KJJj1Fo2MQS1amXT3C3kuA-1
Received: by mail-io1-f71.google.com with SMTP id
 ca18e2360f4ac-76c65f950a8so200021939f.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 May 2023 12:43:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1684439023; x=1687031023;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=PA8QlisVvQUIBeB7cAo5RqDhEmfbmuvIuFemkqkHNmY=;
 b=bkYasH2T+enpwz+GpEZXmtO0ivwvY1QKkuptdHGfURAwKKOi89NJFVPgoeZGT8k7zl
 Ht40YDSSwLjaixn5DzWIM44Swj1boJpESz8lE4Jw1ZsFXzjwSpWqMxvQAR9z33lPHboF
 XA6bX2q34B12ALm/wm62kRJkO3jEbWR/8jlojifDyt/hVRtkdA2uFa4bev40hhYsOoax
 sT+m3CA1ZMPpGFl38f2IkvNaYd0IOAHqwg76C1dCgs0hfyTulPDR6aJjNp3MwfmO8zJu
 WX3StUf4GsnWxlED1jjAepnPsxEwUBMJIe5UzowTm6ZSM5zY9IvF0jJNCiHlaP8qxVK1
 7IQg==
X-Gm-Message-State: AC+VfDw0V49vwEYRwuql2vn72LsHCIcGYtgXT2CKNVwbCruGmjzMZWpS
 3/tCZYEC9+72Q4dNXvQvCdPm/WFOrTUKQURDOFay56En+Vw/5TdwEb+UUuX9oEMcU+yMQZ/D1dh
 zTlPgBAfCNiLfCM9gUMfe24a09ZkU
X-Received: by 2002:a5d:94cd:0:b0:76c:8a8f:edc2 with SMTP id
 y13-20020a5d94cd000000b0076c8a8fedc2mr7297131ior.12.1684439023153; 
 Thu, 18 May 2023 12:43:43 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ4rw6SJnwSqjfCyaFRoKbONMXxWejcCpLIQx2vrAykC+soNBYYP2BWJo0LZ1SBw5bDgbglmXQ==
X-Received: by 2002:a5d:94cd:0:b0:76c:8a8f:edc2 with SMTP id
 y13-20020a5d94cd000000b0076c8a8fedc2mr7297117ior.12.1684439022870; 
 Thu, 18 May 2023 12:43:42 -0700 (PDT)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 w31-20020a056638379f00b00405f36ed05asm636935jal.55.2023.05.18.12.43.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 May 2023 12:43:41 -0700 (PDT)
Date: Thu, 18 May 2023 13:43:40 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: "Liu, Yi L" <yi.l.liu@intel.com>
Message-ID: <20230518134340.0a39629b.alex.williamson@redhat.com>
In-Reply-To: <DS0PR11MB7529AD3369CE1F296086A607C37F9@DS0PR11MB7529.namprd11.prod.outlook.com>
References: <20230513132136.15021-1-yi.l.liu@intel.com>
 <20230513132136.15021-2-yi.l.liu@intel.com>
 <20230517112609.78a3e916.alex.williamson@redhat.com>
 <ZGUbAzl985p5kX1Z@nvidia.com>
 <DS0PR11MB7529AD3369CE1F296086A607C37F9@DS0PR11MB7529.namprd11.prod.outlook.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.35; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v5 01/10] vfio-iommufd: Create
 iommufd_access for noiommu devices
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
 "clegoate@redhat.com" <clegoate@redhat.com>,
 "cohuck@redhat.com" <cohuck@redhat.com>,
 "shameerali.kolothum.thodi@huawei.com" <shameerali.kolothum.thodi@huawei.com>,
 "suravee.suthikulpanit@amd.com" <suravee.suthikulpanit@amd.com>,
 "robin.murphy@arm.com" <robin.murphy@arm.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 18 May 2023 12:23:29 +0000
"Liu, Yi L" <yi.l.liu@intel.com> wrote:

> > From: Jason Gunthorpe <jgg@nvidia.com>
> > Sent: Thursday, May 18, 2023 2:21 AM
> > 
> > On Wed, May 17, 2023 at 11:26:09AM -0600, Alex Williamson wrote:
> >   
> > > It's not clear to me why we need a separate iommufd_access for
> > > noiommu.  
> > 
> > The point was to allocate an ID for the device so we can use that ID
> > with the other interfaces in all cases.  
> 
> I guess Alex's question is why adding a new pointer named noiommu_access
> while there is already the iommufd_access pointer named iommufd_access.

Yes, precisely.  Sorry that was confusing, we need the access for
noiommu but it's not clear why that access needs to be stored in a
separate pointer when we can already differentiate noiommu devices
otherwise.  Thanks,

Alex

