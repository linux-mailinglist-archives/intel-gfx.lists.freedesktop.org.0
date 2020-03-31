Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D0901995EC
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2020 14:03:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F4B76E828;
	Tue, 31 Mar 2020 12:03:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFE5A6E828
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Mar 2020 12:03:34 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20751500-1500050 for multiple; Tue, 31 Mar 2020 13:03:20 +0100
MIME-Version: 1.0
In-Reply-To: <20200331115649.27143-1-mika.kuoppala@linux.intel.com>
References: <20200331115649.27143-1-mika.kuoppala@linux.intel.com>
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158565619922.18289.3690683739180857971@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Tue, 31 Mar 2020 13:03:19 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Report all failed registers for
 ctx isolation
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

Quoting Mika Kuoppala (2020-03-31 12:56:49)
> We want to log all failed registers so don't stop
> on a first.
> 
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Signed-off-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

The s.e.p. field is failing.

> ---
>  drivers/gpu/drm/i915/gt/selftest_lrc.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> index d3e163c93e22..7d7b0ab52b63 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> @@ -5104,6 +5104,7 @@ static int compare_isolation(struct intel_engine_cs *engine,
>  {
>         u32 x, dw, *hw, *lrc;
>         u32 *A[2], *B[2];
> +       unsigned long failed;
>         int err = 0;
>  
>         A[0] = i915_gem_object_pin_map(ref[0]->obj, I915_MAP_WC);
> @@ -5136,6 +5137,7 @@ static int compare_isolation(struct intel_engine_cs *engine,
>         }
>         lrc += LRC_STATE_PN * PAGE_SIZE / sizeof(*hw);
>  
> +       failed = 0;
>         x = 0;
>         dw = 0;
>         hw = engine->pinned_default_state;
> @@ -5169,8 +5171,7 @@ static int compare_isolation(struct intel_engine_cs *engine,
>                                                hw[dw], hw[dw + 1],
>                                                A[0][x], B[0][x], B[1][x],
>                                                poison, lrc[dw + 1]);
> -                                       err = -EINVAL;
> -                                       break;
> +                                       failed++;
>                                 }
>                         }
>                         dw += 2;
> @@ -5179,6 +5180,9 @@ static int compare_isolation(struct intel_engine_cs *engine,
>         } while (dw < PAGE_SIZE / sizeof(u32) &&
>                  (hw[dw] & ~BIT(0)) != MI_BATCH_BUFFER_END);
>  
> +       if (failed)
> +               err = -EINVAL;
> +
>         i915_gem_object_unpin_map(ce->state->obj);
>  err_B1:
>         i915_gem_object_unpin_map(result[1]->obj);

You also want
@@ -5330,13 +5330,15 @@ static int live_lrc_isolation(void *arg)
                intel_engine_pm_get(engine);
                if (engine->pinned_default_state) {
                        for (i = 0; i < ARRAY_SIZE(poison); i++) {
-                               err = __lrc_isolation(engine, poison[i]);
-                               if (err)
-                                       break;
+                               int result;

-                               err = __lrc_isolation(engine, ~poison[i]);
-                               if (err)
-                                       break;
+                               result = __lrc_isolation(engine, poison[i]);
+                               if (result && !err)
+                                       err = result;
+
+                               result = __lrc_isolation(engine, ~poison[i]);
+                               if (result && !err)
+                                       err = result;
                        }
                }
                intel_engine_pm_put(engine);

for this mode.

With that or as a separate patch,
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
