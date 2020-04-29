Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C36001BDF9F
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2020 15:54:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C53756E079;
	Wed, 29 Apr 2020 13:54:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 916FA6E079
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Apr 2020 13:54:27 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21058883-1500050 for multiple; Wed, 29 Apr 2020 14:53:47 +0100
MIME-Version: 1.0
In-Reply-To: <20200429132425.GE815283@mwanda>
References: <20200429132425.GE815283@mwanda>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Dan Carpenter <dan.carpenter@oracle.com>,
 Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <158816842543.4620.13969605148556812046@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Wed, 29 Apr 2020 14:53:45 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: fix error handling in
 __live_lrc_indirect_ctx_bb()
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

Quoting Dan Carpenter (2020-04-29 14:24:25)
> If intel_context_create() fails then it leads to an error pointer
> dereference.  I shuffled things around to make error handling easier.
> 
> Fixes: 1dd47b54baea ("drm/i915: Add live selftests for indirect ctx batchbuffers")
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> ---
>  drivers/gpu/drm/i915/gt/selftest_lrc.c | 30 +++++++++++++++-----------
>  1 file changed, 18 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> index d3fa91aed7dee..c4bfad5c49dea 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> @@ -5795,26 +5795,29 @@ static int indirect_ctx_bb_check(struct intel_context *ce)
>  static int __live_lrc_indirect_ctx_bb(struct intel_engine_cs *engine)
>  {
>         struct intel_context *a, *b;
> -       int err = 0;
> +       int err;
>  
>         a = intel_context_create(engine);
> -       b = intel_context_create(engine);
> -
> +       if (IS_ERR(a))
> +               return PTR_ERR(a);
>         err = intel_context_pin(a);
>         if (err)
> -               return err;
> +               goto put_a;
>  
> -       err = intel_context_pin(b);
> -       if (err) {
> -               intel_context_put(a);
> -               return err;
> +       b = intel_context_create(engine);
> +       if (IS_ERR(b)) {
> +               err = PTR_ERR(b);
> +               goto unpin_a;
>         }
> +       err = intel_context_pin(b);
> +       if (err)
> +               goto put_b;
>  
>         /* We use the already reserved extra page in context state */
>         if (!a->wa_bb_page) {
>                 GEM_BUG_ON(b->wa_bb_page);
>                 GEM_BUG_ON(INTEL_GEN(engine->i915) == 12);
> -               goto out;
> +               goto unpin_b;
>         }
>  
>         /*
> @@ -5829,14 +5832,17 @@ static int __live_lrc_indirect_ctx_bb(struct intel_engine_cs *engine)
>  
>         err = indirect_ctx_bb_check(a);
>         if (err)
> -               goto out;
> +               goto unpin_b;
>  
>         err = indirect_ctx_bb_check(b);
> -out:
> +
> +unpin_b:
>         intel_context_unpin(b);
> +put_b:
>         intel_context_put(b);
> -
> +unpin_a:
>         intel_context_unpin(a);
> +put_a:
>         intel_context_put(a);

Onion looks correct, and there should not be any issue with this
sequence of create/pin.

Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
