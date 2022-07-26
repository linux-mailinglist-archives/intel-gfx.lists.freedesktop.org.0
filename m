Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DA7258190C
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Jul 2022 19:51:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABF179647D;
	Tue, 26 Jul 2022 17:51:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FDA29639D
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Jul 2022 17:50:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658857847; x=1690393847;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=hphZ865e/ngLGRtZHsxF5u1VHf8Y6geiJb2U3S6m400=;
 b=hpKv7zMCoHxNpjyDPjyHd8CKKikR6O6rMcLdB+vyNC4kzvncVPoAz5F9
 4f/T4TzcKn6hpKTXRFwPdoVoVWzr8UqbFv8oD5b0Fidkx+COcaUXqKeML
 k2Yf0LsgSUm79f15iN+r6IxF52YM8iYHT2N423hlhoOabrrcQ5zwhr5kX
 iLbAy1rIzLhVZfGpADkCKHRaKhllWabcRiCRdgNblO48/ThYFKa6rRM6r
 X5uptzdW1KzS32CbK7c/pvNjP/yOYLkygDhdXgeS5Tj9WYSIzC8NtXxyB
 yRLcq+oy8UEk0o0vV9rmEUSrlzzpnrIMu/vTJAlVSdC2T3fZAAnQgunFx g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10420"; a="288775497"
X-IronPort-AV: E=Sophos;i="5.93,194,1654585200"; d="scan'208";a="288775497"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2022 10:48:53 -0700
X-IronPort-AV: E=Sophos;i="5.93,194,1654585200"; d="scan'208";a="776389833"
Received: from kellyche-mobl.gar.corp.intel.com (HELO [10.213.145.44])
 ([10.213.145.44])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2022 10:48:51 -0700
Message-ID: <da375b78-fa9a-dd90-8f65-234cb5a6d81b@intel.com>
Date: Tue, 26 Jul 2022 18:48:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.11.0
Content-Language: en-GB
To: Nirmoy Das <nirmoy.das@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220726144844.18429-1-nirmoy.das@intel.com>
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <20220726144844.18429-1-nirmoy.das@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Remove shared locking on
 freeing objects
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
Cc: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 chris.p.wilson@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 26/07/2022 15:48, Nirmoy Das wrote:
> From: Chris Wilson <chris@chris-wilson.co.uk>
> 
> The obj->base.resv may be shared across many objects, some of which may
> still be live and locked, preventing objects from being freed
> indefintely. We could individualise the lock during the free, or rely on
> a freed object having no contention and being able to immediately free
> th pages it owns.
> 
> References: https://gitlab.freedesktop.org/drm/intel/-/issues/6469
> Fixes: be7612fd6665 ("drm/i915: Require object lock when freeing pages during destruction")
> Fixes: 6cb12fbda1c2 ("drm/i915: Use trylock instead of blocking lock for __i915_gem_free_objects.")
> Cc: <stable@vger.kernel.org> # v5.17+
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Maarten, do you remember if there was more going on here than just 
making things consistent with ttm? IIRC this came from the short-term 
pinning mega-series, so perhaps something in there was relying on this?


> ---
>   drivers/gpu/drm/i915/gem/i915_gem_object.c | 16 ++++------------
>   drivers/gpu/drm/i915/i915_drv.h            |  4 ++--
>   2 files changed, 6 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm/i915/gem/i915_gem_object.c
> index ccec4055fde3..389e9f157ca5 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
> @@ -268,7 +268,7 @@ static void __i915_gem_object_free_mmaps(struct drm_i915_gem_object *obj)
>    */
>   void __i915_gem_object_pages_fini(struct drm_i915_gem_object *obj)
>   {
> -	assert_object_held(obj);
> +	assert_object_held_shared(obj);
>   
>   	if (!list_empty(&obj->vma.list)) {
>   		struct i915_vma *vma;
> @@ -331,15 +331,7 @@ static void __i915_gem_free_objects(struct drm_i915_private *i915,
>   			continue;
>   		}
>   
> -		if (!i915_gem_object_trylock(obj, NULL)) {
> -			/* busy, toss it back to the pile */
> -			if (llist_add(&obj->freed, &i915->mm.free_list))
> -				queue_delayed_work(i915->wq, &i915->mm.free_work, msecs_to_jiffies(10));
> -			continue;
> -		}
> -
>   		__i915_gem_object_pages_fini(obj);
> -		i915_gem_object_unlock(obj);
>   		__i915_gem_free_object(obj);
>   
>   		/* But keep the pointer alive for RCU-protected lookups */
> @@ -359,7 +351,7 @@ void i915_gem_flush_free_objects(struct drm_i915_private *i915)
>   static void __i915_gem_free_work(struct work_struct *work)
>   {
>   	struct drm_i915_private *i915 =
> -		container_of(work, struct drm_i915_private, mm.free_work.work);
> +		container_of(work, struct drm_i915_private, mm.free_work);
>   
>   	i915_gem_flush_free_objects(i915);
>   }
> @@ -391,7 +383,7 @@ static void i915_gem_free_object(struct drm_gem_object *gem_obj)
>   	 */
>   
>   	if (llist_add(&obj->freed, &i915->mm.free_list))
> -		queue_delayed_work(i915->wq, &i915->mm.free_work, 0);
> +		queue_work(i915->wq, &i915->mm.free_work);
>   }
>   
>   void __i915_gem_object_flush_frontbuffer(struct drm_i915_gem_object *obj,
> @@ -745,7 +737,7 @@ bool i915_gem_object_needs_ccs_pages(struct drm_i915_gem_object *obj)
>   
>   void i915_gem_init__objects(struct drm_i915_private *i915)
>   {
> -	INIT_DELAYED_WORK(&i915->mm.free_work, __i915_gem_free_work);
> +	INIT_WORK(&i915->mm.free_work, __i915_gem_free_work);
>   }
>   
>   void i915_objects_module_exit(void)
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index d25647be25d1..086bbe8945d6 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -247,7 +247,7 @@ struct i915_gem_mm {
>   	 * List of objects which are pending destruction.
>   	 */
>   	struct llist_head free_list;
> -	struct delayed_work free_work;
> +	struct work_struct free_work;
>   	/**
>   	 * Count of objects pending destructions. Used to skip needlessly
>   	 * waiting on an RCU barrier if no objects are waiting to be freed.
> @@ -1378,7 +1378,7 @@ static inline void i915_gem_drain_freed_objects(struct drm_i915_private *i915)
>   	 * armed the work again.
>   	 */
>   	while (atomic_read(&i915->mm.free_count)) {
> -		flush_delayed_work(&i915->mm.free_work);
> +		flush_work(&i915->mm.free_work);
>   		flush_delayed_work(&i915->bdev.wq);
>   		rcu_barrier();
>   	}
