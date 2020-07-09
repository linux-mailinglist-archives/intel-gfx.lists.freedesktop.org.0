Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B465A21A3E5
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jul 2020 17:39:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 127BB6E40C;
	Thu,  9 Jul 2020 15:39:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8295C6E40C
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jul 2020 15:39:18 +0000 (UTC)
IronPort-SDR: 0EV47Z9Wvz5XYXMLPUeJVm8BmiF+cu8V6sBiIBvAk9isD0NgEXx4phRpnhXxDO1MKY2ByYY/8p
 wYimj0aYf9Iw==
X-IronPort-AV: E=McAfee;i="6000,8403,9677"; a="128089169"
X-IronPort-AV: E=Sophos;i="5.75,331,1589266800"; d="scan'208";a="128089169"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2020 08:39:17 -0700
IronPort-SDR: 8Sj65rzLrWNIrnnRlteKo7l37cvZ7mBeHutzc45TKKf4VvVm1nokHJkjzzmVUp5I2bzgllyDnC
 D48yyswLJqvA==
X-IronPort-AV: E=Sophos;i="5.75,331,1589266800"; d="scan'208";a="457947393"
Received: from unknown (HELO [10.251.164.218]) ([10.251.164.218])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2020 08:39:16 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200706061926.6687-1-chris@chris-wilson.co.uk>
 <20200706061926.6687-17-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <7cdb939e-e334-707a-a3c7-0b155597cdb7@linux.intel.com>
Date: Thu, 9 Jul 2020 16:39:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200706061926.6687-17-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 16/20] drm/i915/gem: Reintroduce multiple
 passes for reloc processing
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


On 06/07/2020 07:19, Chris Wilson wrote:
> The prospect of locking the entire submission sequence under a wide
> ww_mutex re-imposes some key restrictions, in particular that we must
> not call copy_(from|to)_user underneath the mutex (as the faulthandlers
> themselves may need to take the ww_mutex). To satisfy this requirement,
> we need to split the relocation handling into multiple phases again.
> After dropping the reservations, we need to allocate enough buffer space
> to both copy the relocations from userspace into, and serve as the
> relocation command buffer. Once we have finished copying the
> relocations, we can then re-aquire all the objects for the execbuf and
> rebind them, including our new relocations objects. After we have bound
> all the new and old objects into their final locations, we can then
> convert the relocation entries into the GPU commands to update the
> relocated vma. Finally, once it is all over and we have dropped the
> ww_mutex for the last time, we can then complete the update of the user
> relocation entries.

Good text. :)

> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 842 ++++++++----------
>   .../i915/gem/selftests/i915_gem_execbuffer.c  | 195 ++--
>   2 files changed, 520 insertions(+), 517 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index 629b736adf2c..fbf5c5cd51ca 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -35,6 +35,7 @@ struct eb_vma {
>   
>   	/** This vma's place in the execbuf reservation list */
>   	struct drm_i915_gem_exec_object2 *exec;
> +	u32 bias;
>   
>   	struct list_head bind_link;
>   	struct list_head unbound_link;
> @@ -60,15 +61,12 @@ struct eb_vma_array {
>   #define __EXEC_OBJECT_HAS_PIN		BIT(31)
>   #define __EXEC_OBJECT_HAS_FENCE		BIT(30)
>   #define __EXEC_OBJECT_NEEDS_MAP		BIT(29)
> -#define __EXEC_OBJECT_NEEDS_BIAS	BIT(28)
> -#define __EXEC_OBJECT_INTERNAL_FLAGS	(~0u << 28) /* all of the above */
> +#define __EXEC_OBJECT_INTERNAL_FLAGS	(~0u << 29) /* all of the above */
>   
>   #define __EXEC_HAS_RELOC	BIT(31)
>   #define __EXEC_INTERNAL_FLAGS	(~0u << 31)
>   #define UPDATE			PIN_OFFSET_FIXED
>   
> -#define BATCH_OFFSET_BIAS (256*1024)
> -
>   #define __I915_EXEC_ILLEGAL_FLAGS \
>   	(__I915_EXEC_UNKNOWN_FLAGS | \
>   	 I915_EXEC_CONSTANTS_MASK  | \
> @@ -266,20 +264,18 @@ struct i915_execbuffer {
>   	 * obj/page
>   	 */
>   	struct reloc_cache {
> -		struct drm_mm_node node; /** temporary GTT binding */
>   		unsigned int gen; /** Cached value of INTEL_GEN */
>   		bool use_64bit_reloc : 1;
> -		bool has_llc : 1;
>   		bool has_fence : 1;
>   		bool needs_unfenced : 1;
>   
>   		struct intel_context *ce;
>   
> -		struct i915_vma *target;
> -		struct i915_request *rq;
> -		struct i915_vma *rq_vma;
> -		u32 *rq_cmd;
> -		unsigned int rq_size;
> +		struct eb_relocs_link {
> +			struct i915_vma *vma;
> +		} head;
> +		struct drm_i915_gem_relocation_entry *map;
> +		unsigned int pos;

It's not trivial so please add some commentary around the new struct 
members. List handling (is there a single linked list in kernel which 
could be used for clarity?). Or maybe it is not a list.. Why is a list 
of vma links inside a mapped GEM bo? What are pos, bufsz, later max, 
etc. So a bit of high level operation and a bit of per field. I think 
it's needed because it is not straightforward.

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
