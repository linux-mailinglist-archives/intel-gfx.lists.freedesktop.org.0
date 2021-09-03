Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 322C23FFB86
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Sep 2021 10:05:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 239816E851;
	Fri,  3 Sep 2021 08:05:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0A366E851;
 Fri,  3 Sep 2021 08:05:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10095"; a="219371172"
X-IronPort-AV: E=Sophos;i="5.85,264,1624345200"; d="scan'208";a="219371172"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2021 01:05:04 -0700
X-IronPort-AV: E=Sophos;i="5.85,264,1624345200"; d="scan'208";a="500220436"
Received: from ojcasey-mobl.ger.corp.intel.com (HELO [10.213.195.251])
 ([10.213.195.251])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2021 01:05:01 -0700
To: Daniel Vetter <daniel.vetter@ffwll.ch>,
 DRI Development <dri-devel@lists.freedesktop.org>
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Jon Bloomfield <jon.bloomfield@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 Matthew Auld <matthew.auld@intel.com>,
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 Dave Airlie <airlied@redhat.com>, Jason Ekstrand <jason@jlekstrand.net>
References: <20210902142057.929669-1-daniel.vetter@ffwll.ch>
 <20210902142057.929669-5-daniel.vetter@ffwll.ch>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <2a1f1395-2fe3-3c3d-48a6-bf741f910023@linux.intel.com>
Date: Fri, 3 Sep 2021 09:05:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210902142057.929669-5-daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 05/11] drm/i915: Rename
 i915_gem_context_get_vm_rcu to i915_gem_context_get_eb_vm
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


