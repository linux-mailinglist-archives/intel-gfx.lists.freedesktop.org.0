Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 17787212866
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jul 2020 17:46:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E2A86EB12;
	Thu,  2 Jul 2020 15:46:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 133D66EB22
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jul 2020 15:46:36 +0000 (UTC)
IronPort-SDR: qStfRiKcxnGot0+yLSSJZxaBhn+vLTPPBjmQJoNo5CDD0G60xCGSXLu1qupxCqSyPJ8xoI/gCa
 6/WP5bcgUVAw==
X-IronPort-AV: E=McAfee;i="6000,8403,9670"; a="211981887"
X-IronPort-AV: E=Sophos;i="5.75,304,1589266800"; d="scan'208";a="211981887"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2020 08:46:35 -0700
IronPort-SDR: q75BL5c7rQZwL4OL/TdykbUe7HWkXOIJm0wF1cMZUwljwv7gb3GqnCfDbVTMMQ7D40fBPHS3zl
 OSyEiPf8rk3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,304,1589266800"; d="scan'208";a="322133917"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga007.jf.intel.com with ESMTP; 02 Jul 2020 08:46:34 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 5DBC75C0D84; Thu,  2 Jul 2020 18:46:22 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200701084053.6086-4-chris@chris-wilson.co.uk>
References: <20200701084053.6086-1-chris@chris-wilson.co.uk>
 <20200701084053.6086-4-chris@chris-wilson.co.uk>
Date: Thu, 02 Jul 2020 18:46:22 +0300
Message-ID: <87a70h538x.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 04/33] drm/i915/gt: Check for a completed
 last request once
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

> Pull the repeated check for the last active request being completed to a
> single spot, when deciding whether or not execlist preemption is
> required.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/gt/intel_lrc.c | 14 ++++----------
>  1 file changed, 4 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index 4eb397b0e14d..7bdbfac26d7b 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -2137,12 +2137,11 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
>  	 */
>  
>  	if ((last = *active)) {
> -		if (need_preempt(engine, last, rb)) {
> -			if (i915_request_completed(last)) {
> -				tasklet_hi_schedule(&execlists->tasklet);
> -				return;
> -			}
> +		if (i915_request_completed(last) &&
> +		    !list_is_last(&last->sched.link, &engine->active.requests))

You return if it is not last? Also the hi schedule is gone.
-Mika


> +			return;
>  
> +		if (need_preempt(engine, last, rb)) {
>  			ENGINE_TRACE(engine,
>  				     "preempting last=%llx:%lld, prio=%d, hint=%d\n",
>  				     last->fence.context,
> @@ -2170,11 +2169,6 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
>  			last = NULL;
>  		} else if (need_timeslice(engine, last, rb) &&
>  			   timeslice_expired(execlists, last)) {
> -			if (i915_request_completed(last)) {
> -				tasklet_hi_schedule(&execlists->tasklet);
> -				return;
> -			}
> -
>  			ENGINE_TRACE(engine,
>  				     "expired last=%llx:%lld, prio=%d, hint=%d, yield?=%s\n",
>  				     last->fence.context,
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
