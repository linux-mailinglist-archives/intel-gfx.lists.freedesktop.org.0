Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E0C96E2867
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Apr 2023 18:34:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15EAC10EE1F;
	Fri, 14 Apr 2023 16:34:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 419D810E1C2
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Apr 2023 16:34:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1681490075;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=TiyXITH53RukNzpnNNOFUR8woLiThj9fzrzbqNxJCOE=;
 b=MqBXSkC+9YhcNVlMnvRJEyWl1wy1tTGV9rWR/Rd0+4lgmUSNl3nXQEnsTZook5mWBq5QAn
 gzgxzo35py0ptc4s7fH6NT0x/XcEoj3hsQOuLLBVtd+RcSlwFPAj2+6u/8NB3NsSc7gG+e
 VUvVCEs0zIaTWMDYjSHnZwG6uj5VQeM=
Received: from mail-il1-f198.google.com (mail-il1-f198.google.com
 [209.85.166.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-304-NOmMebpmOp-TeKoqovRnJg-1; Fri, 14 Apr 2023 12:34:35 -0400
X-MC-Unique: NOmMebpmOp-TeKoqovRnJg-1
Received: by mail-il1-f198.google.com with SMTP id
 e2-20020a056e0204a200b0032a995cacf5so930920ils.21
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Apr 2023 09:34:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1681490074; x=1684082074;
 h=content-transfer-encoding:mime-version:organization:references
 :in-reply-to:message-id:subject:cc:to:from:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=TiyXITH53RukNzpnNNOFUR8woLiThj9fzrzbqNxJCOE=;
 b=BHmTXvUJr0G9Prd1ewx0iRK6BRRINkTlPlkWL/bkwfaUuI53X+MJLIDvDDC132TCmf
 BGphMFoZ9y1mp7ziH0uVnSf6TIhRX1eFmZVA5QF5TEhKaKJiDDdeInl5pr/v3dH4DFwI
 npzEK3b57s0Vq8fwWOA70Z7N/q/dqb26sJRJYnCKfJe0tK1Hw14nlFtWd71/YT/U+1kf
 kV+xqtL6rsHPyIMk3Mx9EBT5fqBHTz7u8kyqtLaqFPB0TSufXvAozz52Wqnlb8TrspaA
 FXak0n4yRhA1VFhbt8SmZXqI2cqIVBFMOkc9Qiewu7Og4Rp4ltt87aSs6Etv/UYtDWL/
 daRg==
X-Gm-Message-State: AAQBX9fL5WBYXo4nNOBuRadI2R8Uu+1X0HvDwafvK+tHkUzZp/YTqyTR
 mwxm5M91d7t89G1gNG/WeLF76wL2yD0/PAbY0mnSPGyRfRspJqo8ML3sa/aT1gmRoGKh2ZPI8v5
 TnqN0rlC2e83cUCw7p0lk5chwma9f
X-Received: by 2002:a5d:8d0d:0:b0:760:b591:e651 with SMTP id
 p13-20020a5d8d0d000000b00760b591e651mr3935778ioj.13.1681490074066; 
 Fri, 14 Apr 2023 09:34:34 -0700 (PDT)
X-Google-Smtp-Source: AKy350Y4xZd31W2OHtW31atCrSCtoyPH5rds55etIE3WyFmBagEgjbWM4ZMraJRpXtYloWSVQYhCKA==
X-Received: by 2002:a5d:8d0d:0:b0:760:b591:e651 with SMTP id
 p13-20020a5d8d0d000000b00760b591e651mr3935754ioj.13.1681490073788; 
 Fri, 14 Apr 2023 09:34:33 -0700 (PDT)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 w23-20020a056638379700b0040bbee466a4sm1288919jal.72.2023.04.14.09.34.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 14 Apr 2023 09:34:33 -0700 (PDT)
Date: Fri, 14 Apr 2023 10:34:28 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: "Tian, Kevin" <kevin.tian@intel.com>
Message-ID: <20230414103428.20d390a2.alex.williamson@redhat.com>
In-Reply-To: <BN9PR11MB5276A160CA699933B897C8C18C999@BN9PR11MB5276.namprd11.prod.outlook.com>
References: <20230406115347.7af28448.alex.williamson@redhat.com>
 <ZDVfqpOCnImKr//m@nvidia.com>
 <20230411095417.240bac39.alex.williamson@redhat.com>
 <20230411111117.0766ad52.alex.williamson@redhat.com>
 <ZDWph7g0hcbJHU1B@nvidia.com>
 <20230411155827.3489400a.alex.williamson@redhat.com>
 <ZDX0wtcvZuS4uxmG@nvidia.com>
 <20230412105045.79adc83d.alex.williamson@redhat.com>
 <ZDcPTTPlni/Mi6p3@nvidia.com>
 <BN9PR11MB5276782DA56670C8209470828C989@BN9PR11MB5276.namprd11.prod.outlook.com>
 <ZDfslVwqk6JtPpyD@nvidia.com>
 <20230413120712.3b9bf42d.alex.williamson@redhat.com>
 <BN9PR11MB5276A160CA699933B897C8C18C999@BN9PR11MB5276.namprd11.prod.outlook.com>
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
 "linux-s390@vger.kernel.org" <linux-s390@vger.kernel.org>, "Liu,
 Yi L" <yi.l.liu@intel.com>, "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
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

On Fri, 14 Apr 2023 09:11:30 +0000
"Tian, Kevin" <kevin.tian@intel.com> wrote:

> > From: Alex Williamson <alex.williamson@redhat.com>
> > Sent: Friday, April 14, 2023 2:07 AM
> > 
> > We had already iterated a proposal where the group-id is replaced with
> > a dev-id in the existing ioctl and a flag indicates when the return
> > value is a dev-id vs group-id.  This had a gap that userspace cannot
> > determine if a reset is available given this information since un-owned
> > devices report an invalid dev-id and userspace can't know if it has
> > implicit ownership.
> > 
> > It seems cleaner to me though that we would could still re-use INFO in
> > a similar way, simply defining a new flag bit which is valid only in
> > the case of returning dev-ids and indicates if the reset is available.
> > Therefore in one ioctl, userspace knows if hot-reset is available
> > (based on a kernel determination) and can pull valid dev-ids from the  
> 
> So the kernel needs to compare the group id between devices with
> valid dev-ids and devices with invalid dev-ids to decide the implicit
> ownership. For noiommu device which has no group_id when
> VFIO_GROUP is off then it's resettable only if having a valid dev_id.

With no-iommu and VFIO_GROUP on, each no-iommu device gets it's own
group and the user must have ownership of each affected group, so
there's really no difference here.  Every affected no-iommu device must
be owned in either case.
 
> The only corner case with this option is when a user mixes group
> and cdev usages. iirc you mentioned it's a valid usage to be supported.
> In that case the kernel doesn't have sufficient knowledge to judge
> 'resettable' as it doesn't know which groups are opened by this user.

So for example we might have a 2-function device, fn0 is opened via
cdev and part of an iommufd ctx and fn1 is opened via the group
interface and potentially bound to a type1 container context.

In the INFO/INFO2 proposal, the INFO ioctl would return an array
reporting the group and BDF for each function.  The INFO ioctl is
callable from either device (aiui).  The INFO2 ioctl would fail on the
group opened device because it doesn't have an iommufd_ctx.  When
called on the cdev opened device, INFO2 would fail because the dev-set
is not represented within the iommufd_ctx.  Is this right?

In my proposal, the INFO ioctl can also be called on either device.
When called on the cdev opened device, the return structure provides
dev-ids with a flag indicating such in the return structure.  The cdev
device has a valid dev-id, the group device invalid.  The
reset-available flag is clear because the kernel cannot infer ownership
of the group opened device.  When called on the group opened device, the
IOMMU group and BDF are returned for each device.

So both approaches have similar issues here, but I think there's an
advantage to the approach of extending INFO.  In that case, the user
still gets the dev-id of the affected cdev device and therefore could
build a hot-reset ioctl call using a combination of groupfds and
devicefds, even if the cdev opened device are passed by fd.  Perhaps
it's obvious that the hot-reset device is itself affected by the reset,
but I think the example scenario could be extended to one where there
are multiple cdev opened devices and one or more group opened devices.
AIUI, the INFO2 proposal essentially only returns success if the
null-array approach is supported, ie. the kernel can infer the full
ownership of the dev-set.  However, I think we could still support a
proof-of-ownership based hot-reset with devicefds and groupfds provide
by the user.

I think what this means is that the flag we're exposing is not
"hot-reset available", but really whether the kernel can infer
ownership and the ownership conditions are satisfied.  Therefore it
essentially only flags the availability of the null-array interface
while the proof-of-ownership approach is always available.

> Not sure whether we can leave it in a ugly way so INFO may not tell
> 'resettable' accurately in that weird scenario.

Is it still ugly with the above design?  Thanks,

Alex

