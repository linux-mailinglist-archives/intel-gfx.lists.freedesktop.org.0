Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CE5C8CA9E4
	for <lists+intel-gfx@lfdr.de>; Tue, 21 May 2024 10:25:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D86AE10E0C8;
	Tue, 21 May 2024 08:25:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cvQBSqmz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B33110E0C8
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 May 2024 08:25:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716279940; x=1747815940;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=KWQmb3XByW1QuatPajDxij/6NoC6mLDqXqUg5Ql+VS4=;
 b=cvQBSqmz0FFr8+DiHowIxcOXRO/sgZNpgFGTM5D9i3O7o5xg/dp4pPxQ
 ZL9Fs4wA1Lpj84nIHkfDUjdsqIzL5ewHAkZyhfpc84lf5neeZUy7XLH63
 neJSSgNOtvf44vOFPsFEFysG2/5YhN1DbpC0nI5i0uDPrAa9WWUlOw+dz
 m8w5VmLj+obihM02y/vFlYMP+p8sZescGmBA9S6+7SnyANItMyw8iLSRQ
 VA6OaaMCSs6HK8XQ5X4ah3TZpFNcMupc+UjYgmUO0F1KwZeNE2tnAzxFB
 3g8L1fkIL/WA6T5LMtEDPBpRUCae4Xo9vxZj/GzCfskaF+glFai5H1IS2 A==;
X-CSE-ConnectionGUID: 4LW1wjeSQHm/zGTRSstR3g==
X-CSE-MsgGUID: M0syZktZTgW797rg7xHqSg==
X-IronPort-AV: E=McAfee;i="6600,9927,11078"; a="16293497"
X-IronPort-AV: E=Sophos;i="6.08,177,1712646000"; d="scan'208";a="16293497"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2024 01:25:39 -0700
X-CSE-ConnectionGUID: ZPBmQ+A1Q26OGXhex4xxHw==
X-CSE-MsgGUID: 0umg6UgcR5y89TWr1phE2A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,177,1712646000"; d="scan'208";a="32745987"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2024 01:25:38 -0700
Date: Tue, 21 May 2024 11:25:31 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, jani.saarinen@intel.com
Subject: Re: [PATCH 2/5] drm/i915: Implement basic functions for ultrajoiner
 support
Message-ID: <ZkxaewqkBXyL77Cr@intel.com>
References: <20240520073839.23881-1-stanislav.lisovskiy@intel.com>
 <20240520073839.23881-3-stanislav.lisovskiy@intel.com>
 <ZkuVbZ8w6K5xoOnf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZkuVbZ8w6K5xoOnf@intel.com>
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

