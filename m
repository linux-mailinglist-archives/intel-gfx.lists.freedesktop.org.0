Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AF3B617B9D5
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Mar 2020 11:06:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C27C6ECB6;
	Fri,  6 Mar 2020 10:06:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EEBB6ECB6
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Mar 2020 10:06:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Mar 2020 02:06:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,521,1574150400"; d="scan'208";a="241131710"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga003.jf.intel.com with ESMTP; 06 Mar 2020 02:06:48 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id DC7EF5C1DD1; Fri,  6 Mar 2020 12:05:30 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200306071614.2846708-2-chris@chris-wilson.co.uk>
References: <20200306071614.2846708-1-chris@chris-wilson.co.uk>
 <20200306071614.2846708-2-chris@chris-wilson.co.uk>
Date: Fri, 06 Mar 2020 12:05:30 +0200
Message-ID: <87a74t4x3p.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915: Always propagate the
 invocation to i915_schedule
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

> We only call i915_schedule() when we know we have changed the priority
> on a request and so require to propagate any change in priority to its
> signalers (for PI). By unconditionally checking all of our signalers, we
> avoid skipping changes made prior to construction of the request (as the
> request may be waited upon before submission when used in parallel).
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/i915_scheduler.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915/i915_scheduler.c
> index be770f2419b1..52f71e83e088 100644
> --- a/drivers/gpu/drm/i915/i915_scheduler.c
> +++ b/drivers/gpu/drm/i915/i915_scheduler.c
> @@ -227,10 +227,10 @@ static void kick_submission(struct intel_engine_cs *engine,
>  static void __i915_schedule(struct i915_sched_node *node,
>  			    const struct i915_sched_attr *attr)
>  {
> +	const int prio = max(attr->priority, node->attr.priority);
>  	struct intel_engine_cs *engine;
>  	struct i915_dependency *dep, *p;
>  	struct i915_dependency stack;
> -	const int prio = attr->priority;
>  	struct sched_cache cache;
>  	LIST_HEAD(dfs);
>  
> @@ -238,9 +238,6 @@ static void __i915_schedule(struct i915_sched_node *node,
>  	lockdep_assert_held(&schedule_lock);
>  	GEM_BUG_ON(prio == I915_PRIORITY_INVALID);
>  
> -	if (prio <= READ_ONCE(node->attr.priority))
> -		return;
> -
>  	if (node_signaled(node))
>  		return;
>  
> -- 
> 2.25.1
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
