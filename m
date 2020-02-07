Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B10DA155CE7
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2020 18:33:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D3C16FD44;
	Fri,  7 Feb 2020 17:33:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D89176FD44
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Feb 2020 17:33:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Feb 2020 09:33:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,414,1574150400"; d="scan'208";a="432633798"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga006.fm.intel.com with ESMTP; 07 Feb 2020 09:33:44 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 2CAD75C0D7B; Fri,  7 Feb 2020 19:32:49 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200207161602.2838218-1-chris@chris-wilson.co.uk>
References: <20200207161602.2838218-1-chris@chris-wilson.co.uk>
Date: Fri, 07 Feb 2020 19:32:49 +0200
Message-ID: <87o8ua8fr2.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Only ignore already reset
 requests
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> If a request is being re-run after an innocent reset, it is marked as
> -EAGAIN. So only skip an engine reset if the request is marked as -EIO.
>
> Testcase: igt/gem_ctx_exec/basic-nohangcheck
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gem/i915_gem_context.c | 2 +-
>  drivers/gpu/drm/i915/gt/intel_reset.c       | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> index 52a749691a8d..cfaf5bbdbcab 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> @@ -419,7 +419,7 @@ static struct intel_engine_cs *__active_engine(struct i915_request *rq)
>  	}
>  
>  	engine = NULL;
> -	if (i915_request_is_active(rq) && !rq->fence.error)
> +	if (i915_request_is_active(rq) && rq->fence.error != -EIO)
>  		engine = rq->engine;
>  
>  	spin_unlock_irq(&locked->active.lock);
> diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
> index a8317e046f81..aef6ab58d7d9 100644
> --- a/drivers/gpu/drm/i915/gt/intel_reset.c
> +++ b/drivers/gpu/drm/i915/gt/intel_reset.c
> @@ -1182,7 +1182,7 @@ static void intel_gt_reset_global(struct intel_gt *gt,
>  
>  	kobject_uevent_env(kobj, KOBJ_CHANGE, error_event);
>  
> -	drm_dbg(&gt->i915->drm, "resetting chip\n");
> +	drm_dbg(&gt->i915->drm, "resetting chip, engines=%x\n", engine_mask);
>  	kobject_uevent_env(kobj, KOBJ_CHANGE, reset_event);
>  
>  	/* Use a watchdog to ensure that our reset completes */
> -- 
> 2.25.0
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
