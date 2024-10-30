Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A6BF9B66DA
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2024 16:03:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 249FB10E7B7;
	Wed, 30 Oct 2024 15:03:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RxVc9zGK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CDDB10E7B7
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Oct 2024 15:03:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730300583; x=1761836583;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=kQcIwxmYh1Mw9VwQcUO9YZZ9uEC5S8Q1wwGXoT0sLrU=;
 b=RxVc9zGKcPA6Ok603FVzbUISp3A5eskX2LRyfc/1o9V12K1yOOq8Ib5M
 mbQrtxBzk4DR9M9LHBDJHBKgzhy+USTMk28WV4/WNGcK5S2ORHVouXVmf
 mzI6VfiyAXVbD+MkQHHi7FMgLMSNLIllODLAyXb2RqLf/MgmvJkJabUcK
 hJ72beNHKOH+9M3slHMZp3YOdNClhw86UQkQLebVJ+o3/hEVriJnvD2H3
 InIRUwcwQkCTOgJCYK9ebf/2ihW2k08kxbbD+AFjtkYTKr3Hnfw1TxQE0
 RMupbTzUB5cXYvPrv6nytE224k7L98nzQPE1IAcy+bRCGu77SsIgyAhEH g==;
X-CSE-ConnectionGUID: g5xDGVFGTrGM0PQAIcPovA==
X-CSE-MsgGUID: 05eWAWJLT5yGrp8CAEDWNw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="30156951"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="30156951"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 08:03:03 -0700
X-CSE-ConnectionGUID: hR5J6B1iQsKEaXbDIm6Trg==
X-CSE-MsgGUID: M9Grio+IRp+PTtUooFC45g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,245,1725346800"; d="scan'208";a="119792422"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.147])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 08:03:00 -0700
Date: Wed, 30 Oct 2024 16:02:55 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: "Karas, Krzysztof" <krzysztof.karas@intel.com>
Cc: intel-gfx@lists.freedesktop.org,
	Andi Shyti <andi.shyti@linux.intel.com>
Subject: Re: [PATCH v4] drm/i915: ensure segment offset never exceeds allowed
 max
Message-ID: <ZyJKn7hbuxXqrH35@ashyti-mobl2.lan>
References: <kjsmgowrerhkk2d7qxsbccosjb55usqhfmxse6lesxfqwxtvhu@twuaxfazvq2a>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <kjsmgowrerhkk2d7qxsbccosjb55usqhfmxse6lesxfqwxtvhu@twuaxfazvq2a>
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

Hi Krzysztof,

First of all I need to apologize for not being responsive on your
patches. We had offline reviews and some discussions though, but
they were not reported in the v1-v3 reviews. Next time, the
reviews need to have more visibility for the community.

On Mon, Oct 28, 2024 at 04:00:48PM +0000, Karas, Krzysztof wrote:
> Commit 255fc1703e42 ("drm/i915/gem: Calculate object page offset for
> partial memory mapping") introduced a new offset that is compared to
> sg_dma_len(r.sgt.sgp) in remap_io_sg() function. However, later in
> remap_sg() the offset (which at that point resides in r->sgt.curr)
> is compared to r->sgt.max. Scatter-gather list's max relies on one

what we compare to max is not the offset, but the current sg
item, right? Or did I miss something?

> of two values (see i915_scatterlist.h):
>  a) sg_dma_len(s.sgp) when `dma` is true,
>  b) s.sgp->length otherwise.
> This suggests that in cases where `dma` is false, we should use
> s.sgp->length to determine the max value instead of sg_dma_len(),
> which is used regardless in remap_io_sg() (use_dma(iobase) might return
> false there).
> 
> This patch uses r.sgt.max to check if offset is within allowed bounds,
> because that max value is already set according to the `dma` value.

are you trying to fix any issues here? If so, which one?

> v3:
>  - instead of checking if r.sgt.curr would exceed allowed max, changed
> the value in the while loop to be aligned with `dma` value.
> 
> v4:
>  - remove unnecessary parent relation
> 
> Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_mm.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_mm.c b/drivers/gpu/drm/i915/i915_mm.c
> index f5c97a620962..76e2801619f0 100644
> --- a/drivers/gpu/drm/i915/i915_mm.c
> +++ b/drivers/gpu/drm/i915/i915_mm.c
> @@ -143,8 +143,8 @@ int remap_io_sg(struct vm_area_struct *vma,
>  	/* We rely on prevalidation of the io-mapping to skip track_pfn(). */
>  	GEM_BUG_ON((vma->vm_flags & EXPECTED_FLAGS) != EXPECTED_FLAGS);
>  
> -	while (offset >= sg_dma_len(r.sgt.sgp) >> PAGE_SHIFT) {
> -		offset -= sg_dma_len(r.sgt.sgp) >> PAGE_SHIFT;
> +	while (offset >= r.sgt.max >> PAGE_SHIFT) {
> +		offset -= r.sgt.max >> PAGE_SHIFT;

To me looks right sg_dma_len(), why max?

Thanks a lot for your patch,
Andi

>  		r.sgt = __sgt_iter(__sg_next(r.sgt.sgp), use_dma(iobase));
>  		if (!r.sgt.sgp)
>  			return -EINVAL;
> -- 
> 2.34.1
