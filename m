Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C21E475214B
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jul 2023 14:31:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13F1710E129;
	Thu, 13 Jul 2023 12:31:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2006010E129
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jul 2023 12:31:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689251496; x=1720787496;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=34l4Es64TkG+BRaZcAM6I3O5KnuJbcBO32lMw1wbgdk=;
 b=dwgoQnWwFMcjTXgV7r7bvQeigwsmhr5uhLif/8qVWkG/llBTRS0LywqR
 isGeDlmCkyfZZKQYZc5MMYz57MOdl7HNOYZwxxcvhxtlXHbYzUfdQc9ia
 vtnPWQQuCvpiOQRTV/AoVv6jwJL0lc59ZbmWbCrQ9BU2heDA6VAqEjgAK
 TK8M0MOfv0GvnPC8Tc6pJ/YC1jQGhRRksYHpoEKViRHRdkBywWrNOxobn
 nRB/rhMoO4EMJ+IS39aSq5XAli5A9brE3/RU/TFpPD/qYz0vkEFIrT2rf
 CiEhPKNSxiQUiVUiJd3fFtR08NkdFqy7/bsO7IkxnkJA/aDFQ/U6pncL2 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10770"; a="365206306"
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="365206306"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2023 05:31:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10770"; a="866531337"
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="866531337"
Received: from hierlema-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.251.221.142])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2023 05:31:32 -0700
Date: Thu, 13 Jul 2023 14:31:24 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Nirmoy Das <nirmoy.das@linux.intel.com>
Message-ID: <ZK/unFmdU3zZwVji@ashyti-mobl2.lan>
References: <20230627094327.134775-1-andi.shyti@linux.intel.com>
 <20230627094327.134775-3-andi.shyti@linux.intel.com>
 <2fcc7f87-c94a-e593-e76d-1f8b79827509@linux.intel.com>
 <CH0PR11MB54440BB204DF21FC6EAEA9B9E536A@CH0PR11MB5444.namprd11.prod.outlook.com>
 <5e1c14e9-ddd2-bd64-eab5-aeed05d36004@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <5e1c14e9-ddd2-bd64-eab5-aeed05d36004@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 2/4] drm/i915/gt: Ensure memory quiesced
 before invalidation
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
Cc: Intel GFX <intel-gfx@lists.freedesktop.org>, "Cavitt,
 Jonathan" <jonathan.cavitt@intel.com>, Chris Wilson <chris@chris-wilson.co.uk>,
 "Roper, Matthew D" <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Nirmoy and Jonathan,

> > > > @@ -202,6 +202,13 @@ int gen12_emit_flush_rcs(struct i915_request *rq, u32 mode)
> > > >    {
> > > >    	struct intel_engine_cs *engine = rq->engine;
> > > > +	/*
> > > > +	 * Aux invalidations on Aux CCS platforms require
> > > > +	 * memory traffic is quiesced prior.
> > > I see that we are doing aux inval on EMIT_INVALIDATE so it make sense to
> > > 
> > >   do if ((mode & EMIT_INVALIDATE) && !HAS_FLAT_CCS(engine->i915) )
> > > 
> > This is agreeable, though I don't think there's any instances of us calling gen12_emit_flush_rcs with a blank mode,
> > since that wouldn't accomplish anything.  So I don't think the additional check/safety net is necessary, but it doesn't
> > hurt to have.

so... do we agree here that we don't add anything? I don't really
mind...

Or, I can queue up a patch 5 adding this "pedantic" check and we
can discuss it separately.

> > > > +	 */
> > > > +	if (!HAS_FLAT_CCS(engine->i915))
> > > > +		mode |= EMIT_FLUSH;
> > > I think this generic EMIT_FLUSH is not enough. I seeing some missing
> > > flags for PIPE_CONTROL
> > > 
> > > As per https://gfxspecs.intel.com/Predator/Home/Index/43904. It makes
> > > sense to move this to a
> > > 
> > > new function given the complexity of PIPE_CONTROL flags requires for this.
> > > 
> > I'm assuming when you're talking about the missing flags for PIPE_CONTROL, you're
> > referring to CCS Flush, correct?  Because every other flag is already covered in the
> > EMIT_FLUSH path.
> 
> Yes, CCS Flush and I don't see a L3 fabric flush as well.
> 
> 
> > 
> > I feel like I had this conversation with Matt while the internal version was
> > developed back in February, and the consensus was that the CCS Flush
> > requirement was already covered.
> 
> Wasn't aware of this, would be nice to have a confirmation and a comment so
> we
> 
> don't get confused in future.
> 
> >    On the other hand, it looks like the CCS Flush
> > requirement was only recently added back in May, so it might be worth
> > double-checking at the very least.
> > 
> > Although... if CCS Flush is a missing flag, I wonder how we're supposed to set it,
> > as there doesn’t appear to be a definition for such a flag in intel_gpu_commands.h...
> 
> 
> Yes, not yet but we should add a flag for that.

Is it OK if I add in the comment that EMIT_FLUSH covers the CCS
flushing?

Andi
