Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F2C68CB34E
	for <lists+intel-gfx@lfdr.de>; Tue, 21 May 2024 20:09:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9135E10E1F6;
	Tue, 21 May 2024 18:09:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Bo5iuRHR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15D5E10E1F6
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 May 2024 18:09:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716314975; x=1747850975;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=PmHA/1a6HKxOiqlbmDG4pyceNWVD+Dq9hWmEd+BVtK0=;
 b=Bo5iuRHRiGpCwOHL0silxDffY8WPXVjOib0XeixipWNvX+ZHIfjOVOHP
 YWRAFtFm+Ifin11DIgp8dpLWs7Kqfk3VyPOFPDeoDu/oP2/fR/z3ScvD1
 uz4Nv/s4wpIGj/QqljfW942wC+PV0MSXLWh+GBWCvWRn+O1MGq7WhCieK
 gZurWZjTCCwuKlZ9o8Uw6R8XTuvQtIbBX2OBfmUNrtcCV4SBRank1o/sJ
 eG9ohLiXoaL/773ZEZEQF/BD12zB/xU4VpUO327Bfpivi1ko96bQVOm4f
 6jym2v7GKJYkwIzkhM290uo2r2sVBeDRqG/CDkQjmkGvRhlSJcP2qsiAA Q==;
X-CSE-ConnectionGUID: RZ/4qILQSgSXINqll1OGPQ==
X-CSE-MsgGUID: zPjHfsBwSQiVrNXYaGMihQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11079"; a="16359317"
X-IronPort-AV: E=Sophos;i="6.08,178,1712646000"; d="scan'208";a="16359317"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2024 11:09:20 -0700
X-CSE-ConnectionGUID: m3/CAtEVQJ6kuYnb3aEldw==
X-CSE-MsgGUID: zLB385XhSd6mzwyoujkyHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,178,1712646000"; d="scan'208";a="32987757"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 21 May 2024 11:09:18 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 21 May 2024 21:09:16 +0300
Date: Tue, 21 May 2024 21:09:16 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Cc: intel-gfx@lists.freedesktop.org, jani.saarinen@intel.com
Subject: Re: [PATCH 2/5] drm/i915: Implement basic functions for ultrajoiner
 support
Message-ID: <ZkzjTAkAHjzZzr4e@intel.com>
References: <20240520073839.23881-1-stanislav.lisovskiy@intel.com>
 <20240520073839.23881-3-stanislav.lisovskiy@intel.com>
 <ZkuVbZ8w6K5xoOnf@intel.com> <ZkxaewqkBXyL77Cr@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZkxaewqkBXyL77Cr@intel.com>
X-Patchwork-Hint: comment
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

