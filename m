Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F05C300156
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Jan 2021 12:20:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E65AB891CC;
	Fri, 22 Jan 2021 11:20:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E62B4891CC
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Jan 2021 11:20:17 +0000 (UTC)
IronPort-SDR: ftUium92brbN4E7GnxRkm63tINtuX+0w29fXyFpIlqBWDUI0CIbwsMZA2Ngb0xBZJILkUK4t+D
 tIKYsX3cmQ+Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9871"; a="175921788"
X-IronPort-AV: E=Sophos;i="5.79,366,1602572400"; d="scan'208";a="175921788"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2021 03:20:17 -0800
IronPort-SDR: f7LObXWK1qg5bNM+YXf68HrisfA8vAw5nZkHZGYG/qtraXN311Y4TuUOoCNBGCzmZUAHoTPcj2
 Ck1GQmCCspig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,366,1602572400"; d="scan'208";a="351804788"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga003.jf.intel.com with ESMTP; 22 Jan 2021 03:20:16 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 7175C5C20E6; Fri, 22 Jan 2021 13:17:28 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20210121223902.7890-1-chris@chris-wilson.co.uk>
References: <20210121223902.7890-1-chris@chris-wilson.co.uk>
Date: Fri, 22 Jan 2021 13:17:28 +0200
Message-ID: <87a6t1jk53.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Only print an error if the
 resume fails after the reset
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

> If we fail to stop the ring before the reset, we try the reset anyway.
> Then we only report a failure if the engine fails to resume after the
> reset, therefore we don't need to print a premature error message during
> the prepare.

Resonable to only yell if we cant proceed.

>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_ring_submission.c | 15 ++-------------
>  1 file changed, 2 insertions(+), 13 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> index e4db4318f634..2d497ecdd433 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> @@ -333,8 +333,8 @@ static void reset_prepare(struct intel_engine_cs *engine)
>  	ENGINE_TRACE(engine, "\n");
>  	intel_engine_stop_cs(engine);
>  
> -	if (!stop_ring(engine)) {
> -		/* G45 ring initialization often fails to reset head to zero */
> +	/* G45 ring initialization often fails to reset head to zero */
> +	if (!stop_ring(engine) && !stop_ring(engine))
>  		ENGINE_TRACE(engine,
>  			     "HEAD not reset to zero, "
>  			     "{ CTL:%08x, HEAD:%08x, TAIL:%08x, START:%08x }\n",
> @@ -342,17 +342,6 @@ static void reset_prepare(struct intel_engine_cs *engine)
>  			     ENGINE_READ_FW(engine, RING_HEAD),
>  			     ENGINE_READ_FW(engine, RING_TAIL),
>  			     ENGINE_READ_FW(engine, RING_START));
> -		if (!stop_ring(engine)) {
> -			drm_err(&engine->i915->drm,
> -				"failed to set %s head to zero "
> -				"ctl %08x head %08x tail %08x start %08x\n",
> -				engine->name,
> -				ENGINE_READ_FW(engine, RING_CTL),
> -				ENGINE_READ_FW(engine, RING_HEAD),
> -				ENGINE_READ_FW(engine, RING_TAIL),
> -				ENGINE_READ_FW(engine, RING_START));
> -		}
> -	}
>  }
>  
>  static void reset_rewind(struct intel_engine_cs *engine, bool stalled)
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
