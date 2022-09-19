Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BD505BD77F
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Sep 2022 00:35:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C9B310E078;
	Mon, 19 Sep 2022 22:35:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30BA710E1A4
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Sep 2022 22:35:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663626928; x=1695162928;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=QoFZInXizy6CYuxToMggwTbCqtGWkxZwG9QbZ2WCgLg=;
 b=LESNETsPdvT1MqqjWUV7rY6wrx8PMQONydItLIlJ1px35ZRgPnZh7kdz
 sW2wUZrEDFxGdW8fo/W+FURjvTkXvxIOu5RM2YGW0j6xfyRg/pt+UYe18
 wqu9x8iaF1iXWoDYiU1riSzbRZDpDmR7fu095MIIFDuIogqgBteUjrI6H
 +hVx1UcaSU7bFNFGI1EQi3cztJ8bQle1rM3Miba18VDw2i9b4A2JetRuu
 7U9h18VyOZPE/rhJB8zJErslUclwvC0uan1y109SALv+kQkw+TcnirT0h
 jQ2GaBpXgU59gUZ96G3xtKIhsXus7eJJVPi+zyuvk3gDx9hM2BdqUMP9K A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10475"; a="300916677"
X-IronPort-AV: E=Sophos;i="5.93,329,1654585200"; d="scan'208";a="300916677"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2022 15:35:27 -0700
X-IronPort-AV: E=Sophos;i="5.93,329,1654585200"; d="scan'208";a="744287594"
Received: from mdnavare-mobl1.jf.intel.com ([10.165.21.203])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2022 15:35:27 -0700
Date: Mon, 19 Sep 2022 15:35:48 -0700
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <20220919223548.GC1061693@mdnavare-mobl1.jf.intel.com>
References: <20220917004404.414981-1-anusha.srivatsa@intel.com>
 <20220917004404.414981-7-anusha.srivatsa@intel.com>
 <20220919194645.GA1061693@mdnavare-mobl1.jf.intel.com>
 <Yyja10cL3ltvGOnS@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Yyja10cL3ltvGOnS@intel.com>
Subject: Re: [Intel-gfx] [PATCH 6/6] drm/i915/display: Dump the new cdclk
 config values
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Sep 19, 2022 at 05:10:47PM -0400, Rodrigo Vivi wrote:
> On Mon, Sep 19, 2022 at 12:46:45PM -0700, Navare, Manasi wrote:
> > On Fri, Sep 16, 2022 at 05:44:04PM -0700, Anusha Srivatsa wrote:
> > > Add a helper function to get stringify values of the
> > > desired cdclk action and dump it with rest of the
> > > cdclk config values
> > > 
> > > Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> > 
> > Please add Suggested-by: field to give proper credits as per our
> > discussion. This applies to other patches as well to add proper credits
> > to other folks who suggested design changes/ fixes.
> > This needs to be followed as per the upstream patch review methodology.
> 
> Having the suggested by is a good way to give the proper credits when the whole
> big idea and design was co authored, or started by the other developer.
> 
> We really need to mind about it. However it is not a very good thing for all
> of the patches we have. Many ideas come out of conversation with many folks
> and we cannot simply start adding the suggested by list with all the names
> involved.
> 
> There's always a threshold there that we should mind. And the official rule
> as reference is this one:
> 
> "A Suggested-by: tag indicates that the patch idea is suggested by the person
> named and ensures credit to the person for the idea. Please note that this tag
> should not be added without the reporter’s permission, especially if the idea
>  was not posted in a public forum." [1]
> 
> As a reference we don't keep adding official suggested-by tags for any and all
> of the suggestions we receive during reviews. The simple name version in the
> commit message is what we traditionally uses for small things.

Thanks Rodrigo for the inputs. I agree with you in terms of not having
this for all patches. But particularly this patch was a suggestion that
came up through our offline discussion.
And in cases like this it is a good idea to be mindful about and give
respectful credits. For internal folks its not a big deal, but
Just want to make sure we dont lose the credibility in the community if
this is missed for external folks. People do spend time reviewing and
suggesting and improving codebase so it is good to be respectful and add
the tags for patches that are entirely someone else's suggestion.

Manasi

> 
> Looking to the history of this series here I see that this patch looks like
> an evolution of the previous series with small increment and suggestions from
> multiple folks. Not sure if it is really worthwhile to have to add the official
> tag and start to ping everyone to get the ack if it is okay or not to add it.
> 
> [1] - https://www.kernel.org/doc/html/latest/process/submitting-patches.html#using-reported-by-tested-by-reviewed-by-suggested-by-and-fixes
> 
> > 
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_cdclk.c | 18 ++++++++++++++++--
> > >  1 file changed, 16 insertions(+), 2 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > > index bc627daade3e..12f5e4d23245 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > > @@ -1688,6 +1688,19 @@ static u32 cdclk_squash_waveform(struct drm_i915_private *dev_priv,
> > >  
> > >  	return 0xffff;
> > >  }
> > 
> > Missing newline causing checkpatch error
> > 
> > Manasi
> > 
> > > +static const char *cdclk_sequence_to_string(enum cdclk_sequence cdclk_sequence)
> > > +{
> > > +	switch (cdclk_sequence) {
> > > +	case CDCLK_SQUASH_ONLY:
> > > +		return "Squash only";
> > > +	case CDCLK_CRAWL_ONLY:
> > > +		return "Crawl only";
> > > +	case CDCLK_LEGACY:
> > > +		return "Legacy method";
> > > +	default:
> > > +		return "Not a valid cdclk sequence";
> > > +	}
> > > +}
> > >  
> > >  static void dg2_prog_squash_ctl(struct drm_i915_private *i915, u16 waveform)
> > >  {
> > > @@ -2083,10 +2096,11 @@ void intel_cdclk_dump_config(struct drm_i915_private *i915,
> > >  			     const struct intel_cdclk_config *cdclk_config,
> > >  			     const char *context)
> > >  {
> > > -	drm_dbg_kms(&i915->drm, "%s %d kHz, VCO %d kHz, ref %d kHz, bypass %d kHz, voltage level %d\n",
> > > +	drm_dbg_kms(&i915->drm, "%s %d kHz, VCO %d kHz, ref %d kHz, bypass %d kHz, voltage level %d, %s action\n",
> > >  		    context, cdclk_config->cdclk, cdclk_config->vco,
> > >  		    cdclk_config->ref, cdclk_config->bypass,
> > > -		    cdclk_config->voltage_level);
> > > +		    cdclk_config->voltage_level,
> > > +		    cdclk_sequence_to_string(cdclk_config->steps->action));
> > >  }
> > >  
> > >  /**
> > > -- 
> > > 2.25.1
> > > 
