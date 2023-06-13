Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 153A872E673
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Jun 2023 16:59:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8410110E196;
	Tue, 13 Jun 2023 14:59:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E26210E0B1
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Jun 2023 14:59:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1686668384;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=QRtfwNfvdV2+4M7kYHt2quGEQYXsOTq8+l44AMF6dzY=;
 b=hVuJn8b4klrmR/I6H5S3wc64OLD2ADnRaB/exHEMTykzdjqgmTiWVS+pv+SMoBqEyJZghC
 VcqlbqpfyCfybtB6cgpid4fXe5QWt1FQnnM2ZGyXHIaKZir3sCg3R699Tj7hjh20WjT5mX
 Ambi08YReESVdTVcPkJbzGWtx0ZFrJI=
Received: from mail-il1-f197.google.com (mail-il1-f197.google.com
 [209.85.166.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-618-btC_TGeQOjCIhc38hKA-WQ-1; Tue, 13 Jun 2023 10:59:42 -0400
X-MC-Unique: btC_TGeQOjCIhc38hKA-WQ-1
Received: by mail-il1-f197.google.com with SMTP id
 e9e14a558f8ab-34055a1cc0fso15608795ab.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Jun 2023 07:59:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1686668382; x=1689260382;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=QRtfwNfvdV2+4M7kYHt2quGEQYXsOTq8+l44AMF6dzY=;
 b=UAWs4UIfll3Nz0xd5G/NfNlgcmwAvAczveS3hIGC0zph3BDNolaRFlLbL8jrurnS7O
 PQu5J30RmjQ0b5qCSerMjhN7j+JsBmdji7YpL9Ua8+hzPewlcMsnLxdUi+1Lrw/vYNqp
 twiZ3SN1xQRZBfGa13+vy8CRFsb2NOBpT2E2bzx/ZJ0pj2myHMULljXUVoZ3Voje7qJi
 hAaI8pm9lKEDW7mLRJFBNqR6ulDCHdDXTDvcPAtuxaFkrfcs+0pmidar/HdXlN1XNzbt
 CqcbCD8K1MUmla4lXQmadOtslQMzeTAA00ro9EL1LnRBO7RsM2M+OQg0Ouz8fxj76npK
 KOKw==
X-Gm-Message-State: AC+VfDwyN3bf3UkbrdifBKOYuIJrbebX5AvpHzhbr1+s0wpnSbeW6sYQ
 MBZSh1M4xCbCBx3e3TpatShyU45gYI1uFgQYev/ifhID7YdHZDfv8zarUgSgj6IsiRetaEZ+fg/
 62d3oZDmUmwDwpXz0vacEmpVGWVBc9GZhmsTB
X-Received: by 2002:a92:d692:0:b0:33b:16e9:bba5 with SMTP id
 p18-20020a92d692000000b0033b16e9bba5mr10637742iln.28.1686668381864; 
 Tue, 13 Jun 2023 07:59:41 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ56wOGNrFHguy8G1gOdD07CDWsifOYqsxCJef6NrgWP3Bq+BzA/QCcECdkeDnWN+pMbBIXbEQ==
X-Received: by 2002:a92:d692:0:b0:33b:16e9:bba5 with SMTP id
 p18-20020a92d692000000b0033b16e9bba5mr10637725iln.28.1686668381652; 
 Tue, 13 Jun 2023 07:59:41 -0700 (PDT)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 ep25-20020a0566384e1900b0041f4f31ec7esm520823jab.71.2023.06.13.07.59.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Jun 2023 07:59:41 -0700 (PDT)
Date: Tue, 13 Jun 2023 08:59:39 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: "Liu, Yi L" <yi.l.liu@intel.com>
Message-ID: <20230613085939.63583166.alex.williamson@redhat.com>
In-Reply-To: <DS0PR11MB7529E63E24335F6DF655E1A8C355A@DS0PR11MB7529.namprd11.prod.outlook.com>
References: <20230602121653.80017-1-yi.l.liu@intel.com>
 <20230602121653.80017-19-yi.l.liu@intel.com>
 <20230612162726.16f58ea4.alex.williamson@redhat.com>
 <DS0PR11MB752985BA514AFF36CA3A2785C355A@DS0PR11MB7529.namprd11.prod.outlook.com>
 <20230613081808.049b9e6d.alex.williamson@redhat.com>
 <DS0PR11MB7529F0A41AA58AE37BCF8458C355A@DS0PR11MB7529.namprd11.prod.outlook.com>
 <20230613083935.753430ed.alex.williamson@redhat.com>
 <DS0PR11MB7529E63E24335F6DF655E1A8C355A@DS0PR11MB7529.namprd11.prod.outlook.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.35; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v12 18/24] vfio: Add VFIO_DEVICE_BIND_IOMMUFD
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
 "Tian, Kevin" <kevin.tian@intel.com>, "Zhao, 
 Yan Y" <yan.y.zhao@intel.com>,
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

On Tue, 13 Jun 2023 14:42:46 +0000
"Liu, Yi L" <yi.l.liu@intel.com> wrote:

> > From: Alex Williamson <alex.williamson@redhat.com>
> > Sent: Tuesday, June 13, 2023 10:40 PM
> > 
> > On Tue, 13 Jun 2023 14:28:43 +0000
> > "Liu, Yi L" <yi.l.liu@intel.com> wrote:
> >   
> > > > From: Alex Williamson <alex.williamson@redhat.com>
> > > > Sent: Tuesday, June 13, 2023 10:18 PM  
> > >  
> > > > > > > diff --git a/include/linux/vfio.h b/include/linux/vfio.h
> > > > > > > index 83cc5dc28b7a..e80a8ac86e46 100644
> > > > > > > --- a/include/linux/vfio.h
> > > > > > > +++ b/include/linux/vfio.h
> > > > > > > @@ -66,6 +66,7 @@ struct vfio_device {
> > > > > > >  	struct iommufd_device *iommufd_device;
> > > > > > >  	bool iommufd_attached;
> > > > > > >  #endif
> > > > > > > +	bool cdev_opened:1;  
> > > > > >
> > > > > > Perhaps a more strongly defined data type here as well and roll
> > > > > > iommufd_attached into the same bit field scheme.  
> > > > >
> > > > > Ok, then needs to make iommufd_attached always defined.  
> > > >
> > > > That does not follow.  Thanks,  
> > >
> > > Well, I meant the iommufd_attached now is defined only when
> > > CONFIG_IOMMUFD is enabled. To toll it with cdev_opened, needs
> > > to change this.  
> > 
> > Understood, but I don't think it's true.  If defined we use one more
> > bit of the bit field, which is a consideration when we approach filling
> > it, but we're not using bit-shift operations to address these bits, so
> > why does it matter if one has compiler conditional usage?  Thanks,  
> 
> Aha, I see. So you are suggesting something like the below. Is it?
> 
> #if IS_ENABLED(CONFIG_IOMMUFD)
> 	struct iommufd_device *iommufd_device;
> 	u8 iommufd_attached:1;
> #endif
> 	u8 cdev_opened:1;


Precisely.  Thanks,

Alex

