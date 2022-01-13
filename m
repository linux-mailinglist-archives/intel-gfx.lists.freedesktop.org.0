Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3922848DF28
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jan 2022 21:44:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7740910E48F;
	Thu, 13 Jan 2022 20:44:32 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2E4F10E4BB;
 Thu, 13 Jan 2022 20:44:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642106670; x=1673642670;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=H1gMG35K6UMZTE6Rebty3XUAYP6Ty+odmQ2gJ6i1ahc=;
 b=eSQVXdXn/lNhCwH58+1LNQbgpLxJmY/mGGvSFj0RamFQ9OXoRtdA3qg5
 ua4tWk/TdYBCCbHQHSz7ttNx87wI9w79hIXF5tukZQL1PbGtfhHDVaKeJ
 0Ixylm44Dtt6gxYkq9dEDkj1bDvNqPd8dUmLr/73J+HurIgPyA1PtS6Pf
 Lfqlo2p1mKkIgv6V31HVt78noi5XSwzV6IlU/byYZa7lCM2yc9cNjfPY4
 u8xawnfW01ntfoEq5rbW8iJboNdRDCPQIFAxzljHIWv6Kvngz9M0hiIpK
 pj2rNdcuvtAe2ojAn4c8zY+OEBebd11R0Sjaxrt+8D7ml83YrK+qq8JTg g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10226"; a="304840795"
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="304840795"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 12:44:30 -0800
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="491262109"
Received: from jons-linux-dev-box.fm.intel.com (HELO jons-linux-dev-box)
 ([10.1.27.20])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 12:44:30 -0800
Date: Thu, 13 Jan 2022 12:38:40 -0800
From: Matthew Brost <matthew.brost@intel.com>
To: John Harrison <john.c.harrison@intel.com>
Message-ID: <20220113203840.GA30203@jons-linux-dev-box>
References: <20220113195947.1536897-1-John.C.Harrison@Intel.com>
 <20220113195947.1536897-10-John.C.Harrison@Intel.com>
 <20220113203032.GA13249@jons-linux-dev-box>
 <2c9aca34-34ff-9bbc-f205-42850eef0256@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2c9aca34-34ff-9bbc-f205-42850eef0256@intel.com>
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

On Thu, Jan 13, 2022 at 12:42:28PM -0800, John Harrison wrote:
> On 1/13/2022 12:30, Matthew Brost wrote:
> > On Thu, Jan 13, 2022 at 11:59:41AM -0800, John.C.Harrison@Intel.com wrote:
> > > From: John Harrison <John.C.Harrison@Intel.com>
> > > 
> > > The hang test was relying on context persitence for no particular
> > > reason. That is, it would set a bunch of background spinners running
> > > then immediately destroy the active contexts but expect the spinners
> > > to keep spinning. With the current implementation of context
> > > persistence in i915, that means that super high priority pings are
> > > sent to each engine at the start of the test. Depending upon the
> > > timing and platform, one of those unexpected pings could cause test
> > > failures.
> > > 
> > > There is no need to require context persitence in this test. So change
> > > to managing the contexts cleanly and only destroying them when they
> > > are no longer in use.
> > > 
> > > Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
> > > ---
> > >   tests/i915/i915_hangman.c | 15 ++++++++++-----
> > >   1 file changed, 10 insertions(+), 5 deletions(-)
> > > 
> > > diff --git a/tests/i915/i915_hangman.c b/tests/i915/i915_hangman.c
> > > index 918418760..6601db5f6 100644
> > > --- a/tests/i915/i915_hangman.c
> > > +++ b/tests/i915/i915_hangman.c
> > > @@ -289,27 +289,29 @@ test_engine_hang(const intel_ctx_t *ctx,
> > >   		 const struct intel_execution_engine2 *e, unsigned int flags)
> > >   {
> > >   	const struct intel_execution_engine2 *other;
> > > -	const intel_ctx_t *tmp_ctx;
> > > +	const intel_ctx_t *local_ctx[GEM_MAX_ENGINES];
> > This is fine for now as GEM_MAX_ENGINES is relatively small but what if
> > we change this to large value, let's say 4k? I think the stack could
> > overflow then. Maybe not a concern, maybe it is? I'll leave this up to
> > if this should be kmalloc'd or not in the next rev.
> Seems unlikely we are going that big any time soon. And such stack reduction
> can always be done as part of any huge engine count update. Although, this
> is userland not kernel - you can slap gigabytes on the stack and it won't
> blow up ;).
> 

Right, I realized after I sent this the stack in user land matter far
less. Should be fine.

Matt

> John.
> 
> > Everything else looks good.
> > 
> > With that:
> > Reviewed-by: Matthew Brost <matthew.brost@intel.com>
> > 
> > >   	igt_spin_t *spin, *next;
> > >   	IGT_LIST_HEAD(list);
> > >   	uint64_t ahnd = get_reloc_ahnd(device, ctx->id), ahndN;
> > > +	int num_ctx;
> > >   	igt_skip_on(flags & IGT_SPIN_INVALID_CS &&
> > >   		    gem_engine_has_cmdparser(device, &ctx->cfg, e->flags));
> > >   	/* Fill all the other engines with background load */
> > > +	num_ctx = 0;
> > >   	for_each_ctx_engine(device, ctx, other) {
> > >   		if (other->flags == e->flags)
> > >   			continue;
> > > -		tmp_ctx = intel_ctx_create(device, &ctx->cfg);
> > > -		ahndN = get_reloc_ahnd(device, tmp_ctx->id);
> > > +		local_ctx[num_ctx] = intel_ctx_create(device, &ctx->cfg);
> > > +		ahndN = get_reloc_ahnd(device, local_ctx[num_ctx]->id);
> > >   		spin = __igt_spin_new(device,
> > >   				      .ahnd = ahndN,
> > > -				      .ctx = tmp_ctx,
> > > +				      .ctx = local_ctx[num_ctx],
> > >   				      .engine = other->flags,
> > >   				      .flags = IGT_SPIN_FENCE_OUT);
> > > -		intel_ctx_destroy(device, tmp_ctx);
> > > +		num_ctx++;
> > >   		igt_list_move(&spin->link, &list);
> > >   	}
> > > @@ -339,7 +341,10 @@ test_engine_hang(const intel_ctx_t *ctx,
> > >   		igt_spin_free(device, spin);
> > >   		put_ahnd(ahndN);
> > >   	}
> > > +
> > >   	put_ahnd(ahnd);
> > > +	while (num_ctx)
> > > +		intel_ctx_destroy(device, local_ctx[--num_ctx]);
> > >   	check_alive();
> > >   }
> > > -- 
> > > 2.25.1
> > > 
> 