On 02/09/2021 15:20, Daniel Vetter wrote:
> The important part isn't so much that this does an rcu lookup - that's
> more an implementation detail, which will also be removed.
> 
> The thing that makes this different from other functions is that it's
> gettting you the vm that batchbuffers will run in for that gem
> context, which is either a full ppgtt stored in gem->ctx, or the ggtt.
> 
> We'll make more use of this function later on.
> 
> Reviewed-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> Cc: Jon Bloomfield <jon.bloomfield@intel.com>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
> Cc: "Thomas Hellström" <thomas.hellstrom@linux.intel.com>
> Cc: Matthew Auld <matthew.auld@intel.com>
> Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
> Cc: Dave Airlie <airlied@redhat.com>
> Cc: Jason Ekstrand <jason@jlekstrand.net>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_context.h           | 2 +-
>   drivers/gpu/drm/i915/gem/selftests/huge_pages.c       | 4 ++--
>   drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c | 4 ++--
>   drivers/gpu/drm/i915/gt/selftest_execlists.c          | 2 +-
>   drivers/gpu/drm/i915/gt/selftest_hangcheck.c          | 2 +-
>   drivers/gpu/drm/i915/selftests/i915_gem_gtt.c         | 4 ++--
>   drivers/gpu/drm/i915/selftests/i915_vma.c             | 2 +-
>   7 files changed, 10 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.h b/drivers/gpu/drm/i915/gem/i915_gem_context.h
> index 18060536b0c2..da6e8b506d96 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.h
> @@ -155,7 +155,7 @@ i915_gem_context_vm(struct i915_gem_context *ctx)
>   }
>   
>   static inline struct i915_address_space *
> -i915_gem_context_get_vm_rcu(struct i915_gem_context *ctx)
> +i915_gem_context_get_eb_vm(struct i915_gem_context *ctx)
>   {
>   	struct i915_address_space *vm;
>   
> diff --git a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
> index a094f3ce1a90..6c68fe26bb32 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
> @@ -1456,7 +1456,7 @@ static int igt_tmpfs_fallback(void *arg)
>   	struct i915_gem_context *ctx = arg;
>   	struct drm_i915_private *i915 = ctx->i915;
>   	struct vfsmount *gemfs = i915->mm.gemfs;
> -	struct i915_address_space *vm = i915_gem_context_get_vm_rcu(ctx);
> +	struct i915_address_space *vm = i915_gem_context_get_eb_vm(ctx);
>   	struct drm_i915_gem_object *obj;
>   	struct i915_vma *vma;
>   	u32 *vaddr;
> @@ -1512,7 +1512,7 @@ static int igt_shrink_thp(void *arg)
>   {
>   	struct i915_gem_context *ctx = arg;
>   	struct drm_i915_private *i915 = ctx->i915;
> -	struct i915_address_space *vm = i915_gem_context_get_vm_rcu(ctx);
> +	struct i915_address_space *vm = i915_gem_context_get_eb_vm(ctx);

Problem here (and probably elsewhere) is that this test does no "eb", 
nor even submits any requests for execution.

More so, execbuf path does currently rely on intel_context->vm which is 
always set. So I really wonder how it would look, what I touched on 
elsewhere in the thread, if we instead made ctx->vm always point to 
something. It would align the rules between intel_context and GEM 
context and may end up with a more consistent situation.

Regards,

Tvrtko

>   	struct drm_i915_gem_object *obj;
>   	struct i915_gem_engines_iter it;
>   	struct intel_context *ce;
> diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
> index 4d2758718d21..fc7fb33a3a52 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
> @@ -1528,7 +1528,7 @@ static int write_to_scratch(struct i915_gem_context *ctx,
>   
>   	intel_gt_chipset_flush(engine->gt);
>   
> -	vm = i915_gem_context_get_vm_rcu(ctx);
> +	vm = i915_gem_context_get_eb_vm(ctx);
>   	vma = i915_vma_instance(obj, vm, NULL);
>   	if (IS_ERR(vma)) {
>   		err = PTR_ERR(vma);
> @@ -1607,7 +1607,7 @@ static int read_from_scratch(struct i915_gem_context *ctx,
>   	if (GRAPHICS_VER(i915) >= 8) {
>   		const u32 GPR0 = engine->mmio_base + 0x600;
>   
> -		vm = i915_gem_context_get_vm_rcu(ctx);
> +		vm = i915_gem_context_get_eb_vm(ctx);
>   		vma = i915_vma_instance(obj, vm, NULL);
>   		if (IS_ERR(vma)) {
>   			err = PTR_ERR(vma);
> diff --git a/drivers/gpu/drm/i915/gt/selftest_execlists.c b/drivers/gpu/drm/i915/gt/selftest_execlists.c
> index f12ffe797639..b3863abc51f5 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_execlists.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_execlists.c
> @@ -3493,7 +3493,7 @@ static int smoke_submit(struct preempt_smoke *smoke,
>   	if (batch) {
>   		struct i915_address_space *vm;
>   
> -		vm = i915_gem_context_get_vm_rcu(ctx);
> +		vm = i915_gem_context_get_eb_vm(ctx);
>   		vma = i915_vma_instance(batch, vm, NULL);
>   		i915_vm_put(vm);
>   		if (IS_ERR(vma))
> diff --git a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
> index 2c1ed32ca5ac..8be23e0f9306 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
> @@ -117,7 +117,7 @@ static struct i915_request *
>   hang_create_request(struct hang *h, struct intel_engine_cs *engine)
>   {
>   	struct intel_gt *gt = h->gt;
> -	struct i915_address_space *vm = i915_gem_context_get_vm_rcu(h->ctx);
> +	struct i915_address_space *vm = i915_gem_context_get_eb_vm(h->ctx);
>   	struct drm_i915_gem_object *obj;
>   	struct i915_request *rq = NULL;
>   	struct i915_vma *hws, *vma;
> diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
> index f843a5040706..2d60a5a5b065 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
> @@ -1300,7 +1300,7 @@ static int exercise_mock(struct drm_i915_private *i915,
>   	if (!ctx)
>   		return -ENOMEM;
>   
> -	vm = i915_gem_context_get_vm_rcu(ctx);
> +	vm = i915_gem_context_get_eb_vm(ctx);
>   	err = func(vm, 0, min(vm->total, limit), end_time);
>   	i915_vm_put(vm);
>   
> @@ -1848,7 +1848,7 @@ static int igt_cs_tlb(void *arg)
>   		goto out_unlock;
>   	}
>   
> -	vm = i915_gem_context_get_vm_rcu(ctx);
> +	vm = i915_gem_context_get_eb_vm(ctx);
>   	if (i915_is_ggtt(vm))
>   		goto out_vm;
>   
> diff --git a/drivers/gpu/drm/i915/selftests/i915_vma.c b/drivers/gpu/drm/i915/selftests/i915_vma.c
> index dd0607254a95..79ba72da0813 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_vma.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_vma.c
> @@ -118,7 +118,7 @@ static int create_vmas(struct drm_i915_private *i915,
>   				struct i915_vma *vma;
>   				int err;
>   
> -				vm = i915_gem_context_get_vm_rcu(ctx);
> +				vm = i915_gem_context_get_eb_vm(ctx);
>   				vma = checked_vma_instance(obj, vm, NULL);
>   				i915_vm_put(vm);
>   				if (IS_ERR(vma))
> 
