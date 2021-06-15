Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DC9B93A899D
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Jun 2021 21:36:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0289A6E15F;
	Tue, 15 Jun 2021 19:35:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC60D6E15F
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Jun 2021 19:35:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1623785756;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Lqcix6Bye8GfBWjf8v07rNQNvUDYKUaSMsD+NDsgZyo=;
 b=OXOjS/Dddc9kfdXvX8Je+IxGCeN1Z6L31HsXN4NZCH2vz/34tViJxY5+vqgJ8PYTfYh+/z
 9rm8Md0n8htuIwUYc0PTpWqo/tpkW57Hp+zmxRFKa/SL5r3dv1dikcRc2XNmghfAPDff5B
 JDFKDlQQhKEbs/qYUM1rSo14sBDqdpE=
Received: from mail-oo1-f72.google.com (mail-oo1-f72.google.com
 [209.85.161.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-198-JP26GhkEOmGfXqkjD_Ling-1; Tue, 15 Jun 2021 15:35:52 -0400
X-MC-Unique: JP26GhkEOmGfXqkjD_Ling-1
Received: by mail-oo1-f72.google.com with SMTP id
 r130-20020a4a37880000b029024987ad471cso87559oor.17
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Jun 2021 12:35:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=Lqcix6Bye8GfBWjf8v07rNQNvUDYKUaSMsD+NDsgZyo=;
 b=tSlSbGGgz4xbHLlC2piWry/TBcFsooGZ58OfwCuEYrKRjkdgR7aNum0DCGKQoPVjZt
 tUY+GyAHihXgfYorUE0+R61H1FkhUauXFIIh4+iMQywW+U8BrA7X6OEW/l1kZ/ZiDOLM
 SjILy1s0BhCv+/9Bxfi98gy4AP7k5FByX9eQUa2LSTSv+ZPDlMkSWq+XDoT+1dlAsUy2
 +6JWS0PJJENOml7UIO2iXCgP5o8Ce9/D/x4CXGqE5xLIDuLW1QeYpPOBZw0Q81U+kSVj
 y5Owqayrzaxr9JyDDnHDy8/VTg/cE2Bsbiu1Go5ZJ0om0T4fIH/JMjW3DwwCH7WB0z2n
 S4Fw==
X-Gm-Message-State: AOAM532lkS2OFOXcmgt/BktTxEURxA/w16zgnbISGVPJ4k2e4rF0XUzQ
 hF3LEavD8M16c/e6+MerRmPhism9OQvW6fX3H+8WxdWl47tlboZxIteL5Apjgkta5Fm9wEphi4q
 neIwEK8vUw2dudtsmzyao7LFx3pRz
X-Received: by 2002:a4a:98b0:: with SMTP id a45mr683021ooj.22.1623785751933;
 Tue, 15 Jun 2021 12:35:51 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxEy2LCOJugZ+XL95JhEOH9gPPqCgkIMQXc0Pb6WDjknNr5iRFNesGYK5OnEUNjOdehrK9BNQ==
X-Received: by 2002:a4a:98b0:: with SMTP id a45mr682990ooj.22.1623785751738;
 Tue, 15 Jun 2021 12:35:51 -0700 (PDT)
Received: from redhat.com ([198.99.80.109])
 by smtp.gmail.com with ESMTPSA id j3sm3894698oii.46.2021.06.15.12.35.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Jun 2021 12:35:51 -0700 (PDT)
Date: Tue, 15 Jun 2021 13:35:49 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <20210615133549.362e5a9e.alex.williamson@redhat.com>
In-Reply-To: <20210615133519.754763-1-hch@lst.de>
References: <20210615133519.754763-1-hch@lst.de>
Organization: Red Hat
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=alex.williamson@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] Allow mdev drivers to directly create the
 vfio_device (v3)
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
Cc: kvm@vger.kernel.org, linux-doc@vger.kernel.org,
 David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 Kirti Wankhede <kwankhede@nvidia.com>, linux-s390@vger.kernel.org,
 Jonathan Corbet <corbet@lwn.net>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Halil Pasic <pasic@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Jason Gunthorpe <jgg@nvidia.com>, intel-gfx@lists.freedesktop.org,
 Jason Herne <jjherne@linux.ibm.com>, Vasily Gorbik <gor@linux.ibm.com>,
 Heiko Carstens <hca@linux.ibm.com>, Tony Krowiak <akrowiak@linux.ibm.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Cornelia Huck <cohuck@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 15 Jun 2021 15:35:09 +0200
Christoph Hellwig <hch@lst.de> wrote:

> This is my alternative take on this series from Jason:
> 
> https://lore.kernel.org/dri-devel/87czsszi9i.fsf@redhat.com/T/
> 
> The mdev/vfio parts are exactly the same, but this solves the driver core
> changes for the direct probing without the in/out flag that Greg hated,
> which cause a little more work, but probably make the result better.
> 
> Original decription from Jason below:
> 
> The mdev bus's core part for managing the lifecycle of devices is mostly
> as one would expect for a driver core bus subsystem.
> 
> However instead of having a normal 'struct device_driver' and binding the
> actual mdev drivers through the standard driver core mechanisms it open
> codes this with the struct mdev_parent_ops and provides a single driver
> that shims between the VFIO core's struct vfio_device and the actual
> device driver.
> 
> Instead, allow mdev drivers implement an actual struct mdev_driver and
> directly call vfio_register_group_dev() in the probe() function for the
> mdev. Arrange to bind the created mdev_device to the mdev_driver that is
> provided by the end driver.
> 
> The actual execution flow doesn't change much, eg what was
> parent_ops->create is now device_driver->probe and it is called at almost
> the exact same time - except under the normal control of the driver core.
> 
> Ultimately converting all the drivers unlocks a fair number of additional
> VFIO simplifications and cleanups.

Looks like we need an update to
Documentation/driver-api/vfio-mediated-device.rst to go along with
this.

Also, if we're preserving compatibility with the "legacy"
mdev_parent_ops callbacks without deprecating them, does it really make
sense to convert every one of the sample drivers to this new direct
registration?  Thanks,

Alex

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
