Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E57156ADC7
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Jul 2022 23:37:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37F0212BBEE;
	Thu,  7 Jul 2022 21:37:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E1A712BAC3
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Jul 2022 21:37:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1657229840;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=xSEXwFPAyvrhENqvrLwIjRSY51Sdjq2lfUdnz+vUg/A=;
 b=M0QzzRVetuZa5CfrlWbXtG9PlULDbEtjNsUblJirO+UKIJE37iR+Tm48k5Sqm50wp1GWpG
 cHACwY5BjDC5eIpZ/wAWm+/290zYBVFIyuZdYOdUQd4LIQHo4+Jf8nUsllhHbg4vc6st2D
 QGX8qZ+GMFS9NCq/6DXfLkp0yQQNNBI=
Received: from mail-io1-f70.google.com (mail-io1-f70.google.com
 [209.85.166.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-175-HSdpsY34OjOUdsJpgPp6fA-1; Thu, 07 Jul 2022 17:37:19 -0400
X-MC-Unique: HSdpsY34OjOUdsJpgPp6fA-1
Received: by mail-io1-f70.google.com with SMTP id
 y22-20020a056602215600b00673b11a9cd5so10242995ioy.7
 for <intel-gfx@lists.freedesktop.org>; Thu, 07 Jul 2022 14:37:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=xSEXwFPAyvrhENqvrLwIjRSY51Sdjq2lfUdnz+vUg/A=;
 b=qzEIJikEel4VG7EfD6VrZ5Edia4pyBKrKBU8ZQRYsK5rfTlHvGva3V5Fvwu0+7ZzEs
 88iwJlpMHMF28A8+GO9fmGsl1p0JqII+7OnbNTbNBp7bw1/0MLR/SQXRRJeW0aeWCz9m
 Ju1KPRpllC+wi0NVdqotkY+I5ftfakwYJA55Reter1Qhh4mZsyCTLN3vOrHVNku7Fqc4
 mKS4Eo7zpOgMkkt0p2i1eR1iupAk/G5q1xsAnE+0C6JGl4qwg/XSxZLg8HNGLT8WgrWQ
 iJl2Y3dWYRSHfocW3CifLo9omeNsbj37vGMxeoL4c5u+i8a9gGhr8B0WqvHSo6lwHMrG
 Nf6Q==
X-Gm-Message-State: AJIora92zRQRCnEPH51Pggezk7Nnrkchc4bSI+Q4dNC/7Dwx9L8QaG32
 l/T6yH7MoFOQ0v2UtnrLKBeMGtbRliY76uZiWrDfROyEOkx13krjLzk/qMdDBSP68lyfNJaJHnD
 tcr3wnzY4k9zrr0WdhOuj7qF4F6W5
X-Received: by 2002:a05:6e02:928:b0:2dc:759:7817 with SMTP id
 o8-20020a056e02092800b002dc07597817mr113877ilt.84.1657229838429; 
 Thu, 07 Jul 2022 14:37:18 -0700 (PDT)
X-Google-Smtp-Source: AGRyM1s70GZAk3YrQZOFfNpy3nkoHR4IJbk/AIEya6UVHis8OCEYOJsN20yij7l5PEEyvprcYnTFbw==
X-Received: by 2002:a05:6e02:928:b0:2dc:759:7817 with SMTP id
 o8-20020a056e02092800b002dc07597817mr113848ilt.84.1657229838191; 
 Thu, 07 Jul 2022 14:37:18 -0700 (PDT)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 j62-20020a026341000000b0033ed7ef1b5csm5136571jac.41.2022.07.07.14.37.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Jul 2022 14:37:17 -0700 (PDT)
Date: Thu, 7 Jul 2022 15:37:16 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: Jason Gunthorpe <jgg@nvidia.com>
Message-ID: <20220707153716.70f755ab.alex.williamson@redhat.com>
In-Reply-To: <1-v3-7593f297c43f+56ce-vfio_unmap_notif_jgg@nvidia.com>
References: <0-v3-7593f297c43f+56ce-vfio_unmap_notif_jgg@nvidia.com>
 <1-v3-7593f297c43f+56ce-vfio_unmap_notif_jgg@nvidia.com>
Organization: Red Hat
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=alex.williamson@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v3 1/2] vfio: Replace the DMA unmapping
 notifier with a callback
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
Cc: kvm@vger.kernel.org, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, Vineeth Vijayan <vneethv@linux.ibm.com>,
 Alexander Gordeev <agordeev@linux.ibm.com>, Christoph Hellwig <hch@lst.de>,
 linux-s390@vger.kernel.org, Matthew Rosato <mjrosato@linux.ibm.com>,
 Halil Pasic <pasic@linux.ibm.com>,
 Christian Borntraeger <borntraeger@linux.ibm.com>,
 intel-gfx@lists.freedesktop.org, Tony Krowiak <akrowiak@linux.ibm.com>,
 Eric Farman <farman@linux.ibm.com>, Vasily Gorbik <gor@linux.ibm.com>,
 Heiko Carstens <hca@linux.ibm.com>,
 Harald Freudenberger <freude@linux.ibm.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-gvt-dev@lists.freedesktop.org,
 Jason Herne <jjherne@linux.ibm.com>, Cornelia Huck <cohuck@redhat.com>,
 Peter Oberparleiter <oberpar@linux.ibm.com>,
 Sven Schnelle <svens@linux.ibm.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon,  4 Jul 2022 21:59:03 -0300
Jason Gunthorpe <jgg@nvidia.com> wrote:
> diff --git a/drivers/s390/cio/vfio_ccw_ops.c b/drivers/s390/cio/vfio_ccw_ops.c
> index b49e2e9db2dc6f..09e0ce7b72324c 100644
> --- a/drivers/s390/cio/vfio_ccw_ops.c
> +++ b/drivers/s390/cio/vfio_ccw_ops.c
> @@ -44,31 +44,19 @@ static int vfio_ccw_mdev_reset(struct vfio_ccw_private *private)
>  	return ret;
>  }
>  
> -static int vfio_ccw_mdev_notifier(struct notifier_block *nb,
> -				  unsigned long action,
> -				  void *data)
> +static void vfio_ccw_dma_unmap(struct vfio_device *vdev, u64 iova, u64 length)
>  {
>  	struct vfio_ccw_private *private =
> -		container_of(nb, struct vfio_ccw_private, nb);
> -
> -	/*
> -	 * Vendor drivers MUST unpin pages in response to an
> -	 * invalidation.
> -	 */
> -	if (action == VFIO_IOMMU_NOTIFY_DMA_UNMAP) {
> -		struct vfio_iommu_type1_dma_unmap *unmap = data;
> -
> -		if (!cp_iova_pinned(&private->cp, unmap->iova))
> -			return NOTIFY_OK;
> +		container_of(vdev, struct vfio_ccw_private, vdev);
>  
> -		if (vfio_ccw_mdev_reset(private))
> -			return NOTIFY_BAD;
> +	/* Drivers MUST unpin pages in response to an invalidation. */
> +	if (!cp_iova_pinned(&private->cp, iova))
> +		return;
>  
> -		cp_free(&private->cp);
> -		return NOTIFY_OK;
> -	}
> +	if (vfio_ccw_mdev_reset(private))
> +		return;
>  
> -	return NOTIFY_DONE;
> +	cp_free(&private->cp);
>  }


The cp_free() call is gone here with [1], so I think this function now
just ends with:

	...
	vfio_ccw_mdev_reset(private);
}

There are also minor contextual differences elsewhere from that series,
so a quick respin to record the changes on list would be appreciated.

However the above kind of highlights that NOTIFY_BAD that silently gets
dropped here.  I realize we weren't testing the return value of the
notifier call chain and really we didn't intend that notifiers could
return a failure here, but does this warrant some logging or suggest
future work to allow a device to go offline here?  Thanks.

Alex

[1]https://lore.kernel.org/all/20220707135737.720765-1-farman@linux.ibm.com/

