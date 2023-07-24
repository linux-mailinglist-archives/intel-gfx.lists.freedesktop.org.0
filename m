Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BE42575F3DC
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jul 2023 12:52:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BB4310E2E7;
	Mon, 24 Jul 2023 10:52:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD9FE10E2D5
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jul 2023 10:52:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690195955; x=1721731955;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=GgL+dxzpQv6Nrr8093frQ2AQSC7R2NrzVUDDuKL7yg4=;
 b=c6PpRy00F3Dhjny4faRynpOKwRx16NjLME1OzM76BbsPG3TtdMHWKCkt
 dFr2i05Sp199NEghCx/cv4ruvSdwKjMMFbMAMenb8cFA9XDqWA+2sd1jR
 TlTJOfT2kGV8IZB8TKNRO0VfGi99nma6xtBLShuZszmbtvcXQygfB+djc
 4zgdu0LhqdjtT9HX0EkmE0267y8C91l1DGMNRukDwQLgEDeaPHTTPVkwb
 7eC1BW2p49RRqnD2vPY6WXwal4YYcUTdLIou6LWX/tu1EZ9XWKnCp43Ay
 xunFZWubKhDASGac7TQo1cT4c1Qk07WRrZ5b0vlwTQxAQm7pUPxNcLgZi A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10780"; a="398311209"
X-IronPort-AV: E=Sophos;i="6.01,228,1684825200"; d="scan'208";a="398311209"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2023 03:52:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10780"; a="790911478"
X-IronPort-AV: E=Sophos;i="6.01,228,1684825200"; d="scan'208";a="790911478"
Received: from srichara-mobl.amr.corp.intel.com (HELO [10.209.170.186])
 ([10.209.170.186])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2023 03:52:33 -0700
Message-ID: <17a24d71-3cda-b280-0697-796b044b23ee@linux.intel.com>
Date: Mon, 24 Jul 2023 11:52:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20230721140559.830660-1-jonathan.cavitt@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20230721140559.830660-1-jonathan.cavitt@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH dii-client 1/2] drm/i915: Make
 i915_coherent_map_type GT-centric
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
Cc: matthew.d.roper@intel.com, nirmoy.das@intel.com, andi.shyti@intel.com,
 chris.p.wilson@linux.intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 21/07/2023 15:05, Jonathan Cavitt wrote:
