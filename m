Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D04516F0C02
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Apr 2023 20:35:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5416810E377;
	Thu, 27 Apr 2023 18:35:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92A8910E395
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Apr 2023 18:35:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1682620518;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Hyhutbl1P5p00Ldo4kjlPS0faKiyka/h141Hh06aCdE=;
 b=ZLe4r7TJDni5a/IBqUf8/9FennvD3dk9N2TKDTSOCiqPxm56p5clH7R4YrOaVK4GLkiZTo
 rDNqpsCROyWiMKsgT44kenUVm4kS1gIsKL255Lp1yKiTMojScL84e7FmiLbHrDLQzvNZXK
 CoYuPhQ9NNK6m5I7s+TUDN1dEvO3HKw=
Received: from mail-il1-f198.google.com (mail-il1-f198.google.com
 [209.85.166.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-398-mLXwvbV-PHy0gpovqnP0eg-1; Thu, 27 Apr 2023 14:35:13 -0400
X-MC-Unique: mLXwvbV-PHy0gpovqnP0eg-1
Received: by mail-il1-f198.google.com with SMTP id
 e9e14a558f8ab-3294f07346aso63721475ab.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Apr 2023 11:35:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1682620510; x=1685212510;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Hyhutbl1P5p00Ldo4kjlPS0faKiyka/h141Hh06aCdE=;
 b=eitMnC2zyK9DHvQGuIV2ssj8s+ed7FCwg4EO2P7ySwwBz3rzwt4ZCeA1rMdOjgEVKi
 WgXiKG7YTJ/9rCCt9nDVnXC4TX9c3/wT7UqP1c6qyQrNTWI4AlHbVnlq5NoQED5CoIRC
 KA2oRkNsGLXG5RrhP5vsXm/M/FwOjxbIxGB1oEo/BKIwzzjHOYVr7SOX5ilynFM20FiB
 9VwpyRq7So7ILOkyvbEYj27l/XUC8HbirDWbpPYsKUrnjdtd1TcIW2n0/Fph2E98FSw3
 IjuI9dVaBBRmf+G0w8M0YvgP9oMm+6I8yZ+HYqY6H4ZH4WVNoiS/+wFO1IfAh1VD4KEd
 3/GQ==
X-Gm-Message-State: AC+VfDxqbpdcoAaUYZ6Kf+tJG/65byTOfMwjc5qE2HxfaGuwQjAKNnBl
 R28wu3aju4PDRw0qyzNxvNC9XXCWLeN9pdv55OxwnFQB5x9G8ISPTpsfxStr96Rk4Qre4TGQOMw
 PkN8DMB6jC5nz+pfrabMrNNC3XNxJ
X-Received: by 2002:a92:d6c9:0:b0:32a:8a24:31a0 with SMTP id
 z9-20020a92d6c9000000b0032a8a2431a0mr1740508ilp.31.1682620510012; 
 Thu, 27 Apr 2023 11:35:10 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ6qadVzYEMD+1W0+SRpJ/1qXTVhSN/ckiE2OD13eLxYiv9ISmKYP7X6A6gsdcovc2mbQDrEfA==
X-Received: by 2002:a92:d6c9:0:b0:32a:8a24:31a0 with SMTP id
 z9-20020a92d6c9000000b0032a8a2431a0mr1740495ilp.31.1682620509736; 
 Thu, 27 Apr 2023 11:35:09 -0700 (PDT)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 p26-20020a02b01a000000b0040f94ea2a2bsm5647408jah.40.2023.04.27.11.35.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Apr 2023 11:35:09 -0700 (PDT)
Date: Thu, 27 Apr 2023 12:35:08 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: "Liu, Yi L" <yi.l.liu@intel.com>
Message-ID: <20230427123508.251617d4.alex.williamson@redhat.com>
In-Reply-To: <DS0PR11MB75294AF4D8B4A886F7646F44C36A9@DS0PR11MB7529.namprd11.prod.outlook.com>
References: <20230426145419.450922-1-yi.l.liu@intel.com>
 <20230426145419.450922-2-yi.l.liu@intel.com>
 <BN9PR11MB527688F8FBB299306400A1308C6A9@BN9PR11MB5276.namprd11.prod.outlook.com>
 <DS0PR11MB75294AF4D8B4A886F7646F44C36A9@DS0PR11MB7529.namprd11.prod.outlook.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.35; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v4 1/9] vfio: Determine noiommu in
 vfio_device registration
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

On Thu, 27 Apr 2023 07:05:37 +0000
"Liu, Yi L" <yi.l.liu@intel.com> wrote:

> > From: Tian, Kevin <kevin.tian@intel.com>
> > Sent: Thursday, April 27, 2023 2:36 PM
> >   
> > > From: Liu, Yi L <yi.l.liu@intel.com>
> > > Sent: Wednesday, April 26, 2023 10:54 PM
> > >
> > > -static inline bool vfio_device_is_noiommu(struct vfio_device *vdev)
> > > +static inline int vfio_device_set_noiommu(struct vfio_device *device)
> > >  {
> > > -	return IS_ENABLED(CONFIG_VFIO_NOIOMMU) &&
> > > -	       vdev->group->type == VFIO_NO_IOMMU;
> > > +	device->noiommu = IS_ENABLED(CONFIG_VFIO_NOIOMMU) &&
> > > +			  device->group->type == VFIO_NO_IOMMU;
> > > +	return 0;  
> > 
> > Just void. this can't fail.  
> 
> Hmmm. Yes, before below commit, it cannot fail. Maybe this can be
> converted to int later.
> 
> https://lore.kernel.org/kvm/20230426150321.454465-22-yi.l.liu@intel.com/T/#u

AFAICT with the comments on the next patch, this change is not at all
justified within this series and should be dropped.  Thanks,

Alex