On Mon, May 20, 2024 at 09:24:45PM +0300, Ville Syrjälä wrote:
> On Mon, May 20, 2024 at 10:38:36AM +0300, Stanislav Lisovskiy wrote:
> > Lets implement or change basic functions required for ultrajoiner
> > support from atomic commit/modesetting point of view.
> > 
> > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 66 +++++++++++++++++---
> >  1 file changed, 56 insertions(+), 10 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > index c74721188e59..c390b79a43d6 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -242,33 +242,65 @@ is_trans_port_sync_mode(const struct intel_crtc_state *crtc_state)
> >  		is_trans_port_sync_slave(crtc_state);
> >  }
> >  
> > -static enum pipe joiner_master_pipe(const struct intel_crtc_state *crtc_state)
> > +static u8 joiner_master_pipes(const struct intel_crtc_state *crtc_state)
> >  {
> > -	return ffs(crtc_state->joiner_pipes) - 1;
> > +	return BIT(PIPE_A) | BIT(PIPE_C);
> 
> Not a fan of the hardcoded pipes.
> 
> We could just do something like 
> joiner_pipes & ((BIT(2) | BIT(0)) << joiner_master_pipe())
> or some variant of that.

Well, here we need to decide whats worse: hardcoded bits/shifts versus harcoded pipes..
I would vote for pipes then, with reasoning that they are at least more obvious and easy to read.
It is anyway quite easy to change those here or make it platform based, if needed.

> 
> > +}
> > +
> > +static u8 joiner_primary_master_pipes(const struct intel_crtc_state *crtc_state)
> > +{
> > +	return BIT(PIPE_A);
> 
> This is just the joiner_master_pipe() we already have.

I decided to convert joiner_master_pipe to joiner_master_pipes which should return a mask,
instead of a pipe.
That approach makes it more generic: for bigjoiner we still get only a single bit set in a mask,
however for ultrajoiner case we have now 2 master pipes, so we need a mask here.

joiner_primary_master_pipes is indeed supposed to return only a single primary master pipe,
however I decided that operating with masks instead of enum, seems more generic and practical approach,
for example if we need to get all pipes, which are not primary master, as below.

> 
> >  }
> >  
> >  u8 intel_crtc_joiner_slave_pipes(const struct intel_crtc_state *crtc_state)
> >  {
> > -	if (crtc_state->joiner_pipes)
> > -		return crtc_state->joiner_pipes & ~BIT(joiner_master_pipe(crtc_state));
> > +	if (intel_is_ultrajoiner(crtc_state))
> > +		return crtc_state->joiner_pipes & ~joiner_primary_master_pipes(crtc_state);
> > +	else if (intel_is_bigjoiner(crtc_state))
> > +		return crtc_state->joiner_pipes & ~joiner_master_pipes(crtc_state);
> >  	else
> >  		return 0;
> 
> I don't see why this should make any distinction between bigjoiner
> and ultrajoiner.
> 
> Either it returns everything that isn't the overall master,

For ultrajoiner that is slave pipes + secondary master pipe.
I.e it is everything that is below primary master.

> returns just all the bigjoiner slave pipes. Which one we want
> depends on the use case I guess. So we might need both variants.

Yeah, we need both ways: sometimes we need to get all pipes except primary master.
And sometimes we need to get only slave pipes in Bigjoiner terminology.
There are use cases for both.

However definition of slave pipe is a bit tricky here, because technically secondary
master pipe is also a slave pipe in relation to primary master pipe.

> 
> >  }
> >  
> > -bool intel_crtc_is_joiner_slave(const struct intel_crtc_state *crtc_state)
> > +bool intel_crtc_is_bigjoiner_slave(const struct intel_crtc_state *crtc_state)
> >  {
> >  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> >  
> >  	return crtc_state->joiner_pipes &&
> > -		crtc->pipe != joiner_master_pipe(crtc_state);
> > +		!(BIT(crtc->pipe) & joiner_master_pipes(crtc_state));
> 
> I'd probably add a joiner_slave_pipes() so that the logic is less
> convoluted.

Yeah, then joiner_slave_pipes would have to return only slave pipes in
bigjoiner terminology.

> 
> But I think first we need a solid agreement on the terminology,
> and stick to it consistently.
> 
> Perhaps we need names for?
> - the single master within the overall set of joined pipes
>   (be it ultrajoiner master or the bigjoiner/uncompressed
>    joiner master when ultrajoiner isn't used).
>   Just call this joiner_master perhaps? Or perhaps just call it
>   ultrajoiner_master but document that it is valid to use it
>   also for the non-ultrajoiner cases.

I think it would be quite natural to call it a primary master.

Initially BSpec called it that way and it sounds logical.

I.e now we have not only master/slave hierarchy, but also 
second level of hierarchy between masters: secondary master
and primary master.
Other names sound less obvious tbh: i.e "master of masters" :)
or "overall master" and etc..

That is why I'm a bit opposed to that Jani says to rename
master/slave to primary/secondary - we get a problem with
naming for Ultrajoiner then:
as we are going to have primary of primary pipe or smth like that.

Can't think of anything better than using primary/secondary master.
If anyone has better sounding ideas - you are welcome.

> - every other pipe in the set, ie. the inverse of above
>   Should be just {ultra,}joiner_slaves to match the
>   above I guess? Do we actually even need this? Not sure.
> 
> And the for the modeset sequencing we would perhaps need:
> - all bigjoiner masters within the entire set of joined pipes
> - all bigjoiner slaves within the entire set of joined pipes
>   (inverse of the above)
> 
> The one slight snag here is that the "bigjoiner" name is
> a bit incorrect for uncompressed joiner, but unless we want to
> come up with some other name for these then I guess we'll just
> have to live with it.
> 
> The other option is we try to come up with some generic names
> for the two levels of pipe roles.

We should just follow a KISS rule here, I guess..

Stan

> 
> -- 
> Ville Syrjälä
> Intel
