Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 575FF48DF10
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jan 2022 21:36:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B96210E46F;
	Thu, 13 Jan 2022 20:36:24 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28FDC10E46F;
 Thu, 13 Jan 2022 20:36:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642106183; x=1673642183;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=2aY8EzxWFy8+19kb3oXxqgvVJ1wbTP5tECnGCiFQnBw=;
 b=NCGcNnyVa9S/fdr74i+33tfEL7o2AFV0xRXLax230gMJZ4w9Vv2yff8G
 WHBLGQ7GmhF5gV1onVkFsp1a1pMApR2w1RPYzA0U8syxY97iKEzdqqkqm
 XgH3eKm/KqGuU42q+DYKk/tjgLEl3wJ3fNuFiE1Ez/19GwCycxZNFNy11
 HO3LGM/8kRYeY3clxYTB0gU8+21PZ9voGxjpYrqo033SjIfL2ZKENK99m
 qiJ9vvm+nli5TCjXpHfB9imLjOkMCi8GkfMtEgKeBTprBYH607x4Mqhj/
 1MUxjJ/P1VVJoYkSXsdRBcML0mzKa3QzO47KAFOpRiIQ9OLxjb9z7Y779 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10226"; a="268469263"
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="268469263"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 12:36:22 -0800
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="691939769"
Received: from jons-linux-dev-box.fm.intel.com (HELO jons-linux-dev-box)
 ([10.1.27.20])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 12:36:22 -0800
Date: Thu, 13 Jan 2022 12:30:32 -0800
From: Matthew Brost <matthew.brost@intel.com>
To: John.C.Harrison@Intel.com
Message-ID: <20220113203032.GA13249@jons-linux-dev-box>
References: <20220113195947.1536897-1-John.C.Harrison@Intel.com>
 <20220113195947.1536897-10-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220113195947.1536897-10-John.C.Harrison@Intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [igt-dev] [PATCH v3 i-g-t 09/15]
 tests/i915/i915_hangman: Remove reliance on context persistance
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
Cc: IGT-Dev@Lists.FreeDesktop.Org, Intel-GFX@Lists.FreeDesktop.Org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 13, 2022 at 11:59:41AM -0800, John.C.Harrison@Intel.com wrote:
> From: John Harrison <John.C.Harrison@Intel.com>
> 
> The hang test was relying on context persitence for no particular
> reason. That is, it would set a bunch of background spinners running
> then immediately destroy the active contexts but expect the spinners
> to keep spinning. With the current implementation of context
> persistence in i915, that means that super high priority pings are
> sent to each engine at the start of the test. Depending upon the
> timing and platform, one of those unexpected pings could cause test
> failures.
> 
> There is no need to require context persitence in this test. So change
> to managing the contexts cleanly and only destroying them when they
> are no longer in use.
> 
> Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
> ---
>  tests/i915/i915_hangman.c | 15 ++++++++++-----
>  1 file changed, 10 insertions(+), 5 deletions(-)
> 
> diff --git a/tests/i915/i915_hangman.c b/tests/i915/i915_hangman.c
> index 918418760..6601db5f6 100644
> --- a/tests/i915/i915_hangman.c
> +++ b/tests/i915/i915_hangman.c
> @@ -289,27 +289,29 @@ test_engine_hang(const intel_ctx_t *ctx,
>  		 const struct intel_execution_engine2 *e, unsigned int flags)
>  {
>  	const struct intel_execution_engine2 *other;
> -	const intel_ctx_t *tmp_ctx;
> +	const intel_ctx_t *local_ctx[GEM_MAX_ENGINES];

This is fine for now as GEM_MAX_ENGINES is relatively small but what if
we change this to large value, let's say 4k? I think the stack could
overflow then. Maybe not a concern, maybe it is? I'll leave this up to
if this should be kmalloc'd or not in the next rev.

Everything else looks good.

With that:
Reviewed-by: Matthew Brost <matthew.brost@intel.com>

>  	igt_spin_t *spin, *next;
>  	IGT_LIST_HEAD(list);
>  	uint64_t ahnd = get_reloc_ahnd(device, ctx->id), ahndN;
> +	int num_ctx;
>  
>  	igt_skip_on(flags & IGT_SPIN_INVALID_CS &&
>  		    gem_engine_has_cmdparser(device, &ctx->cfg, e->flags));
>  
>  	/* Fill all the other engines with background load */
> +	num_ctx = 0;
>  	for_each_ctx_engine(device, ctx, other) {
>  		if (other->flags == e->flags)
>  			continue;
>  
> -		tmp_ctx = intel_ctx_create(device, &ctx->cfg);
> -		ahndN = get_reloc_ahnd(device, tmp_ctx->id);
> +		local_ctx[num_ctx] = intel_ctx_create(device, &ctx->cfg);
> +		ahndN = get_reloc_ahnd(device, local_ctx[num_ctx]->id);
>  		spin = __igt_spin_new(device,
>  				      .ahnd = ahndN,
> -				      .ctx = tmp_ctx,
> +				      .ctx = local_ctx[num_ctx],
>  				      .engine = other->flags,
>  				      .flags = IGT_SPIN_FENCE_OUT);
> -		intel_ctx_destroy(device, tmp_ctx);
> +		num_ctx++;
>  
>  		igt_list_move(&spin->link, &list);
>  	}
> @@ -339,7 +341,10 @@ test_engine_hang(const intel_ctx_t *ctx,
>  		igt_spin_free(device, spin);
>  		put_ahnd(ahndN);
>  	}
> +
>  	put_ahnd(ahnd);
> +	while (num_ctx)
> +		intel_ctx_destroy(device, local_ctx[--num_ctx]);
>  
>  	check_alive();
>  }
> -- 
> 2.25.1
> 
