Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 56E7830F5C6
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Feb 2021 16:05:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B142A6EDC5;
	Thu,  4 Feb 2021 15:05:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E5E26EDC5
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Feb 2021 15:05:47 +0000 (UTC)
IronPort-SDR: TZYzNB8iOLpBH9Ddk61O1imshRzGLL2HoTUhK4GBfHhIL5zjusBZ8060QocQeXj/XGihrCjcoL
 GASwkGGGGcdQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9884"; a="181406343"
X-IronPort-AV: E=Sophos;i="5.79,401,1602572400"; d="scan'208";a="181406343"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2021 07:05:46 -0800
IronPort-SDR: M5FzeN9A/QMRUw+RJmotlY6MLfMDN4dnT3Z0wV4PCWjVRjVmI3sutLR9JWAa9pXBdNkyK6M74i
 lcmZ51Kd4gOg==
X-IronPort-AV: E=Sophos;i="5.79,401,1602572400"; d="scan'208";a="393208260"
Received: from acanalx-mobl.ger.corp.intel.com (HELO [10.249.32.114])
 ([10.249.32.114])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2021 07:05:45 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20210201085715.27435-1-chris@chris-wilson.co.uk>
 <20210201085715.27435-28-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <b9025b98-a8a0-f911-beeb-dcc4128f9976@linux.intel.com>
Date: Thu, 4 Feb 2021 15:05:43 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <20210201085715.27435-28-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 28/57] drm/i915: Wrap
 i915_request_use_semaphores()
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


On 01/02/2021 08:56, Chris Wilson wrote:
> Wrap the query on whether the backend engine supports us emitting
> semaphores to coordinate multiple requests.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   drivers/gpu/drm/i915/i915_request.c | 2 +-
>   drivers/gpu/drm/i915/i915_request.h | 5 +++++
>   2 files changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> index 459f727b03cd..e7b4c4bc41a6 100644
> --- a/drivers/gpu/drm/i915/i915_request.c
> +++ b/drivers/gpu/drm/i915/i915_request.c
> @@ -1141,7 +1141,7 @@ __i915_request_await_execution(struct i915_request *to,
>   	 * immediate execution, and so we must wait until it reaches the
>   	 * active slot.
>   	 */
> -	if (intel_engine_has_semaphores(to->engine) &&
> +	if (i915_request_use_semaphores(to) &&
>   	    !i915_request_has_initial_breadcrumb(to)) {
>   		err = __emit_semaphore_wait(to, from, from->fence.seqno - 1);
>   		if (err < 0)
> diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
> index 8322f308b906..8d9e59e3cdcb 100644
> --- a/drivers/gpu/drm/i915/i915_request.h
> +++ b/drivers/gpu/drm/i915/i915_request.h
> @@ -637,4 +637,9 @@ static inline bool i915_request_is_executing(const struct i915_request *rq)
>   	return i915_request_get_scheduler(rq)->is_executing(rq);
>   }
>   
> +static inline bool i915_request_use_semaphores(const struct i915_request *rq)
> +{
> +	return intel_engine_has_semaphores(rq->engine);
> +}
> +
>   #endif /* I915_REQUEST_H */
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
