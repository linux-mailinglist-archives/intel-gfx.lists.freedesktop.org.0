Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1F258CBC8E
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2024 10:01:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB3EA10EAE0;
	Wed, 22 May 2024 08:01:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ITLWL4Ds";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 57AD210F406
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 May 2024 08:01:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716364904; x=1747900904;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=uX4WCNq8Plsp2XDSfbLpwXxyuqT1XbozLygDiPRkDpo=;
 b=ITLWL4DsFFoKAgYS2HZNSzFtsPm0OmMAh2w27tsAv2nWmwFUT2qS8V/1
 1Ui5Fh8Rb487XdWtOJt57fsqTqIcPzwxgzGWCBZoer5Bgmkefpx4oFRe1
 pYWDyidkmnSjpVtCy/LobotDD3N6t5lYyQJ+ldl+dkAGl/3r0TS2DB4dc
 z8lOfFLMoTyNaqF5N7CVBQ6tfPTgJ1EhnXMzbYGD8PfQSlL3k9jK06y04
 GeGbRWVQmX7ZURBmI/kIoNOx4Z3Sb7qIPbKKA20qB2Ea+cW0ivvgDEvK/
 QgDwsQJGgAFpdlOyQN0Pd18Eq8LO6y1U6SJASvsLIBGmgEsZibXxGYS95 g==;
X-CSE-ConnectionGUID: ESLGCx0NRzaKRUGycV0sVA==
X-CSE-MsgGUID: sOOSdVFzSv2d5ZMLu7PHdQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11079"; a="12383528"
X-IronPort-AV: E=Sophos;i="6.08,179,1712646000"; d="scan'208";a="12383528"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2024 01:01:43 -0700
X-CSE-ConnectionGUID: QilCfgveT+CGpfG610sfnQ==
X-CSE-MsgGUID: dn2Nte1SRlifdcXOfHypRw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,179,1712646000"; d="scan'208";a="33113929"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2024 01:01:41 -0700
Date: Wed, 22 May 2024 11:01:32 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, jani.saarinen@intel.com
Subject: Re: [PATCH 2/5] drm/i915: Implement basic functions for ultrajoiner
 support
Message-ID: <Zk2mXN2BnJqVdfT+@intel.com>
References: <20240520073839.23881-1-stanislav.lisovskiy@intel.com>
 <20240520073839.23881-3-stanislav.lisovskiy@intel.com>
 <ZkuVbZ8w6K5xoOnf@intel.com> <ZkxaewqkBXyL77Cr@intel.com>
 <ZkzjTAkAHjzZzr4e@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZkzjTAkAHjzZzr4e@intel.com>
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

On Tue, May 21, 2024 at 09:09:16PM +0300, Ville Syrjälä wrote:
> On Tue, May 21, 2024 at 11:25:31AM +0300, Lisovskiy, Stanislav wrote:
> > On Mon, May 20, 2024 at 09:24:45PM +0300, Ville Syrjälä wrote:
> > > On Mon, May 20, 2024 at 10:38:36AM +0300, Stanislav Lisovskiy wrote:
> > > > Lets implement or change basic functions required for ultrajoiner
> > > > support from atomic commit/modesetting point of view.
> > > > 
> > > > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_display.c | 66 +++++++++++++++++---
> > > >  1 file changed, 56 insertions(+), 10 deletions(-)
> > > > 
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > > > index c74721188e59..c390b79a43d6 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > > @@ -242,33 +242,65 @@ is_trans_port_sync_mode(const struct intel_crtc_state *crtc_state)
> > > >  		is_trans_port_sync_slave(crtc_state);
> > > >  }
> > > >  
> > > > -static enum pipe joiner_master_pipe(const struct intel_crtc_state *crtc_state)
> > > > +static u8 joiner_master_pipes(const struct intel_crtc_state *crtc_state)
> > > >  {
> > > > -	return ffs(crtc_state->joiner_pipes) - 1;
> > > > +	return BIT(PIPE_A) | BIT(PIPE_C);
> > > 
> > > Not a fan of the hardcoded pipes.
> > > 
> > > We could just do something like 
> > > joiner_pipes & ((BIT(2) | BIT(0)) << joiner_master_pipe())
> > > or some variant of that.
> > 
> > Well, here we need to decide whats worse: hardcoded bits/shifts versus harcoded pipes..
> > I would vote for pipes then, with reasoning that they are at least more obvious and easy to read.
> > It is anyway quite easy to change those here or make it platform based, if needed.
> 
> Hardcoded pipes aren't going to allow us to make the rest of the
> code generic because the overall master pipe can be anything when
> ultrajoiner isn't used.

joiner_master_pipes in current revision isn't supposed to calculate
master pipe for given crtc_state it just returns overall mask of the
pipes, which are allowed to be master. 

For actual calculation another function is supposed to be used, which is
intel_crtc_master_pipe. 
That will determine, if its ultrajoiner or bigjoiner and return correspondent
pipe. It is also based now on assumption that master pipe is always the
slave pipe - 1, which I also don't like, if one day BSpec decides to make it 
possible to have like master to be pipe B and slave to be pipe A,
then we are screwed with that approach. 
Thats why I would prefer overall to set all those relations by some platform
based or programmatically set table mappings, however I guess that won't go
through reviews :)

