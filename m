Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 08FD61F2106
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jun 2020 22:46:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7684B89D84;
	Mon,  8 Jun 2020 20:46:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A22489D84
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jun 2020 20:46:28 +0000 (UTC)
IronPort-SDR: tVo/cQ9gxMXZ+TsZtgXWEh44wnKSXcAdMkAja20TmteGb81icyjhD4j3nApDtW3Gat0wOspsas
 Gk11In+doUaw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2020 13:46:27 -0700
IronPort-SDR: zqeJu/fmcPFMo0BNWg/SHhEsf7VO6IgP4WxJU5TmxpjzNbpBvsqeaYHch6HAR+tCagaS/e9YsA
 Px+whYpsaofA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,489,1583222400"; d="scan'208";a="295599010"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga004.fm.intel.com with ESMTP; 08 Jun 2020 13:46:27 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 6BC505C2C42; Mon,  8 Jun 2020 23:43:53 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200607222108.14401-1-chris@chris-wilson.co.uk>
References: <20200607222108.14401-1-chris@chris-wilson.co.uk>
Date: Mon, 08 Jun 2020 23:43:53 +0300
Message-ID: <87ftb59tkm.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 01/28] drm/i915: Adjust the sentinel assert
 to match implementation
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

Chris Wilson <chris@chris-wilson.co.uk> writes:

> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>
> Sentinels are supposed to be last reqeusts in the elsp queue, not the
> only one, so adjust the assert accordingly.

s/reqeusts/requests

>
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_lrc.c | 14 +++-----------
>  1 file changed, 3 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index d55a5e0466e5..db8a170b0e5c 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -1635,9 +1635,9 @@ assert_pending_valid(const struct intel_engine_execlists *execlists,
>  		ccid = ce->lrc.ccid;
>  
>  		/*
> -		 * Sentinels are supposed to be lonely so they flush the
> -		 * current exection off the HW. Check that they are the
> -		 * only request in the pending submission.
> +		 * Sentinels are supposed to be the last request so they flush
> +		 * the current exection off the HW. Check that they are the only

s/exection/exeqution

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> +		 * request in the pending submission.
>  		 */
>  		if (sentinel) {
>  			GEM_TRACE_ERR("%s: context:%llx after sentinel in pending[%zd]\n",
> @@ -1646,15 +1646,7 @@ assert_pending_valid(const struct intel_engine_execlists *execlists,
>  				      port - execlists->pending);
>  			return false;
>  		}
> -
>  		sentinel = i915_request_has_sentinel(rq);
> -		if (sentinel && port != execlists->pending) {
> -			GEM_TRACE_ERR("%s: sentinel context:%llx not in prime position[%zd]\n",
> -				      engine->name,
> -				      ce->timeline->fence_context,
> -				      port - execlists->pending);
> -			return false;
> -		}
>  
>  		/* Hold tightly onto the lock to prevent concurrent retires! */
>  		if (!spin_trylock_irqsave(&rq->lock, flags))
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
