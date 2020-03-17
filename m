Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BC2F187B4D
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2020 09:30:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D8D689310;
	Tue, 17 Mar 2020 08:30:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2F3189310
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Mar 2020 08:30:47 +0000 (UTC)
IronPort-SDR: SPmavkUvd/UMoyiK0ktr/UAv+ED4hlWEgdTzCKJIiXxjUkffnYsw63YojxpLsxYxr4N9KsPPwJ
 odeysky+C3Iw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2020 01:30:47 -0700
IronPort-SDR: nPmEhFSWn+Ngy3CzSmh+08mCfmlWI6zO6VjYzhfb00eegrWlNpUkp9HQoGS3uSmwnIRxDxwa8w
 JC4nHBJoreXA==
X-IronPort-AV: E=Sophos;i="5.70,563,1574150400"; d="scan'208";a="417469476"
Received: from sitzik-mobl.ger.corp.intel.com (HELO [10.252.54.144])
 ([10.252.54.144])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2020 01:30:46 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200316161447.18410-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <0ce55576-875f-394c-9f20-f171e3b4a5a7@linux.intel.com>
Date: Tue, 17 Mar 2020 08:30:44 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200316161447.18410-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Check for a closed context
 when looking up an engine
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


On 16/03/2020 16:14, Chris Wilson wrote:
> Beware that the context may already be closed as we try to lookup an
> engine.
> 
> Closes: https://gitlab.freedesktop.org/drm/intel/issues/1389
> Fixes: 130a95e9098e ("drm/i915/gem: Consolidate ctx->engines[] release")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_context.h | 8 ++++++--
>   1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.h b/drivers/gpu/drm/i915/gem/i915_gem_context.h
> index 57b7ae2893e1..a09fd67fed1d 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.h
> @@ -192,12 +192,16 @@ i915_gem_context_unlock_engines(struct i915_gem_context *ctx)
>   static inline struct intel_context *
>   i915_gem_context_get_engine(struct i915_gem_context *ctx, unsigned int idx)
>   {
> -	struct intel_context *ce = ERR_PTR(-EINVAL);
> +	struct intel_context *ce;
>   
>   	rcu_read_lock(); {
>   		struct i915_gem_engines *e = rcu_dereference(ctx->engines);
> -		if (likely(idx < e->num_engines && e->engines[idx]))
> +		if (unlikely(e == NULL)) /* context was closed! */
> +			ce = ERR_PTR(-ENOENT);
> +		else if (likely(idx < e->num_engines && e->engines[idx]))
>   			ce = intel_context_get(e->engines[idx]);
> +		else
> +			ce = ERR_PTR(-EINVAL);
>   	} rcu_read_unlock();
>   
>   	return ce;
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
