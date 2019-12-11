Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0D9711BF30
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2019 22:26:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FEC56EBF5;
	Wed, 11 Dec 2019 21:26:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B3F46EBF5
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2019 21:26:11 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19547352-1500050 for multiple; Wed, 11 Dec 2019 21:26:02 +0000
MIME-Version: 1.0
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191211211244.7831-5-daniele.ceraolospurio@intel.com>
References: <20191211211244.7831-1-daniele.ceraolospurio@intel.com>
 <20191211211244.7831-5-daniele.ceraolospurio@intel.com>
Message-ID: <157609956224.27099.17515091979474568822@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 11 Dec 2019 21:26:02 +0000
Subject: Re: [Intel-gfx] [RFC 4/5] drm/i915: move execlists selftests to
 their own file
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Daniele Ceraolo Spurio (2019-12-11 21:12:43)
> Done ahead of splitting the lrc file as well, to keep that patch
> smaller. Just a straight copy, with the exception of create_scratch()
> that has been made common to avoid having 3 instances of it.
> 
> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> Cc: Matthew Brost <matthew.brost@intel.com>
> ---
>  .../drm/i915/gem/selftests/igt_gem_utils.c    |   27 +
>  .../drm/i915/gem/selftests/igt_gem_utils.h    |    3 +
>  drivers/gpu/drm/i915/gt/intel_lrc.c           |    1 +
>  drivers/gpu/drm/i915/gt/selftest_execlists.c  | 3316 ++++++++++++++++
>  drivers/gpu/drm/i915/gt/selftest_lrc.c        | 3333 +----------------
>  drivers/gpu/drm/i915/gt/selftest_mocs.c       |   30 +-
>  6 files changed, 3351 insertions(+), 3359 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/gt/selftest_execlists.c
> 
> diff --git a/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c b/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c
> index 6718da20f35d..88109333cb79 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c
> @@ -15,6 +15,33 @@
>  
>  #include "i915_request.h"
>  
> +struct i915_vma *igt_create_scratch(struct intel_gt *gt)

_ggtt_scratch(size, coherency, pin) ?

As it stands, it's not general enough...

> +{
> +       struct drm_i915_gem_object *obj;
> +       struct i915_vma *vma;
> +       int err;
> +
> +       obj = i915_gem_object_create_internal(gt->i915, PAGE_SIZE);
> +       if (IS_ERR(obj))
> +               return ERR_CAST(obj);
> +
> +       i915_gem_object_set_cache_coherency(obj, I915_CACHING_CACHED);
> +
> +       vma = i915_vma_instance(obj, &gt->ggtt->vm, NULL);
> +       if (IS_ERR(vma)) {
> +               i915_gem_object_put(obj);
> +               return vma;
> +       }
> +
> +       err = i915_vma_pin(vma, 0, 0, PIN_GLOBAL);
> +       if (err) {
> +               i915_gem_object_put(obj);
> +               return ERR_PTR(err);
> +       }
> +
> +       return vma;
> +}
> +
>  struct i915_request *
>  igt_request_alloc(struct i915_gem_context *ctx, struct intel_engine_cs *engine)
>  {
> diff --git a/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.h b/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.h
> index 4221cf84d175..aae781f59cfc 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.h
> +++ b/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.h
> @@ -15,6 +15,9 @@ struct i915_vma;
>  
>  struct intel_context;
>  struct intel_engine_cs;
> +struct intel_gt;
> +
> +struct i915_vma *igt_create_scratch(struct intel_gt *gt);
>  
>  struct i915_request *
>  igt_request_alloc(struct i915_gem_context *ctx, struct intel_engine_cs *engine);
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index 3afae9a44911..fbdd3bdd06f1 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -4446,4 +4446,5 @@ intel_engine_in_execlists_submission_mode(const struct intel_engine_cs *engine)
>  
>  #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
>  #include "selftest_lrc.c"
> +#include "selftest_execlists.c"
>  #endif
> diff --git a/drivers/gpu/drm/i915/gt/selftest_execlists.c b/drivers/gpu/drm/i915/gt/selftest_execlists.c
> new file mode 100644
> index 000000000000..b58a4feb2ec4
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/gt/selftest_execlists.c

Note that many if not all (there are a few where the guc being a black
box we cannot poke at internals) of these should also be used for guc
submission as a BAT.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
