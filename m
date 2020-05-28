Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 150451E6D16
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2020 23:04:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79CB86E5D3;
	Thu, 28 May 2020 21:04:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BA0F6E5D3
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 May 2020 21:04:21 +0000 (UTC)
IronPort-SDR: Zrs4EdtsIbpPjUEjabUJp0ZqcE9YdiVWroKmCV42LJET2W4fZCv7fqqGL12DojghYeaPwek2B3
 dVJ9FyuG0EQw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2020 14:04:20 -0700
IronPort-SDR: kqaMU6Lm/cn0W3ei5l/v0vzgvLtv1wza2OOUwSOkQElO7JbeJKAlCGvC7PEuGl3x3pszR1aimF
 ksxOoxlMa20g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,446,1583222400"; d="scan'208";a="443120506"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga005.jf.intel.com with ESMTP; 28 May 2020 14:04:19 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id EFBD35C2C4C; Fri, 29 May 2020 00:01:54 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200528205727.20309-1-chris@chris-wilson.co.uk>
References: <20200528205727.20309-1-chris@chris-wilson.co.uk>
Date: Fri, 29 May 2020 00:01:54 +0300
Message-ID: <87wo4vixj1.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Start timeslice on partial
 submission
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

> We may choose to only submit ELSP[0], even though we have sufficient
> requests to fill the whole ELSP. Normally, we only start timeslicing if
> we fill more than one port, but in this case we need to start
> timeslicing for the queue that we choose not to submit.

If this is last in a line, it makes sense to make sure
that we get woken up.

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_lrc.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index 69fff36ec0cc..6fc0966b75ff 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -2358,8 +2358,10 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
>  				if (last->context == rq->context)
>  					goto done;
>  
> -				if (i915_request_has_sentinel(last))
> +				if (i915_request_has_sentinel(last)) {
> +					start_timeslice(engine, rq_prio(rq));
>  					goto done;
> +				}
>  
>  				/*
>  				 * If GVT overrides us we only ever submit
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
