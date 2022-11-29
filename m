Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 81C0463BBE2
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Nov 2022 09:43:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E88310E248;
	Tue, 29 Nov 2022 08:43:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 312D010E248
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Nov 2022 08:43:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669711408; x=1701247408;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=RMQ5PwDLEEFcxVadt8hycAqVj49gjO3OJrrKS4todyo=;
 b=eP7IuOTvb1KgJYnuLU6t6dkC0ZKXyxGOYM9e2wfEmqPty34ttTSxQ/Hi
 QTK4eThpDpFvk+J6pc1IbdEfah73K88vsRYdEVInNNL60nO7YEYXqUSV+
 OAiIETQPp0JeGHI6RdgXi0Rp69NhRxdt4j8J0mnXYcjsPGWSXiRVu4CTN
 boeuyLN2P/fuOAj1zGxHkfOU/KWgner+X/AkmvCay5ZK8LCJotyYdYC1e
 mFgjna8RUhZYne5+oZikBNVCoMw9GKkiYoXdE86hwPZDtR3kPzC9FriSw
 kdUejfEAsOAygmXv1VheTdoX/dmieKiM4i3N06r00/i5yQgg3WUDzb55C g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10545"; a="312684681"
X-IronPort-AV: E=Sophos;i="5.96,202,1665471600"; d="scan'208";a="312684681"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2022 00:43:26 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10545"; a="768357885"
X-IronPort-AV: E=Sophos;i="5.96,202,1665471600"; d="scan'208";a="768357885"
Received: from hethertx-mobl1.ger.corp.intel.com (HELO [10.213.197.5])
 ([10.213.197.5])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2022 00:43:24 -0800
Message-ID: <36b9d912-84b3-d050-59aa-b95c245551d2@linux.intel.com>
Date: Tue, 29 Nov 2022 08:43:20 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: Andrzej Hajda <andrzej.hajda@intel.com>, intel-gfx@lists.freedesktop.org
References: <20221128165209.353706-1-andrzej.hajda@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20221128165209.353706-1-andrzej.hajda@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915: fix exiting context timeout
 calculation
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 28/11/2022 16:52, Andrzej Hajda wrote:
> In case context is exiting preempt_timeout_ms is used for timeout,
> but since introduction of DRM_I915_PREEMPT_TIMEOUT_COMPUTE it increases
> to 7.5 seconds. Heartbeat occurs earlier but it is still 2.5s.
> 
> Fixes: d7a8680ec9fb21 ("drm/i915: Improve long running compute w/a for GuC submission")
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2410
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
> ---
> Hi all,
> 
> I am not sure what is expected solution here, and if my patch does not
> actually reverts intentions of patch d7a8680ec9fb21. Feel free to propose
> something better.
> Other alternative would be to increase t/o in IGT tests, but I am not sure
> if this is good direction.

Is it the hack with the FIXME marker from 47daf84a8bfb ("drm/i915: Make 
the heartbeat play nice with long pre-emption timeouts") that actually 
breaks things? (If IGT modifies the preempt timeout the heartbeat 
extension will not work as intended.)

If so, I think we agreed during review that was a weakness which needs 
to be addressed, but I would need to re-read the old threads to remember 
what was the plan. Regardless what it was it may be time is now to 
continue with those improvements.

Regards,

Tvrtko

> 
> Regards
> Andrzej
> ---
>   drivers/gpu/drm/i915/gt/intel_execlists_submission.c | 4 ++++
>   1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> index 49a8f10d76c77b..bbbbcd9e00f947 100644
> --- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> +++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> @@ -1248,6 +1248,10 @@ static unsigned long active_preempt_timeout(struct intel_engine_cs *engine,
>   	/* Force a fast reset for terminated contexts (ignoring sysfs!) */
>   	if (unlikely(intel_context_is_banned(rq->context) || bad_request(rq)))
>   		return INTEL_CONTEXT_BANNED_PREEMPT_TIMEOUT_MS;
> +	else if (unlikely(intel_context_is_exiting(rq->context)))
> +		return min_t(typeof(unsigned long),
> +			     READ_ONCE(engine->props.preempt_timeout_ms),
> +			     CONFIG_DRM_I915_PREEMPT_TIMEOUT);
>   
>   	return READ_ONCE(engine->props.preempt_timeout_ms);
>   }
