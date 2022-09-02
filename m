Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A9F365AAAE5
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Sep 2022 11:08:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD5AA10E7C0;
	Fri,  2 Sep 2022 09:07:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B5D010E7C0
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Sep 2022 09:07:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662109668; x=1693645668;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=J3ZJgF5IgzNnEpOOWt/dzw/2AsPwNj0amV0a6GES5c0=;
 b=UGkaooHXMSqZXA1KIELW+Vl1nhVeEcMtiGf47W3rrgzZ/bo3M7InxzjA
 k8VJ/g6o8zVi+bTbm7cqoNgaW5IdBkb8/r1OHYLApH85IpcuuiQP/Mm8V
 QcO6nrrQ+ga/BCQdyQ825/jVC8I3ywZLio0kweDFU0OUThMhhGNUoc/6g
 wciXzwUAN2mPlgieiG5Xbqffb+IFUV0cYa5sjluou0bkcrWN3Fxb920DE
 KsVahAYk4FUttAn72b3lKzBEOJRB++aLi9zQ2czXYw/kNgPGzi5UdYj5m
 8mfGFXe1zvHr984PtkYS6NAM39jDBKxbiHoDZ2ccWzK5/vfYBuAysZfDW w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10457"; a="357656633"
X-IronPort-AV: E=Sophos;i="5.93,283,1654585200"; d="scan'208";a="357656633"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2022 02:07:47 -0700
X-IronPort-AV: E=Sophos;i="5.93,283,1654585200"; d="scan'208";a="674277638"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.252.43.234])
 ([10.252.43.234])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2022 02:07:47 -0700
Message-ID: <d47157f7-1bd0-aeb3-101e-541e4ad1de40@linux.intel.com>
Date: Fri, 2 Sep 2022 11:07:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Content-Language: en-US
To: Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220901193228.255098-1-rodrigo.vivi@intel.com>
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <20220901193228.255098-1-rodrigo.vivi@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Move some of the request
 decisions out of rps_boost function.
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Rodrigo,

On 9/1/2022 9:32 PM, Rodrigo Vivi wrote:
> Ideally all the decisions should be made before calling the boost function.
> And rps functions only receiving the rps struct. At least lets move most
> of the decisions to the request component, but still leave the test
> and set of the fence flag boost inside the rps because that might be time
> sensitive.
>
> Cc: Ashutosh Dixit <ashutosh.dixit@intel.com>
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_atomic_plane.c | 2 +-
>   drivers/gpu/drm/i915/gem/i915_gem_wait.c          | 3 ++-
>   drivers/gpu/drm/i915/gt/intel_rps.c               | 3 ---
>   drivers/gpu/drm/i915/gt/intel_rps.h               | 1 +
>   drivers/gpu/drm/i915/i915_request.h               | 5 +++--
>   5 files changed, 7 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> index dd876dbbaa39..6967c47c7ba0 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> @@ -918,7 +918,7 @@ static int do_rps_boost(struct wait_queue_entry *_wait,
>   	 * is reasonable to assume that it will complete before the next
>   	 * vblank without our intervention, so leave RPS alone.
>   	 */
> -	if (!i915_request_started(rq))
> +	if (!i915_request_started(rq) && i915_request_needs_boost(rq))
>   		intel_rps_boost(rq);
>   	i915_request_put(rq);
>   
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_wait.c b/drivers/gpu/drm/i915/gem/i915_gem_wait.c
> index e6e01c2a74a6..2f2ca5e27248 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_wait.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_wait.c
> @@ -58,7 +58,8 @@ i915_gem_object_boost(struct dma_resv *resv, unsigned int flags)
>   			    dma_resv_usage_rw(flags & I915_WAIT_ALL));
>   	dma_resv_for_each_fence_unlocked(&cursor, fence)
>   		if (dma_fence_is_i915(fence) &&
> -		    !i915_request_started(to_request(fence)))
> +		    !i915_request_started(to_request(fence)) &&
> +		    i915_request_needs_boost(to_request(fence)))
>   			intel_rps_boost(to_request(fence));
>   	dma_resv_iter_end(&cursor);
>   }
> diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
> index 579ae9ac089c..2c8d9eeb7e7e 100644
> --- a/drivers/gpu/drm/i915/gt/intel_rps.c
> +++ b/drivers/gpu/drm/i915/gt/intel_rps.c
> @@ -1006,9 +1006,6 @@ void intel_rps_boost(struct i915_request *rq)
>   {
>   	struct intel_guc_slpc *slpc;
>   
> -	if (i915_request_signaled(rq) || i915_request_has_waitboost(rq))
> -		return;
> -
>   	/* Serializes with i915_request_retire() */
>   	if (!test_and_set_bit(I915_FENCE_FLAG_BOOST, &rq->fence.flags)) {
>   		struct intel_rps *rps = &READ_ONCE(rq->engine)->gt->rps;
> diff --git a/drivers/gpu/drm/i915/gt/intel_rps.h b/drivers/gpu/drm/i915/gt/intel_rps.h
> index 4509dfdc52e0..9a053f1b04e8 100644
> --- a/drivers/gpu/drm/i915/gt/intel_rps.h
> +++ b/drivers/gpu/drm/i915/gt/intel_rps.h
> @@ -23,6 +23,7 @@ void intel_rps_disable(struct intel_rps *rps);
>   
>   void intel_rps_park(struct intel_rps *rps);
>   void intel_rps_unpark(struct intel_rps *rps);
> +bool intel_rps_request_needs_boost(struct i915_request *rq);
>   void intel_rps_boost(struct i915_request *rq);
>   void intel_rps_dec_waiters(struct intel_rps *rps);
>   u32 intel_rps_get_boost_frequency(struct intel_rps *rps);
> diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
> index 47041ec68df8..4f5049ef1ab9 100644
> --- a/drivers/gpu/drm/i915/i915_request.h
> +++ b/drivers/gpu/drm/i915/i915_request.h
> @@ -625,9 +625,10 @@ static inline void i915_request_mark_complete(struct i915_request *rq)
>   		   (u32 *)&rq->fence.seqno);
>   }
>   
> -static inline bool i915_request_has_waitboost(const struct i915_request *rq)
> +static inline bool i915_request_needs_boost(const struct i915_request *rq)
>   {
> -	return test_bit(I915_FENCE_FLAG_BOOST, &rq->fence.flags);
> +	return i915_request_signaled(rq)
> +		&& test_bit(I915_FENCE_FLAG_BOOST, &rq->fence.flags);

This could be i915_request_has_waitboost() or else AFAICS 
intel_rps_boost() is the only user of i915_request_has_waitboost()

and that could be removed.

Otherwise the series is: Acked-by: Nirmoy Das <nirmoy.das@intel.com>

Nirmoy

>   }
>   
>   static inline bool i915_request_has_nopreempt(const struct i915_request *rq)
