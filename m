Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BED09192606
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2020 11:44:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 902466E7D9;
	Wed, 25 Mar 2020 10:44:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C68B26E7D9
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Mar 2020 10:43:59 +0000 (UTC)
IronPort-SDR: ssrXNDSeVvDWKRfhGMvbromGIV/c90jtBjMedaebQ5i9BkH6F+z27m4W7Bmev1SjLe7q6QBlT0
 3Z+54JTjSasQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2020 03:43:59 -0700
IronPort-SDR: sY45zrJCR0u2uRX/OQ6LHedoIMg65kXHDtEDGT9YAGr00NJ1SOACpEUEAtbl3o93K968Zhn9A/
 mRNeQId0cvXg==
X-IronPort-AV: E=Sophos;i="5.72,304,1580803200"; d="scan'208";a="420274014"
Received: from popernik-mobl.ger.corp.intel.com (HELO [10.252.39.239])
 ([10.252.39.239])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2020 03:43:58 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200325101358.12231-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <65307902-8163-24cc-0738-b11f3bd982c5@linux.intel.com>
Date: Wed, 25 Mar 2020 10:43:55 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200325101358.12231-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/execlists: Drop setting sibling
 priority hint on virtual engines
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


On 25/03/2020 10:13, Chris Wilson wrote:
> We set the priority hint on execlists to avoid executing the tasklet for
> when we know that there will be no change in execution order. However,
> as we set it from the virtual engine for all siblings, but only one
> physical engine may respond, we leave the hint set on the others
> stopping direct submission that could take place.
> 
> If we do not set the hint, we may attempt direct submission even if we
> don't expect to submit. If we set the hint, we may not do any submission
> until the tasklet is run (and sometimes we may park the engine before
> that has had a chance). Ergo there's only a minor ill-effect on mixed
> virtual/physical engine workloads where we may try and fail to do direct
> submission more often than required. (Pure virtual / engine workloads
> will have redundant tasklet execution suppressed as normal.)
> 
> Closes: https://gitlab.freedesktop.org/drm/intel/issues/1522
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_lrc.c | 4 +---
>   1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index 210f60e14ef4..f88d3b95c4e1 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -4985,10 +4985,8 @@ static void virtual_submission_tasklet(unsigned long data)
>   submit_engine:
>   		GEM_BUG_ON(RB_EMPTY_NODE(&node->rb));
>   		node->prio = prio;
> -		if (first && prio > sibling->execlists.queue_priority_hint) {
> -			sibling->execlists.queue_priority_hint = prio;
> +		if (first && prio > sibling->execlists.queue_priority_hint)
>   			tasklet_hi_schedule(&sibling->execlists.tasklet);
> -		}
>   
>   		spin_unlock(&sibling->active.lock);
>   	}
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

The queue_priority_hint scheme with virtual engine design is a bit 
problematic, since we have no way to unwind. And it's spreading it's 
tentacles all over the place. Oh well. Could we one day consider just 
peeking at the top of the tree(s)

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
