Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F8CE13C0EF
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2020 13:29:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5AE536E956;
	Wed, 15 Jan 2020 12:29:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92C356E956
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jan 2020 12:29:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Jan 2020 04:29:10 -0800
X-IronPort-AV: E=Sophos;i="5.70,322,1574150400"; d="scan'208";a="213686627"
Received: from mdanino-mobl1.ger.corp.intel.com (HELO [10.252.23.174])
 ([10.252.23.174])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 15 Jan 2020 04:29:09 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200115122509.2673075-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <d1bb8db0-0f1f-fdc9-60fe-e55880dde400@linux.intel.com>
Date: Wed, 15 Jan 2020 12:29:08 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200115122509.2673075-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Use the BIT when checking the
 flags, not the index
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 15/01/2020 12:25, Chris Wilson wrote:
> In converting over to using set_bit()/test_bit(), when manually
> inspecting the rq->flags, we need to use BIT().
> 
> Fixes: e1c31fb5dde3 ("drm/i915: Merge i915_request.flags with i915_request.fence.flags")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Matthew Auld <matthew.auld@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_lrc.c | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index 9e430590fb3a..a8fe2f16c910 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -1535,7 +1535,8 @@ static bool can_merge_rq(const struct i915_request *prev,
>   		return true;
>   
>   	if (unlikely((prev->fence.flags ^ next->fence.flags) &
> -		     (I915_FENCE_FLAG_NOPREEMPT | I915_FENCE_FLAG_SENTINEL)))
> +		     (BIT(I915_FENCE_FLAG_NOPREEMPT) |
> +		      BIT(I915_FENCE_FLAG_SENTINEL))))
>   		return false;
>   
>   	if (!can_merge_ctx(prev->context, next->context))
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
