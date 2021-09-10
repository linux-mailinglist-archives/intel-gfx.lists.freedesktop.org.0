Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EF564406F1B
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Sep 2021 18:10:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1A196EA28;
	Fri, 10 Sep 2021 16:09:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CF3E6EA28
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Sep 2021 16:09:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1631290196;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=6/69qBPEq+ZxoLUCx7D3iUMKDE0eou/SmM/DmrEsT78=;
 b=FN005Z4iU0lqZChXTlZ+78Ze9k/Sqaf9Oc4bzTV28KKla6lMOy1qrkGIAaSotlWG7KeZtN
 oh14wFh9gU6cZcLbioHR0uYj4zEK2qIri4Zepu4SF9T2X6Jg+KToEgdpb04S3JYVmq224U
 MPdh0awidgOGAAtHMviaQATtG/mXwN4=
Received: from mail-io1-f71.google.com (mail-io1-f71.google.com
 [209.85.166.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-127-677DoFkyNqigtjOtdylyTA-1; Fri, 10 Sep 2021 12:09:55 -0400
X-MC-Unique: 677DoFkyNqigtjOtdylyTA-1
Received: by mail-io1-f71.google.com with SMTP id
 o128-20020a6bbe86000000b005bd06eaeca6so4096655iof.22
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Sep 2021 09:09:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=6/69qBPEq+ZxoLUCx7D3iUMKDE0eou/SmM/DmrEsT78=;
 b=GwcIj6XiiSMVcCNz9eaHoU1axFD0tAVIgtHzGzlqbPZ9hkOA3yHOXiNXxDzQeP5Fsy
 UUZ9OQeXPaKct/0IPEuPz7Phw9ePecT9IZ2/niawOLHeewqThYDB0MNybuNJbrJU7b01
 zxgXNV6+NXq7LGuS+TfYpjRw/nZ8sdHIvswrvrzW3LMirpDbo50F2ZJnPwzfoKvaTYOx
 SkhxkPbwJQYgn7a2m7bzYnwBHZR9V2llVTP9+3sGFsfjM6YXU7ar6IjgWxLEGXqKwMHo
 j/CRKP53Yq9kNk9kF1lAJkifvrnLBTxrTJLklYwS9e1CNniibeMVc3NAw4bDO23Uzrd3
 juBQ==
X-Gm-Message-State: AOAM5326VVhR8YuKpvT+0VMc+jpu7lZ/gIy3lAIzjRH0ef8cZ421D66L
 1yAixGdCDHVQ0TeY8PmTn4KbO5yBnbpG6G8owJ4G5kkJ43PuYi78h2yGU9d5OOAcVzidYyYUqw9
 FkIfXqqFMslaj8HJtJJNOYyPpOVqT
X-Received: by 2002:a05:6e02:8f2:: with SMTP id
 n18mr6862655ilt.256.1631290194683; 
 Fri, 10 Sep 2021 09:09:54 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxP8Y1TihJai/O/xPIO5JmfEsEgfV81tQvv38D8IJQRDSK+KLhAXgtQ59aQINI+2fQswrVxaA==
X-Received: by 2002:a05:6e02:8f2:: with SMTP id
 n18mr6862610ilt.256.1631290194398; 
 Fri, 10 Sep 2021 09:09:54 -0700 (PDT)
Received: from redhat.com (c-73-14-100-188.hsd1.co.comcast.net.
 [73.14.100.188])
 by smtp.gmail.com with ESMTPSA id y10sm2555019ilv.35.2021.09.10.09.09.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Sep 2021 09:09:54 -0700 (PDT)
Date: Fri, 10 Sep 2021 10:09:51 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: Jason Gunthorpe <jgg@nvidia.com>
Cc: Christoph Hellwig <hch@infradead.org>, David Airlie <airlied@linux.ie>,
 Tony Krowiak <akrowiak@linux.ibm.com>, Christian Borntraeger
 <borntraeger@de.ibm.com>, Cornelia Huck <cohuck@redhat.com>, Daniel Vetter
 <daniel@ffwll.ch>, dri-devel@lists.freedesktop.org, Eric Farman
 <farman@linux.ibm.com>, Harald Freudenberger <freude@linux.ibm.com>, Vasily
 Gorbik <gor@linux.ibm.com>, Heiko Carstens <hca@linux.ibm.com>,
 intel-gfx@lists.freedesktop.org, intel-gvt-dev@lists.freedesktop.org, Jani
 Nikula <jani.nikula@linux.intel.com>, Jason Herne <jjherne@linux.ibm.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, kvm@vger.kernel.org,
 Kirti Wankhede <kwankhede@nvidia.com>, linux-s390@vger.kernel.org, Matthew
 Rosato <mjrosato@linux.ibm.com>, Peter Oberparleiter
 <oberpar@linux.ibm.com>, Halil Pasic <pasic@linux.ibm.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>, Vineeth Vijayan <vneethv@linux.ibm.com>, Zhenyu
 Wang <zhenyuw@linux.intel.com>, Zhi Wang <zhi.a.wang@intel.com>, Christoph
 Hellwig <hch@lst.de>
Message-ID: <20210910100951.4da06602.alex.williamson@redhat.com>
In-Reply-To: <20210910133850.GT2505917@nvidia.com>
References: <0-v2-7d3a384024cf+2060-ccw_mdev_jgg@nvidia.com>
 <5-v2-7d3a384024cf+2060-ccw_mdev_jgg@nvidia.com>
 <YTtLRmiXq+QtJ+la@infradead.org>
 <20210910133850.GT2505917@nvidia.com>
Organization: Red Hat
X-Mailer: Claws Mail 3.18.0 (GTK+ 2.24.33; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=alex.williamson@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2 5/9] vfio/mdev: Consolidate all the
 device_api sysfs into the core code
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 10 Sep 2021 10:38:50 -0300
Jason Gunthorpe <jgg@nvidia.com> wrote:

> On Fri, Sep 10, 2021 at 01:10:46PM +0100, Christoph Hellwig wrote:
> > On Thu, Sep 09, 2021 at 04:38:45PM -0300, Jason Gunthorpe wrote:  
> > > Every driver just emits a static string, simply feed it through the ops
> > > and provide a standard sysfs show function.  
> > 
> > Looks sensible.  But can you make the attribute optional and add a
> > comment marking it deprecated?  Because it really is completely useless.
> > We don't version userspace APIs, userspae has to discover new features
> > individually by e.g. finding new sysfs files or just trying new ioctls.  
> 
> To be honest I have no idea what side effects that would have..
> 
> device code search tells me libvirt reads it and stuffs it into some
> XML
> 
> Something called mdevctl touches it, feeds it into some JSON and
> other stuff..
> 
> qemu has some VFIO_DEVICE_API_* constants but it is all dead code
> 
> I agree it shouldn't have been there in the first place
> 
> Cornelia? Alex? Any thoughts?

It's not a version, it's a means for userspace to determine the basic
API for an mdev device without needing to go through the process of
creating a container, adding the group, setting an IOMMU type, opening
the device before being able to call VFIO_DEVICE_GET_INFO to determine
the API.  For example, it wouldn't make sense for libvirt to attach a
vfio-ccw device to a PCIe root port in a VM.  It's a means to say this
mdev device is a vfio-pci or that mdev device is a vfio-ccw.  If it were
optional, then management tools would have no basic idea how to attach
the device to a VM without gaining access to the device themselves.
Thanks,

Alex

