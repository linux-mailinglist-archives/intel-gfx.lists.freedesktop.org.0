Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DF5F3A7C70
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Jun 2021 12:50:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F14D6E243;
	Tue, 15 Jun 2021 10:50:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E8266E237
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Jun 2021 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1623754232;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=mLF4q3AkEmDnxo6JIRFf4IxZaTi01coL7EsmW9r10Dk=;
 b=GVf0xEp2DsasGQN6jgsc0mxwFyNWm6wp2URpDLQMUgtQsNQY0UIyDKuYAlVa2SV05RvKPP
 C60npLEx8DBX/bLY2X/IUr3rQei+b0h3Vw5q/R6W4eHRG+HZeHjp1zTsBpwonen60QjuzI
 A2Ivy7lVn/ntSu2CwiEZmebAnWN0KYs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-372-P0TuRZ8cNMaZ7i7XWNuMHw-1; Tue, 15 Jun 2021 06:50:29 -0400
X-MC-Unique: P0TuRZ8cNMaZ7i7XWNuMHw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3317F803649;
 Tue, 15 Jun 2021 10:50:27 +0000 (UTC)
Received: from localhost (ovpn-113-156.ams2.redhat.com [10.36.113.156])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id DD08260CEF;
 Tue, 15 Jun 2021 10:50:21 +0000 (UTC)
From: Cornelia Huck <cohuck@redhat.com>
To: Christoph Hellwig <hch@lst.de>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Jason Gunthorpe <jgg@nvidia.com>, Alex
 Williamson <alex.williamson@redhat.com>, Kirti Wankhede
 <kwankhede@nvidia.com>
In-Reply-To: <20210614150846.4111871-7-hch@lst.de>
Organization: Red Hat GmbH
References: <20210614150846.4111871-1-hch@lst.de>
 <20210614150846.4111871-7-hch@lst.de>
User-Agent: Notmuch/0.32.1 (https://notmuchmail.org)
Date: Tue, 15 Jun 2021 12:50:20 +0200
Message-ID: <878s3bxuz7.fsf@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Subject: Re: [Intel-gfx] [PATCH 06/10] vfio/mdev: Remove
 CONFIG_VFIO_MDEV_DEVICE
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
Cc: Tony Krowiak <akrowiak@linux.ibm.com>, Jason Herne <jjherne@linux.ibm.com>,
 kvm@vger.kernel.org, Vasily Gorbik <gor@linux.ibm.com>,
 Jonathan Corbet <corbet@lwn.net>, David Airlie <airlied@linux.ie>,
 linux-s390@vger.kernel.org, Heiko Carstens <hca@linux.ibm.com>,
 linux-doc@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Halil Pasic <pasic@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jun 14 2021, Christoph Hellwig <hch@lst.de> wrote:

> From: Jason Gunthorpe <jgg@nvidia.com>
>
> For some reason the vfio_mdev shim mdev_driver has its own module and
> kconfig. As the next patch requires access to it from mdev.ko merge the
> two modules together and remove VFIO_MDEV_DEVICE.
>
> A later patch deletes this driver entirely.
>
> Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  Documentation/s390/vfio-ap.rst   |  1 -
>  arch/s390/Kconfig                |  2 +-
>  drivers/gpu/drm/i915/Kconfig     |  2 +-
>  drivers/vfio/mdev/Kconfig        |  7 -------
>  drivers/vfio/mdev/Makefile       |  3 +--
>  drivers/vfio/mdev/mdev_core.c    | 16 ++++++++++++++--
>  drivers/vfio/mdev/mdev_private.h |  2 ++
>  drivers/vfio/mdev/vfio_mdev.c    | 24 +-----------------------
>  samples/Kconfig                  |  6 +++---
>  9 files changed, 23 insertions(+), 40 deletions(-)

Reviewed-by: Cornelia Huck <cohuck@redhat.com>

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