> 
> Eg. the way we assign the bigjoiner_pipes is by simply setting a
> some number (either two or four) of consecutive bits in the mask.
> In order for that to keep working universally these functions must 
> be able to answer questions based on that bitmask, no matter which
> consecutive set of bits are set.

You probably mean that stuff:

<------>if (intel_dp_need_ultrajoiner(intel_dp, adjusted_mode->crtc_clock))
<------><------>pipe_config->joiner_pipes = GENMASK(crtc->pipe + 3, crtc->pipe);
<------>else if (intel_dp_need_bigjoiner(intel_dp, connector,
<------><------><------><------><------> adjusted_mode->crtc_hdisplay,
<------><------><------><------><------> adjusted_mode->crtc_clock))
<------><------>pipe_config->joiner_pipes = GENMASK(crtc->pipe + 1, crtc->pipe);

That one is also about the same, in fact I think we should be able
to set this in a more meaningful way - what if some platform will support
3 but not all 4 pipes for joiner, or 5 pipes..
Best approach would be to use something like joiner_master_pipes | joiner_slave_pipes
functions there, which return platform based masks of pipes, because
this GENMASK is kinda hardcoded and not explicit enough.

> 
> > 
> > > 
> > > > +}
> > > > +
> > > > +static u8 joiner_primary_master_pipes(const struct intel_crtc_state *crtc_state)
> > > > +{
> > > > +	return BIT(PIPE_A);
> > > 
> > > This is just the joiner_master_pipe() we already have.
> > 
> > I decided to convert joiner_master_pipe to joiner_master_pipes which should return a mask,
> > instead of a pipe.
> > That approach makes it more generic: for bigjoiner we still get only a single bit set in a mask,
> > however for ultrajoiner case we have now 2 master pipes, so we need a mask here.
> > 
> > joiner_primary_master_pipes is indeed supposed to return only a single primary master pipe,
> > however I decided that operating with masks instead of enum, seems more generic and practical approach,
> > for example if we need to get all pipes, which are not primary master, as below.
> > 
> > > 
> > > >  }
> > > >  
> > > >  u8 intel_crtc_joiner_slave_pipes(const struct intel_crtc_state *crtc_state)
> > > >  {
> > > > -	if (crtc_state->joiner_pipes)
> > > > -		return crtc_state->joiner_pipes & ~BIT(joiner_master_pipe(crtc_state));
> > > > +	if (intel_is_ultrajoiner(crtc_state))
> > > > +		return crtc_state->joiner_pipes & ~joiner_primary_master_pipes(crtc_state);
> > > > +	else if (intel_is_bigjoiner(crtc_state))
> > > > +		return crtc_state->joiner_pipes & ~joiner_master_pipes(crtc_state);
> > > >  	else
> > > >  		return 0;
> > > 
> > > I don't see why this should make any distinction between bigjoiner
> > > and ultrajoiner.
> > > 
> > > Either it returns everything that isn't the overall master,
> > 
> > For ultrajoiner that is slave pipes + secondary master pipe.
> > I.e it is everything that is below primary master.
> 
> Same for for non-ultrajoiner. The only difference is that there is just
> the one slave rather than three. But the callers don't need to care
> about that in general.

There is a difference when we are doing actual register programming, there
we need to know exactly which pipes are just slaves, which pipe is secondary
or primary master.
However for things like state copying, yep we need to treat all except
primary master as slaves.

> 
> I suspect there is probably only few uses cases for this:
> - the master->slave state copying. And there we just want to
>   go through all the slaves, no matter how many there are
> - during the high level modeset sequence (and probably a few
>   other places as well) we need to simply skip all the slaves,
>   and again it doesn't matter how many there are
> 
> For the plane updates and such we probably don't really need to
> care about the master/slave relationships, so the current thing
> that just iterates all joined pipes will work perfectly fine.
> 
> And for actual modeset sequencing I suspect we just need the
> bigjoiner master/slave bitmasks and make sure we iterate through
> each in turn:
> enable:
>  1. for_each_reverse(bigjoiner_slaves)
>  2. for_each_reverse(bigjoiner_masters)
> disable:
>  1. for_each(bigjoiner_masters)
>  2. for_each(bigjoiner_slaves)

I would just unite those 2 cycles using new macro, I introduced, where
we can set explicitly the order in which it should attend each pipe in mask.
Also it will be completely transparent from hsw_crtc_enable/hsw_crtc_disable
point of view, without even having to mention things like master/slave there.

> 
> > > returns just all the bigjoiner slave pipes. Which one we want
> > > depends on the use case I guess. So we might need both variants.
> > 
> > Yeah, we need both ways: sometimes we need to get all pipes except primary master.
> > And sometimes we need to get only slave pipes in Bigjoiner terminology.
> > There are use cases for both.
> > 
> > However definition of slave pipe is a bit tricky here, because technically secondary
> > master pipe is also a slave pipe in relation to primary master pipe.
> > 
> > > 
> > > >  }
> > > >  
> > > > -bool intel_crtc_is_joiner_slave(const struct intel_crtc_state *crtc_state)
> > > > +bool intel_crtc_is_bigjoiner_slave(const struct intel_crtc_state *crtc_state)
> > > >  {
> > > >  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> > > >  
> > > >  	return crtc_state->joiner_pipes &&
> > > > -		crtc->pipe != joiner_master_pipe(crtc_state);
> > > > +		!(BIT(crtc->pipe) & joiner_master_pipes(crtc_state));
> > > 
> > > I'd probably add a joiner_slave_pipes() so that the logic is less
> > > convoluted.
> > 
> > Yeah, then joiner_slave_pipes would have to return only slave pipes in
> > bigjoiner terminology.
> > 
> > > 
> > > But I think first we need a solid agreement on the terminology,
> > > and stick to it consistently.
> > > 
> > > Perhaps we need names for?
> > > - the single master within the overall set of joined pipes
> > >   (be it ultrajoiner master or the bigjoiner/uncompressed
> > >    joiner master when ultrajoiner isn't used).
> > >   Just call this joiner_master perhaps? Or perhaps just call it
> > >   ultrajoiner_master but document that it is valid to use it
> > >   also for the non-ultrajoiner cases.
> > 
> > I think it would be quite natural to call it a primary master.
> > 
> > Initially BSpec called it that way and it sounds logical.
> > 
> > I.e now we have not only master/slave hierarchy, but also 
> > second level of hierarchy between masters: secondary master
> > and primary master.
> > Other names sound less obvious tbh: i.e "master of masters" :)
> > or "overall master" and etc..
> > 
> > That is why I'm a bit opposed to that Jani says to rename
> > master/slave to primary/secondary - we get a problem with
> > naming for Ultrajoiner then:
> > as we are going to have primary of primary pipe or smth like that.
> > 
> > Can't think of anything better than using primary/secondary master.
> > If anyone has better sounding ideas - you are welcome.
> 
> The bspec rename does this:
>  master -> primary
>  slave -> secondary
> 
> I do agree that what you're going for here would have been pretty
> natural way to experss this, but I think that ship sailed when
> the annoying bspec rename happened. If we now start using those
> same names to refer to a completely different concept I think the
> end result will be extremely confusing.
> 
> IMO we probably need to slighly extend the ultrajoiner and bigjoiners
> terms to cover all the joiner cases, which would look something like this:
> - ultrajoiner master/primary = the first pipe in the set
> - ultrajoiner slaves/secondaries = the rest of the pipes in the set
> - bigjoiner masters/primaries = first pipe + third pipe + ... in the set
> - bigjoiner slaves/secondaries = second pipe + fourth pipe + ... in the set
> 
> Or perhaps we just drop the "ultra" part form the first two and
> speak of just "joiner" in general when referring to things on
> that level?

Then we won't be able to distinguish between primary master and secondary master.
BSpec offers to call it Ultrajoiner master and Ultrajoiner secondary
which is assuming to be Bigjoiner master, however still _quite_ confusing.
We can call the primary master to be Ultrajoiner primary and refer to the rest
of pipes like bigjoiner primary/secondary.

To me it sounds so much more complex compared to primary/secondary master/slave
to be honest.. Looks like we are inventing troubles for ourselves.

Stan

> 
> Either that or we try to invent some new terminology for these
> two levels of roles that doesn't conflict badly with the bspec
> terminology. What that would be I'm not sure. Up/down,
> heads/tails, noble/peasant, apple/orange? Nothing truly
> inspiring comes to mind right now.
> 
> -- 
> Ville Syrjälä
> Intel
