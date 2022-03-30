Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BB93E4ECD90
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Mar 2022 21:56:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFE5C10E76F;
	Wed, 30 Mar 2022 19:56:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com
 [IPv6:2a00:1450:4864:20::542])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0650510E76F
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Mar 2022 19:56:27 +0000 (UTC)
Received: by mail-ed1-x542.google.com with SMTP id y10so25697121edv.7
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Mar 2022 12:56:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=D+YccJmqrA00EDEKyxHzoA4sj1LHauTMTpQomMr5w3A=;
 b=e/IQLNyeAvr06A7JWTeahGjvkE4A6VaYNSs7MyBWH0g0TjETW7qUOINwEbjsRi3u5/
 xH+l9eznOiRNWLCOfBPnvR6MVgUPEMLcdNm/qXKp2Zxwgz9QBy4TDjDxse1+YurQ5Zy9
 efOkcgvgSI8/V71L9fvydhJ7qywgGupZoA9k0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=D+YccJmqrA00EDEKyxHzoA4sj1LHauTMTpQomMr5w3A=;
 b=o76hz9ErZJCBOooOCibK4kugS8kM0S5PpBJgLbySxRNNkUNMmgnW80btjM0+mY9swN
 SUosEfEq/uc4Vg/y1DAHtkcTChTPfUrSbofwArp9A5lmZRIcBYTwI0ayL3pVpGWqO5rP
 d5Pd55XNgGUJY+Mn5TNJbNr/Na5x9cwDzN21t8Z2CP+wjVa4f8dpemuu8WFpoj137ilK
 MmULDWV+4uMu8cEaCu9g3L391DjFwmOpddwwaQx8a3bhsxZzyZND79ZlxRWkafk7gfUz
 GjgPgtTD+C63d3P4dfFNATTVpzfPmzPniJyKll/JIhyr1eBeZVBDbPes21hVlKrnUFoB
 2OLA==
X-Gm-Message-State: AOAM5315X58iJkpFYY4eT3TNw28m3TpXeEg0pcGEc5yyDY9AyhOOI7Kh
 bBz0S1mgyGxFHeB4F8XenNZ6O/+LzFdLl4A7
X-Google-Smtp-Source: ABdhPJxtI57G00fxeMc9pewbICbR9JGUNUTQaAeRPdymBadR7hVMIpY+IHLtOrWsjOrXFnwxK9taIw==
X-Received: by 2002:a50:da8b:0:b0:415:a122:d7ad with SMTP id
 q11-20020a50da8b000000b00415a122d7admr12726664edj.123.1648670185532; 
 Wed, 30 Mar 2022 12:56:25 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id
 c12-20020a05640227cc00b004192114e521sm10377566ede.60.2022.03.30.12.56.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 30 Mar 2022 12:56:25 -0700 (PDT)
Date: Wed, 30 Mar 2022 21:56:23 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: John Harrison <john.c.harrison@intel.com>
Message-ID: <YkS159oDXxduNUTs@phenom.ffwll.local>
References: <20220308164742.692540-1-balasubramani.vivekanandan@intel.com>
 <8115ca91-6fb7-d495-e50e-024a18f3b7f8@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8115ca91-6fb7-d495-e50e-024a18f3b7f8@intel.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Subject: Re: [Intel-gfx] [PATCH] drm/i915/guc: Use iosys_map interface to
 update lrc_desc
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
Cc: michael.cheng@intel.com, intel-gfx@lists.freedesktop.org,
 lucas.demarchi@intel.com, dri-devel@lists.freedesktop.org,
 siva.mullati@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Mar 30, 2022 at 08:53:11AM -0700, John Harrison wrote:
> Sorry, only just seen this patch.
> 
> Please do not do this!
> 
> The entire lrc_desc_pool entity is being dropped as part of the update to
> GuC v70. That's why there was a recent patch set to significantly
> re-organise how/where it is used. That patch set explicitly said - this is
> all in preparation for removing the desc pool entirely.
> 
> Merging this change would just cause unnecessary churn and rebase conflicts
> with the v70 update patches that I am working on. Please wait until that
> lands and then see if there is anything left that you think still needs to
> be updated.

We're shiping guc now (on dg1, and also some of the integrated already
too), which means upgrading guc versions will break users and cause
regressions, and that's a no-go.

So unless that v70 upgrade is exclusively for dg2 or another platform
where enabling is still in the very early stages (i.e. the driver is
unusable for booting to desktop) ... how does this work?

Or do I misunderstand something here?
-Daniel

