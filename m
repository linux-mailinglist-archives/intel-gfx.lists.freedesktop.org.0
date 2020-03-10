Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 283DB1802C7
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 17:06:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 888D589B27;
	Tue, 10 Mar 2020 16:06:17 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2E7289B27
 for <Intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 16:06:15 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20511752-1500050 for multiple; Tue, 10 Mar 2020 16:06:01 +0000
MIME-Version: 1.0
In-Reply-To: <20200310160047.20748-1-tvrtko.ursulin@linux.intel.com>
References: <20200310160047.20748-1-tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <158385636096.28297.16094425592161557812@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Tue, 10 Mar 2020 16:06:00 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gen12: Disable preemption timeout
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

Quoting Tvrtko Ursulin (2020-03-10 16:00:47)
> @@ -316,7 +317,7 @@ static int intel_engine_setup(struct intel_gt *gt, enum intel_engine_id id)
>         engine->props.max_busywait_duration_ns =
>                 CONFIG_DRM_I915_MAX_REQUEST_BUSYWAIT;
>         engine->props.preempt_timeout_ms =
> -               CONFIG_DRM_I915_PREEMPT_TIMEOUT;
> +               INTEL_GEN(i915) == 12 ? 0 : CONFIG_DRM_I915_PREEMPT_TIMEOUT;

Too hidden.

>         engine->props.stop_timeout_ms =
>                 CONFIG_DRM_I915_STOP_TIMEOUT;
>         engine->props.timeslice_duration_ms =
...

+       /* redacted, leaving OpenCL uninterruptible */
+       if (engine->class == RENDER_CLASS && INTEL_GEN(gt->i915) >= 12)
+               engine->props.preempt_timeout_ms = 0;

Please do include a comment for the misbehaviour.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
