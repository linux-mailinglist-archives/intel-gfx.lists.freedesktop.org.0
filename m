Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CA0B1EFBD6
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jun 2020 16:49:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 934D96E926;
	Fri,  5 Jun 2020 14:49:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F5906E926
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Jun 2020 14:49:56 +0000 (UTC)
IronPort-SDR: sNA4omhDngwmaX9BeKc5xPTz34M424zuKIeqiCK9p2A2k8z1gSMJr5DQXNnN6g9qrRhHRzGpX6
 Zaqr3bE9BuGQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2020 07:49:55 -0700
IronPort-SDR: Uc7lp3On0k1KBJaQq0tZDE8CS/8j+6Z67oEUncrRs33+bvbfTkb3Qi0vD3DmfBeFExQczEjT6R
 NFisxNNTIGhQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,476,1583222400"; d="scan'208";a="259201737"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga008.fm.intel.com with ESMTP; 05 Jun 2020 07:49:55 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 44F605C2C59; Fri,  5 Jun 2020 17:47:24 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200605122334.2798-1-chris@chris-wilson.co.uk>
References: <20200605122334.2798-1-chris@chris-wilson.co.uk>
Date: Fri, 05 Jun 2020 17:47:24 +0300
Message-ID: <87zh9ha7sz.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 01/10] drm/i915/gt: Set timeslicing priority
 from queue
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

> If we only submit the first port, leaving the second empty yet have
> ready requests pending in the queue, use that to set the timeslicing
> priority (i.e. the priority at which we will decided to enabling

s/decided/decide

> timeslicing and evict the currently active context if the queue is of
> equal priority after its quantum expired).
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_lrc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index 33b7173b7195..92c3368ffcbd 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -1966,7 +1966,7 @@ static int
>  switch_prio(struct intel_engine_cs *engine, const struct i915_request *rq)
>  {
>  	if (list_is_last(&rq->sched.link, &engine->active.requests))
> -		return INT_MIN;
> +		return engine->execlists.queue_priority_hint;
>  
>  	return rq_prio(list_next_entry(rq, sched.link));
>  }
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