> 
> John.
> 
> 
> On 3/8/2022 08:47, Balasubramani Vivekanandan wrote:
> > This patch is continuation of the effort to move all pointers in i915,
> > which at any point may be pointing to device memory or system memory, to
> > iosys_map interface.
> > More details about the need of this change is explained in the patch
> > series which initiated this task
> > https://patchwork.freedesktop.org/series/99711/
> > 
> > This patch converts all access to the lrc_desc through iosys_map
> > interfaces.
> > 
> > Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> > Cc: John Harrison <John.C.Harrison@Intel.com>
> > Cc: Matthew Brost <matthew.brost@intel.com>
> > Cc: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> > Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
> > ---
> >   drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  2 +-
> >   .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 68 ++++++++++++-------
> >   2 files changed, 43 insertions(+), 27 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> > index e439e6c1ac8b..cbbc24dbaf0f 100644
> > --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> > +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> > @@ -168,7 +168,7 @@ struct intel_guc {
> >   	/** @lrc_desc_pool: object allocated to hold the GuC LRC descriptor pool */
> >   	struct i915_vma *lrc_desc_pool;
> >   	/** @lrc_desc_pool_vaddr: contents of the GuC LRC descriptor pool */
> > -	void *lrc_desc_pool_vaddr;
> > +	struct iosys_map lrc_desc_pool_vaddr;
> >   	/**
> >   	 * @context_lookup: used to resolve intel_context from guc_id, if a
> > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > index 9ec03234d2c2..84b17ded886a 100644
> > --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > @@ -467,13 +467,14 @@ static u32 *get_wq_pointer(struct guc_process_desc *desc,
> >   	return &__get_parent_scratch(ce)->wq[ce->parallel.guc.wqi_tail / sizeof(u32)];
> >   }
> > -static struct guc_lrc_desc *__get_lrc_desc(struct intel_guc *guc, u32 index)
> > +static void __write_lrc_desc(struct intel_guc *guc, u32 index,
> > +			     struct guc_lrc_desc *desc)
> >   {
> > -	struct guc_lrc_desc *base = guc->lrc_desc_pool_vaddr;
> > +	unsigned int size = sizeof(struct guc_lrc_desc);
> >   	GEM_BUG_ON(index >= GUC_MAX_CONTEXT_ID);
> > -	return &base[index];
> > +	iosys_map_memcpy_to(&guc->lrc_desc_pool_vaddr, index * size, desc, size);
> >   }
> >   static inline struct intel_context *__get_context(struct intel_guc *guc, u32 id)
> > @@ -489,20 +490,28 @@ static int guc_lrc_desc_pool_create(struct intel_guc *guc)
> >   {
> >   	u32 size;
> >   	int ret;
> > +	void *addr;
> >   	size = PAGE_ALIGN(sizeof(struct guc_lrc_desc) *
> >   			  GUC_MAX_CONTEXT_ID);
> >   	ret = intel_guc_allocate_and_map_vma(guc, size, &guc->lrc_desc_pool,
> > -					     (void **)&guc->lrc_desc_pool_vaddr);
> > +					     &addr);
> > +
> >   	if (ret)
> >   		return ret;
> > +	if (i915_gem_object_is_lmem(guc->lrc_desc_pool->obj))
> > +		iosys_map_set_vaddr_iomem(&guc->lrc_desc_pool_vaddr,
> > +					  (void __iomem *)addr);
> > +	else
> > +		iosys_map_set_vaddr(&guc->lrc_desc_pool_vaddr, addr);
> > +
> >   	return 0;
> >   }
> >   static void guc_lrc_desc_pool_destroy(struct intel_guc *guc)
> >   {
> > -	guc->lrc_desc_pool_vaddr = NULL;
> > +	iosys_map_clear(&guc->lrc_desc_pool_vaddr);
> >   	i915_vma_unpin_and_release(&guc->lrc_desc_pool, I915_VMA_RELEASE_MAP);
> >   }
> > @@ -513,9 +522,11 @@ static inline bool guc_submission_initialized(struct intel_guc *guc)
> >   static inline void _reset_lrc_desc(struct intel_guc *guc, u32 id)
> >   {
> > -	struct guc_lrc_desc *desc = __get_lrc_desc(guc, id);
> > +	unsigned int size = sizeof(struct guc_lrc_desc);
> > -	memset(desc, 0, sizeof(*desc));
> > +	GEM_BUG_ON(id >= GUC_MAX_CONTEXT_ID);
> > +
> > +	iosys_map_memset(&guc->lrc_desc_pool_vaddr, id * size, 0, size);
> >   }
> >   static inline bool ctx_id_mapped(struct intel_guc *guc, u32 id)
> > @@ -2233,7 +2244,7 @@ static void prepare_context_registration_info(struct intel_context *ce)
> >   	struct intel_engine_cs *engine = ce->engine;
> >   	struct intel_guc *guc = &engine->gt->uc.guc;
> >   	u32 ctx_id = ce->guc_id.id;
> > -	struct guc_lrc_desc *desc;
> > +	struct guc_lrc_desc desc;
> >   	struct intel_context *child;
> >   	GEM_BUG_ON(!engine->mask);
> > @@ -2245,13 +2256,13 @@ static void prepare_context_registration_info(struct intel_context *ce)
> >   	GEM_BUG_ON(i915_gem_object_is_lmem(guc->ct.vma->obj) !=
> >   		   i915_gem_object_is_lmem(ce->ring->vma->obj));
> > -	desc = __get_lrc_desc(guc, ctx_id);
> > -	desc->engine_class = engine_class_to_guc_class(engine->class);
> > -	desc->engine_submit_mask = engine->logical_mask;
> > -	desc->hw_context_desc = ce->lrc.lrca;
> > -	desc->priority = ce->guc_state.prio;
> > -	desc->context_flags = CONTEXT_REGISTRATION_FLAG_KMD;
> > -	guc_context_policy_init(engine, desc);
> > +	memset(&desc, 0, sizeof(desc));
> > +	desc.engine_class = engine_class_to_guc_class(engine->class);
> > +	desc.engine_submit_mask = engine->logical_mask;
> > +	desc.hw_context_desc = ce->lrc.lrca;
> > +	desc.priority = ce->guc_state.prio;
> > +	desc.context_flags = CONTEXT_REGISTRATION_FLAG_KMD;
> > +	guc_context_policy_init(engine, &desc);
> >   	/*
> >   	 * If context is a parent, we need to register a process descriptor
> > @@ -2259,36 +2270,41 @@ static void prepare_context_registration_info(struct intel_context *ce)
> >   	 */
> >   	if (intel_context_is_parent(ce)) {
> >   		struct guc_process_desc *pdesc;
> > +		struct guc_lrc_desc child_desc;
> >   		ce->parallel.guc.wqi_tail = 0;
> >   		ce->parallel.guc.wqi_head = 0;
> > -		desc->process_desc = i915_ggtt_offset(ce->state) +
> > +		desc.process_desc = i915_ggtt_offset(ce->state) +
> >   			__get_parent_scratch_offset(ce);
> > -		desc->wq_addr = i915_ggtt_offset(ce->state) +
> > +		desc.wq_addr = i915_ggtt_offset(ce->state) +
> >   			__get_wq_offset(ce);
> > -		desc->wq_size = WQ_SIZE;
> > +		desc.wq_size = WQ_SIZE;
> >   		pdesc = __get_process_desc(ce);
> >   		memset(pdesc, 0, sizeof(*(pdesc)));
> >   		pdesc->stage_id = ce->guc_id.id;
> > -		pdesc->wq_base_addr = desc->wq_addr;
> > -		pdesc->wq_size_bytes = desc->wq_size;
> > +		pdesc->wq_base_addr = desc.wq_addr;
> > +		pdesc->wq_size_bytes = desc.wq_size;
> >   		pdesc->wq_status = WQ_STATUS_ACTIVE;
> >   		for_each_child(ce, child) {
> > -			desc = __get_lrc_desc(guc, child->guc_id.id);
> > +			memset(&child_desc, 0, sizeof(child_desc));
> > -			desc->engine_class =
> > +			child_desc.engine_class =
> >   				engine_class_to_guc_class(engine->class);
> > -			desc->hw_context_desc = child->lrc.lrca;
> > -			desc->priority = ce->guc_state.prio;
> > -			desc->context_flags = CONTEXT_REGISTRATION_FLAG_KMD;
> > -			guc_context_policy_init(engine, desc);
> > +			child_desc.hw_context_desc = child->lrc.lrca;
> > +			child_desc.priority = ce->guc_state.prio;
> > +			child_desc.context_flags = CONTEXT_REGISTRATION_FLAG_KMD;
> > +			guc_context_policy_init(engine, &child_desc);
> > +
> > +			__write_lrc_desc(guc, child->guc_id.id, &child_desc);
> >   		}
> >   		clear_children_join_go_memory(ce);
> >   	}
> > +
> > +	__write_lrc_desc(guc, ctx_id, &desc);
> >   }
> >   static int try_context_registration(struct intel_context *ce, bool loop)
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
