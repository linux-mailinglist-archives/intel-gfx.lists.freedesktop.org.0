Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AA7AE2A2817
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Nov 2020 11:19:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40E2F6E48C;
	Mon,  2 Nov 2020 10:19:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0077D6E48E
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Nov 2020 10:19:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1604312356;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=ai/gGgjTQcmU+eCPscVzw0UhOXfAfCGYsrcIbvjwE7U=;
 b=ho8W0B8gmsEWCnZn3vSujahxTFNB8KkEqgmgl0QTwZ+B5rsUD54R/J3c0RDecxGffW8nv3
 51zGLEimoF1RIUUJzCDNMGkZP7n58nmYp2SFxzBmQBkxk4CCdd/cKcuYf1oOvSKteBe0db
 aGa/7Q+2OnV+AM3I0xNE45cQrzFlLHo=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-36-mxCP-8dMNUiUlpHOQiIBkQ-1; Mon, 02 Nov 2020 05:19:14 -0500
X-MC-Unique: mxCP-8dMNUiUlpHOQiIBkQ-1
Received: by mail-wr1-f71.google.com with SMTP id v5so6291449wrr.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 02 Nov 2020 02:19:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ai/gGgjTQcmU+eCPscVzw0UhOXfAfCGYsrcIbvjwE7U=;
 b=TXFEckHIBXBZDbCJJPd1GvyapZsGXUTT/L5Js7W8708HhjXl7Eu8SsZpLJ3VaHcZqw
 IW5qQSN/6rqQue4wV/wuMP0Nh06AzxykghyptXx9UFKR2xGYp7MRH/uHz9VszMrkij5Q
 e1huuqbR1A7Dc5vOBOmqNH72F0G4pcmtQR8tbd/DtDC/Yf7jREkUsqN6Kwo+lIBdDZqQ
 TZA82pUT5qnd+jTQrSQivLxLetBFwOhp5sPhdnUFa7zV3cvOURVx7aCCKfNIVMNl0XQV
 MFCAxyG/04a/wF9wcaIMRJarS/XWC8j0RSvvNSLyKnV4jvwOTcJM/txVFZRtgZd0stUw
 ZCAw==
X-Gm-Message-State: AOAM533dRKN+OKqxgm9E6rxkKzX+3RJV7IYZpzWBz19idt4PBo7RWlg1
 yN3XfCDKANWfg6D/BWMl2UCpBrmFKFjg23UU6JMh7d1DE3hjDupicwu7G7AzgEk6uL1Au5QzgaI
 eIoSdV3fhuSYFyYeqAz0So2/EyziX
X-Received: by 2002:a1c:9d94:: with SMTP id g142mr17543681wme.66.1604312350425; 
 Mon, 02 Nov 2020 02:19:10 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzMZrcZUQ6qnAtGtdhm7af/rwNXetvdJKh2zEGv4XNpm4y+mMw4DGIIvdD/ljXcKDwgaNDKtw==
X-Received: by 2002:a1c:9d94:: with SMTP id g142mr17543670wme.66.1604312350279; 
 Mon, 02 Nov 2020 02:19:10 -0800 (PST)
Received: from redhat.com (bzq-79-181-134-187.red.bezeqint.net.
 [79.181.134.187])
 by smtp.gmail.com with ESMTPSA id z5sm21822717wrw.87.2020.11.02.02.19.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Nov 2020 02:19:09 -0800 (PST)
Date: Mon, 2 Nov 2020 05:19:06 -0500
From: "Michael S. Tsirkin" <mst@redhat.com>
To: Stephen Rothwell <sfr@canb.auug.org.au>
Message-ID: <20201102051822-mutt-send-email-mst@kernel.org>
References: <20201102124327.2f82b2a7@canb.auug.org.au>
MIME-Version: 1.0
In-Reply-To: <20201102124327.2f82b2a7@canb.auug.org.au>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=mst@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Subject: Re: [Intel-gfx] linux-next: build failure after merge of the
 drm-misc tree
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
Cc: Joerg Roedel <jroedel@suse.de>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 DRI <dri-devel@lists.freedesktop.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Nov 02, 2020 at 12:43:27PM +1100, Stephen Rothwell wrote:
> Hi all,
> 
> After merging the drm-misc tree, today's linux-next build (arm
> multi_v7_defconfig) failed like this:
> 
> In file included from drivers/gpu/drm/nouveau/nouveau_ttm.c:26:
> include/linux/swiotlb.h: In function 'swiotlb_max_mapping_size':
> include/linux/swiotlb.h:99:9: error: 'SIZE_MAX' undeclared (first use in this function)
>    99 |  return SIZE_MAX;
>       |         ^~~~~~~~
> include/linux/swiotlb.h:7:1: note: 'SIZE_MAX' is defined in header '<stdint.h>'; did you forget to '#include <stdint.h>'?
>     6 | #include <linux/init.h>
>   +++ |+#include <stdint.h>
>     7 | #include <linux/types.h>
> include/linux/swiotlb.h:99:9: note: each undeclared identifier is reported only once for each function it appears in
>    99 |  return SIZE_MAX;
>       |         ^~~~~~~~
> 
> Caused by commit
> 
>   abe420bfae52 ("swiotlb: Introduce swiotlb_max_mapping_size()")
> 
> but only exposed by commit
> 
>   4dbafbd30aef ("drm/nouveu: fix swiotlb include")
> 
> I applied the following fix for today:
> 
> From: Stephen Rothwell <sfr@canb.auug.org.au>
> Date: Mon, 2 Nov 2020 12:34:57 +1100
> Subject: [PATCH] swiotlb: using SIZE_MAX needs limits.h included
> 
> Fixes: abe420bfae52 ("swiotlb: Introduce swiotlb_max_mapping_size()")
> Signed-off-by: Stephen Rothwell <sfr@canb.auug.org.au>

Acked-by: Michael S. Tsirkin <mst@redhat.com>

I guess it makes sense to pick this up for this release directly.
I'll merge this unless there are any objections.

> ---
>  include/linux/swiotlb.h | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/include/linux/swiotlb.h b/include/linux/swiotlb.h
> index 513913ff7486..ed9de7855d3b 100644
> --- a/include/linux/swiotlb.h
> +++ b/include/linux/swiotlb.h
> @@ -5,6 +5,9 @@
>  #include <linux/dma-direction.h>
>  #include <linux/init.h>
>  #include <linux/types.h>
> +#ifndef CONFIG_SWIOTLB
> +#include <linux/limits.h>
> +#endif
>  
>  struct device;
>  struct page;
> -- 
> 2.28.0
> 
> -- 
> Cheers,
> Stephen Rothwell


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
