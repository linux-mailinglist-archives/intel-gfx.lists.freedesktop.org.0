Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E5F415FAD4
	for <lists+intel-gfx@lfdr.de>; Sat, 15 Feb 2020 00:41:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7338F6E88F;
	Fri, 14 Feb 2020 23:41:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 198CA6E88F
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Feb 2020 23:41:44 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20232166-1500050 for multiple; Fri, 14 Feb 2020 23:41:42 +0000
MIME-Version: 1.0
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200214231917.4055677-1-chris@chris-wilson.co.uk>
References: <20200214231917.4055677-1-chris@chris-wilson.co.uk>
Message-ID: <158172369907.19707.3239130852183709166@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 14 Feb 2020 23:41:39 +0000
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/gt: Declare when we enabled
 timeslicing
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
Cc: Kenneth Graunke <kenneth@whitecape.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Chris Wilson (2020-02-14 23:19:16)
> Let userspace know if they can trust timeslicing by including it as part
> of the I915_PARAM_HAS_SCHEDULER::I915_SCHEDULER_CAP_TIMESLICING
> 
> Fixes: 8ee36e048c98 ("drm/i915/execlists: Minimalistic timeslicing")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Kenneth Graunke <kenneth@whitecape.org>
> ---
>  drivers/gpu/drm/i915/gt/intel_engine_user.c | 1 +
>  include/uapi/drm/i915_drm.h                 | 1 +
>  2 files changed, 2 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_user.c b/drivers/gpu/drm/i915/gt/intel_engine_user.c
> index 848decee9066..760e586b7535 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_user.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_user.c
> @@ -98,6 +98,7 @@ static void set_scheduler_caps(struct drm_i915_private *i915)
>                 MAP(HAS_PREEMPTION, PREEMPTION),
>                 MAP(HAS_SEMAPHORES, SEMAPHORES),
>                 MAP(SUPPORTS_STATS, ENGINE_BUSY_STATS),
> +               MAP(HAS_SEMAPHORES, TIMESLICES),

Strictly we want HAS_PREEMPTION && HAS_SEMAPHORES before we tell
userspace it can safely rely on timeslicing to yield from
MI_SEMAPHORE_WAIT.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
