Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F17A15E6A16
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Sep 2022 19:58:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8875B10E0F9;
	Thu, 22 Sep 2022 17:58:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E22F710E10B
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Sep 2022 17:58:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1663869504;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=g4NUGUXkPyLpfZsihmjyO9VtgQj5aWbqHvYtbi+s6OQ=;
 b=QRTp4VGsmIF6wFgOpwcacy5nlVLDFxUsTzcTWMkPL5sHeJ/UsLJvQLeuGES77VMKLt+7Nw
 ma1oxU0QC3YYBDZWOjchtk3Emo94AsaxjlzRwPKSy93ikI83wsP0bNSa4F67WQ08T/5f8e
 lDsBnvMst131nUzb/NLhd+JRsy4hZuw=
Received: from mail-il1-f200.google.com (mail-il1-f200.google.com
 [209.85.166.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-611-LRktGSZONEm8xs9CQk3Xqw-1; Thu, 22 Sep 2022 13:58:24 -0400
X-MC-Unique: LRktGSZONEm8xs9CQk3Xqw-1
Received: by mail-il1-f200.google.com with SMTP id
 h9-20020a056e021b8900b002f19c2a1836so6146447ili.23
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Sep 2022 10:58:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date;
 bh=g4NUGUXkPyLpfZsihmjyO9VtgQj5aWbqHvYtbi+s6OQ=;
 b=KuqHZz6wCLhDga3zAlr/HLhAZwfiWIn1qTpl/CRF5v7ciBqAHZG2KGGbmCuARNHNwH
 hKaHzJxtlGYx/tXcWDCoJaDvSpHtq6nrO+o/7+TE/IoNBf0Wzj5V3CQ+Gdav+KquO0gY
 PytoEvXuFHYoKQ+jK5gJ5s/ap3GdsEA/ZPqF5lU15M4/39Wx3l89c+gdr2TT4uYvWXXE
 KV+MSa7A84gAGsAb61ooUPeqVgoB+VdLUB4ks5jaEl4ihgrYyYDZmEISf55zMRTIEZUM
 kCH5gSQooI2Vatgw8F/jZ7uxvy6QqHRRlF5AHBoOZITgy1JIrTl70/omoH/tHNk7Ezv8
 PFPA==
X-Gm-Message-State: ACrzQf1U4E5V4TTVJvh9GLc29giJywJU02Zr62GgsAvxka2U7dy020gF
 qYQHcRU5KbEAyUUKWr/MwXnGtKw/6m6HKbJePaVEWDIKRXqX6JFaxLWaRASX2HSDQqVryJz5/Gj
 R131Wb7mfhhhlT6e9ur7HbZChnc4A
X-Received: by 2002:a05:6638:1305:b0:35a:6a4e:9e57 with SMTP id
 r5-20020a056638130500b0035a6a4e9e57mr2680884jad.126.1663869503061; 
 Thu, 22 Sep 2022 10:58:23 -0700 (PDT)
X-Google-Smtp-Source: AMsMyM530vCbzgK3QTaLWq3W4wuBNaUAkWaoYeBZZnU7wvG9GWi4I/K5zklV/6TeHh+w/3LQU5zx2g==
X-Received: by 2002:a05:6638:1305:b0:35a:6a4e:9e57 with SMTP id
 r5-20020a056638130500b0035a6a4e9e57mr2680865jad.126.1663869502854; 
 Thu, 22 Sep 2022 10:58:22 -0700 (PDT)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 p5-20020a056638216500b0035a498d222asm2456730jak.35.2022.09.22.10.58.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 22 Sep 2022 10:58:22 -0700 (PDT)
Date: Thu, 22 Sep 2022 11:58:20 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: Kevin Tian <kevin.tian@intel.com>
Message-ID: <20220922115820.5ac023ab.alex.williamson@redhat.com>
In-Reply-To: <20220921104401.38898-1-kevin.tian@intel.com>
References: <20220921104401.38898-1-kevin.tian@intel.com>
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.34; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v4 00/15] Tidy up vfio_device life cycle
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
Cc: Matthew Rosato <mjrosato@linux.ibm.com>, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Kirti Wankhede <kwankhede@nvidia.com>, Vineeth Vijayan <vneethv@linux.ibm.com>,
 Diana Craciun <diana.craciun@oss.nxp.com>,
 Alexander Gordeev <agordeev@linux.ibm.com>,
 Longfang Liu <liulongfang@huawei.com>, Christoph Hellwig <hch@infradead.org>,
 Yi Liu <yi.l.liu@intel.com>, kvm@vger.kernel.org,
 Leon Romanovsky <leon@kernel.org>, Halil Pasic <pasic@linux.ibm.com>,
 Jason Gunthorpe <jgg@ziepe.ca>,
 Christian Borntraeger <borntraeger@linux.ibm.com>,
 intel-gfx@lists.freedesktop.org, Tony Krowiak <akrowiak@linux.ibm.com>,
 Eric Farman <farman@linux.ibm.com>, Vasily Gorbik <gor@linux.ibm.com>,
 linux-s390@vger.kernel.org, Heiko Carstens <hca@linux.ibm.com>,
 Eric Auger <eric.auger@redhat.com>,
 Harald Freudenberger <freude@linux.ibm.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-gvt-dev@lists.freedesktop.org,
 Jason Herne <jjherne@linux.ibm.com>, Yishai Hadas <yishaih@nvidia.com>,
 Cornelia Huck <cohuck@redhat.com>, Peter Oberparleiter <oberpar@linux.ibm.com>,
 Shameer Kolothum <shameerali.kolothum.thodi@huawei.com>,
 Sven Schnelle <svens@linux.ibm.com>, Daniel Vetter <daniel@ffwll.ch>,
 Abhishek Sahu <abhsahu@nvidia.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 21 Sep 2022 18:43:46 +0800
Kevin Tian <kevin.tian@intel.com> wrote:

> The idea is to let vfio core manage the vfio_device life cycle instead
> of duplicating the logic cross drivers. Besides cleaner code in driver
> side this also allows adding struct device to vfio_device as the first
> step toward adding cdev uAPI in the future. Another benefit is that
> user can now look at sysfs to decide whether a device is bound to
> vfio [1], e.g.:
> 
> 	/sys/devices/pci0000\:6f/0000\:6f\:01.0/vfio-dev/vfio0
> 
> Though most drivers can fit the new model naturally:
> 
>  - vfio_alloc_device() to allocate and initialize vfio_device
>  - vfio_put_device() to release vfio_device
>  - dev_ops->init() for driver private initialization
>  - dev_ops->release() for driver private cleanup
> 
> vfio-ccw is the only exception due to a life cycle mess that its private
> structure mixes both parent and mdev info hence must be alloc/freed
> outside of the life cycle of vfio device.
> 
> Per prior discussions this won't be fixed in short term by IBM folks [2].
> 
> Instead of waiting this series introduces a few tricks to move forward:
> 
>  - vfio_init_device() to initialize a pre-allocated device structure;
> 
>  - require *EVERY* driver to implement @release and free vfio_device
>    inside. Then vfio-ccw can use a completion mechanism to delay the
>    free to css driver;
> 
> The second trick is not a real burden to other drivers because they
> all require a @release for private cleanup anyway. Later once the ccw
> mess is fixed a simple cleanup can be done by moving free from @release
> to vfio core.
> 
> Thanks
> Kevin
> 
> [1] https://listman.redhat.com/archives/libvir-list/2022-August/233482.html
> [2] https://lore.kernel.org/all/0ee29bd6583f17f0ee4ec0769fa50e8ea6703623.camel@linux.ibm.com/
> 
> v4:
>  - fix use-after-free issue in @release of mtty/mbochs and also change
>    mdpy/ap to free vfio-device as the last thing in @release (Alex)
>  - revert the rename from 'vfio' to 'vfio_group' in procfs (Alex) 

Applied to vfio next branch for v6.1.  Thanks,

Alex

