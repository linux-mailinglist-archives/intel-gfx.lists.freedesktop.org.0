Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A5CD677A52
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Jan 2023 12:46:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8DC410E343;
	Mon, 23 Jan 2023 11:46:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D643610E343
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Jan 2023 11:46:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674474370; x=1706010370;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=woJxAsp3pv1iGJelDshq5U+FywJ1+BKzWa+h6bIS/iM=;
 b=QmUEZkURjlzHZuJrZ3BCategOopnQHdA0eJOl4BomUI/6Mir91cBXtY6
 VI0DItgl4O7naaLyyFteubTUhO1j5oUwaVpcHCbwNKq8X9oHCZNV5Eqap
 7XpIWd4yK2QwVFochW9uVdxwRCQ6/JsxQ35Jn85wqk5VmmWvj+hYs5k0C
 FXZKxkBwHki3v/TgC2RdDYbkFwF5SFKKntW5KbooKVRIQy8J50SzG/Q7/
 SsIk2tECspACtmJ/H7xQSinLulAuvRZ/dqrZ+CsfZY8IOs/Zw+BmjlFPv
 RrHlvQCLtqWjdBWNMDczqv5ocihFQYbhPMW1bcKH7QwYIIZyEC9aFDEfq w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10598"; a="309601247"
X-IronPort-AV: E=Sophos;i="5.97,239,1669104000"; d="scan'208";a="309601247"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2023 03:46:10 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10598"; a="835442958"
X-IronPort-AV: E=Sophos;i="5.97,239,1669104000"; d="scan'208";a="835442958"
Received: from bridge4x-mobl.ger.corp.intel.com (HELO [10.213.214.72])
 ([10.213.214.72])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2023 03:46:09 -0800
Message-ID: <a56bebbc-f149-d362-b6d0-4c30f1c19242@linux.intel.com>
Date: Mon, 23 Jan 2023 11:46:06 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20230120191902.1301697-1-jonathan.cavitt@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20230120191902.1301697-1-jonathan.cavitt@intel.com>
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


On 20/01/2023 19:19, Jonathan Cavitt wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> Default engine map is exactly about uabi engines so no excuse not to use
> the appropriate iterator to populate it.

Okay I guess this was something I did as part of multi-tile enabling 
refactor some years ago, so even if it looks a bit head scratching on 
it's own it still has a purpose so IMO if someone r-b's it is okay to merge.

Jonathan even you could r-b, but you need to add your s-o-b in any case 
and re-send.

Regards,

Tvrtko

> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
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
