Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6697E285BF7
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Oct 2020 11:42:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFC1E6E03C;
	Wed,  7 Oct 2020 09:42:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 420CF6E03C
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Oct 2020 09:42:28 +0000 (UTC)
IronPort-SDR: 8FbK0wAcpmVp0qKIeYqyEhEXzRk1sHoc6wZzZUfIoFoomTbdsaUvGXX/sonswGv8yg5fNDsmmc
 tGs4NVsSt04A==
X-IronPort-AV: E=McAfee;i="6000,8403,9766"; a="144797003"
X-IronPort-AV: E=Sophos;i="5.77,346,1596524400"; d="scan'208";a="144797003"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2020 02:42:27 -0700
IronPort-SDR: rceFJheUWXjn1skmSGbmnHCJXa06jGjfE8LX7QsUwd3nMh7dh73gqUQbsyTJhqqF3bSribXrTA
 odgOiTYMiYuw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,346,1596524400"; d="scan'208";a="344208897"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga008.jf.intel.com with ESMTP; 07 Oct 2020 02:42:26 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 4DB645C2038; Wed,  7 Oct 2020 12:40:59 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20201007090947.19950-1-chris@chris-wilson.co.uk>
References: <20201007090947.19950-1-chris@chris-wilson.co.uk>
Date: Wed, 07 Oct 2020 12:40:59 +0300
Message-ID: <87r1qacr10.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Perform all asynchronous
 waits prior to marking payload start
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> The initial breadcrumb marks the transition from context wait and setup
> into the request payload. We use the marker to determine if the request
> is merely waiting to begin, or is inside the payload and hung.
> Forgetting to include a breadcrumb before the user payload would mean we
> do not reset the guilty user request, and conversely if the initial
> breadcrumb is too early we blame the user for a problem elsewhere.

Agreed.

>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_client_blt.c | 18 +++++++++---------
>  1 file changed, 9 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_client_blt.c b/drivers/gpu/drm/i915/gem/i915_gem_client_blt.c
> index 272cf3ea68d5..44821d94544f 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_client_blt.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_client_blt.c
> @@ -202,12 +202,6 @@ static void clear_pages_worker(struct work_struct *work)
>  	if (unlikely(err))
>  		goto out_request;
>  
> -	if (w->ce->engine->emit_init_breadcrumb) {
> -		err = w->ce->engine->emit_init_breadcrumb(rq);
> -		if (unlikely(err))
> -			goto out_request;
> -	}
> -
>  	/*
>  	 * w->dma is already exported via (vma|obj)->resv we need only
>  	 * keep track of the GPU activity within this vma/request, and
> @@ -217,9 +211,15 @@ static void clear_pages_worker(struct work_struct *work)
>  	if (err)
>  		goto out_request;
>  
> -	err = w->ce->engine->emit_bb_start(rq,
> -					   batch->node.start, batch->node.size,
> -					   0);

We don't have to do any extra steps to counter

__i915_vma_move_to_active(vma, rq);

in error path?

-Mika

> +	if (rq->engine->emit_init_breadcrumb) {
> +		err = rq->engine->emit_init_breadcrumb(rq);
> +		if (unlikely(err))
> +			goto out_request;
> +	}
> +
> +	err = rq->engine->emit_bb_start(rq,
> +					batch->node.start, batch->node.size,
> +					0);
>  out_request:
>  	if (unlikely(err)) {
>  		i915_request_set_error_once(rq, err);
> -- 
> 2.20.1
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
