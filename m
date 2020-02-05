Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1658B153B83
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2020 23:57:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2AE56F970;
	Wed,  5 Feb 2020 22:57:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE7576F970
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Feb 2020 22:57:30 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20130132-1500050 for multiple; Wed, 05 Feb 2020 22:57:07 +0000
MIME-Version: 1.0
To: Andi Shyti <andi@etezian.org>, Intel GFX <intel-gfx@lists.freedesktop.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200205224949.5942-1-andi@etezian.org>
References: <20200205223627.5680-1-andi@etezian.org>
 <20200205224949.5942-1-andi@etezian.org>
Message-ID: <158094342604.2570.15687319579804576967@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 05 Feb 2020 22:57:06 +0000
Subject: Re: [Intel-gfx] [PATCH v5] drm/i915/selftests: add basic selftests
 for rc6
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

Quoting Andi Shyti (2020-02-05 22:49:49)
> +int live_rc6_busy(void *arg)
> +{
> +       struct intel_gt *gt = arg;
> +       struct intel_rc6 *rc6 = &gt->rc6;
> +       struct intel_engine_cs *engine;
> +       struct igt_spinner spin;
> +       intel_wakeref_t wakeref;
> +       enum intel_engine_id id;
> +       int err;
> +
> +       if (!rc6->supported)
> +               return 0;
> +
> +       err = igt_spinner_init(&spin, gt);
> +       if (err)
> +               return err;
> +
> +       wakeref = intel_runtime_pm_get(gt->uncore->rpm);
> +       for_each_engine(engine, gt, id) {
> +               struct i915_request *rq;
> +
> +               rq = igt_spinner_create_request(&spin,
> +                                               engine->kernel_context,
> +                                               MI_NOOP);
> +               if (IS_ERR(rq)) {
> +                       err = PTR_ERR(rq);
> +                       break;
> +               }
> +
> +               i915_request_get(rq);
> +               i915_request_add(rq);
> +
> +               igt_wait_for_spinner(&spin, rq); /* it's enough waiting */
> +
> +               /* gpu is busy, we shouldn't be in rc6 */
> +               if (is_rc6_active(rc6)) {
> +                       pr_err("%s: never busy enough for having a nap\n",
> +                              engine->name);
> +                       err = -EINVAL;
> +               }
> +
> +               igt_spinner_end(&spin);
> +               if (i915_request_wait(rq, 0, HZ / 5) < 0)
> +                       err = -ETIME;
> +               i915_request_put(rq);
> +               if (err)
> +                       break;
> +
> +               intel_gt_wait_for_idle(gt, HZ / 5);
> +               intel_gt_pm_wait_for_idle(gt);
> +
> +               /* gpu is idle, we should be in rc6 */
> +               if (!is_rc6_active(rc6)) {
> +                       pr_err("%s is idle but doesn't go in rc6\n",
> +                              engine->name);
> +                       err = -EINVAL;
> +                       break;
> +               }
> +       }
> +       intel_runtime_pm_put(gt->uncore->rpm, wakeref);
> +
> +       igt_spinner_fini(&spin);
> +       return err;

I'm afraid I think we should split the patch one more time, and push
ahead with live_rc6_busy() as that should be working regardless of our
discovery process around the thresholds.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
