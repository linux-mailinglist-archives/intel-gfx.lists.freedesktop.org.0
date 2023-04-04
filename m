Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A50ED6D7040
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Apr 2023 00:45:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F93510E7D8;
	Tue,  4 Apr 2023 22:45:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 958D110E7DA
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Apr 2023 22:45:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1680648316;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=vqCHmmroLr/ysooa2PnqjjEGm/oSk+1xFWZwtedU+d8=;
 b=J0BUKRIJRhyIjVicMGY4RHm3CJfhZUfblzwgOSC2YoO2zxNtHty2B5jYsjtH199wmWcakd
 zySL4cEpFSsw7WoYhCxVoBpIPovBBCmUSS7PiT2iHoCvVZpw2/RpvbYvoPPAltRHpQcgfj
 n/KB0b/2c7QXlymQ1AB11HYz/3hoU2A=
Received: from mail-io1-f72.google.com (mail-io1-f72.google.com
 [209.85.166.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-557-f9stRhkxNDGecQYqvwPu0g-1; Tue, 04 Apr 2023 18:45:15 -0400
X-MC-Unique: f9stRhkxNDGecQYqvwPu0g-1
Received: by mail-io1-f72.google.com with SMTP id
 i2-20020a5d9e42000000b0074cfcc4ed07so21698276ioi.22
 for <intel-gfx@lists.freedesktop.org>; Tue, 04 Apr 2023 15:45:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680648314;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=vqCHmmroLr/ysooa2PnqjjEGm/oSk+1xFWZwtedU+d8=;
 b=gcJ6wEOQzB+DmQeU8HtG+bCwE9dBVvYMtWkvPsqJ+yjm6OoORUFlH/TnJV9gpNsRVU
 WyOMqlmiPi8xS3Ye7ZeWvjgw8fEAGcoriJHRVvvV9AYf5ZNaa2yIWUZhAuJk9RrNUz0M
 AKZCiDxxnxAfrlFz0LPf6QIwmGNbAXbFcH+4M3iaNpW2bA/iapka4RaCxGI07oaNDK3y
 D3IO0dHU4sD5XD2crqQKJkKgnET/BErmjmC3Bz8M2MEZblXTwgOpblItHtUhlbHlkaJF
 iQsrGB+znMZUtGn7rLWGDvtGSbyZXeUUWfv0sXt1kJT2CvsuSum8zQ5GdYo/qvA2dy0K
 eA2w==
X-Gm-Message-State: AAQBX9eHQINogn21rJm15kZbje2itF5uRGiXlEHWr7qxWi3dV68CAbTT
 GJFB8EGrOVuof9ySrefGt9ag17Ua6WvwI0CQPUPXQvJ5KR1pd3ulwip/b5W7PER9x97Dnf4ioZo
 afQE+iax0uoen7T7l9osM9l2ZeTyf
X-Received: by 2002:a5d:9284:0:b0:75e:7db3:f515 with SMTP id
 s4-20020a5d9284000000b0075e7db3f515mr4647278iom.19.1680648314761; 
 Tue, 04 Apr 2023 15:45:14 -0700 (PDT)
X-Google-Smtp-Source: AKy350btE39tUqyxr8lCIfc8BBFYrDXLBwPQ03v/gOEC6MT6SW8i/qlQoIFkp32c7zyxF7EqZWRxzA==
X-Received: by 2002:a5d:9284:0:b0:75e:7db3:f515 with SMTP id
 s4-20020a5d9284000000b0075e7db3f515mr4647266iom.19.1680648314517; 
 Tue, 04 Apr 2023 15:45:14 -0700 (PDT)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 f4-20020a02a104000000b0040b4c29010fsm1367898jag.140.2023.04.04.15.45.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 Apr 2023 15:45:14 -0700 (PDT)
Date: Tue, 4 Apr 2023 16:45:12 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: Yi Liu <yi.l.liu@intel.com>
Message-ID: <20230404164512.37bca62e.alex.williamson@redhat.com>
In-Reply-To: <20230401151833.124749-17-yi.l.liu@intel.com>
References: <20230401151833.124749-1-yi.l.liu@intel.com>
 <20230401151833.124749-17-yi.l.liu@intel.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.35; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v9 16/25] iommufd/device: Add
 iommufd_access_detach() API
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
Cc: mjrosato@linux.ibm.com, jasowang@redhat.com, xudong.hao@intel.com,
 peterx@redhat.com, terrence.xu@intel.com, chao.p.peng@linux.intel.com,
 linux-s390@vger.kernel.org, kvm@vger.kernel.org, lulu@redhat.com,
 yanting.jiang@intel.com, joro@8bytes.org, nicolinc@nvidia.com, jgg@nvidia.com,
 yan.y.zhao@intel.com, intel-gfx@lists.freedesktop.org, eric.auger@redhat.com,
 intel-gvt-dev@lists.freedesktop.org, yi.y.sun@linux.intel.com,
 cohuck@redhat.com, shameerali.kolothum.thodi@huawei.com,
 suravee.suthikulpanit@amd.com, robin.murphy@arm.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sat,  1 Apr 2023 08:18:24 -0700
Yi Liu <yi.l.liu@intel.com> wrote:

> From: Nicolin Chen <nicolinc@nvidia.com>
> 
> Previously, the detach routine is only done by the destroy(). And it was
> called by vfio_iommufd_emulated_unbind() when the device runs close(), so
> all the mappings in iopt were cleaned in that setup, when the call trace
> reaches this detach() routine.
> 
> Now, there's a need of a detach uAPI, meaning that it does not only need
> a new iommufd_access_detach() API, but also requires access->ops->unmap()
> call as a cleanup. So add one.
> 
> However, leaving that unprotected can introduce some potential of a race
> condition during the pin_/unpin_pages() call, where access->ioas->iopt is
> getting referenced. So, add an ioas_lock to protect the context of iopt
> referencings.
> 
> Also, to allow the iommufd_access_unpin_pages() callback to happen via
> this unmap() call, add an ioas_unpin pointer, so the unpin routine won't
> be affected by the "access->ioas = NULL" trick.
> 
> Reviewed-by: Kevin Tian <kevin.tian@intel.com>
> Tested-by: Terrence Xu <terrence.xu@intel.com>
> Tested-by: Yanting Jiang <yanting.jiang@intel.com>
> Signed-off-by: Nicolin Chen <nicolinc@nvidia.com>
> Signed-off-by: Yi Liu <yi.l.liu@intel.com>
> ---
>  drivers/iommu/iommufd/device.c          | 76 +++++++++++++++++++++++--
>  drivers/iommu/iommufd/iommufd_private.h |  2 +
>  include/linux/iommufd.h                 |  1 +
>  3 files changed, 74 insertions(+), 5 deletions(-)

Does this need to go in via iommufd first?  There seems to be quite a
bit of churn in iommufd/device.c vs the vfio_mdev_ops branch (ie. it
doesn't apply). Thanks,

Alex