> Refactor i915_coherent_map_type to be GT-centric rather than
> device-centric.  Each GT may require different coherency
> handling due to hardware workarounds.
> 
> Suggested-by: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_hdcp_gsc.c        |  2 +-
>   drivers/gpu/drm/i915/gem/i915_gem_object.h           |  2 +-
>   drivers/gpu/drm/i915/gem/i915_gem_pages.c            |  6 +++---
>   .../gpu/drm/i915/gem/selftests/i915_gem_migrate.c    | 12 ++++++------
>   drivers/gpu/drm/i915/gt/intel_engine_pm.c            |  2 +-
>   drivers/gpu/drm/i915/gt/intel_gt.c                   |  2 +-
>   drivers/gpu/drm/i915/gt/intel_gtt.c                  |  4 ++--
>   drivers/gpu/drm/i915/gt/intel_lrc.c                  |  2 +-
>   drivers/gpu/drm/i915/gt/intel_ring.c                 |  2 +-
>   drivers/gpu/drm/i915/gt/selftest_context.c           |  2 +-
>   drivers/gpu/drm/i915/gt/selftest_hangcheck.c         |  4 ++--
>   drivers/gpu/drm/i915/gt/selftest_lrc.c               |  2 +-
>   drivers/gpu/drm/i915/gt/shmem_utils.c                |  6 +++---
>   drivers/gpu/drm/i915/gt/shmem_utils.h                |  4 +++-
>   drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c            |  3 +--
>   drivers/gpu/drm/i915/gt/uc/intel_guc.c               |  2 +-
>   drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c            |  3 +--
>   drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c             |  2 +-
>   drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c           |  2 +-
>   drivers/gpu/drm/i915/pxp/intel_pxp_tee.c             |  2 +-
>   drivers/gpu/drm/i915/selftests/igt_spinner.c         |  2 +-
>   21 files changed, 34 insertions(+), 34 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> index ad0405375881..71da83f7e98b 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> @@ -632,7 +632,7 @@ static int intel_hdcp_gsc_initialize_message(struct drm_i915_private *i915,
>   		return PTR_ERR(obj);
>   	}
>   
> -	cmd_in = i915_gem_object_pin_map_unlocked(obj, i915_coherent_map_type(i915, obj, true));
> +	cmd_in = i915_gem_object_pin_map_unlocked(obj, i915_coherent_map_type(gt, obj, true));
>   	if (IS_ERR(cmd_in)) {
>   		drm_err(&i915->drm, "Failed to map gsc message page!\n");
>   		err = PTR_ERR(cmd_in);
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
> index 884a17275b3a..06220494d246 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
> @@ -716,7 +716,7 @@ void *__must_check i915_gem_object_pin_map(struct drm_i915_gem_object *obj,
>   void *__must_check i915_gem_object_pin_map_unlocked(struct drm_i915_gem_object *obj,
>   						    enum i915_map_type type);
>   
> -enum i915_map_type i915_coherent_map_type(struct drm_i915_private *i915,
> +enum i915_map_type i915_coherent_map_type(struct intel_gt *gt,
>   					  struct drm_i915_gem_object *obj,
>   					  bool always_coherent);
>   
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pages.c b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
> index 89fc8ea6bcfc..44d93ead96ff 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_pages.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
> @@ -465,16 +465,16 @@ void *i915_gem_object_pin_map_unlocked(struct drm_i915_gem_object *obj,
>   	return ret;
>   }
>   
> -enum i915_map_type i915_coherent_map_type(struct drm_i915_private *i915,
> +enum i915_map_type i915_coherent_map_type(struct intel_gt *gt,
>   					  struct drm_i915_gem_object *obj,
>   					  bool always_coherent)
>   {
>   	/*
>   	 * Wa_22016122933: always return I915_MAP_WC for MTL
>   	 */
> -	if (i915_gem_object_is_lmem(obj) || IS_METEORLAKE(i915))
> +	if (i915_gem_object_is_lmem(obj) || IS_METEORLAKE(gt->i915))
>   		return I915_MAP_WC;
> -	if (HAS_LLC(i915) || always_coherent)
> +	if (HAS_LLC(gt->i915) || always_coherent)
>   		return I915_MAP_WB;
>   	else
>   		return I915_MAP_WC;
> diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_migrate.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_migrate.c
> index a93a90b15907..1ad18a872750 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_migrate.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_migrate.c
> @@ -13,12 +13,12 @@
>   #include "selftests/igt_spinner.h"
>   
>   static int igt_fill_check_buffer(struct drm_i915_gem_object *obj,
> +				 struct intel_gt *gt,
>   				 bool fill)
>   {
> -	struct drm_i915_private *i915 = to_i915(obj->base.dev);
>   	unsigned int i, count = obj->base.size / sizeof(u32);
>   	enum i915_map_type map_type =
> -		i915_coherent_map_type(i915, obj, false);
> +		i915_coherent_map_type(gt, obj, false);
>   	u32 *cur;
>   	int err = 0;
>   
> @@ -66,7 +66,7 @@ static int igt_create_migrate(struct intel_gt *gt, enum intel_region_id src,
>   		if (err)
>   			continue;
>   
> -		err = igt_fill_check_buffer(obj, true);
> +		err = igt_fill_check_buffer(obj, gt, true);
>   		if (err)
>   			continue;
>   
> @@ -86,7 +86,7 @@ static int igt_create_migrate(struct intel_gt *gt, enum intel_region_id src,
>   		if (err)
>   			continue;
>   
> -		err = igt_fill_check_buffer(obj, false);
> +		err = igt_fill_check_buffer(obj, gt, false);
>   	}
>   	i915_gem_object_put(obj);
>   
> @@ -233,7 +233,7 @@ static int __igt_lmem_pages_migrate(struct intel_gt *gt,
>   			continue;
>   
>   		if (!vma) {
> -			err = igt_fill_check_buffer(obj, true);
> +			err = igt_fill_check_buffer(obj, gt, true);
>   			if (err)
>   				continue;
>   		}
> @@ -276,7 +276,7 @@ static int __igt_lmem_pages_migrate(struct intel_gt *gt,
>   		if (err)
>   			goto out_unlock;
>   	} else {
> -		err = igt_fill_check_buffer(obj, false);
> +		err = igt_fill_check_buffer(obj, gt, false);
>   	}
>   
>   out_unlock:
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_pm.c b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
> index 21af0ec52223..4cc9c5b8d28e 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_pm.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
> @@ -39,7 +39,7 @@ static void dbg_poison_ce(struct intel_context *ce)
>   
>   	if (ce->state) {
>   		struct drm_i915_gem_object *obj = ce->state->obj;
> -		int type = i915_coherent_map_type(ce->engine->i915, obj, true);
> +		int type = i915_coherent_map_type(ce->engine->gt, obj, true);
>   		void *map;
>   
>   		if (!i915_gem_object_trylock(obj, NULL))
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
> index 9f64d61dd5fc..aaa282b0725a 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
> @@ -591,7 +591,7 @@ static int __engines_record_defaults(struct intel_gt *gt)
>   			continue;
>   
>   		/* Keep a copy of the state's backing pages; free the obj */
> -		state = shmem_create_from_object(rq->context->state->obj);
> +		state = shmem_create_from_object(rq->context->state->obj, gt);
>   		if (IS_ERR(state)) {
>   			err = PTR_ERR(state);
>   			goto out;
> diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
> index 731d9f2bbc56..48f3a30dbc99 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
> @@ -89,7 +89,7 @@ int map_pt_dma(struct i915_address_space *vm, struct drm_i915_gem_object *obj)
>   	enum i915_map_type type;
>   	void *vaddr;
>   
> -	type = i915_coherent_map_type(vm->i915, obj, true);
> +	type = i915_coherent_map_type(vm->gt, obj, true);
>   	vaddr = i915_gem_object_pin_map_unlocked(obj, type);
>   	if (IS_ERR(vaddr))
>   		return PTR_ERR(vaddr);
> @@ -103,7 +103,7 @@ int map_pt_dma_locked(struct i915_address_space *vm, struct drm_i915_gem_object
>   	enum i915_map_type type;
>   	void *vaddr;
>   
> -	type = i915_coherent_map_type(vm->i915, obj, true);
> +	type = i915_coherent_map_type(vm->gt, obj, true);
>   	vaddr = i915_gem_object_pin_map(obj, type);
>   	if (IS_ERR(vaddr))
>   		return PTR_ERR(vaddr);
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index 1b710102390b..c45e6d8cbaac 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -1191,7 +1191,7 @@ lrc_pre_pin(struct intel_context *ce,
>   	GEM_BUG_ON(!i915_vma_is_pinned(ce->state));
>   
>   	*vaddr = i915_gem_object_pin_map(ce->state->obj,
> -					 i915_coherent_map_type(ce->engine->i915,
> +					 i915_coherent_map_type(ce->engine->gt,
>   								ce->state->obj,
>   								false) |
>   					 I915_MAP_OVERRIDE);
> diff --git a/drivers/gpu/drm/i915/gt/intel_ring.c b/drivers/gpu/drm/i915/gt/intel_ring.c
> index fb99143be98e..a058532cc1b8 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ring.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ring.c
> @@ -56,7 +56,7 @@ int intel_ring_pin(struct intel_ring *ring, struct i915_gem_ww_ctx *ww)
>   	if (i915_vma_is_map_and_fenceable(vma) && !HAS_LLC(vma->vm->i915)) {
>   		addr = (void __force *)i915_vma_pin_iomap(vma);
>   	} else {
> -		int type = i915_coherent_map_type(vma->vm->i915, vma->obj, false);
> +		int type = i915_coherent_map_type(vma->vm->gt, vma->obj, false);
>   
>   		addr = i915_gem_object_pin_map(vma->obj, type);
>   	}
> diff --git a/drivers/gpu/drm/i915/gt/selftest_context.c b/drivers/gpu/drm/i915/gt/selftest_context.c
> index 76fbae358072..87fad1bc15a0 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_context.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_context.c
> @@ -88,7 +88,7 @@ static int __live_context_size(struct intel_engine_cs *engine)
>   		goto err;
>   
>   	vaddr = i915_gem_object_pin_map_unlocked(ce->state->obj,
> -						 i915_coherent_map_type(engine->i915,
> +						 i915_coherent_map_type(engine->gt,
>   									ce->state->obj, false));
>   	if (IS_ERR(vaddr)) {
>   		err = PTR_ERR(vaddr);
> diff --git a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
> index 8b0d84f2aad2..fdc0b565ee21 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
> @@ -73,7 +73,7 @@ static int hang_init(struct hang *h, struct intel_gt *gt)
>   	h->seqno = memset(vaddr, 0xff, PAGE_SIZE);
>   
>   	vaddr = i915_gem_object_pin_map_unlocked(h->obj,
> -						 i915_coherent_map_type(gt->i915, h->obj, false));
> +						 i915_coherent_map_type(gt, h->obj, false));
>   	if (IS_ERR(vaddr)) {
>   		err = PTR_ERR(vaddr);
>   		goto err_unpin_hws;
> @@ -119,7 +119,7 @@ hang_create_request(struct hang *h, struct intel_engine_cs *engine)
>   		return ERR_CAST(obj);
>   	}
>   
> -	vaddr = i915_gem_object_pin_map_unlocked(obj, i915_coherent_map_type(gt->i915, obj, false));
> +	vaddr = i915_gem_object_pin_map_unlocked(obj, i915_coherent_map_type(gt, obj, false));
>   	if (IS_ERR(vaddr)) {
>   		i915_gem_object_put(obj);
>   		i915_vm_put(vm);
> diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> index a78a3d2c2e16..3d1daeac4c0c 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> @@ -1292,7 +1292,7 @@ static int compare_isolation(struct intel_engine_cs *engine,
>   	}
>   
>   	lrc = i915_gem_object_pin_map_unlocked(ce->state->obj,
> -					       i915_coherent_map_type(engine->i915,
> +					       i915_coherent_map_type(engine->gt,
>   								      ce->state->obj,
>   								      false));
>   	if (IS_ERR(lrc)) {
> diff --git a/drivers/gpu/drm/i915/gt/shmem_utils.c b/drivers/gpu/drm/i915/gt/shmem_utils.c
> index 449c9ed44382..3f2fea18746d 100644
> --- a/drivers/gpu/drm/i915/gt/shmem_utils.c
> +++ b/drivers/gpu/drm/i915/gt/shmem_utils.c
> @@ -31,9 +31,9 @@ struct file *shmem_create_from_data(const char *name, void *data, size_t len)
>   	return file;
>   }
>   
> -struct file *shmem_create_from_object(struct drm_i915_gem_object *obj)
> +struct file *shmem_create_from_object(struct drm_i915_gem_object *obj,
> +				      struct intel_gt *gt)
>   {
> -	struct drm_i915_private *i915 = to_i915(obj->base.dev);
>   	enum i915_map_type map_type;
>   	struct file *file;
>   	void *ptr;
> @@ -44,7 +44,7 @@ struct file *shmem_create_from_object(struct drm_i915_gem_object *obj)
>   		return file;
>   	}
>   
> -	map_type = i915_coherent_map_type(i915, obj, true);
> +	map_type = i915_coherent_map_type(gt, obj, true);
>   	ptr = i915_gem_object_pin_map_unlocked(obj, map_type);
>   	if (IS_ERR(ptr))
>   		return ERR_CAST(ptr);

Semi-random place to comment, but it highlights well how IMO the API 
change to i915_coherent_map_type is a bit questionable.

This is not a shared mapping so workaround should not apply. There is no 
GT here at all so it is just a charade (passed in artificially to 
satisfy the API change) and so wrong.

Another instance of where mapping looks to be not shared seems to be the 
gsc_fw_load_prepare hunk, although I am not entirely sure about the 
lifecycle there. Presumably we populate the fw image on the CPU and then 
never touch it again at runtime but maybe that's not true, don't know.

Basically all GuC/HuC/PCP ones I am also not sure if they shared 
mappings or not.

The other ones seem okay to me - I mean truly objects which can be 
accesses by CPU and GPU simultaneously.

So question is can we do better in terms of API clarity and runtime 
scope? For instance should we leave i915_coherent_map_type as is and 
just have this smarter logic in a new intel_gt_coherent_map_type?

Downside is two APIs, which can add confusion too. Upside 
shmem_create_from_object is not misleading and can use a more efficient 
access. Maybe some other call sites too. How much efficient access 
matters.. probably not a lot. So I am thinking mostly from the point of 
view of being truthful to what is the issue.

Or even helpers should have explicit "shared" in the name?

Anyway, I think it is at least worth a short discussion.

Regards,

Tvrtko

> diff --git a/drivers/gpu/drm/i915/gt/shmem_utils.h b/drivers/gpu/drm/i915/gt/shmem_utils.h
> index b2b04d88c6e5..743a56307216 100644
> --- a/drivers/gpu/drm/i915/gt/shmem_utils.h
> +++ b/drivers/gpu/drm/i915/gt/shmem_utils.h
> @@ -11,9 +11,11 @@
>   struct iosys_map;
>   struct drm_i915_gem_object;
>   struct file;
> +struct intel_gt;
>   
>   struct file *shmem_create_from_data(const char *name, void *data, size_t len);
> -struct file *shmem_create_from_object(struct drm_i915_gem_object *obj);
> +struct file *shmem_create_from_object(struct drm_i915_gem_object *obj,
> +				      struct intel_gt *gt);
>   
>   void *shmem_pin_map(struct file *file);
>   void shmem_unpin_map(struct file *file, void *ptr);
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c
> index ab1a456f833d..fb4933543f31 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c
> @@ -268,7 +268,6 @@ static int gsc_fw_load(struct intel_gsc_uc *gsc)
>   static int gsc_fw_load_prepare(struct intel_gsc_uc *gsc)
>   {
>   	struct intel_gt *gt = gsc_uc_to_gt(gsc);
> -	struct drm_i915_private *i915 = gt->i915;
>   	void *src;
>   
>   	if (!gsc->local)
> @@ -278,7 +277,7 @@ static int gsc_fw_load_prepare(struct intel_gsc_uc *gsc)
>   		return -ENOSPC;
>   
>   	src = i915_gem_object_pin_map_unlocked(gsc->fw.obj,
> -					       i915_coherent_map_type(i915, gsc->fw.obj, true));
> +					       i915_coherent_map_type(gt, gsc->fw.obj, true));
>   	if (IS_ERR(src))
>   		return PTR_ERR(src);
>   
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> index 2eb891b270ae..effb37727093 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> @@ -792,7 +792,7 @@ int intel_guc_allocate_and_map_vma(struct intel_guc *guc, u32 size,
>   		return PTR_ERR(vma);
>   
>   	vaddr = i915_gem_object_pin_map_unlocked(vma->obj,
> -						 i915_coherent_map_type(guc_to_gt(guc)->i915,
> +						 i915_coherent_map_type(guc_to_gt(guc),
>   									vma->obj, true));
>   	if (IS_ERR(vaddr)) {
>   		i915_vma_unpin_and_release(&vma, 0);
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c
> index 48f506a26e6d..ca95ddadc3a8 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c
> @@ -27,7 +27,6 @@ struct mtl_huc_auth_msg_out {
>   int intel_huc_fw_auth_via_gsccs(struct intel_huc *huc)
>   {
>   	struct intel_gt *gt = huc_to_gt(huc);
> -	struct drm_i915_private *i915 = gt->i915;
>   	struct drm_i915_gem_object *obj;
>   	struct mtl_huc_auth_msg_in *msg_in;
>   	struct mtl_huc_auth_msg_out *msg_out;
> @@ -43,7 +42,7 @@ int intel_huc_fw_auth_via_gsccs(struct intel_huc *huc)
>   	pkt_offset = i915_ggtt_offset(huc->heci_pkt);
>   
>   	pkt_vaddr = i915_gem_object_pin_map_unlocked(obj,
> -						     i915_coherent_map_type(i915, obj, true));
> +						     i915_coherent_map_type(gt, obj, true));
>   	if (IS_ERR(pkt_vaddr))
>   		return PTR_ERR(pkt_vaddr);
>   
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
> index 7aadad5639c3..4f316f010b55 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
> @@ -1213,7 +1213,7 @@ static int uc_fw_rsa_data_create(struct intel_uc_fw *uc_fw)
>   		return PTR_ERR(vma);
>   
>   	vaddr = i915_gem_object_pin_map_unlocked(vma->obj,
> -						 i915_coherent_map_type(gt->i915, vma->obj, true));
> +						 i915_coherent_map_type(gt, vma->obj, true));
>   	if (IS_ERR(vaddr)) {
>   		i915_vma_unpin_and_release(&vma, 0);
>   		err = PTR_ERR(vaddr);
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c b/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c
> index c7df47364013..8b5d3d129881 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c
> @@ -336,7 +336,7 @@ gsccs_create_buffer(struct intel_gt *gt,
>   	}
>   
>   	/* return a virtual pointer */
> -	*map = i915_gem_object_pin_map_unlocked(obj, i915_coherent_map_type(i915, obj, true));
> +	*map = i915_gem_object_pin_map_unlocked(obj, i915_coherent_map_type(gt, obj, true));
>   	if (IS_ERR(*map)) {
>   		drm_err(&i915->drm, "Failed to map gsccs backend %s.\n", bufname);
>   		err = PTR_ERR(*map);
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
> index 1ce07d7e8769..00630a1c8e77 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
> @@ -245,7 +245,7 @@ static int alloc_streaming_command(struct intel_pxp *pxp)
>   	}
>   
>   	/* map the lmem into the virtual memory pointer */
> -	cmd = i915_gem_object_pin_map_unlocked(obj, i915_coherent_map_type(i915, obj, true));
> +	cmd = i915_gem_object_pin_map_unlocked(obj, i915_coherent_map_type(pxp->ctrl_gt, obj, true));
>   	if (IS_ERR(cmd)) {
>   		drm_err(&i915->drm, "Failed to map gsc message page!\n");
>   		err = PTR_ERR(cmd);
> diff --git a/drivers/gpu/drm/i915/selftests/igt_spinner.c b/drivers/gpu/drm/i915/selftests/igt_spinner.c
> index 618d9386d554..b09e56427299 100644
> --- a/drivers/gpu/drm/i915/selftests/igt_spinner.c
> +++ b/drivers/gpu/drm/i915/selftests/igt_spinner.c
> @@ -97,7 +97,7 @@ int igt_spinner_pin(struct igt_spinner *spin,
>   	if (!spin->batch) {
>   		unsigned int mode;
>   
> -		mode = i915_coherent_map_type(spin->gt->i915, spin->obj, false);
> +		mode = i915_coherent_map_type(spin->gt, spin->obj, false);
>   		vaddr = igt_spinner_pin_obj(ce, ww, spin->obj, mode, &spin->batch_vma);
>   		if (IS_ERR(vaddr))
>   			return PTR_ERR(vaddr);
