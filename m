Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F072E2A26FA
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Nov 2020 10:28:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5E746E44E;
	Mon,  2 Nov 2020 09:28:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com
 [IPv6:2607:f8b0:4864:20::343])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE9C66E44C
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Nov 2020 09:28:46 +0000 (UTC)
Received: by mail-ot1-x343.google.com with SMTP id y22so1512416oti.10
 for <intel-gfx@lists.freedesktop.org>; Mon, 02 Nov 2020 01:28:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=IbNuq3s1vVpD8H3QOsjV0sGqJ/Z7oSAbbkfkZvy1XHk=;
 b=ZwDmKsJx7x9H4A6oxnKV/0mfK5ZFxB3a1aM7tsS3KQVWBTroULG54b+/X/QAb8xkd8
 w60J0bsQvWMfAe1GP1j5aHGhevycwGs1eXOS5XmS9e1DzJwaERv34oRwd/zUc5NH25It
 evwbcfSzmlipcIbMmq2HHokuvcx7O5RLmy0O4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=IbNuq3s1vVpD8H3QOsjV0sGqJ/Z7oSAbbkfkZvy1XHk=;
 b=sb5SYrBE8W71yoQxFRc5CHYiCsOBjQscTLD007iGs7L56lzvTHlSZM5KryYX5Eri/T
 1XF4DXhFJkFQbcYp6r8+ZVByeX2euWKZqADXOUpWYXliTjJkUOBo/2nI3CKuSqGh9au1
 Gssa68eJmLAppfGXG5UuU2SN0yGy8KY6/9RGB1lMB+D9usEWpCBoyTFDpo5/XcXIOhWP
 3N+rIw/XjKtBwYMSodupN1G3R9LL2SEgRAlENOL2QTKdX6eWhnyvLOmJHtlTSG/UKyRL
 hfYfd2p1LXZpI8b4f/1PWusf5Z2ooBQWv9ky4KsTC4AoJrBtHhnVJgt6D/dC+VygmrYp
 BDiA==
X-Gm-Message-State: AOAM533b54J58vbiNcII7H/HjzouYSf0ALf2uDfXsURdlfWmXxCVaM9R
 ElHc+mOt4MrSkAigbBH0QkZ4EB84s6JYr0BMJhhmwA==
X-Google-Smtp-Source: ABdhPJw4HWb5RIkueETRBm8Fwwh31WuQZ8e/6YOS+9xABgykOarqawuOiAF2wFN7DrH/qvVU5QujD60r3ppsBeugVQ4=
X-Received: by 2002:a9d:6e81:: with SMTP id a1mr10863311otr.303.1604309326237; 
 Mon, 02 Nov 2020 01:28:46 -0800 (PST)
MIME-Version: 1.0
References: <20201102124327.2f82b2a7@canb.auug.org.au>
In-Reply-To: <20201102124327.2f82b2a7@canb.auug.org.au>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Mon, 2 Nov 2020 10:28:34 +0100
Message-ID: <CAKMK7uHopZfa1vJ2++OQC8z=GKdDcJ=9=sKWJAcSfguec2UgyA@mail.gmail.com>
To: Stephen Rothwell <sfr@canb.auug.org.au>,
 Christoph Hellwig <hch@infradead.org>
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
Cc: Joerg Roedel <jroedel@suse.de>, "Michael S. Tsirkin" <mst@redhat.com>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 DRI <dri-devel@lists.freedesktop.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Nov 2, 2020 at 2:43 AM Stephen Rothwell <sfr@canb.auug.org.au> wrote:
>
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

I think simplest if this lands through dma-api tree into current -rc
kernels. Or should we just put this into drm-misc-next since that's
where the problem shows up? Christoph, any preference from dma-api
side?
-Daniel

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



-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