On Tue, May 21, 2024 at 11:25:31AM +0300, Lisovskiy, Stanislav wrote:
> On Mon, May 20, 2024 at 09:24:45PM +0300, Ville Syrjälä wrote:
> > On Mon, May 20, 2024 at 10:38:36AM +0300, Stanislav Lisovskiy wrote:
> > > Lets implement or change basic functions required for ultrajoiner
> > > support from atomic commit/modesetting point of view.
> > > 
> > > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_display.c | 66 +++++++++++++++++---
> > >  1 file changed, 56 insertions(+), 10 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > > index c74721188e59..c390b79a43d6 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > @@ -242,33 +242,65 @@ is_trans_port_sync_mode(const struct intel_crtc_state *crtc_state)
> > >  		is_trans_port_sync_slave(crtc_state);
> > >  }
> > >  
> > > -static enum pipe joiner_master_pipe(const struct intel_crtc_state *crtc_state)
> > > +static u8 joiner_master_pipes(const struct intel_crtc_state *crtc_state)
> > >  {
> > > -	return ffs(crtc_state->joiner_pipes) - 1;
> > > +	return BIT(PIPE_A) | BIT(PIPE_C);
> > 
> > Not a fan of the hardcoded pipes.
> > 
> > We could just do something like 
> > joiner_pipes & ((BIT(2) | BIT(0)) << joiner_master_pipe())
> > or some variant of that.
> 
> Well, here we need to decide whats worse: hardcoded bits/shifts versus harcoded pipes..
> I would vote for pipes then, with reasoning that they are at least more obvious and easy to read.
> It is anyway quite easy to change those here or make it platform based, if needed.

Hardcoded pipes aren't going to allow us to make the rest of the
code generic because the overall master pipe can be anything when
ultrajoiner isn't used.

Eg. the way we assign the bigjoiner_pipes is by simply setting a
some number (either two or four) of consecutive bits in the mask.
In order for that to keep working universally these functions must 
be able to answer questions based on that bitmask, no matter which
consecutive set of bits are set.

> 
> > 
> > > +}
> > > +
> > > +static u8 joiner_primary_master_pipes(const struct intel_crtc_state *crtc_state)
> > > +{
> > > +	return BIT(PIPE_A);
> > 
> > This is just the joiner_master_pipe() we already have.
> 
> I decided to convert joiner_master_pipe to joiner_master_pipes which should return a mask,
> instead of a pipe.
> That approach makes it more generic: for bigjoiner we still get only a single bit set in a mask,
> however for ultrajoiner case we have now 2 master pipes, so we need a mask here.
> 
> joiner_primary_master_pipes is indeed supposed to return only a single primary master pipe,
> however I decided that operating with masks instead of enum, seems more generic and practical approach,
> for example if we need to get all pipes, which are not primary master, as below.
> 
> > 
> > >  }
> > >  
> > >  u8 intel_crtc_joiner_slave_pipes(const struct intel_crtc_state *crtc_state)
> > >  {
> > > -	if (crtc_state->joiner_pipes)
> > > -		return crtc_state->joiner_pipes & ~BIT(joiner_master_pipe(crtc_state));
> > > +	if (intel_is_ultrajoiner(crtc_state))
> > > +		return crtc_state->joiner_pipes & ~joiner_primary_master_pipes(crtc_state);
> > > +	else if (intel_is_bigjoiner(crtc_state))
> > > +		return crtc_state->joiner_pipes & ~joiner_master_pipes(crtc_state);
> > >  	else
> > >  		return 0;
> > 
> > I don't see why this should make any distinction between bigjoiner
> > and ultrajoiner.
> > 
> > Either it returns everything that isn't the overall master,
> 
> For ultrajoiner that is slave pipes + secondary master pipe.
> I.e it is everything that is below primary master.

Same for for non-ultrajoiner. The only difference is that there is just
the one slave rather than three. But the callers don't need to care
about that in general.

I suspect there is probably only few uses cases for this:
- the master->slave state copying. And there we just want to
  go through all the slaves, no matter how many there are
- during the high level modeset sequence (and probably a few
  other places as well) we need to simply skip all the slaves,
  and again it doesn't matter how many there are

For the plane updates and such we probably don't really need to
care about the master/slave relationships, so the current thing
that just iterates all joined pipes will work perfectly fine.

And for actual modeset sequencing I suspect we just need the
bigjoiner master/slave bitmasks and make sure we iterate through
each in turn:
enable:
 1. for_each_reverse(bigjoiner_slaves)
 2. for_each_reverse(bigjoiner_masters)
disable:
 1. for_each(bigjoiner_masters)
 2. for_each(bigjoiner_slaves)

> > returns just all the bigjoiner slave pipes. Which one we want
> > depends on the use case I guess. So we might need both variants.
> 
> Yeah, we need both ways: sometimes we need to get all pipes except primary master.
> And sometimes we need to get only slave pipes in Bigjoiner terminology.
> There are use cases for both.
> 
> However definition of slave pipe is a bit tricky here, because technically secondary
> master pipe is also a slave pipe in relation to primary master pipe.
> 
> > 
> > >  }
> > >  
> > > -bool intel_crtc_is_joiner_slave(const struct intel_crtc_state *crtc_state)
> > > +bool intel_crtc_is_bigjoiner_slave(const struct intel_crtc_state *crtc_state)
> > >  {
> > >  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> > >  
> > >  	return crtc_state->joiner_pipes &&
> > > -		crtc->pipe != joiner_master_pipe(crtc_state);
> > > +		!(BIT(crtc->pipe) & joiner_master_pipes(crtc_state));
> > 
> > I'd probably add a joiner_slave_pipes() so that the logic is less
> > convoluted.
> 
> Yeah, then joiner_slave_pipes would have to return only slave pipes in
> bigjoiner terminology.
> 
> > 
> > But I think first we need a solid agreement on the terminology,
> > and stick to it consistently.
> > 
> > Perhaps we need names for?
> > - the single master within the overall set of joined pipes
> >   (be it ultrajoiner master or the bigjoiner/uncompressed
> >    joiner master when ultrajoiner isn't used).
> >   Just call this joiner_master perhaps? Or perhaps just call it
> >   ultrajoiner_master but document that it is valid to use it
> >   also for the non-ultrajoiner cases.
> 
> I think it would be quite natural to call it a primary master.
> 
> Initially BSpec called it that way and it sounds logical.
> 
> I.e now we have not only master/slave hierarchy, but also 
> second level of hierarchy between masters: secondary master
> and primary master.
> Other names sound less obvious tbh: i.e "master of masters" :)
> or "overall master" and etc..
> 
> That is why I'm a bit opposed to that Jani says to rename
> master/slave to primary/secondary - we get a problem with
> naming for Ultrajoiner then:
> as we are going to have primary of primary pipe or smth like that.
> 
> Can't think of anything better than using primary/secondary master.
> If anyone has better sounding ideas - you are welcome.

The bspec rename does this:
 master -> primary
 slave -> secondary

I do agree that what you're going for here would have been pretty
natural way to experss this, but I think that ship sailed when
the annoying bspec rename happened. If we now start using those
same names to refer to a completely different concept I think the
end result will be extremely confusing.

IMO we probably need to slighly extend the ultrajoiner and bigjoiners
terms to cover all the joiner cases, which would look something like this:
- ultrajoiner master/primary = the first pipe in the set
- ultrajoiner slaves/secondaries = the rest of the pipes in the set
- bigjoiner masters/primaries = first pipe + third pipe + ... in the set
- bigjoiner slaves/secondaries = second pipe + fourth pipe + ... in the set

Or perhaps we just drop the "ultra" part form the first two and
speak of just "joiner" in general when referring to things on
that level?

Either that or we try to invent some new terminology for these
two levels of roles that doesn't conflict badly with the bspec
terminology. What that would be I'm not sure. Up/down,
heads/tails, noble/peasant, apple/orange? Nothing truly
inspiring comes to mind right now.

-- 
Ville Syrjälä
Intel
