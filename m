Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C8111D74DC
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2020 12:13:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 088C16E136;
	Mon, 18 May 2020 10:13:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 688656E136
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 May 2020 10:13:14 +0000 (UTC)
IronPort-SDR: qN6ydlvQamAn0jjbfG2PByYaCMTor2nXhIhLaEylrxgSU4fi9jlxOsAIESnFz4Qed3APx5ospZ
 z3vtjrL4OeNg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2020 03:13:13 -0700
IronPort-SDR: PZFs5Ek7pWgReii2I6U07JaqmZxDBdkzNRzPLhhaIx9Y00Di1cFARGWnKL0KGWtJkbUhIG68J5
 Lg1gBXvezmcA==
X-IronPort-AV: E=Sophos;i="5.73,406,1583222400"; d="scan'208";a="439159731"
Received: from coheno1-mobl.ger.corp.intel.com (HELO [10.214.214.153])
 ([10.214.214.153])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2020 03:13:12 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200518081440.17948-1-chris@chris-wilson.co.uk>
 <20200518081440.17948-3-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <69d01d84-2614-1590-91a7-2c1c0a1083be@linux.intel.com>
Date: Mon, 18 May 2020 11:13:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200518081440.17948-3-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 3/8] drm/i915/gt: Reuse the tasklet priority
 for virtual as their siblings
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
> In order to keep all the tasklets in the same execution lists and so
> fifo ordered, be consistent and use the same priority for all.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   drivers/gpu/drm/i915/gt/intel_lrc.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index e597325d04f1..80885ba87db5 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -1403,7 +1403,7 @@ static void kick_siblings(struct i915_request *rq, struct intel_context *ce)
>   	struct i915_request *next = READ_ONCE(ve->request);
>   
>   	if (next && next->execution_mask & ~rq->execution_mask)
> -		tasklet_schedule(&ve->base.execlists.tasklet);
> +		tasklet_hi_schedule(&ve->base.execlists.tasklet);
>   }
>   
>   static inline void
> @@ -5560,7 +5560,7 @@ static void virtual_submit_request(struct i915_request *rq)
>   		GEM_BUG_ON(!list_empty(virtual_queue(ve)));
>   		list_move_tail(&rq->sched.link, virtual_queue(ve));
>   
> -		tasklet_schedule(&ve->base.execlists.tasklet);
> +		tasklet_hi_schedule(&ve->base.execlists.tasklet);
>   	}
>   
>   	spin_unlock_irqrestore(&ve->base.active.lock, flags);
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
