Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D04C136BE2
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jan 2020 12:21:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8CF889CC4;
	Fri, 10 Jan 2020 11:21:20 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DDF689CC4
 for <Intel-gfx@lists.freedesktop.org>; Fri, 10 Jan 2020 11:21:19 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19832762-1500050 for multiple; Fri, 10 Jan 2020 11:21:03 +0000
MIME-Version: 1.0
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200110111126.28241-1-tvrtko.ursulin@linux.intel.com>
References: <20200110111126.28241-1-tvrtko.ursulin@linux.intel.com>
Message-ID: <157865526248.10140.12428349216538334237@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 10 Jan 2020 11:21:02 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/pmu: Do not use colon characters
 in PMU names
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
Cc: Andi Kleen <ak@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Tvrtko Ursulin (2020-01-10 11:11:26)
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> We use PCI device path in the registered PMU name in order to distinguish
> between multiple GPUs. But since tools/perf reserves a special meaning to
> the colon character we need to transliterate them to something else. We
> choose a dash.
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Reported-by: Dmitry Rogozhkin <dmitry.v.rogozhkin@intel.com>
> Fixes: 05488673a4d4 ("drm/i915/pmu: Support multiple GPUs")
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
> Cc: Andi Kleen <ak@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/i915_pmu.c | 14 ++++++++++++--
>  1 file changed, 12 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
> index f3ef6700a5f2..ecbd0e1f1a90 100644
> --- a/drivers/gpu/drm/i915/i915_pmu.c
> +++ b/drivers/gpu/drm/i915/i915_pmu.c
> @@ -1117,12 +1117,22 @@ void i915_pmu_register(struct drm_i915_private *i915)
>         hrtimer_init(&pmu->timer, CLOCK_MONOTONIC, HRTIMER_MODE_REL);
>         pmu->timer.function = i915_sample;
>  
> -       if (!is_igp(i915))
> +       if (!is_igp(i915)) {
>                 pmu->name = kasprintf(GFP_KERNEL,
>                                       "i915-%s",
>                                       dev_name(i915->drm.dev));
> -       else
> +               if (pmu->name) {

/* tools/perf reserves colons as special. */
strreplace(pmu->name, ':', '-');

I worry because the err_idx pointed to the '-'. We may have to use _
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
