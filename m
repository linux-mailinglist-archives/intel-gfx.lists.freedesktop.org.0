Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ACB0F2F1390
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Jan 2021 14:11:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2EEDF89D56;
	Mon, 11 Jan 2021 13:11:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C54689D56
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Jan 2021 13:10:59 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23559224-1500050 for multiple; Mon, 11 Jan 2021 13:10:05 +0000
MIME-Version: 1.0
In-Reply-To: <X/xMdcewtft7+QFM@mwanda>
References: <X/xMdcewtft7+QFM@mwanda>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Dan Carpenter <dan.carpenter@oracle.com>,
 Jani Nikula <jani.nikula@linux.intel.com>
Date: Mon, 11 Jan 2021 13:10:02 +0000
Message-ID: <161037060292.28181.5373987654669273170@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Fix some error codes
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
Cc: David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 kernel-janitors@vger.kernel.org, Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Dan Carpenter (2021-01-11 13:02:45)
> These error paths return success instead of negative error codes as
> intended.
> 
> Fixes: c92724de6db1 ("drm/i915/selftests: Try to detect rollback during batchbuffer preemption")
> Fixes: 2d19a71ce68f ("drm/i915/selftests: Exercise long preemption chains")
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> ---
>  drivers/gpu/drm/i915/gt/selftest_lrc.c | 12 +++++++++---
>  1 file changed, 9 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> index 95d41c01d0e0..0f9fbae98158 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> @@ -2679,8 +2679,10 @@ static int create_gang(struct intel_engine_cs *engine,
>                 goto err_obj;
>  
>         cs = i915_gem_object_pin_map(obj, I915_MAP_WC);
> -       if (IS_ERR(cs))
> +       if (IS_ERR(cs)) {
> +               err = PTR_ERR(cs);
>                 goto err_obj;
> +       }
>  
>         /* Semaphore target: spin until zero */
>         *cs++ = MI_ARB_ON_OFF | MI_ARB_ENABLE;
> @@ -2707,8 +2709,10 @@ static int create_gang(struct intel_engine_cs *engine,
>         i915_gem_object_unpin_map(obj);
>  
>         rq = intel_context_create_request(ce);
> -       if (IS_ERR(rq))
> +       if (IS_ERR(rq)) {
> +               err = PTR_ERR(rq);
>                 goto err_obj;
> +       }

Smatch already caught this pair for us, thanks.

>         rq->batch = i915_vma_get(vma);
>         i915_request_get(rq);
> @@ -3264,8 +3268,10 @@ static int live_preempt_user(void *arg)
>  
>                         rq = create_gpr_client(engine, global,
>                                                NUM_GPR * i * sizeof(u32));
> -                       if (IS_ERR(rq))
> +                       if (IS_ERR(rq)) {
> +                               err = PTR_ERR(rq);
>                                 goto end_test;
> +                       }

But it hasn't yet caught this one.

Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
