Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 998EB6CC291
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Mar 2023 16:46:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40F5A10E484;
	Tue, 28 Mar 2023 14:46:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A502B10E8F7
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Mar 2023 14:46:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1680014780;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=/pgdm+jy/b4Tdk4we3XCQptlzzAEZ6DctjGUY0MhFMw=;
 b=JJSWrf40HM9r3Mrzb3rOTwY6Kd97HtzBl/RcZydpH4GzmlhoSIst5C5wx5Mex0625kInzX
 y4Aij0QlNcJ8R/iLRspVNCy51uURFfSTRSoxFLb2W7uyRNOwu23e3ZAQiTRtLNRgYlLDZb
 Z16nHFsyZ6TqNfiRBscDum3qg4XIwO4=
Received: from mail-io1-f72.google.com (mail-io1-f72.google.com
 [209.85.166.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-664-w5PzY4GnOW-IkhPtd62H9Q-1; Tue, 28 Mar 2023 10:46:19 -0400
X-MC-Unique: w5PzY4GnOW-IkhPtd62H9Q-1
Received: by mail-io1-f72.google.com with SMTP id
 h136-20020a6bb78e000000b00758b105cdd3so7840334iof.23
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Mar 2023 07:46:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680014779;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=/pgdm+jy/b4Tdk4we3XCQptlzzAEZ6DctjGUY0MhFMw=;
 b=fxw8h0BlOgnJJKx6swayJ4AXXsTJsRIWE3SLOYzZjbNzJZ0u0J7T8u0n5wd4AwBUz8
 sYmQtwlda8zDgl/XqXoNiBtD+dkMZScfJb4mWHJwzlmqsLAYhxAC7Rmol6x7h6yaarxv
 AsgIMji5Uz9TFtUUuGzMvn1cR8OwESbrpA7fb3YqeqXOshinPEKe4JT0UBE5ETLxV2Cr
 wPsF1KwsLz9ZFt1zePMuBnTCw8LldIBqYeVrC6dcs4EAe3ZkZ75jh9XQKXHP8RYn2RHm
 9qOJFUntynNPzksXOGNuQdHZBYefXj+mWXL8CkGhfRmnNzCRDKGrIP+gWPtmpU0djDTk
 FLwA==
X-Gm-Message-State: AAQBX9cUy/cpa4mgaOhWlWZk7E88kHwtoXoRdQCIufQS7buFO6CnDxbq
 JV4RxOELEEJwaPpQHsowrJYFer8K6dmanjt5FY7tPfP7HEXFoGmsie1hHR3SiBMAkWNE3qx3vBZ
 K2xdxNsIFs1eA5YuJUxUE+GlfkeiO
X-Received: by 2002:a92:cb03:0:b0:316:ac37:1692 with SMTP id
 s3-20020a92cb03000000b00316ac371692mr11709223ilo.1.1680014778766; 
 Tue, 28 Mar 2023 07:46:18 -0700 (PDT)
X-Google-Smtp-Source: AKy350aTliduwAnIwWl0SZjOQEj8WhTrU9CjmbJwxlCOGlgjQmiDfHr6STEw1BtQugPCCt1EmjAPaA==
X-Received: by 2002:a92:cb03:0:b0:316:ac37:1692 with SMTP id
 s3-20020a92cb03000000b00316ac371692mr11709198ilo.1.1680014778463; 
 Tue, 28 Mar 2023 07:46:18 -0700 (PDT)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 m16-20020a056e020df000b003261b677e09sm661997ilj.33.2023.03.28.07.46.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Mar 2023 07:46:17 -0700 (PDT)
Date: Tue, 28 Mar 2023 08:46:16 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: "Liu, Yi L" <yi.l.liu@intel.com>
Message-ID: <20230328084616.3361a293.alex.williamson@redhat.com>
In-Reply-To: <DS0PR11MB7529B6782565BE8489D922F9C3889@DS0PR11MB7529.namprd11.prod.outlook.com>
References: <20230327093458.44939-1-yi.l.liu@intel.com>
 <20230327093458.44939-11-yi.l.liu@intel.com>
 <20230327132619.5ab15440.alex.williamson@redhat.com>
 <DS0PR11MB7529E969C27995D535A24EC0C3889@DS0PR11MB7529.namprd11.prod.outlook.com>
 <BL1PR11MB52717FB9E6D5C10BF4B7DA0A8C889@BL1PR11MB5271.namprd11.prod.outlook.com>
 <20230328082536.5400da67.alex.williamson@redhat.com>
 <DS0PR11MB7529B6782565BE8489D922F9C3889@DS0PR11MB7529.namprd11.prod.outlook.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.35; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2 10/10] vfio/pci: Add
 VFIO_DEVICE_GET_PCI_HOT_RESET_GROUP_INFO
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

On Tue, 28 Mar 2023 14:38:12 +0000
"Liu, Yi L" <yi.l.liu@intel.com> wrote:

> > From: Alex Williamson <alex.williamson@redhat.com>
> > Sent: Tuesday, March 28, 2023 10:26 PM
> > 
> > On Tue, 28 Mar 2023 06:19:06 +0000
> > "Tian, Kevin" <kevin.tian@intel.com> wrote:
> >   
> > > > From: Liu, Yi L <yi.l.liu@intel.com>
> > > > Sent: Tuesday, March 28, 2023 11:32 AM
> > > >  
> > > > > From: Alex Williamson <alex.williamson@redhat.com>
> > > > > Sent: Tuesday, March 28, 2023 3:26 AM
> > > > >
> > > > > Additionally, VFIO_DEVICE_GET_PCI_HOT_RESET_INFO has a flags arg  
> > that  
> > > > > isn't used, why do we need a new ioctl vs defining
> > > > > VFIO_PCI_HOT_RESET_FLAG_IOMMUFD_DEV_ID.  
> > > >
> > > > Sure. I can follow this suggestion. BTW. I have a doubt here. This new  
> > flag  
> > > > is set by user. What if in the future kernel has new extensions and needs
> > > > to report something new to the user and add new flags to tell user? Such
> > > > flag is set by kernel. Then the flags field may have two kinds of flags  
> > (some  
> > > > set by user while some set by kernel). Will it mess up the flags space?
> > > >  
> > >
> > > flags in a GET_INFO ioctl is for output.
> > >
> > > if user needs to use flags as input to select different type of info then it  
> > should  
> > > be split into multiple GET_INFO cmds.  
> > 
> > I don't know that that's actually a rule, however we don't currently
> > test flags is zero for input, so in this case I think we are stuck with
> > it only being for output.
> > 
> > Alternatively, should VFIO_DEVICE_GET_PCI_HOT_RESET_INFO
> > automatically
> > return the dev_id variant of the output and set a flag to indicate this
> > is the case when called on a device fd opened as a cdev?  Thanks,  
> 
> Personally I prefer that user asks for dev_id info explicitly. The major reason
> that we return dev_id is that the group/bdf info is not enough for the device
> fd passing case. But if qemu opens device by itself, the group/bdf info is still
> enough. So a device opened as a cdev doesn't mean it should return dev_id,
> it depends on if user has the bdf knowledge.

But if QEMU opens the cdev, vs getting it from the group, does it make
any sense to return a set of group-ids + bdf in the host-reset info?
I'm inclined to think the answer is no.

Per my previous suggestion, I think we should always return the bdf. We
can't know if the user is accessing through an fd they opened
themselves or were passed, but it allows an actually useful debugging
report if userspace can know "I can't perform a hot reset of this
device because my iommufd context doesn't know about device <bdf>", vs
an opaque -EPERM.  Therefore I think we're only discussing the data
conveyed in the u32, a group-id or dev_id.  Thanks,

Alex

