Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 284D41D752C
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2020 12:29:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B85E6E135;
	Mon, 18 May 2020 10:29:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91DB46E135
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 May 2020 10:29:48 +0000 (UTC)
IronPort-SDR: G7HOBJNiOI4ZfZa/q7SAu9e+apk2Lb4uKpn+usXHsZvUBOm7o/auloo0VjwQGuuziu+FqCRsi3
 Xlug5f3IQ5DQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2020 03:29:46 -0700
IronPort-SDR: DjbbaFbKOHV0jggXHZacWknyRoNJEghHAHTAuJL6AlqJzidbm+gpkbWFLfMBCpjCQUZpdRzgtV
 ATaZO2DdIu/g==
X-IronPort-AV: E=Sophos;i="5.73,406,1583222400"; d="scan'208";a="439166136"
Received: from coheno1-mobl.ger.corp.intel.com (HELO [10.214.214.153])
 ([10.214.214.153])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2020 03:29:46 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200518081440.17948-1-chris@chris-wilson.co.uk>
 <20200518081440.17948-4-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <dc22c47f-a1cd-1040-b9c0-ee95ed594dfe@linux.intel.com>
Date: Mon, 18 May 2020 11:29:44 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200518081440.17948-4-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 4/8] drm/i915/gt: Kick virtual siblings on
 timeslice out
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 18/05/2020 09:14, Chris Wilson wrote:
> If we decide to timeslice out the current virtual request, we will
> unsubmit it while it is still busy (ve->context.inflight == sibling[0]).
> If the virtual tasklet and then the other sibling tasklets run before we
> completely schedule out the active virtual request for the preemption,
> those other tasklets will see that the virtul request is still inflight
> on sibling[0] and leave it be. Therefore when we finally schedule-out
> the virtual request and if we see that we have passed it back to the
> virtual engine, reschedule the virtual tasklet so that it may be
> resubmitted on any of the siblings.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   drivers/gpu/drm/i915/gt/intel_lrc.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index 80885ba87db5..05486e801a63 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -1402,7 +1402,7 @@ static void kick_siblings(struct i915_request *rq, struct intel_context *ce)
>   	struct virtual_engine *ve = container_of(ce, typeof(*ve), context);
>   	struct i915_request *next = READ_ONCE(ve->request);
>   
> -	if (next && next->execution_mask & ~rq->execution_mask)
> +	if (next == rq || (next && next->execution_mask & ~rq->execution_mask))
>   		tasklet_hi_schedule(&ve->base.execlists.tasklet);
>   }
>   
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
