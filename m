Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 272447B30F8
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Sep 2023 13:01:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8835F10E114;
	Fri, 29 Sep 2023 11:01:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE39710E116
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Sep 2023 11:00:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695985259; x=1727521259;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=WA9ikMLfZWo79Y2YXSAgM/AeA+fRvb+Lhby2XhoCF9c=;
 b=J1+R6a8Pc54w2K8ss6ThftXBdJkq0ZgGwWFXYOpJwNFRZlFJ0xdysIMU
 M8UyCUJf3b3Kg1svYdv10FH4s1NPfwCuENGNSbtOlD1uc4WX0TyaYhF40
 fS5+iOaEdavR9MVYops1smx50MbUnRWEtDUE6hh3Ow0bHPEkW7Ed9LxpH
 H1YZ4j60Udnorrqb9tBhCcjr0NdJPI6LyvQIKK2jJ8BObnd8OH70qZdhQ
 WBWj/+kyng81oQGtaZer8glxndYcJG4OpxbaQftnY7dHbYFtKnydWUNgT
 5UOltNNk41/Lr3dIuWfjOqrwCWHe3jz1VT+/zH9KLUkA1ktP7xRee3m8J A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="362521384"
X-IronPort-AV: E=Sophos;i="6.03,187,1694761200"; d="scan'208";a="362521384"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2023 04:00:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="996897176"
X-IronPort-AV: E=Sophos;i="6.03,187,1694761200"; d="scan'208";a="996897176"
Received: from pbrady4x-mobl1.ger.corp.intel.com (HELO [10.213.203.84])
 ([10.213.203.84])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2023 04:00:58 -0700
Message-ID: <ef432c24-51c1-9749-b5a8-ab5f99784e10@linux.intel.com>
Date: Fri, 29 Sep 2023 12:00:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: Mathias Krause <minipli@grsecurity.net>, intel-gfx@lists.freedesktop.org
References: <20230928182019.10256-1-minipli@grsecurity.net>
 <20230928182019.10256-3-minipli@grsecurity.net>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20230928182019.10256-3-minipli@grsecurity.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2 2/2] drm/i915: Clarify type evolution of
 uabi_node/uabi_engines
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


