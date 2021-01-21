Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 339622FE8E3
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Jan 2021 12:35:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA2F66E566;
	Thu, 21 Jan 2021 11:35:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34DA489BBE
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Jan 2021 11:35:20 +0000 (UTC)
IronPort-SDR: OhdB8RyyO8QJLjQIH6kTmmo2Y6P1O0hmjNuQf+98GyB5KFl7pMEYeEBD3Y9KljnM/Kem67IFVO
 CcBDoaCkEOOw==
X-IronPort-AV: E=McAfee;i="6000,8403,9870"; a="240794660"
X-IronPort-AV: E=Sophos;i="5.79,363,1602572400"; d="scan'208";a="240794660"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2021 03:35:14 -0800
IronPort-SDR: luzS92F7v3SR3hr2aV3bz/e1yCVAV3IGKk4uRKTGwyM4251N+O8DRBmHqZHk0W2L4T30shpbzR
 g/XgMyMmg5Ig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,363,1602572400"; d="scan'208";a="400123939"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga004.fm.intel.com with ESMTP; 21 Jan 2021 03:35:13 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 478FA5C20E9; Thu, 21 Jan 2021 13:32:26 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20210120121718.26435-1-chris@chris-wilson.co.uk>
References: <20210120121718.26435-1-chris@chris-wilson.co.uk>
Date: Thu, 21 Jan 2021 13:32:26 +0200
Message-ID: <87sg6ujzjp.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/gt: Do not suspend bonded
 requests if one hangs
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

> Treat the dependency between bonded requests as weak and leave the
> remainder of the pair on the GPU if one hangs.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_execlists_submission.c | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> index 740ff05fd692..524c8b54d220 100644
> --- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> +++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> @@ -1990,6 +1990,9 @@ static void __execlists_hold(struct i915_request *rq)
>  			struct i915_request *w =
>  				container_of(p->waiter, typeof(*w), sched);
>  
> +			if (p->flags & I915_DEPENDENCY_WEAK)
> +				continue;
> +
>  			/* Leave semaphores spinning on the other engines */
>  			if (w->engine != rq->engine)
>  				continue;
> @@ -2088,6 +2091,9 @@ static void __execlists_unhold(struct i915_request *rq)
>  			struct i915_request *w =
>  				container_of(p->waiter, typeof(*w), sched);
>  
> +			if (p->flags & I915_DEPENDENCY_WEAK)
> +				continue;
> +
>  			/* Propagate any change in error status */
>  			if (rq->fence.error)
>  				i915_request_set_error_once(w, rq->fence.error);
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
