Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B875D6CED5F
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Mar 2023 17:49:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E4D310EB64;
	Wed, 29 Mar 2023 15:49:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2A7C10EB66
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Mar 2023 15:49:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1680104991;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=hP1XBMM0doEA+LEJ78VJjS+VLo2jAysv8Y016r4ZnnY=;
 b=cKHO43SkjbU+NjQ2ha/ncVs4stYXhG/qc/jaSQ5OlHyovFiT9ycSV6ieTHDlOwO67mu3Rc
 yY4wCEqb4AaeJJ5OgQwlx/TRuZJEwRlnaGUAtIGu8OCAh2ZZlR8GNImqBmkrLjiZv+VvSu
 JJtTs/7uXe2GOGS96StusWGzq0bWFiM=
Received: from mail-io1-f70.google.com (mail-io1-f70.google.com
 [209.85.166.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-294-wRTnpXhwPNCKDgddn3C9ww-1; Wed, 29 Mar 2023 11:49:48 -0400
X-MC-Unique: wRTnpXhwPNCKDgddn3C9ww-1
Received: by mail-io1-f70.google.com with SMTP id
 g7-20020a056602242700b00758e7dbd0dbso10041491iob.16
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Mar 2023 08:49:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680104987;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=hP1XBMM0doEA+LEJ78VJjS+VLo2jAysv8Y016r4ZnnY=;
 b=L0G4ODYokB+FRMeM/Fyatno6tSx7E52TYu446M+lBCc8vsSZk0bON/Wj8i8zJkEPwW
 BubiToaLO5cAYqY4f30s2g+s+jBQ4z/IB4d10XKh6NJUL4f0/Vv/23f5HaoNwaLfd0pZ
 Y2denH6bL6PyFw52HQVcFOhHiw1yMp6+XHCrMUMm8BZhmBcvM/J9Zyg64r07GgsB7Bye
 or3WcJPLKwI62BkKbvNvOVS7LrvFn65z/XmwU/9Sgdl8USjMZlEssyZF4W3O2VvIPi6l
 lqDXM7o1WNfUYDpHUsLYWbfal4jUlVwHZ7294w3VmV9I8NQ4xhdQQcGdmLqsemWWLDX1
 hbDA==
X-Gm-Message-State: AAQBX9evcNZKFFQ5XXLJHaVtz5HNizrM36o3ldBNAEbjP7V7CMJRstl4
 WHMqf00I5w++Dffih69QFwVVggAZcjzGpUIFWwouP5GPcEAi6vtZRps6UrFofMDL9Bnh+mtvuEA
 eoHpBqI3F4hpEaM3BsUDt2yAWc/IB
X-Received: by 2002:a92:c743:0:b0:326:2902:e7d9 with SMTP id
 y3-20020a92c743000000b003262902e7d9mr2178946ilp.7.1680104987647; 
 Wed, 29 Mar 2023 08:49:47 -0700 (PDT)
X-Google-Smtp-Source: AKy350ZSyu7j44X/rupYZlbiuoYiWibGVg929WRZpz3ftBxDYQY1mBTe8lVgtKaDoJrTKTZsWHhhjA==
X-Received: by 2002:a92:c743:0:b0:326:2902:e7d9 with SMTP id
 y3-20020a92c743000000b003262902e7d9mr2178916ilp.7.1680104987361; 
 Wed, 29 Mar 2023 08:49:47 -0700 (PDT)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 n4-20020a056638110400b00400d715c57dsm10708357jal.29.2023.03.29.08.49.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Mar 2023 08:49:46 -0700 (PDT)
Date: Wed, 29 Mar 2023 09:49:44 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: "Tian, Kevin" <kevin.tian@intel.com>
Message-ID: <20230329094944.50abde4e.alex.williamson@redhat.com>
In-Reply-To: <BN9PR11MB52762E789B9C1D8021F54ECC8C899@BN9PR11MB5276.namprd11.prod.outlook.com>
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
 <20230328100027.3b843b91.alex.williamson@redhat.com>
 <DS0PR11MB7529C12E086DAB619FF9AFF0C3899@DS0PR11MB7529.namprd11.prod.outlook.com>
 <BN9PR11MB52762E789B9C1D8021F54ECC8C899@BN9PR11MB5276.namprd11.prod.outlook.com>
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
 "linux-s390@vger.kernel.org" <linux-s390@vger.kernel.org>, "Liu,
 Yi L" <yi.l.liu@intel.com>, "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
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

On Wed, 29 Mar 2023 09:41:26 +0000
"Tian, Kevin" <kevin.tian@intel.com> wrote:

> > From: Liu, Yi L <yi.l.liu@intel.com>
> > Sent: Wednesday, March 29, 2023 11:14 AM
> >   
> > > From: Alex Williamson <alex.williamson@redhat.com>
> > > Sent: Wednesday, March 29, 2023 12:00 AM
> > >
> > >
> > > Personally I don't like the suggestion to fail with -EPERM if the user
> > > doesn't own all the affected devices.  This isn't a "probe if I can do
> > > a reset" ioctl, it's a "provide information about the devices affected
> > > by a reset to know how to call the hot-reset ioctl".  We're returning
> > > the bdf to the cdev version of this ioctl for exactly this debugging
> > > purpose when the devices are not owned, that becomes useless if we give
> > > up an return -EPERM if ownership doesn't align.  
> > 
> > Jason's suggestion makes sense for returning the case of returning dev_id
> > as dev_id is local to iommufd. If there are devices in the same dev_set are
> > opened by multiple users, multiple iommufd would be used. Then the
> > dev_id would have overlap. e.g. a dev_set has three devices. Device A and
> > B are opened by the current user as cdev, dev_id #1 and #2 are generated.
> > While device C opened by another user as cdev, dev_id #n is generated for
> > it. If dev_id #n happens to be #1, then user gets two info entries that have
> > the same dev_id.
> >   
> 
> In Alex's proposal you'll set a invalid dev_id for device C so the user can
> still get the info for diagnostic purpose instead of seeing an -EPERM error.

Yes, we shouldn't be reporting dev_ids outside of the user's iommufd
context.

> btw I found an open about fd pass scheme which may affect the choice here.
> 
> In concept even with cdev we still expect the userspace to maintain the
> group knowledge so it won't inadvertently attempt to assign devices in
> the same group to different IOAS's. It also needs such knowledge when
> constructing guest topology.
> 
> with fd passed in Qemu has no way to associate the fd to a group.

Hmm, QEMU tries to get the group for the device address space in the
guest, so finding an existing group with a different address space
indeed allows QEMU to know of this conflict since the group is the
fundamental unit IOMMU context in the legacy vfio model.

> We could extend bind_iommufd to return the group id or introduce a
> new ioctl to query it per dev_id.

That would be ironic to go to all this trouble to remove groups from
the API only to have them show up here.  But with a cdev interface,
don't we break that model of conflating isolation and address-ability?

For example, devices within a group cannot be bound to separate
iommufds due to lack of isolation, which is handled via DMA ownership,
but barring DMA aliasing issues, due to conventional PCI buses or
quirks, cdev could allow devices within the same group to be managed by
separate IOAS's.  So the group information really isn't enough for
userspace to infer address space restrictions with cdev anyway.

Therefore aren't we expecting this to be denied at attach_ioas() and
QEMU shouldn't be making these sorts of assumptions for cdev anyway?
Thanks,

Alex

