Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 291B43A81CE
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Jun 2021 16:06:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E7EA89363;
	Tue, 15 Jun 2021 14:06:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC4EF89BF1
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Jun 2021 14:06:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1623765979;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=JE2dgBTMtQppLdKX6wEsCIQ28gJrM1OUnMU/8ZeALkY=;
 b=J//74bpXDiPzKTESJRwiJjEZax/sYHr9TwUc2vBRiyn7AnzZTdjtoxUbsmuQ4Z5yqBgWxc
 N8p9LwVFXKnQCg9SeOacrhrY3FjbflXGfsErbLWfdrqLT+uDmP+Lphz+dvwH3sj5JFRk2D
 DDsg7QRhZzouqycYPBkooGDO32/fPbw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-302-cFV8b5FIOC-OMnA7y9F_4w-1; Tue, 15 Jun 2021 10:06:15 -0400
X-MC-Unique: cFV8b5FIOC-OMnA7y9F_4w-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 71108801B19;
 Tue, 15 Jun 2021 14:06:13 +0000 (UTC)
Received: from localhost (ovpn-113-156.ams2.redhat.com [10.36.113.156])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id D9C1B5D6AD;
 Tue, 15 Jun 2021 14:06:12 +0000 (UTC)
From: Cornelia Huck <cohuck@redhat.com>
To: Christoph Hellwig <hch@lst.de>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Jason Gunthorpe <jgg@nvidia.com>, Alex
 Williamson <alex.williamson@redhat.com>, Kirti Wankhede
 <kwankhede@nvidia.com>
In-Reply-To: <20210615133519.754763-8-hch@lst.de>
Organization: Red Hat GmbH
References: <20210615133519.754763-1-hch@lst.de>
 <20210615133519.754763-8-hch@lst.de>
User-Agent: Notmuch/0.32.1 (https://notmuchmail.org)
Date: Tue, 15 Jun 2021 16:06:11 +0200
Message-ID: <87wnqvw7cc.fsf@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Subject: Re: [Intel-gfx] [PATCH 07/10] vfio/mdev: Allow the mdev_parent_ops
 to specify the device driver to bind
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

On Tue, Jun 15 2021, Christoph Hellwig <hch@lst.de> wrote:

> From: Jason Gunthorpe <jgg@nvidia.com>
>
> This allows a mdev driver to opt out of using vfio_mdev.c, instead the
> driver will provide a 'struct mdev_driver' and register directly with the
> driver core.
>
> Much of mdev_parent_ops becomes unused in this mode:
> - create()/remove() are done via the mdev_driver probe()/remove()
> - mdev_attr_groups becomes mdev_driver driver.dev_groups
> - Wrapper function callbacks are replaced with the same ones from
>   struct vfio_device_ops
>
> Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  drivers/vfio/mdev/mdev_core.c   | 30 ++++++++++++++++++++++--------
>  drivers/vfio/mdev/mdev_driver.c | 10 ++++++++++
>  include/linux/mdev.h            |  2 ++
>  3 files changed, 34 insertions(+), 8 deletions(-)
>

Reviewed-by: Cornelia Huck <cohuck@redhat.com>

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
