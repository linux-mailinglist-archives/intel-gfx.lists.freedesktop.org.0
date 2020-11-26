Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 268842C59A9
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Nov 2020 17:57:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC67F6E953;
	Thu, 26 Nov 2020 16:56:58 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7ACBC6E953
 for <Intel-gfx@lists.freedesktop.org>; Thu, 26 Nov 2020 16:56:56 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23119598-1500050 for multiple; Thu, 26 Nov 2020 16:56:48 +0000
MIME-Version: 1.0
In-Reply-To: <20201126164703.1578226-1-tvrtko.ursulin@linux.intel.com>
References: <20201126164703.1578226-1-tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Date: Thu, 26 Nov 2020 16:56:47 +0000
Message-ID: <160640980713.31673.2813856466109565459@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] drm/i915/pmu: Deprecate I915_PMU_LAST and
 optimize state tracking
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

Quoting Tvrtko Ursulin (2020-11-26 16:47:03)
> -static unsigned int config_enabled_bit(u64 config)
> +static unsigned int is_tracked_config(const u64 config)
>  {
> -       if (is_engine_config(config))
> +       unsigned int val;

> +/**
> + * Non-engine events that we need to track enabled-disabled transition and
> + * current state.
> + */

I'm not understanding what is_tracked_config() actually means and how
that becomes config_enabled_bit().

These look like the non-engine ones where we interact with HW during the
sample.

How do the events we define a bit for here differ from the "untracked"
events?

> +
> +       switch (config) {
> +       case I915_PMU_ACTUAL_FREQUENCY:
> +               val =  __I915_PMU_ACTUAL_FREQUENCY_ENABLED;
> +               break;
> +       case I915_PMU_REQUESTED_FREQUENCY:
> +               val = __I915_PMU_REQUESTED_FREQUENCY_ENABLED;
> +               break;
> +       case I915_PMU_RC6_RESIDENCY:
> +               val = __I915_PMU_RC6_RESIDENCY_ENABLED;
> +               break;
> +       default:
> +               return 0;
> +       }
> +
> +       return val + 1;
> +}
> +
> +static unsigned int config_enabled_bit(const u64 config)
> +{
> +       if (is_engine_config(config)) {
>                 return engine_config_sample(config);
> -       else
> -               return ENGINE_SAMPLE_BITS + (config - __I915_PMU_OTHER(0));
> +       } else {
> +               unsigned int bit = is_tracked_config(config);
> +
> +               if (bit)
> +                       return I915_ENGINE_SAMPLE_COUNT + bit - 1;
> +               else
> +                       return -1;
> +       }
>  }
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
