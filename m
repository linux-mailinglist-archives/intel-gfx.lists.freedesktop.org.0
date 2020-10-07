Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A571285BED
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Oct 2020 11:32:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 853AA6E284;
	Wed,  7 Oct 2020 09:32:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FFAD6E284
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Oct 2020 09:32:13 +0000 (UTC)
IronPort-SDR: OtYge+4sRM8g5ZOysbCp2od9VAJ/73D88QfdJC00DUWootyxi0akSgYhqTAHWzEN0TfIKOKxIl
 Hb//U5vjZNlA==
X-IronPort-AV: E=McAfee;i="6000,8403,9766"; a="249586267"
X-IronPort-AV: E=Sophos;i="5.77,346,1596524400"; d="scan'208";a="249586267"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2020 02:32:11 -0700
IronPort-SDR: //chKk75FBbrv9JgQ0Yrx62RqhP/2zdYIG+w0xCcRCSC6HNq1hgkd8LhpuZflL6Lc0thaXqiH7
 ZkYzpPOPId3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,346,1596524400"; d="scan'208";a="316129397"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga006.jf.intel.com with ESMTP; 07 Oct 2020 02:32:09 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id ACD845C2038; Wed,  7 Oct 2020 12:30:42 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20201002083425.4605-1-chris@chris-wilson.co.uk>
References: <20201002083425.4605-1-chris@chris-wilson.co.uk>
Date: Wed, 07 Oct 2020 12:30:42 +0300
Message-ID: <87tuv6cri5.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Undo forced context restores
 after trivial preemptions
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
Cc: stable@vger.kernel.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> We may try to preempt the currently executing request, only to find that
> after unravelling all the dependencies that the original executing
> context is still the earliest in the topological sort and re-submitted
> back to HW (if we do detect some change in the ELSP that requires
> re-submission). However, due to the way we check for wrap-around during
> the unravelling, we mark any context that has been submitted just once
> (i.e. with the rq->wa_tail set, but the ring->tail earlier) as
> potentially wrapping and requiring a forced restore on resubmission.
> This was expected to be not a problem, as it was anticipated that most
> unwinding for preemption would result in a context switch and the few
> that did not would be lost in the noise. It did not take long for
> someone to find one particular workload where the cost of those extra
> context restores was measurable.
>
> However, since we know the wa_tail is of fixed size, and we know that a
> request must be larger than the wa_tail itself, we can safely maintain
> the check for request wrapping and check against a slightly future point
> in the ring that includes an expected wa_tail. (That is if the
> ring->tail is already set to rq->wa_tail, including another 8 bytes in
> the check does not invalidate the incremental wrap detection.)
>
> Fixes: 8ab3a3812aa9 ("drm/i915/gt: Incrementally check for rewinding")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> Cc: Bruce Chang <yu.bruce.chang@intel.com>
> Cc: Ramalingam C <ramalingam.c@intel.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: <stable@vger.kernel.org> # v5.4+
> ---
>  drivers/gpu/drm/i915/gt/intel_lrc.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index 287537089c77..3aa05588834b 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -1140,9 +1140,8 @@ __unwind_incomplete_requests(struct intel_engine_cs *engine)
>  
>  			/* Check in case we rollback so far we wrap [size/2] */

My parser hickups. /* Make sure rollback doesn't make hardware think we
went forward */

But for this patch,
Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

>  			if (intel_ring_direction(rq->ring,
> -						 intel_ring_wrap(rq->ring,
> -								 rq->tail),
> -						 rq->ring->tail) > 0)
> +						 rq->tail,
> +						 rq->ring->tail + 8) > 0)
>  				rq->context->lrc.desc |= CTX_DESC_FORCE_RESTORE;
>  
>  			active = rq;
> -- 
> 2.20.1
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
