Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BBAA43CD46C
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Jul 2021 14:12:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E15156E11F;
	Mon, 19 Jul 2021 12:11:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A2016E120
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Jul 2021 12:11:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1626696716;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=G1Xy0AbFqsZfGDz+B87vNsKwwBJawGt2nxYjtNqQM/w=;
 b=alyaFATM3+pMezAEGcDiSvYDbatr40FQN2Hol+LvFTGqu2BaUAoyMBWQaO6ncVBEeB6Wz9
 nJo3uGxlgGl0OLvx419pMMZAmkIYrIYTwC+Hj1P6z9QOwX6Q5Vvq9rBJ+dZf+qPsaMfAGq
 uv5DuHTgPZ8ew6hg46Od+mzWaiKFNxE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-234-veFfpL9MN0G9o4CHFvx0YA-1; Mon, 19 Jul 2021 08:11:52 -0400
X-MC-Unique: veFfpL9MN0G9o4CHFvx0YA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 007B3100CCC2;
 Mon, 19 Jul 2021 12:11:49 +0000 (UTC)
Received: from localhost (ovpn-112-158.ams2.redhat.com [10.36.112.158])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 4229318F0A;
 Mon, 19 Jul 2021 12:11:40 +0000 (UTC)
From: Cornelia Huck <cohuck@redhat.com>
To: Jason Gunthorpe <jgg@nvidia.com>, David Airlie <airlied@linux.ie>, Tony
 Krowiak <akrowiak@linux.ibm.com>, Alex Williamson
 <alex.williamson@redhat.com>, Christian Borntraeger
 <borntraeger@de.ibm.com>, Jonathan Corbet <corbet@lwn.net>, Daniel Vetter
 <daniel@ffwll.ch>, Diana Craciun <diana.craciun@oss.nxp.com>,
 dri-devel@lists.freedesktop.org, Eric Auger <eric.auger@redhat.com>, Eric
 Farman <farman@linux.ibm.com>, Harald Freudenberger
 <freude@linux.ibm.com>, Vasily Gorbik <gor@linux.ibm.com>, Heiko Carstens
 <hca@linux.ibm.com>, intel-gfx@lists.freedesktop.org,
 intel-gvt-dev@lists.freedesktop.org, Jani Nikula
 <jani.nikula@linux.intel.com>, Jason Herne <jjherne@linux.ibm.com>, Joonas
 Lahtinen <joonas.lahtinen@linux.intel.com>, kvm@vger.kernel.org, Kirti
 Wankhede <kwankhede@nvidia.com>, linux-doc@vger.kernel.org,
 linux-s390@vger.kernel.org, Matthew Rosato <mjrosato@linux.ibm.com>, Peter
 Oberparleiter <oberpar@linux.ibm.com>, Halil Pasic <pasic@linux.ibm.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Vineeth Vijayan
 <vneethv@linux.ibm.com>, Zhenyu Wang <zhenyuw@linux.intel.com>, Zhi Wang
 <zhi.a.wang@intel.com>
In-Reply-To: <2-v1-eaf3ccbba33c+1add0-vfio_reflck_jgg@nvidia.com>
Organization: Red Hat GmbH
References: <2-v1-eaf3ccbba33c+1add0-vfio_reflck_jgg@nvidia.com>
User-Agent: Notmuch/0.32.1 (https://notmuchmail.org)
Date: Mon, 19 Jul 2021 14:11:38 +0200
Message-ID: <8735sabj0l.fsf@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Subject: Re: [Intel-gfx] [PATCH 02/13] vfio: Introduce a
 vfio_uninit_group_dev() API call
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
Cc: Max Gurtovoy <mgurtovoy@nvidia.com>, Yishai Hadas <yishaih@nvidia.com>,
 Leon Romanovsky <leonro@nvidia.com>, "Raj, Ashok" <ashok.raj@intel.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jul 14 2021, Jason Gunthorpe <jgg@nvidia.com> wrote:

> From: Max Gurtovoy <mgurtovoy@nvidia.com>
>
> This pairs with vfio_init_group_dev() and allows undoing any state that is
> stored in the vfio_device unrelated to registration. Add appropriately
> placed calls to all the drivers.
>
> The following patch will use this to add pre-registration state for the
> device set.
>
> Signed-off-by: Max Gurtovoy <mgurtovoy@nvidia.com>
> Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>
> ---
>  Documentation/driver-api/vfio.rst            |  4 ++-
>  drivers/vfio/fsl-mc/vfio_fsl_mc.c            |  6 +++--
>  drivers/vfio/mdev/vfio_mdev.c                | 13 +++++++---
>  drivers/vfio/pci/vfio_pci.c                  |  6 +++--
>  drivers/vfio/platform/vfio_platform_common.c |  7 +++--
>  drivers/vfio/vfio.c                          |  5 ++++
>  include/linux/vfio.h                         |  1 +
>  samples/vfio-mdev/mbochs.c                   |  2 ++
>  samples/vfio-mdev/mdpy.c                     | 25 ++++++++++--------
>  samples/vfio-mdev/mtty.c                     | 27 ++++++++++++--------
>  10 files changed, 64 insertions(+), 32 deletions(-)

(...)

> diff --git a/samples/vfio-mdev/mbochs.c b/samples/vfio-mdev/mbochs.c
> index e81b875b4d87b4..cf264d0bf11053 100644
> --- a/samples/vfio-mdev/mbochs.c
> +++ b/samples/vfio-mdev/mbochs.c
> @@ -558,6 +558,7 @@ static int mbochs_probe(struct mdev_device *mdev)
>  	return 0;
>  
>  err_mem:
> +	vfio_uninit_group_dev(&mdev_state->vdev);
>  	kfree(mdev_state->vconfig);
>  	kfree(mdev_state);
>  	return ret;
> @@ -571,6 +572,7 @@ static void mbochs_remove(struct mdev_device *mdev)
>  	vfio_unregister_group_dev(&mdev_state->vdev);
>  	kfree(mdev_state->pages);
>  	kfree(mdev_state->vconfig);
> +	vfio_uninit_group_dev(&mdev_state->vdev);

Does the location of the uninit vs the kfree matter? Even if not, it
might be good to keep it consistent.

>  	kfree(mdev_state);
>  }
>  

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
