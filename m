Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 88EA0223B02
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jul 2020 14:00:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2EEA6E13F;
	Fri, 17 Jul 2020 12:00:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F222E6E1EC
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jul 2020 12:00:38 +0000 (UTC)
IronPort-SDR: ok4UNd988V1v/45jkUrFDp1KxYqoYq8qNYqHzcZrDxZjESStl9dvrUNNnrkuYgp4vUeMLYeuxO
 +ZxH07QFsd5Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9684"; a="167707163"
X-IronPort-AV: E=Sophos;i="5.75,362,1589266800"; d="scan'208";a="167707163"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2020 05:00:38 -0700
IronPort-SDR: L2rRcs0LEOdpzk/wTtRlWL+SlHkfYvBJmgowQ7LSQRU+jWTVJYkomS06hinFsIuRfv3e01kzWr
 PnYTujAcoM/g==
X-IronPort-AV: E=Sophos;i="5.75,362,1589266800"; d="scan'208";a="460825724"
Received: from gpanagop-mobl.ger.corp.intel.com (HELO [10.249.33.238])
 ([10.249.33.238])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2020 05:00:37 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200715115147.11866-1-chris@chris-wilson.co.uk>
 <20200715115147.11866-4-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <54fe92b8-c6f1-ae7c-a5bf-9f283b952ed0@linux.intel.com>
Date: Fri, 17 Jul 2020 13:00:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200715115147.11866-4-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 04/66] drm/i915: Add a couple of missing
 i915_active_fini()
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 15/07/2020 12:50, Chris Wilson wrote:
> We use i915_active_fini() as a debug check on the i915_active state
> before freeing. If we forget to call it, we may end up angering the
> debugobjects contained within.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   drivers/gpu/drm/i915/display/intel_frontbuffer.c    | 2 ++
>   drivers/gpu/drm/i915/gt/selftest_engine_heartbeat.c | 5 ++++-
>   2 files changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
> index 2979ed2588eb..d898b370d7a4 100644
> --- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
> +++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
> @@ -232,6 +232,8 @@ static void frontbuffer_release(struct kref *ref)
>   	RCU_INIT_POINTER(obj->frontbuffer, NULL);
>   	spin_unlock(&to_i915(obj->base.dev)->fb_tracking.lock);
>   
> +	i915_active_fini(&front->write);
> +
>   	i915_gem_object_put(obj);
>   	kfree_rcu(front, rcu);
>   }
> diff --git a/drivers/gpu/drm/i915/gt/selftest_engine_heartbeat.c b/drivers/gpu/drm/i915/gt/selftest_engine_heartbeat.c
> index 73243ba59c7d..e73854dd2fe0 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_engine_heartbeat.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_engine_heartbeat.c
> @@ -47,7 +47,10 @@ static int pulse_active(struct i915_active *active)
>   
>   static void pulse_free(struct kref *kref)
>   {
> -	kfree(container_of(kref, struct pulse, kref));
> +	struct pulse *p = container_of(kref, typeof(*p), kref);
> +
> +	i915_active_fini(&p->active);
> +	kfree(p);
>   }
>   
>   static void pulse_put(struct pulse *p)
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
