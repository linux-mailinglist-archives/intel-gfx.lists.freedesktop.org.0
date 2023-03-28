Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E52026CC74A
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Mar 2023 18:00:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EBFA10E475;
	Tue, 28 Mar 2023 16:00:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D296B10E487
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Mar 2023 16:00:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1680019231;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=pGWTXe/Y/6zoO+A04kWwYlmN3UtXIimDh91MAwfJa2k=;
 b=JpvSXLaV/NiRBHqHYbKPZq82Esa1b/zYJ+8DgLMZxJgL9/cWExENXFjxl2qFoVUPnJjcqm
 iWG9ACL0Xmtpyv9pjGnRZzBVL5zU+FriduvuklodDJy2N8C63cagM431hTXfC5bM93Q0+O
 EnO+4VxZHHuyseSeoMSlvqCNaaSr6Lk=
Received: from mail-io1-f70.google.com (mail-io1-f70.google.com
 [209.85.166.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-614-WlArtdLBPMuYOKdxh6R9wg-1; Tue, 28 Mar 2023 12:00:30 -0400
X-MC-Unique: WlArtdLBPMuYOKdxh6R9wg-1
Received: by mail-io1-f70.google.com with SMTP id
 a21-20020a5d9595000000b0074c9dc19e16so7737274ioo.15
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Mar 2023 09:00:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680019229;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=pGWTXe/Y/6zoO+A04kWwYlmN3UtXIimDh91MAwfJa2k=;
 b=KYOxXH97HrDgHNL4KOpKnALx+5DrtJpd/oPRmnU7ZmqPksExBTtYmiIl8eUUu/6a+1
 NMsZ4JTXPLbUS9XbZy+x8j+e8jimnV2lSp1Gj/BYh4PGVjQ8fxDxgUn5LMiZZmtTHRi+
 9Gx2JKWXFzPnScAUmPADW1kHsGiDa1ub1K7K7O6yjtzc8ieWgdbE1zAjG5lP7gctARIB
 DIuSHinRPVGzf/hNkGPAJED1QnSMouF0uaejQVgPoy9bbPsRHECs+lX3ayMvv+aszIDm
 xJ7WofdSbstHlfpaGpYsWMXQKBeb8sSJstrl4sDLhPr4NMNUyh0iPC7kjArACis3tCrd
 lP0w==
X-Gm-Message-State: AAQBX9eE2DOnjZ+o//hSWUfIsmayjexFU+nYH8mVzCylzOchwod8FVKw
 K3UhB/iPtQECWxnMUDbUMihrCNg1+jnvayz+aopMlrC2Md0yRQuyq+BYjiOh8WxBANzw8tTF9Qr
 eMnLZ4JPqrS3Sxu3wCMMXTUnpJzT5
X-Received: by 2002:a92:ce85:0:b0:323:aa7:befb with SMTP id
 r5-20020a92ce85000000b003230aa7befbmr13069019ilo.6.1680019229400; 
 Tue, 28 Mar 2023 09:00:29 -0700 (PDT)
X-Google-Smtp-Source: AKy350ZC5pF5GWrzbxeyfPtY76kDSnUakr6oghU09O72N92uDo+Yuu2WJSvvHvtKeJ0qWe00iLP8Mw==
X-Received: by 2002:a92:ce85:0:b0:323:aa7:befb with SMTP id
 r5-20020a92ce85000000b003230aa7befbmr13068996ilo.6.1680019229156; 
 Tue, 28 Mar 2023 09:00:29 -0700 (PDT)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 y20-20020a056638229400b00404d129c1ecsm9543205jas.138.2023.03.28.09.00.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Mar 2023 09:00:28 -0700 (PDT)
Date: Tue, 28 Mar 2023 10:00:27 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: "Liu, Yi L" <yi.l.liu@intel.com>
Message-ID: <20230328100027.3b843b91.alex.williamson@redhat.com>
In-Reply-To: <DS0PR11MB752903CE3D5906FE21146364C3889@DS0PR11MB7529.namprd11.prod.outlook.com>
References: <20230327093458.44939-1-yi.l.liu@intel.com>
 <20230327093458.44939-11-yi.l.liu@intel.com>
 <20230327132619.5ab15440.alex.williamson@redhat.com>
 <DS0PR11MB7529E969C27995D535A24EC0C3889@DS0PR11MB7529.namprd11.prod.outlook.com>
 <BL1PR11MB52717FB9E6D5C10BF4B7DA0A8C889@BL1PR11MB5271.namprd11.prod.outlook.com>
 <20230328082536.5400da67.alex.williamson@redhat.com>
 <DS0PR11MB7529B6782565BE8489D922F9C3889@DS0PR11MB7529.namprd11.prod.outlook.com>
 <20230328084616.3361a293.alex.williamson@redhat.com>
 <DS0PR11MB75290B84D334FC726A8BBA95C3889@DS0PR11MB7529.namprd11.prod.outlook.com>
 <20230328091801.13de042a.alex.williamson@redhat.com>
 <DS0PR11MB752903CE3D5906FE21146364C3889@DS0PR11MB7529.namprd11.prod.outlook.com>
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

On Tue, 28 Mar 2023 15:45:38 +0000
"Liu, Yi L" <yi.l.liu@intel.com> wrote:

> > From: Alex Williamson <alex.williamson@redhat.com>
> > Sent: Tuesday, March 28, 2023 11:18 PM
> > 
> > On Tue, 28 Mar 2023 15:00:42 +0000
> > "Liu, Yi L" <yi.l.liu@intel.com> wrote:
> >   
> > > > From: Alex Williamson <alex.williamson@redhat.com>
> > > > Sent: Tuesday, March 28, 2023 10:46 PM
> > > >
> > > > On Tue, 28 Mar 2023 14:38:12 +0000
> > > > "Liu, Yi L" <yi.l.liu@intel.com> wrote:
> > > >  
> > > > > > From: Alex Williamson <alex.williamson@redhat.com>
> > > > > > Sent: Tuesday, March 28, 2023 10:26 PM
> > > > > >
> > > > > > On Tue, 28 Mar 2023 06:19:06 +0000
> > > > > > "Tian, Kevin" <kevin.tian@intel.com> wrote:
> > > > > >  
> > > > > > > > From: Liu, Yi L <yi.l.liu@intel.com>
> > > > > > > > Sent: Tuesday, March 28, 2023 11:32 AM
> > > > > > > >  
> > > > > > > > > From: Alex Williamson <alex.williamson@redhat.com>
> > > > > > > > > Sent: Tuesday, March 28, 2023 3:26 AM
> > > > > > > > >
> > > > > > > > > Additionally, VFIO_DEVICE_GET_PCI_HOT_RESET_INFO has a  
> > flags  
> > > > arg  
> > > > > > that  
> > > > > > > > > isn't used, why do we need a new ioctl vs defining
> > > > > > > > > VFIO_PCI_HOT_RESET_FLAG_IOMMUFD_DEV_ID.  
> > > > > > > >
> > > > > > > > Sure. I can follow this suggestion. BTW. I have a doubt here. This  
> > > > new  
> > > > > > flag  
> > > > > > > > is set by user. What if in the future kernel has new extensions and  
> > > > needs  
> > > > > > > > to report something new to the user and add new flags to tell  
> > user?  
> > > > Such  
> > > > > > > > flag is set by kernel. Then the flags field may have two kinds of  
> > flags  
> > > > > > (some  
> > > > > > > > set by user while some set by kernel). Will it mess up the flags  
> > space?  
> > > > > > > >  
> > > > > > >
> > > > > > > flags in a GET_INFO ioctl is for output.
> > > > > > >
> > > > > > > if user needs to use flags as input to select different type of info  
> > then it  
> > > > > > should  
> > > > > > > be split into multiple GET_INFO cmds.  
> > > > > >
> > > > > > I don't know that that's actually a rule, however we don't currently
> > > > > > test flags is zero for input, so in this case I think we are stuck with
> > > > > > it only being for output.
> > > > > >
> > > > > > Alternatively, should VFIO_DEVICE_GET_PCI_HOT_RESET_INFO
> > > > > > automatically
> > > > > > return the dev_id variant of the output and set a flag to indicate this
> > > > > > is the case when called on a device fd opened as a cdev?  Thanks,  
> > > > >
> > > > > Personally I prefer that user asks for dev_id info explicitly. The major  
> > > > reason  
> > > > > that we return dev_id is that the group/bdf info is not enough for the  
> > > > device  
> > > > > fd passing case. But if qemu opens device by itself, the group/bdf info  
> > is  
> > > > still  
> > > > > enough. So a device opened as a cdev doesn't mean it should return  
> > > > dev_id,  
> > > > > it depends on if user has the bdf knowledge.  
> > > >
> > > > But if QEMU opens the cdev, vs getting it from the group, does it make
> > > > any sense to return a set of group-ids + bdf in the host-reset info?
> > > > I'm inclined to think the answer is no.
> > > >
> > > > Per my previous suggestion, I think we should always return the bdf. We
> > > > can't know if the user is accessing through an fd they opened
> > > > themselves or were passed,  
> > >
> > > Oh, yes. I'm convinced by this reason since only cdev mode supports  
> > device fd  
> > > passing. So I'll reuse the existing _INFO and let kernel set a flag to mark  
> > the returned  
> > > info is dev_id+bdf.
> > >
> > > A check. If the device that the _INFIO is invoked is opened via cdev, but  
> > there  
> > > are devices in the dev_set that are got via VFIO_GROUP_GET_DEVICE_FD,  
> > should  
> > > I fail it or allow it?  
> > 
> > It's a niche case, but I think it needs to be allowed.   
> 
> I'm also wondering if it is common in the future. Actually, a user should be
> preferred to either use the group or cdev, but not both. Otherwise, it looks
> to be bad programming.:-)
> 
> Also, as an earlier remark from Jason. If there are affected devices that are
> opened by other users, the new _INFO should fail with -EPERM. I know this
> remark was for the new _INFO ioctl. But now, we are going to reuse the
> existing _INFO, so I'd also want to check if we still need this policy? If yes,
> then it is a problem to check the owner of the devices that are opened by
> the group path.
> 
> https://lore.kernel.org/kvm/ZBsF950laMs2ldFc@nvidia.com/

Personally I don't like the suggestion to fail with -EPERM if the user
doesn't own all the affected devices.  This isn't a "probe if I can do
a reset" ioctl, it's a "provide information about the devices affected
by a reset to know how to call the hot-reset ioctl".  We're returning
the bdf to the cdev version of this ioctl for exactly this debugging
purpose when the devices are not owned, that becomes useless if we give
up an return -EPERM if ownership doesn't align.

> > We'd still
> > report the bdf for those devices, but make use of the invalid/null
> > dev-id.  I think this empowers userspace that they could make the same
> > call on a group opened fd if necessary.  
> 
> For the devices opened via group path, it should have an entry that
> includes invalid_dev_id+bdf. So user can map it to the device. But
> there is no group_id, this may be fine since group is just a shortcut
> to find the device. Is it?

Yes, it could be argued that the group-id itself is superfluous, the
user can determine the group via the bdf, but it also aligns with the
hot-reset ioctl, which currently requires the group fd.  Thanks,

Alex

