Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22DC26BD854
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Mar 2023 19:45:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C538C10E29C;
	Thu, 16 Mar 2023 18:45:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 800EA10EDBA
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Mar 2023 18:45:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1678992338;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=msB9Vqg/JhQndpd4enpDX7wLYe89HC8KUPhwlSyu4MY=;
 b=Z3CwF+grJMnG7gnbuW48sWwUL9lHI2fCCA0GuhM7kD/bDgJ+vC+tVRdMGTL6m+8inD/CD8
 E9VE8FBcCdagUi+HgsZHynB6UP+c9T9XxhdUKdok9kX4SsSjctW9L17nb8AA+wA43DEpux
 oOtO/RIJQiNBVLBeP4YwffbXBISvSco=
Received: from mail-io1-f69.google.com (mail-io1-f69.google.com
 [209.85.166.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-216-lswOR_cIMbaZgjlS7fe79A-1; Thu, 16 Mar 2023 14:45:36 -0400
X-MC-Unique: lswOR_cIMbaZgjlS7fe79A-1
Received: by mail-io1-f69.google.com with SMTP id
 u23-20020a6be917000000b007532ab65c70so1219774iof.12
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Mar 2023 11:45:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1678992336;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=msB9Vqg/JhQndpd4enpDX7wLYe89HC8KUPhwlSyu4MY=;
 b=cVOQ4aEqdu4EBvkDHVviICS6wpFIb79gRp6iIXha/dxc2WMaNf+3pvrS64ZAFlltrw
 8OrFWgsVuctyDg9xDdnxk9ANRi3HggBH26ZetL+rnm3h4iFdaE2OB1pkU9YKwlr47I2O
 niiCo+9nWrcClFBgY3et9Lw0lB/Z/Nszp+qn/BimmRs06XSo6EHP/2epZ8wDAY4TcdbY
 TvKwwUv/BaKiAcfx0SZl4Pzf1PKDb4PqzpHqJa9bUmTQp8ey+cR5GvkbaQh7yq5KLNMA
 9ZboIhGWqN7E3NoV27bwDD/4nvamEv29+Q29hnI9xjMxaFbVHQQJI0HdyhLzB1BwwrgT
 07WQ==
X-Gm-Message-State: AO0yUKV5ztjq+gn88GvyGlxnNYJLeg0RO3XaPRWULdIa+I1zY80xVT8n
 tGhC2hfDBSJ9PxVJnsPvW0O/3FLywV0VUWm14xWGYik5HtCzu/4SQN4QilVDfus1iqobOOw61+Y
 EL5nTX4e0H8+Z8qtLiGSzWb+Dn6zq
X-Received: by 2002:a92:d091:0:b0:315:365d:534f with SMTP id
 h17-20020a92d091000000b00315365d534fmr8191870ilh.19.1678992335754; 
 Thu, 16 Mar 2023 11:45:35 -0700 (PDT)
X-Google-Smtp-Source: AK7set9qQgqeAlftnpNauE2CjihQfPZJZ5OsDTnDHp/jf0ze+wvxzL6P4lb2qI9dZoMDXrMloIqAiw==
X-Received: by 2002:a92:d091:0:b0:315:365d:534f with SMTP id
 h17-20020a92d091000000b00315365d534fmr8191844ilh.19.1678992335398; 
 Thu, 16 Mar 2023 11:45:35 -0700 (PDT)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 m14-20020a02c88e000000b004050767f779sm2680270jao.164.2023.03.16.11.45.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Mar 2023 11:45:34 -0700 (PDT)
Date: Thu, 16 Mar 2023 12:45:32 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: "Tian, Kevin" <kevin.tian@intel.com>
Message-ID: <20230316124532.30839a94.alex.williamson@redhat.com>
In-Reply-To: <BN9PR11MB5276300FCAAF8BF7B4E03BA48CBF9@BN9PR11MB5276.namprd11.prod.outlook.com>
References: <20230308132903.465159-1-yi.l.liu@intel.com>
 <20230308132903.465159-13-yi.l.liu@intel.com>
 <20230315165311.01f32bfe.alex.williamson@redhat.com>
 <BN9PR11MB5276300FCAAF8BF7B4E03BA48CBF9@BN9PR11MB5276.namprd11.prod.outlook.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.35; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v6 12/24] vfio/pci: Allow passing
 zero-length fd array in VFIO_DEVICE_PCI_HOT_RESET
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
 "lulu@redhat.com" <lulu@redhat.com>, "joro@8bytes.org" <joro@8bytes.org>,
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

On Wed, 15 Mar 2023 23:31:23 +0000
"Tian, Kevin" <kevin.tian@intel.com> wrote:

> > From: Alex Williamson <alex.williamson@redhat.com>
> > Sent: Thursday, March 16, 2023 6:53 AM
> > 
> > On Wed,  8 Mar 2023 05:28:51 -0800
> > Yi Liu <yi.l.liu@intel.com> wrote:
> >   
> > > This is another method to issue PCI hot reset for the users that bounds
> > > device to a positive iommufd value. In such case, iommufd is a proof of
> > > device ownership. By passing a zero-length fd array, user indicates kernel
> > > to do ownership check with the bound iommufd. All the opened devices  
> > within  
> > > the affected dev_set should have been bound to the same iommufd. This is
> > > simpler and faster as user does not need to pass a set of fds and kernel
> > > no need to search the device within the given fds.  
> > 
> > Couldn't this same idea apply to containers?  
> 
> User is allowed to create multiple containers. Looks we don't have a way
> to check whether multiple containers belong to the same user today.

No, but a common configuration is that all devices are in the same
container, ie. no-vIOMMU, and it's also rather common that when we have
multi-function devices, all functions are within the same IOMMU group
and therefore necessarily require the same address space and therefore
container.

> > I'm afraid this proposal reduces or eliminates the handshake we have
> > with userspace between VFIO_DEVICE_GET_PCI_HOT_RESET_INFO and
> > VFIO_DEVICE_PCI_HOT_RESET, which could promote userspace to ignore the
> > _INFO ioctl altogether, resulting in drivers that don't understand the
> > scope of the reset.  Is it worth it?  What do we really gain?  
> 
> Jason raised the concern whether GET_PCI_HOT_RESET_INFO is actually
> useful today.
> 
> It's an interface on opened device. So the tiny difference is whether the
> user knows the device is resettable when calling GET_INFO or later when
> actually calling PCI_HOT_RESET.

No, GET_PCI_HOT_RESET_INFO conveys not only whether a PCI_HOT_RESET can
be performed, but equally important the scope of the reset, ie. which
devices are affected by the reset.  If we de-emphasize the INFO
portion, then this easily gets confused as just a variant of
VFIO_DEVICE_RESET, which is explicitly a device-level cscope reset.  In
fact, I'd say the interface is not only trying to validate that the
user has sufficient privileges for the reset, but that they explicitly
acknowledge the scope of the reset.

> and with this series we also allow reset on affected devices which are not
> opened. Such dynamic cannot be reflected in static GET_INFO. More
> suitable a try-and-fail style.

Resets have side-effects, obviously, so this isn't the sort of thing we
can simply ask the user to probe for.  I agree that dynamics can
change, the GET_PCI_HOT_RESET_INFO is a point in time, isolated
functions on the same bus can change ownership.  However, in practice,
and in its primary use case with GPUs without isolation, it's
sufficiently static.  So I think this is a mischaracterization.  Thanks,

Alex

