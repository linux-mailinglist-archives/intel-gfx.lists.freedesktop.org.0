Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 83C123A817B
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Jun 2021 15:54:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41AA889993;
	Tue, 15 Jun 2021 13:54:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0311B89993
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Jun 2021 13:54:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1623765249;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=LTPum8fRwPooExg8+HCTnewiRqyT0ffgzpim9aaEyrQ=;
 b=fT32omds+YZOlFfKGtjZcNxCc+0gyIMbfCtRnxE6OInXNgeL8cnUThmelI3zlZw5K7zmFO
 Murv3QcimuV7zFCsOingvrU5PLollI9KPiowZzK0voNQBqFOltkF31SIg0hZahwT5x5jdv
 oL48Xe91qEaitWkrC5sqgPm4H9FeHko=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-150-C13r6FEsM8GkbdBbTqx5OQ-1; Tue, 15 Jun 2021 09:54:05 -0400
X-MC-Unique: C13r6FEsM8GkbdBbTqx5OQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 36B141084F40;
 Tue, 15 Jun 2021 13:54:03 +0000 (UTC)
Received: from localhost (ovpn-113-156.ams2.redhat.com [10.36.113.156])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id D17571037F22;
 Tue, 15 Jun 2021 13:53:47 +0000 (UTC)
From: Cornelia Huck <cohuck@redhat.com>
To: Christoph Hellwig <hch@lst.de>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Jason Gunthorpe <jgg@nvidia.com>, Alex
 Williamson <alex.williamson@redhat.com>, Kirti Wankhede
 <kwankhede@nvidia.com>
In-Reply-To: <20210615133519.754763-3-hch@lst.de>
Organization: Red Hat GmbH
References: <20210615133519.754763-1-hch@lst.de>
 <20210615133519.754763-3-hch@lst.de>
User-Agent: Notmuch/0.32.1 (https://notmuchmail.org)
Date: Tue, 15 Jun 2021 15:53:46 +0200
Message-ID: <8735tjxmhh.fsf@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Subject: Re: [Intel-gfx] [PATCH 02/10] driver core: Better distinguish probe
 errors in really_probe
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

> really_probe tries to special case errors from ->probe, but due to all
> other initialization added to the function over time now a lot of
> internal errors hit that code path as well.  Untangle that by adding
> a new probe_err local variable and apply the special casing only to
> that.
>
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  drivers/base/dd.c | 72 +++++++++++++++++++++++++++--------------------
>  1 file changed, 42 insertions(+), 30 deletions(-)
>
> diff --git a/drivers/base/dd.c b/drivers/base/dd.c
> index 7477d3322b3a..fd83817240e6 100644
> --- a/drivers/base/dd.c
> +++ b/drivers/base/dd.c
> @@ -513,12 +513,44 @@ static ssize_t state_synced_show(struct device *dev,
>  }
>  static DEVICE_ATTR_RO(state_synced);
>  
> +
> +static int call_driver_probe(struct device *dev, struct device_driver *drv)
> +{
> +	int ret = 0;
> +
> +	if (dev->bus->probe)
> +		ret = dev->bus->probe(dev);
> +	else if (drv->probe)
> +		ret = drv->probe(dev);
> +
> +	switch (ret) {
> +	case 0:
> +		break;
> +	case -EPROBE_DEFER:
> +		/* Driver requested deferred probing */
> +		dev_dbg(dev, "Driver %s requests probe deferral\n", drv->name);
> +		break;
> +	case -ENODEV:
> +	case -ENXIO:
> +		pr_debug("%s: probe of %s rejects match %d\n",
> +			 drv->name, dev_name(dev), ret);
> +		break;
> +	default:
> +		/* driver matched but the probe failed */
> +		pr_warn("%s: probe of %s failed with error %d\n",
> +			drv->name, dev_name(dev), ret);

Convert these two pr_* to dev_* when touching the code anyway?

> +		break;
> +	}
> +
> +	return ret;
> +}

(...)

Reviewed-by: Cornelia Huck <cohuck@redhat.com>

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
