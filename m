Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 539C27A00EF
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Sep 2023 11:55:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B469110E559;
	Thu, 14 Sep 2023 09:55:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C32210E559
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Sep 2023 09:55:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694685303; x=1726221303;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=zzEvaV1SLwTYPCWFlbM0TNVwq/1PiF1uqEkiCRweNRM=;
 b=AuoXtMcfOqvvXfk61rNudnoMSIu1vFKsEN/SXbw/q3LkZcmOu/bWTHra
 MtoBTmt3Isih2Q9xP2WdBYHKd+/5NfxeACLSGXj7nQiuf3koH+oZPoTlX
 LibdyfEcoRG2oxyCsNlK0EedkuB6yyh+VHyddgi2Fu2GP8XCZAT1bpJmV
 Q7OQpvqtvdiWuinDl5XL8IzPfIsxl08kVfd6Iw5o4kVvLqqTEQCm+GCVn
 +DV5nwzHnlL5p6H2V2C3mm2E2bRIZOP9ZbZWQe5OKrwGf6XJgLiX2vMgZ
 iUenIHGjEOOuizwI575SshPJibg+sdVArLooGpuk0fDicFgRgnumTMO6e w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10832"; a="377813943"
X-IronPort-AV: E=Sophos;i="6.02,145,1688454000"; d="scan'208";a="377813943"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 02:54:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10832"; a="694183146"
X-IronPort-AV: E=Sophos;i="6.02,145,1688454000"; d="scan'208";a="694183146"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 02:54:48 -0700
Date: Thu, 14 Sep 2023 12:55:08 +0300
From: Imre Deak <imre.deak@intel.com>
To: Luca Coelho <luca@coelho.fi>
Message-ID: <ZQLYfJ7/SbFm+Gct@ideak-desk.fi.intel.com>
References: <20230824080517.693621-1-imre.deak@intel.com>
 <20230824080517.693621-3-imre.deak@intel.com>
 <b381e7ff588f86f8ba9783f666de76926de433f5.camel@coelho.fi>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b381e7ff588f86f8ba9783f666de76926de433f5.camel@coelho.fi>
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

On Thu, Sep 14, 2023 at 12:33:59PM +0300, Luca Coelho wrote:
> On Thu, 2023-08-24 at 11:04 +0300, Imre Deak wrote:
> > A follow-up patch will need to limit the output link bpp both in the
> > non-DSC and DSC configuration, so track the pipe and link bpp limits
> > separately in the link_config_limits struct.
> > 
> > Use .4 fixed point format for link bpp matching the 1/16 bpp granularity
> > in DSC mode and for now keep this limit matching the pipe bpp limit.
> > 
> > v2: (Jani)
> > - Add to_bpp_int(), to_bpp_x16() helpers instead of opencoding them.
> > - Rename link_config_limits::link.min/max_bpp to min/max_bpp_x16.
> > 
> > Cc: Jani Nikula <jani.nikula@linux.intel.com>
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  .../drm/i915/display/intel_display_types.h    | 10 ++++++++
> >  drivers/gpu/drm/i915/display/intel_dp.c       | 25 +++++++++++--------
> >  drivers/gpu/drm/i915/display/intel_dp.h       |  9 ++++++-
> >  drivers/gpu/drm/i915/display/intel_dp_mst.c   | 17 ++++++++-----
> >  4 files changed, 44 insertions(+), 17 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> > index 731f2ec04d5cd..5875eff5012ce 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> 
> [...]
> 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> > index 788a577ebe16e..ebc7f4e60c777 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.h
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> > @@ -26,7 +26,14 @@ struct intel_encoder;
> >  struct link_config_limits {
> >  	int min_rate, max_rate;
> >  	int min_lane_count, max_lane_count;
> > -	int min_bpp, max_bpp;
> > +	struct {
> > +		/* Uncompressed DSC input or link output bpp in 1 bpp units */
> > +		int min_bpp, max_bpp;
> > +	} pipe;
> > +	struct {
> > +		/* Compressed or uncompressed link output bpp in 1/16 bpp units */
> > +		int min_bpp_x16, max_bpp_x16;
> > +	} link;
> >  };
> 
> It's not clear to me from the commit message (nor from the code, for
> that matter) why you need to store the values in both formats.  Can you
> clarify?

For DSC configuration two separate limits need to be considered:

One is the bpp value which is a property of the pixel format input to
the DSC engine, for this the DSC state computation should use the
pipe.min/max_bpp limits and this functionality of the DSC HW block can
be configured in 1 bits per pixel granularity.

The other one is the bpp value which is the format of pixels output from
the DSC engine (and is the actual pixel format on the link), for which
the DSC state computation should use link.min/max_bpp_x16. The DSC HW
block can be configure this pixel format in 1/16 bits per granularity.

For instance pipe.min/max_bpp will be 16 .. 30 bpp range (in 1 bpp
units), link.min/max_bpp_x16 in the 8 .. 27 bpp range (in 1/16 bpp
units).

> 
> --
> Cheers,
> Luca.
