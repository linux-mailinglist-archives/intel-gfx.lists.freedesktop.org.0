Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E48EC6C0DA2
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Mar 2023 10:46:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D941C10E2B8;
	Mon, 20 Mar 2023 09:46:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 013DE10E2B8
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Mar 2023 09:46:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679305577; x=1710841577;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=FBIRGd/LO9SReXFd+7N9klsBB4PTylrrWFsq2YzWaNs=;
 b=c0mHAyy9ObXXeSzlvzRoCcY16U8WDxvLItAdpURPluSul6NaqU6kl8u6
 +UqqBnA1JSw1bBWE0k0EjYu8Bus71Azhpd2zlhp8RgxDgSvYAhYwSpdVT
 MBBOiaHFfsXOtHbZSRAx8m/JrDqIzKnnVodmlZBOW2gW/X0Fme7xtt1si
 dbkeu+1yI7eAyM+NDpNZKu7Shb/VSe1VxjaCGMFfaBzi1Jq+pDoqi+Kz/
 /WzKAFRS5xtq4ouPrO+AB91Op5w1TUlnPckMtT2hPS4uxOYoldcCZ/42Q
 jbqbHosbdiMx65TR5QhfGbo2mI6DEqVAVkvCc5YBolkCep4mB9TkymZ3S Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10654"; a="337335597"
X-IronPort-AV: E=Sophos;i="5.98,274,1673942400"; d="scan'208";a="337335597"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2023 02:46:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10654"; a="750022164"
X-IronPort-AV: E=Sophos;i="5.98,274,1673942400"; d="scan'208";a="750022164"
Received: from vmiceli-mobl.amr.corp.intel.com (HELO [10.252.26.135])
 ([10.252.26.135])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2023 02:46:15 -0700
Message-ID: <33f2aea1-8d2d-786c-2e83-368d10e8abe8@intel.com>
Date: Mon, 20 Mar 2023 09:46:13 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.8.0
Content-Language: en-GB
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20230320090522.9909-1-ville.syrjala@linux.intel.com>
 <20230320090522.9909-2-ville.syrjala@linux.intel.com>
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <20230320090522.9909-2-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 1/6] drm/i915/dpt: Treat the DPT BO as a
 framebuffer
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
Cc: stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 20/03/2023 09:05, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Currently i915_gem_object_is_framebuffer() doesn't treat the
> BO containing the framebuffer's DPT as a framebuffer itself.
> This means eg. that the shrinker can evict the DPT BO while
> leaving the actual FB BO bound, when the DPT is allocated
> from regular shmem.
> 
> That causes an immediate oops during hibernate as we
> try to rewrite the PTEs inside the already evicted
> DPT obj.
> 
> TODO: presumably this might also be the reason for the
> DPT related display faults under heavy memory pressure,
> but I'm still not sure how that would happen as the object
> should be pinned by intel_dpt_pin() while in active use by
> the display engine...

Yeah that's strange, if it's pinned then it should not be evictable. 
Also with DG2, are there any similar issues, since lmem is used for dpt 
and that can be moved to smem and swapped-out? Keeping the object pinned 
should also prevent that.

> 
> Cc: stable@vger.kernel.org
> Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
> Cc: Matthew Auld <matthew.auld@intel.com>
> Cc: Imre Deak <imre.deak@intel.com>
> Fixes: 0dc987b699ce ("drm/i915/display: Add smem fallback allocation for dpt")
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_dpt.c         | 2 ++
>   drivers/gpu/drm/i915/gem/i915_gem_object.h       | 2 +-
>   drivers/gpu/drm/i915/gem/i915_gem_object_types.h | 3 +++
>   3 files changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dpt.c b/drivers/gpu/drm/i915/display/intel_dpt.c
> index ad1a37b515fb..2a9f40a2b3ed 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpt.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpt.c
> @@ -301,6 +301,7 @@ intel_dpt_create(struct intel_framebuffer *fb)
>   	vm->pte_encode = gen8_ggtt_pte_encode;
>   
>   	dpt->obj = dpt_obj;
> +	dpt->obj->is_dpt = true;
>   
>   	return &dpt->vm;
>   }
> @@ -309,5 +310,6 @@ void intel_dpt_destroy(struct i915_address_space *vm)
>   {
>   	struct i915_dpt *dpt = i915_vm_to_dpt(vm);
>   
> +	dpt->obj->is_dpt = false;
>   	i915_vm_put(&dpt->vm);
>   }
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
> index f9a8acbba715..885ccde9dc3c 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
> @@ -303,7 +303,7 @@ i915_gem_object_never_mmap(const struct drm_i915_gem_object *obj)
>   static inline bool
>   i915_gem_object_is_framebuffer(const struct drm_i915_gem_object *obj)
>   {
> -	return READ_ONCE(obj->frontbuffer);
> +	return READ_ONCE(obj->frontbuffer) || obj->is_dpt;
>   }
>   
>   static inline unsigned int
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> index 19c9bdd8f905..5dcbbef31d44 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> @@ -491,6 +491,9 @@ struct drm_i915_gem_object {
>   	 */
>   	unsigned int cache_dirty:1;
>   
> +	/* @is_dpt: Object houses a display page table (DPT) */
> +	unsigned int is_dpt:1;
> +
>   	/**
>   	 * @read_domains: Read memory domains.
>   	 *
