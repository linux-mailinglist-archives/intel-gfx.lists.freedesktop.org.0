Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F146B212878
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jul 2020 17:49:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 580CB6EB14;
	Thu,  2 Jul 2020 15:49:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A5DD6EB14
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jul 2020 15:49:00 +0000 (UTC)
IronPort-SDR: KjaEOhqbPHO1RWd5ZpMjmXZLIsfBuFdbMJ5nhi3fwvWH2a+QHnsBqzHyFiF/OM9JnnyhiDDaSw
 8qU1TGag60yQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9670"; a="146013666"
X-IronPort-AV: E=Sophos;i="5.75,304,1589266800"; d="scan'208";a="146013666"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2020 08:48:59 -0700
IronPort-SDR: fDFBclEZ7SRr4W62GQVsGiKrjDQTkiVCWJ4zgSG6xsS0OHAMhYdV3d7/YtgtP0UNGykzxjLpCF
 FFOAOhrBoCAQ==
X-IronPort-AV: E=Sophos;i="5.75,304,1589266800"; d="scan'208";a="482047868"
Received: from dandoron-mobl.ger.corp.intel.com (HELO [10.214.212.30])
 ([10.214.212.30])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2020 08:48:58 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200702130605.14747-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <0ab16f66-6a38-45b9-c30d-bd0c734c4e8f@linux.intel.com>
Date: Thu, 2 Jul 2020 16:48:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200702130605.14747-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915/gem: Only revoke the GGTT
 mmappings on aperture detiling changes
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


On 02/07/2020 14:06, Chris Wilson wrote:
> Only a GGTT mmaping will use the aperture detiling registers, so only a
> tiling change for an object, we only need to revoke those mmapings and
> not the CPU mmapings (which are always linear irrespective of the tiling).
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_mman.c   | 2 +-
>   drivers/gpu/drm/i915/gem/i915_gem_mman.h   | 5 ++++-
>   drivers/gpu/drm/i915/gem/i915_gem_tiling.c | 2 +-
>   3 files changed, 6 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> index fe27c5b344e3..7c2650cfb070 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> @@ -448,7 +448,7 @@ void __i915_gem_object_release_mmap_gtt(struct drm_i915_gem_object *obj)
>    * mapping will then trigger a page fault on the next user access, allowing
>    * fixup by vm_fault_gtt().
>    */
> -static void i915_gem_object_release_mmap_gtt(struct drm_i915_gem_object *obj)
> +void i915_gem_object_release_mmap_gtt(struct drm_i915_gem_object *obj)
>   {
>   	struct drm_i915_private *i915 = to_i915(obj->base.dev);
>   	intel_wakeref_t wakeref;
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.h b/drivers/gpu/drm/i915/gem/i915_gem_mman.h
> index 862e01b7cb69..7c5ccdf59359 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_mman.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.h
> @@ -24,8 +24,11 @@ int i915_gem_dumb_mmap_offset(struct drm_file *file_priv,
>   			      struct drm_device *dev,
>   			      u32 handle, u64 *offset);
>   
> -void __i915_gem_object_release_mmap_gtt(struct drm_i915_gem_object *obj);
>   void i915_gem_object_release_mmap(struct drm_i915_gem_object *obj);
> +
> +void __i915_gem_object_release_mmap_gtt(struct drm_i915_gem_object *obj);
> +void i915_gem_object_release_mmap_gtt(struct drm_i915_gem_object *obj);
> +
>   void i915_gem_object_release_mmap_offset(struct drm_i915_gem_object *obj);
>   
>   #endif
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_tiling.c b/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
> index 0158e49bf9bb..ff72ee2fd9cd 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
> @@ -299,7 +299,7 @@ i915_gem_object_set_tiling(struct drm_i915_gem_object *obj,
>   	i915_gem_object_unlock(obj);
>   
>   	/* Force the fence to be reacquired for GTT access */
> -	i915_gem_object_release_mmap(obj);
> +	i915_gem_object_release_mmap_gtt(obj);
>   
>   	/* Try to preallocate memory required to save swizzling on put-pages */
>   	if (i915_gem_object_needs_bit17_swizzle(obj)) {
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
