Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AEF1B679496
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Jan 2023 10:54:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DC2310E63A;
	Tue, 24 Jan 2023 09:54:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D64710E63A
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Jan 2023 09:54:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674554087; x=1706090087;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=62my9U23rpLU8SDzYa4ZidkTP8O+bF1h+YYtjF6yCXc=;
 b=XiPYCq+J++4nY6cU5zc2mOupus42EaO/PVhgzDYqH6hJk3LGL7wc5FZ4
 vaDKRi55WSkl4JKAVYAe1rdB5T9coZoAp+FEK8I3LGCGqdaCIAHW0Euic
 zm9wdxSRIz9OYdRq3L5mMmUcYiYLon9w0440vLP+5Qk5SqPhEfirvUMPR
 kwsMVMc5VEzUXVpimMY1ZEZSzyj3QclH3d7e2GvP90LdtRoxjMPds0UBD
 tMS3s81LCSO8JPRHLBPwoIltqd4hvEVBUalnXG08ohSuEFbVq+PFzRWE1
 I3VGytfE0M/X/1qQr0sQ+6+PRK2EtZvKhI/P2g59rg8VN5mZ8XnDHmQKX w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="324936053"
X-IronPort-AV: E=Sophos;i="5.97,242,1669104000"; d="scan'208";a="324936053"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2023 01:54:47 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="730622120"
X-IronPort-AV: E=Sophos;i="5.97,242,1669104000"; d="scan'208";a="730622120"
Received: from ecarran-mobl1.amr.corp.intel.com (HELO [10.212.41.53])
 ([10.212.41.53])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2023 01:54:46 -0800
Message-ID: <5753dc7c-635e-3f5f-359a-0cca97550d6c@linux.intel.com>
Date: Tue, 24 Jan 2023 09:54:45 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20230123185629.1593320-1-jonathan.cavitt@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20230123185629.1593320-1-jonathan.cavitt@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Use uabi engines for the default
 engine map
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


On 23/01/2023 18:56, Jonathan Cavitt wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> Default engine map is exactly about uabi engines so no excuse not to use
> the appropriate iterator to populate it.
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> Reveiwed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>

Fixed the r-b spelling and pushed - thanks for the review and sending 
the patch over!

Regards,

Tvrtko

> ---
>   drivers/gpu/drm/i915/gem/i915_gem_context.c | 9 ++++-----
>   1 file changed, 4 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> index 454e73a433c8..42a39e103d7c 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> @@ -1096,16 +1096,15 @@ static struct i915_gem_engines *alloc_engines(unsigned int count)
>   static struct i915_gem_engines *default_engines(struct i915_gem_context *ctx,
>   						struct intel_sseu rcs_sseu)
>   {
> -	const struct intel_gt *gt = to_gt(ctx->i915);
> +	const unsigned int max = I915_NUM_ENGINES;
>   	struct intel_engine_cs *engine;
>   	struct i915_gem_engines *e, *err;
> -	enum intel_engine_id id;
>   
> -	e = alloc_engines(I915_NUM_ENGINES);
> +	e = alloc_engines(max);
>   	if (!e)
>   		return ERR_PTR(-ENOMEM);
>   
> -	for_each_engine(engine, gt, id) {
> +	for_each_uabi_engine(engine, ctx->i915) {
>   		struct intel_context *ce;
>   		struct intel_sseu sseu = {};
>   		int ret;
> @@ -1113,7 +1112,7 @@ static struct i915_gem_engines *default_engines(struct i915_gem_context *ctx,
>   		if (engine->legacy_idx == INVALID_ENGINE)
>   			continue;
>   
> -		GEM_BUG_ON(engine->legacy_idx >= I915_NUM_ENGINES);
> +		GEM_BUG_ON(engine->legacy_idx >= max);
>   		GEM_BUG_ON(e->engines[engine->legacy_idx]);
>   
>   		ce = intel_context_create(engine);
