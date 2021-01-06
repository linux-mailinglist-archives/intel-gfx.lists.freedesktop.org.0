Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ED1F2EB6B3
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Jan 2021 01:07:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 631F66E1BB;
	Wed,  6 Jan 2021 00:07:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DADC76E1BB
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Jan 2021 00:07:46 +0000 (UTC)
IronPort-SDR: 4Cyrp5wX/DAaFmfnxSc/ZwAee/3gUvNAlMykxwtqUn62Z5B2wDMjqDYfh1uDQTEJEFl9Tzb9kl
 ECOkcO8rpxGA==
X-IronPort-AV: E=McAfee;i="6000,8403,9855"; a="156392244"
X-IronPort-AV: E=Sophos;i="5.78,478,1599548400"; d="scan'208";a="156392244"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2021 16:07:46 -0800
IronPort-SDR: B92V7DgXnbtdUhQTJ5bQjZFad8dwA76q2THd5MknXiXlo0wPbGq+Oxbz+7wUC+LX8DtoYLwI1N
 Mouew+6Wy0RQ==
X-IronPort-AV: E=Sophos;i="5.78,478,1599548400"; d="scan'208";a="379071454"
Received: from smcguirk-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.252.2.195])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2021 16:07:44 -0800
Date: Wed, 6 Jan 2021 02:07:40 +0200
From: Andi Shyti <andi.shyti@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <X/T/THXWRdT6hs5N@intel.intel>
References: <20210104115145.24460-1-chris@chris-wilson.co.uk>
 <20210104115145.24460-6-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210104115145.24460-6-chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 6/6] drm/i915/gt: Remove timeslice
 suppression
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Chris,

On Mon, Jan 04, 2021 at 11:51:45AM +0000, Chris Wilson wrote:
> In the next patch, we remove the strict priority system and continuously

next patch?

[...]

> -static bool
> -timeslice_expired(const struct intel_engine_execlists *el,
> -		  const struct i915_request *rq)
> +static bool needs_timeslice(const struct intel_engine_cs *engine,
> +			    const struct i915_request *rq)
>  {
> -	return timer_expired(&el->timer) || timeslice_yield(el, rq);
> -}
> +	if (!intel_engine_has_timeslices(engine))
> +		return false;
>  
> -static int
> -switch_prio(struct intel_engine_cs *engine, const struct i915_request *rq)
> -{
> -	if (list_is_last(&rq->sched.link, &engine->active.requests))
> -		return engine->execlists.queue_priority_hint;
> +	/* If not currently active, or about to switch, wait for next event */
> +	if (!rq || __i915_request_is_complete(rq))
> +		return false;
>  
> -	return rq_prio(list_next_entry(rq, sched.link));
> -}
> +	/* We do not need to start the timeslice until after the ACK */
> +	if (READ_ONCE(engine->execlists.pending[0]))
> +		return false;
>  
> -static inline unsigned long
> -timeslice(const struct intel_engine_cs *engine)
> -{
> -	return READ_ONCE(engine->props.timeslice_duration_ms);
> +	/* If ELSP[1] is occupied, always check to see if worth slicing */
> +	if (!list_is_last_rcu(&rq->sched.link, &engine->active.requests))
> +		return true;
> +
> +	/* Otherwise, ELSP[0] is by itself, but may be waiting in the queue */
> +	if (!RB_EMPTY_ROOT(&engine->execlists.queue.rb_root))
> +		return true;
> +
> +	return !RB_EMPTY_ROOT(&engine->execlists.virtual.rb_root);
>  }

the above diff is quite unreadable and besides the patch does not
apply on the latest drm-tip.

In order to have a better review, I would suggest either one of
the following:

 - use a different diff algorithm for generating the patch
 - you rebase everything on top of the latest drm-tip so that I
   can apply and check
 - give me a branch so that I can checkout that branch and review
   it from there.

Thanks,
Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
