Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E38947A022A
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Sep 2023 13:08:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41D4C10E0FE;
	Thu, 14 Sep 2023 11:08:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2BEA10E0FE
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Sep 2023 11:08:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694689720; x=1726225720;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=wHUD00IBEU+b9iwB0WD4680XGmx2vezyHU17V4hE1oM=;
 b=MN33pdA2k27Uivjt5h+apZuHGSJgd9yrw4H1LzgMsqF8dOMDmpvpVbjU
 aI27PWopzgXXZcxaflxPrJCIIvDigerFZ8Jm1t2Diyv9ytjZLfnf2JgX8
 c6XQYOy3uELbr/DbE8E+rQXbSmk8E4WTBg7x+xIuVHe+E28NGroecwxxQ
 tYCPQi3XSbeuw5RdsoQBDyf6vhREgh1eAoQLi1COXMb5ujKgxySaii2PI
 SdKPeg72DPZllIjZduOdOxUtx+G3lC7CHI2/DBeAOM1u0gxSfFptYWQ6k
 sPCFRJeStAjHQuRGV77wt5VChan3W/HW0c+6RDYOR3TjCun9egVySRK+H w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10832"; a="358343690"
X-IronPort-AV: E=Sophos;i="6.02,145,1688454000"; d="scan'208";a="358343690"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 04:08:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10832"; a="918209613"
X-IronPort-AV: E=Sophos;i="6.02,145,1688454000"; d="scan'208";a="918209613"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 04:08:29 -0700
Date: Thu, 14 Sep 2023 14:08:49 +0300
From: Imre Deak <imre.deak@intel.com>
To: Luca Coelho <luca@coelho.fi>
Message-ID: <ZQLpwTpT2Zt22gyy@ideak-desk.fi.intel.com>
References: <20230824080517.693621-1-imre.deak@intel.com>
 <20230824080517.693621-3-imre.deak@intel.com>
 <b381e7ff588f86f8ba9783f666de76926de433f5.camel@coelho.fi>
 <ZQLYfJ7/SbFm+Gct@ideak-desk.fi.intel.com>
 <c4b3ccfb044807808397aec963307fde16492992.camel@coelho.fi>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c4b3ccfb044807808397aec963307fde16492992.camel@coelho.fi>
Subject: Re: [Intel-gfx] [PATCH v2 02/22] drm/i915/dp: Track the pipe and
 link bpp limits separately
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Sep 14, 2023 at 01:51:16PM +0300, Luca Coelho wrote:
> On Thu, 2023-09-14 at 12:55 +0300, Imre Deak wrote:
> > On Thu, Sep 14, 2023 at 12:33:59PM +0300, Luca Coelho wrote:
> > > On Thu, 2023-08-24 at 11:04 +0300, Imre Deak wrote:
> > > > A follow-up patch will need to limit the output link bpp both in the
> > > > non-DSC and DSC configuration, so track the pipe and link bpp limits
> > > > separately in the link_config_limits struct.
> > > > 
> > > > Use .4 fixed point format for link bpp matching the 1/16 bpp granularity
> > > > in DSC mode and for now keep this limit matching the pipe bpp limit.
> > > > 
> > > > v2: (Jani)
> > > > - Add to_bpp_int(), to_bpp_x16() helpers instead of opencoding them.
> > > > - Rename link_config_limits::link.min/max_bpp to min/max_bpp_x16.
> > > > 
> > > > Cc: Jani Nikula <jani.nikula@linux.intel.com>
> > > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > > ---
> > > >  .../drm/i915/display/intel_display_types.h    | 10 ++++++++
> > > >  drivers/gpu/drm/i915/display/intel_dp.c       | 25 +++++++++++--------
> > > >  drivers/gpu/drm/i915/display/intel_dp.h       |  9 ++++++-
> > > >  drivers/gpu/drm/i915/display/intel_dp_mst.c   | 17 ++++++++-----
> > > >  4 files changed, 44 insertions(+), 17 deletions(-)
> > > > 
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > > index 731f2ec04d5cd..5875eff5012ce 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > 
> > > [...]
> > > 
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> > > > index 788a577ebe16e..ebc7f4e60c777 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_dp.h
> > > > +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> > > > @@ -26,7 +26,14 @@ struct intel_encoder;
> > > >  struct link_config_limits {
> > > >  	int min_rate, max_rate;
> > > >  	int min_lane_count, max_lane_count;
> > > > -	int min_bpp, max_bpp;
> > > > +	struct {
> > > > +		/* Uncompressed DSC input or link output bpp in 1 bpp units */
> > > > +		int min_bpp, max_bpp;
> > > > +	} pipe;
> > > > +	struct {
> > > > +		/* Compressed or uncompressed link output bpp in 1/16 bpp units */
> > > > +		int min_bpp_x16, max_bpp_x16;
> > > > +	} link;
> > > >  };
> > > 
> > > It's not clear to me from the commit message (nor from the code, for
> > > that matter) why you need to store the values in both formats.  Can you
> > > clarify?
> > 
> > For DSC configuration two separate limits need to be considered:
> > 
> > One is the bpp value which is a property of the pixel format input to
> > the DSC engine, for this the DSC state computation should use the
> > pipe.min/max_bpp limits and this functionality of the DSC HW block can
> > be configured in 1 bits per pixel granularity.
> > 
> > The other one is the bpp value which is the format of pixels output from
> > the DSC engine (and is the actual pixel format on the link), for which
> > the DSC state computation should use link.min/max_bpp_x16. The DSC HW
> > block can be configure this pixel format in 1/16 bits per granularity.
> > 
> > For instance pipe.min/max_bpp will be 16 .. 30 bpp range (in 1 bpp
> > units), link.min/max_bpp_x16 in the 8 .. 27 bpp range (in 1/16 bpp
> > units).
> 
> Okay, but you're storing these two limits in the link structure.  So
> the important difference between them is not x16 vs non-x16.  If it
> were, you wouldn't have to store both, because you can easily convert
> them with your new to_*() functions.
> 
> So, isn't there a better name for these? Maybe input_max/min_bpp and
> output_max/min_bpp? You could keep the _x16 in the relevant one, but I
> think the main difference between the two should be reflected in the
> symbol names.

They are part of a pipe/link sub-structure, so the names are in effect
pipe.min/max_bpp and link.min/max_bpp_x16. pipe and link in turn are the
terms used for these same types of bpps elsewhere in DSC and non-DSC
code, hence I used them here as well for clarity. Maybe the comments
in the struct could be improved how the limits are used?

> --
> Cheers,
> Luca.