On 28/09/2023 19:20, Mathias Krause wrote:
> Chaining user engines happens in multiple passes during driver
> initialization, mutating its type along the way. It starts off with a
> simple lock-less linked list (struct llist_node/head) populated by
> intel_engine_add_user() which later gets sorted and converted to an
> intermediate regular list (struct list_head) just to be converted once
> more to its final rb-tree structure (struct rb_node/root) in
> intel_engines_driver_register().
> 
> All of these types overlay the uabi_node/uabi_engines members which is
> unfortunate but safe if one takes care about using the rb-tree based
> structure only after the conversion has completed. However, mistakes
> happen and commit 1ec23ed7126e ("drm/i915: Use uabi engines for the
> default engine map") violated that assumption, as the multiple type
> evolution was all to easy hidden behind casts papering over it.
> 
> Make the type evolution of uabi_node/uabi_engines more visible by
> putting all members into an anonymous union and use the correctly typed
> member in its various users. This allows us to drop quite some ugly
> casts and, hopefully, make the evolution of the members better
> recognisable to avoid future mistakes.
> 
> Signed-off-by: Mathias Krause <minipli@grsecurity.net>
> ---
>   drivers/gpu/drm/i915/gt/intel_engine_types.h | 10 +++++++++-
>   drivers/gpu/drm/i915/gt/intel_engine_user.c  | 17 +++++++----------
>   drivers/gpu/drm/i915/i915_drv.h              | 17 ++++++++++++++++-
>   3 files changed, 32 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> index a7e677598004..7585fffac60b 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> @@ -402,7 +402,15 @@ struct intel_engine_cs {
>   
>   	unsigned long context_tag;
>   
> -	struct rb_node uabi_node;
> +	/*
> +	 * The type evolves during initialization, see related comment for
> +	 * struct drm_i915_private's uabi_engines member.
> +	 */
> +	union {
> +		struct llist_node uabi_llist;
> +		struct list_head uabi_list;
> +		struct rb_node uabi_node;
> +	};
>   
>   	struct intel_sseu sseu;
>   
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_user.c b/drivers/gpu/drm/i915/gt/intel_engine_user.c
> index dcedff41a825..118164ddbb2e 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_user.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_user.c
> @@ -38,8 +38,7 @@ intel_engine_lookup_user(struct drm_i915_private *i915, u8 class, u8 instance)
>   
>   void intel_engine_add_user(struct intel_engine_cs *engine)
>   {
> -	llist_add((struct llist_node *)&engine->uabi_node,
> -		  (struct llist_head *)&engine->i915->uabi_engines);
> +	llist_add(&engine->uabi_llist, &engine->i915->uabi_engines_llist);
>   }
>   
>   static const u8 uabi_classes[] = {
> @@ -54,9 +53,9 @@ static int engine_cmp(void *priv, const struct list_head *A,
>   		      const struct list_head *B)
>   {
>   	const struct intel_engine_cs *a =
> -		container_of((struct rb_node *)A, typeof(*a), uabi_node);
> +		container_of(A, typeof(*a), uabi_list);
>   	const struct intel_engine_cs *b =
> -		container_of((struct rb_node *)B, typeof(*b), uabi_node);
> +		container_of(B, typeof(*b), uabi_list);
>   
>   	if (uabi_classes[a->class] < uabi_classes[b->class])
>   		return -1;
> @@ -73,7 +72,7 @@ static int engine_cmp(void *priv, const struct list_head *A,
>   
>   static struct llist_node *get_engines(struct drm_i915_private *i915)
>   {
> -	return llist_del_all((struct llist_head *)&i915->uabi_engines);
> +	return llist_del_all(&i915->uabi_engines_llist);
>   }
>   
>   static void sort_engines(struct drm_i915_private *i915,
> @@ -83,9 +82,8 @@ static void sort_engines(struct drm_i915_private *i915,
>   
>   	llist_for_each_safe(pos, next, get_engines(i915)) {
>   		struct intel_engine_cs *engine =
> -			container_of((struct rb_node *)pos, typeof(*engine),
> -				     uabi_node);
> -		list_add((struct list_head *)&engine->uabi_node, engines);
> +			container_of(pos, typeof(*engine), uabi_llist);
> +		list_add(&engine->uabi_list, engines);
>   	}
>   	list_sort(NULL, engines, engine_cmp);
>   }
> @@ -213,8 +211,7 @@ void intel_engines_driver_register(struct drm_i915_private *i915)
>   	p = &i915->uabi_engines.rb_node;
>   	list_for_each_safe(it, next, &engines) {
>   		struct intel_engine_cs *engine =
> -			container_of((struct rb_node *)it, typeof(*engine),
> -				     uabi_node);
> +			container_of(it, typeof(*engine), uabi_list);
>   
>   		if (intel_gt_has_unrecoverable_error(engine->gt))
>   			continue; /* ignore incomplete engines */
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 7a8ce7239bc9..c8690d1d5e51 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -222,7 +222,22 @@ struct drm_i915_private {
>   		bool mchbar_need_disable;
>   	} gmch;
>   
> -	struct rb_root uabi_engines;
> +	/*
> +	 * Chaining user engines happens in multiple stages, starting with a
> +	 * simple lock-less linked list created by intel_engine_add_user(),
> +	 * which later gets sorted and converted to an intermediate regular
> +	 * list, just to be converted once again to its final rb tree structure
> +	 * in intel_engines_driver_register().
> +	 *
> +	 * Make sure to use the right iterator helper, depending on if the code
> +	 * in question runs before or after intel_engines_driver_register() --
> +	 * for_each_uabi_engine() can only be used afterwards!
> +	 */
> +	union {
> +		struct llist_head uabi_engines_llist;
> +		struct list_head uabi_engines_list;
> +		struct rb_root uabi_engines;
> +	};
>   	unsigned int engine_uabi_class_count[I915_LAST_UABI_ENGINE_CLASS + 1];
>   
>   	/* protects the irq masks */

Thanks again!

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
