Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E4392771FF
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Sep 2020 15:16:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C28066EB11;
	Thu, 24 Sep 2020 13:16:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 787066EAD5
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Sep 2020 13:16:30 +0000 (UTC)
IronPort-SDR: gtqVBJOSXacHtTDmbg/3LMRahRsVB2K6oc54JBXoZg1LQ95x99TP49dhFm1eatz2tcAOHyGPpz
 aKf9hxjR46qw==
X-IronPort-AV: E=McAfee;i="6000,8403,9753"; a="245989744"
X-IronPort-AV: E=Sophos;i="5.77,297,1596524400"; d="scan'208";a="245989744"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2020 06:16:29 -0700
IronPort-SDR: WY06ZyfFjBsY5f4/0+3kkLERDMAfJskmTTpTU7wBlDaBISUBxCZruTxsofjzBt1+MskUkvnAmk
 5qMgr6LcuP9A==
X-IronPort-AV: E=Sophos;i="5.77,297,1596524400"; d="scan'208";a="486898073"
Received: from dsmahang-mobl2.ger.corp.intel.com (HELO [10.252.48.167])
 ([10.252.48.167])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2020 06:16:28 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200915093010.30573-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <e9123c83-ef8f-ec26-b878-300610899dee@linux.intel.com>
Date: Thu, 24 Sep 2020 14:16:26 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200915093010.30573-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Redo "Remove i915_request.lock
 requirement for execution callbacks"
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


On 15/09/2020 10:30, Chris Wilson wrote:
> The reordering and rebasing of commit 2e4c6c1a9db5 ("drm/i915: Remove
> i915_request.lock requirement for execution callbacks") caused it to
> revert an earlier correction. Let us restore commit 99f0a640d464
> ("drm/i915: Remove requirement for holding i915_request.lock for
> breadcrumbs")
> 
> Fixes: 2e4c6c1a9db5 ("drm/i915: Remove i915_request.lock requirement for execution callbacks")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/i915_request.c | 12 ++----------
>   1 file changed, 2 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> index 11e272422fb7..436ce368ddaa 100644
> --- a/drivers/gpu/drm/i915/i915_request.c
> +++ b/drivers/gpu/drm/i915/i915_request.c
> @@ -593,16 +593,8 @@ bool __i915_request_submit(struct i915_request *request)
>   	__notify_execute_cb_irq(request);
>   
>   	/* We may be recursing from the signal callback of another i915 fence */
> -	if (!i915_request_signaled(request)) {
> -		spin_lock_nested(&request->lock, SINGLE_DEPTH_NESTING);
> -
> -		if (test_bit(DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT,
> -			     &request->fence.flags) &&
> -		    !i915_request_enable_breadcrumb(request))
> -			intel_engine_signal_breadcrumbs(engine);
> -
> -		spin_unlock(&request->lock);
> -	}
> +	if (test_bit(DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT, &request->fence.flags))
> +		i915_request_enable_breadcrumb(request);
>   
>   	return result;
>   }
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
