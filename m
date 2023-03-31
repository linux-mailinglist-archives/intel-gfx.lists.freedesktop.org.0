Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 80CEE6D2170
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Mar 2023 15:24:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A55F10F233;
	Fri, 31 Mar 2023 13:24:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73C7510F235
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Mar 2023 13:24:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1680269084;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=+8R/ww5NOtTKrVVMJPiSWlsWr2SqxpSfsL4A0mGzuN8=;
 b=f3TOej65joYJnKO8kvSN83V4kQXyTw9O0kzc0Y23gonUHXICeH080TWqYGCo87er2BupM7
 uVfX9Yha2DgkexqBKW4rSs/XiojvOdIiwe5eIl2V8CY1h/PZVOzXZmWYUsNRbLVCKacXe/
 GoDm4nrJj5sYY8zkUAuB9b7Jg+t683Y=
Received: from mail-il1-f200.google.com (mail-il1-f200.google.com
 [209.85.166.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-28-3NynOfaTPH6MbyQRI-HKdA-1; Fri, 31 Mar 2023 09:24:43 -0400
X-MC-Unique: 3NynOfaTPH6MbyQRI-HKdA-1
Received: by mail-il1-f200.google.com with SMTP id
 s6-20020a056e02216600b003264c778ef1so1028335ilv.23
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Mar 2023 06:24:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680269082;
 h=content-transfer-encoding:mime-version:organization:references
 :in-reply-to:message-id:subject:cc:to:from:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=+8R/ww5NOtTKrVVMJPiSWlsWr2SqxpSfsL4A0mGzuN8=;
 b=XRub7+7SIZcHQkzSGjoNyKRCeRKyAstZMMrdRnAJcWiL6kHxxUasdfIxi6E2+HvNXV
 MJuBbHsW3hVJijYNqv56sLWzslF31OYlKfB097hOpKJvCg/4eAnDeg8kgT1udIqfeUmH
 Z52w00dWTc+P/4dJ2GArmvy0IAvU+VdcSEHDjcF/RJT6lu1dgIGtPY+bXGO8U+3RvfOx
 9bhFdwp6PdOZpqFOJ6htGLwulqrljSAmkMc5XkbOZUgbwBXFS+5UHW88biCqPi+zxn/t
 M2jlEdiDNjCnNzFJyKdHhC7wzBSAm30FJve1UXnklg3HNH2ha9inqUfFMVMKZ9SuqHmg
 mpEQ==
X-Gm-Message-State: AAQBX9dF7ozbeFiUkSWWGtAi93qcVLhatcRlpYGq44OcvBOw6cQ5amXE
 sWkVn+gNNgHWFyTwxRfdUTVlx3/UdRRlIEQQQ4TOjHvNSOCnXQ54FzDtzqKlWrU9BeK9vNX3dH5
 1Ai7R5k4+2jIdjXVV4pwA0Hv4imzr
X-Received: by 2002:a92:d991:0:b0:316:e39f:1212 with SMTP id
 r17-20020a92d991000000b00316e39f1212mr19103848iln.4.1680269082239; 
 Fri, 31 Mar 2023 06:24:42 -0700 (PDT)
X-Google-Smtp-Source: AKy350ZYiLus2ZjBk8rYsb82E2FTq2uUos7BcYFTyirHTyJsodUs0w1TIkUKf/w5l3uKHhzr7I1mnQ==
X-Received: by 2002:a92:d991:0:b0:316:e39f:1212 with SMTP id
 r17-20020a92d991000000b00316e39f1212mr19103815iln.4.1680269081970; 
 Fri, 31 Mar 2023 06:24:41 -0700 (PDT)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 x11-20020a92300b000000b00325daf836fdsm617030ile.17.2023.03.31.06.24.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 31 Mar 2023 06:24:41 -0700 (PDT)
Date: Fri, 31 Mar 2023 07:24:38 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: "Jiang, Yanting" <yanting.jiang@intel.com>
Message-ID: <20230331072438.21c9243b.alex.williamson@redhat.com>
In-Reply-To: <MW4PR11MB6763D4F64127A5205D3B6567E88F9@MW4PR11MB6763.namprd11.prod.outlook.com>
References: <20230327093458.44939-1-yi.l.liu@intel.com>
 <MW4PR11MB6763D4F64127A5205D3B6567E88F9@MW4PR11MB6763.namprd11.prod.outlook.com>
Organization: Red Hat
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2 00/10] Introduce new methods for
 verifying ownership in vfio PCI hot reset
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

On Fri, 31 Mar 2023 03:14:23 +0000
"Jiang, Yanting" <yanting.jiang@intel.com> wrote:

> > 
> > VFIO_DEVICE_PCI_HOT_RESET requires user to pass an array of group fds to
> > prove that it owns all devices affected by resetting the calling device. This series
> > introduces several extensions to allow the ownership check better aligned with
> > iommufd and coming vfio device cdev support.
> > 
> > First, resetting an unopened device is always safe given nobody is using it. So
> > relax the check to allow such devices not covered by group fd array. [1]
> > 
> > When iommufd is used we can simply verify that all affected devices are bound
> > to a same iommufd then no need for the user to provide extra fd information.
> > This is enabled by the user passing a zero-length fd array and moving forward
> > this should be the preferred way for hot reset. [2]
> > 
> > However the iommufd method has difficulty working with noiommu devices
> > since those devices don't have a valid iommufd, unless the noiommu device is in
> > a singleton dev_set hence no ownership check is required. [3]
> > 
> > For noiommu backward compatibility a 3rd method is introduced by allowing the
> > user to pass an array of device fds to prove ownership. [4]
> > 
> > As suggested by Jason [5], we have this series to introduce the above stuffs to
> > the vfio PCI hot reset. Per the dicussion in [6], this series also adds a new _INFO
> > ioctl to get hot reset scope for given device.
> >   
> Tested NIC passthrough on Intel platform.
> Result looks good hence, 
> Tested by: Jiang, Yanting <yanting.jiang@intel.com>

I'm not aware of any userspace that exercises this reset ioctl in cdev
mode.  Is this regression testing only?  Thanks,

Alex

