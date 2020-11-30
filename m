Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BDF412C876C
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Nov 2020 16:09:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54B3089DFE;
	Mon, 30 Nov 2020 15:09:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A088189DFE
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Nov 2020 15:09:18 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23163891-1500050 for multiple; Mon, 30 Nov 2020 15:09:13 +0000
MIME-Version: 1.0
In-Reply-To: <20201130141809.65330-2-matthew.auld@intel.com>
References: <20201130141809.65330-1-matthew.auld@intel.com>
 <20201130141809.65330-2-matthew.auld@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
Date: Mon, 30 Nov 2020 15:09:14 +0000
Message-ID: <160674895454.9850.12464330282565452964@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/selftest: assert we get 2M GTT
 pages
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Matthew Auld (2020-11-30 14:18:09)
> For the LMEM case if we have suitable alignment and 2M physical pages we
> should always get 2M GTT pages within the constraints of the hugepages
> selftest. If we don't then something might be wrong in our construction
> of the backing pages.
> 
> References: 330b7d33056b ("drm/i915/region: fix order when adding blocks")
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> ---
>  .../gpu/drm/i915/gem/selftests/huge_pages.c   | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
> index 0bf93947d89d..cecbd2012e9d 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
> @@ -368,6 +368,25 @@ static int igt_check_page_sizes(struct i915_vma *vma)
>                 err = -EINVAL;
>         }
>  
> +       /*
> +        * The dma-api is like a box of chocolates when it comes to the
> +        * alignment of dma addresses, however for LMEM we have total control
> +        * and so can guarantee alignment, likewise when we allocate our blocks
> +        * they should appear in descending order, and if we know that we align
> +        * to the largest page size for the GTT address, we should be able to
> +        * assert that if we see 2M physical pages then we should also get 2M
> +        * GTT pages. If we don't then something might be wrong in our
> +        * construction of the backing pages.

2MiB alignment in the GTT is required to use huge pages on the GPU.

My wish would be to somehow extract that info from vm, but if you can
include the reason why we are interested in maintaining the 2MiB
alignment, then
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
