Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EC1B305F8E
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jan 2021 16:28:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C2FD6E838;
	Wed, 27 Jan 2021 15:28:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E014D6E838
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jan 2021 15:28:04 +0000 (UTC)
IronPort-SDR: 6AT3COEKQCW1eVzjJXbwzYQ6nHmuznc+KRg26HiOhlv09ghuHtVBLMTGlSLvPpoUB+wi57aUdQ
 33FcpwzqS24g==
X-IronPort-AV: E=McAfee;i="6000,8403,9877"; a="159256443"
X-IronPort-AV: E=Sophos;i="5.79,379,1602572400"; d="scan'208";a="159256443"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 07:28:04 -0800
IronPort-SDR: 2WlcjOrJlILtA2f5S5aFu2BGfPlFiS0yPtrZjFKiRHAHiE2Cy7vQfT8iwLacv+9ow7j+5MAD2f
 11bN8kQbU2sw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,379,1602572400"; d="scan'208";a="362464935"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga008.fm.intel.com with ESMTP; 27 Jan 2021 07:28:03 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id D5EFB5C1FAA; Wed, 27 Jan 2021 17:28:02 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20210127140435.25191-1-chris@chris-wilson.co.uk>
References: <20210127140435.25191-1-chris@chris-wilson.co.uk>
Date: Wed, 27 Jan 2021 17:28:02 +0200
Message-ID: <87lfcev1q5.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Drop active.lock around active
 request read inside execlists
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

> As we find the active request for capturing upon a hang, we know that the
> lists are stable as we are inside the execlists tasklet, the only path
> that can modify those lists. As such, we do not need to disable irqs and
> take the active lock for a simple read of the current request.
>
> Suggested-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_execlists_submission.c | 2 --
>  1 file changed, 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> index b5f2459cac2c..e20ab2eab3a8 100644
> --- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> +++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> @@ -2262,13 +2262,11 @@ static void execlists_capture(struct intel_engine_cs *engine)
>  	if (!cap)
>  		return;
>  
> -	spin_lock_irq(&engine->active.lock);
>  	cap->rq = active_context(engine, active_ccid(engine));
>  	if (cap->rq) {
>  		cap->rq = active_request(cap->rq->context->timeline, cap->rq);
>  		cap->rq = i915_request_get_rcu(cap->rq);
>  	}
> -	spin_unlock_irq(&engine->active.lock);
>  	if (!cap->rq)
>  		goto err_free;
>  
> -- 
> 2.20.1
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
