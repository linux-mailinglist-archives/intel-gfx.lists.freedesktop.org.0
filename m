Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 281E36EF567
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Apr 2023 15:20:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E915B10E99C;
	Wed, 26 Apr 2023 13:20:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 336E510E99C
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Apr 2023 13:20:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1682515224;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=3tF50+FCEBA470O0m1Pz3/uU72DgfPgXqci+5b6Z6Us=;
 b=hTUQm9txUiL8QnN3F5ADFPh7bsJqv5X4+cZqB/p5uLZRudJy0+wepI4V+bu7lI3am/TSdJ
 09Z6a3wH0WRWLYHXH6XxJZhqMqppKgk2pCTANRLCOtr0coPSzLKBY9ukHWuPdx+oiSGqIP
 cvnmjCko9//OJtZXst07TvrVXj1P1Tw=
Received: from mail-io1-f70.google.com (mail-io1-f70.google.com
 [209.85.166.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-384-a1UMnW_UPzu0IeB1eCGG8A-1; Wed, 26 Apr 2023 09:20:23 -0400
X-MC-Unique: a1UMnW_UPzu0IeB1eCGG8A-1
Received: by mail-io1-f70.google.com with SMTP id
 ca18e2360f4ac-760814f124fso1033275339f.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Apr 2023 06:20:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1682515222; x=1685107222;
 h=content-transfer-encoding:mime-version:organization:references
 :in-reply-to:message-id:subject:cc:to:from:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=3tF50+FCEBA470O0m1Pz3/uU72DgfPgXqci+5b6Z6Us=;
 b=BLEyiBm2PCLq5l6+ntfJE7tCPGhtW0uzaQnBs1+Ad8O18pSgSSD3r4n4avGM1fsOnl
 etgIZgnfNZBYTg+fhcSEU/kedREsPeRe6ieY1Ik3dtVyOo2q4IPMuEyFD9mSKbv0Uee/
 1Gbg6i+RV7ObNo//uBsfZtcq7rRoNSKKnU0ZCGjjntJnnH7QyOPC0FWELMXPgFsegxoh
 jWYX4CgRLUBJS4ZrBric4AkSrI7PvdcEOk7eHD/aIbFnIlDdv5sCniEQ7v2ddcM6HfTq
 CsYkv41ANrLceL+Iv3e3raV7jFT1hYhL4vXyDm/WUJ6zkshQXhlu5fmo+dhLbl/HugHY
 jYSw==
X-Gm-Message-State: AAQBX9e2k9d0KGkdH0SEfhknfjvDKPkCWdi0aBE7A4iJw2Q8bIm0T6OW
 dAsKrYa/lYP+rwQlysLbxVlCUPHNjjqdtv3DB1m6PJCGE2jeYwbbqPw8ANIT+JET2rNMib64VcG
 nqV82y6/J43kcm7QX0ry74qyswr7S
X-Received: by 2002:a5d:96c2:0:b0:763:6b5a:cb1e with SMTP id
 r2-20020a5d96c2000000b007636b5acb1emr9806282iol.10.1682515222505; 
 Wed, 26 Apr 2023 06:20:22 -0700 (PDT)
X-Google-Smtp-Source: AKy350bVAxUZl+SaNxB4KtQp9lG5YMqf1m8i1/etdz67vKvzBfIWPiTagkhyoXG3sdYL8vcNxrib3g==
X-Received: by 2002:a5d:96c2:0:b0:763:6b5a:cb1e with SMTP id
 r2-20020a5d96c2000000b007636b5acb1emr9806258iol.10.1682515222228; 
 Wed, 26 Apr 2023 06:20:22 -0700 (PDT)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 h20-20020a5d9e14000000b0075d23c433efsm4465857ioh.29.2023.04.26.06.20.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Apr 2023 06:20:21 -0700 (PDT)
Date: Wed, 26 Apr 2023 07:20:20 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: "Liu, Yi L" <yi.l.liu@intel.com>
Message-ID: <20230426072020.62834ac6.alex.williamson@redhat.com>
In-Reply-To: <DS0PR11MB75298CDC8108BA213243DBB8C3659@DS0PR11MB7529.namprd11.prod.outlook.com>
References: <BN9PR11MB5276782DA56670C8209470828C989@BN9PR11MB5276.namprd11.prod.outlook.com>
 <ZDfslVwqk6JtPpyD@nvidia.com>
 <20230413120712.3b9bf42d.alex.williamson@redhat.com>
 <BN9PR11MB5276A160CA699933B897C8C18C999@BN9PR11MB5276.namprd11.prod.outlook.com>
 <DS0PR11MB7529B7481AC97261E12AA116C3999@DS0PR11MB7529.namprd11.prod.outlook.com>
 <20230414111043.40c15dde.alex.williamson@redhat.com>
 <DS0PR11MB75290A78D6879EC2E31E21AEC39C9@DS0PR11MB7529.namprd11.prod.outlook.com>
 <20230417130140.1b68082e.alex.williamson@redhat.com>
 <ZD2erN3nKbnyqei9@nvidia.com>
 <20230417140642.650fc165.alex.williamson@redhat.com>
 <ZD6TvA+9oI0v4vC2@nvidia.com>
 <20230418123920.5d92f402.alex.williamson@redhat.com>
 <DS0PR11MB7529C11E11F187D7BD88C18AC3639@DS0PR11MB7529.namprd11.prod.outlook.com>
 <20230420080839.652732dc.alex.williamson@redhat.com>
 <DS0PR11MB75298CDC8108BA213243DBB8C3659@DS0PR11MB7529.namprd11.prod.outlook.com>
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

On Wed, 26 Apr 2023 07:22:17 +0000
"Liu, Yi L" <yi.l.liu@intel.com> wrote:

> > From: Alex Williamson <alex.williamson@redhat.com>
> > Sent: Thursday, April 20, 2023 10:09 PM  
> [...]
> > > > Whereas dev-id < 0
> > > > (== -1) is an affected device which prevents hot-reset, ex. an un-owned
> > > > device, device configured within a different iommufd_ctx, or device
> > > > opened outside of the vfio cdev API."  Is that about right?  Thanks,  
> > >
> > > Do you mean to have separate err-code for the three possibilities? As
> > > the devid is generated by iommufd and it is u32. I'm not sure if we can
> > > have such err-code definition without reserving some ids in iommufd.  
> > 
> > Yes, if we're going to report the full dev-set, I think we need at
> > least two unique error codes or else the user has no way to determine
> > the subset of invalid dev-ids which block the reset.  I think Jason is
> > proposing the set of valid dev-ids are >0, a dev-id of zero indicates
> > some form of non-blocking, while <0 (or maybe specifically -1)
> > indicates a blocking device.  I was trying to get consensus on a formal
> > definition of each of those error codes in my previous reply.  Thanks,  
> 
> Seems like RESETTABLE flag is not needed if we report -1 for the devices
> that block hotreset. Userspace can deduce if the calling device is resettable
> or not by checking if there is any -1 in the affected device list.

There is some redundancy there, yes.  Given the desire for a null array
on the actual reset ioctl I assumed there would also be a desire to
streamline the info ioctl such that userspace isn't required to parse
the return array, for example maybe userspace isn't required to pass a
full buffer and can get the reset availability status from only the
header.  Of course it's still the responsibility of userspace to know
the extent of the reset.  Thanks,

Alex

