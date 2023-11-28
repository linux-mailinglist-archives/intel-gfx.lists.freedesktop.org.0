Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2228F7FB4E2
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Nov 2023 09:53:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F4F710E45F;
	Tue, 28 Nov 2023 08:53:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D196010E462
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Nov 2023 08:53:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701161617; x=1732697617;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=ijeCrS4vBpKDXXjpFI7MSzSkMOuMoY4gNlsPORO7kcA=;
 b=ZU8IClusU3E0zIp3+wT5bpKbg7k73owajIA49wrEfQVsiA3tSFKa5/9K
 mK2irggMqYdP2Z/p8IySKBOI4+2LfIsZkf5yu6hh9IegXJik0u+sBzPgV
 lqUs/FN/DJhzHxtJCGIwkyjRTCg7f3KR0hWE0nnPYLSkLtfTUnOviu1Bc
 kIhoTc//YhaOVvP1VV7Fom7Hzl1VC9D8NQdAIk5sAp8yUp6TAmF/xD79T
 JKG7k5Q41ZawvWpuI+9Z+1KVotc8xIA9KKKXRCPyfkyX4+Pi8wZw91+O/
 EhPrlXgAUE4ei1qiKQJfEjWIjQY55vucCl+TPcefimraUiFNIdP/rKyu0 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10907"; a="424033410"
X-IronPort-AV: E=Sophos;i="6.04,233,1695711600"; d="scan'208";a="424033410"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2023 00:53:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10907"; a="761870606"
X-IronPort-AV: E=Sophos;i="6.04,233,1695711600"; d="scan'208";a="761870606"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2023 00:53:35 -0800
Date: Tue, 28 Nov 2023 10:53:24 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <ZWWqhLlnu9b/WshT@intel.com>
References: <20231124205522.57696-2-gustavo.sousa@intel.com>
 <20231127162146.GG5757@mdroper-desk1.amr.corp.intel.com>
 <ZWWoOL3WS5wTGiM2@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZWWoOL3WS5wTGiM2@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/cdclk: Remove divider field from
 tables
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
Cc: intel-gfx@lists.freedesktop.org, Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Nov 28, 2023 at 10:43:36AM +0200, Ville Syrjälä wrote:
> On Mon, Nov 27, 2023 at 08:21:46AM -0800, Matt Roper wrote:
> > On Fri, Nov 24, 2023 at 05:55:23PM -0300, Gustavo Sousa wrote:
> > > The cdclk tables were introduced with commit 736da8112fee ("drm/i915:
> > > Use literal representation of cdclk tables"). It has been almost 4 years
> > > and the divider field was not really used yet. Let's remove it.
> > 
> > I think we need to go the other way and actually start using it instead
> > of (incorrectly) trying to re-derive it from cdclk->vco.  The logic the
> > driver is using today doesn't account for the potential use of
> > squashing, which means we program the wrong divider value into CDCLK_CTL
> > in some cases.  I pointed that out during the LNL code reviews a couple
> > months ago, and I believe Stan is working on fixing that.
> 
> The code should be correct as is, but it does assume that the cd2x
> divider is 2 when squashing is used. If that no longer holds then we
> have to change something.

So we need to have some kind of a consensus/agreement here, whether are we modify the
calculation function and remove divider from the table, or do we just
use the value from the table.

So which approach is better?

Stan

> 
> > 
> > I wonder if the misprogramming we're doing today is what requires the
> > "HACK" at the bottom of intel_crtc_compute_min_cdclk for DG2?
> > 
> > 
> > Matt
> > 
> > > 
> > > Cc: Matt Roper <matthew.d.roper@intel.com>
> > > Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_cdclk.c | 269 ++++++++++-----------
> > >  1 file changed, 134 insertions(+), 135 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > > index b93d1ad7936d..7f85a216ff5c 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > > @@ -1227,183 +1227,182 @@ struct intel_cdclk_vals {
> > >  	u32 cdclk;
> > >  	u16 refclk;
> > >  	u16 waveform;
> > > -	u8 divider;	/* CD2X divider * 2 */
> > >  	u8 ratio;
> > >  };
> > >  
> > >  static const struct intel_cdclk_vals bxt_cdclk_table[] = {
> > > -	{ .refclk = 19200, .cdclk = 144000, .divider = 8, .ratio = 60 },
> > > -	{ .refclk = 19200, .cdclk = 288000, .divider = 4, .ratio = 60 },
> > > -	{ .refclk = 19200, .cdclk = 384000, .divider = 3, .ratio = 60 },
> > > -	{ .refclk = 19200, .cdclk = 576000, .divider = 2, .ratio = 60 },
> > > -	{ .refclk = 19200, .cdclk = 624000, .divider = 2, .ratio = 65 },
> > > +	{ .refclk = 19200, .cdclk = 144000, .ratio = 60 },
> > > +	{ .refclk = 19200, .cdclk = 288000, .ratio = 60 },
> > > +	{ .refclk = 19200, .cdclk = 384000, .ratio = 60 },
> > > +	{ .refclk = 19200, .cdclk = 576000, .ratio = 60 },
> > > +	{ .refclk = 19200, .cdclk = 624000, .ratio = 65 },
> > >  	{}
> > >  };
> > >  
> > >  static const struct intel_cdclk_vals glk_cdclk_table[] = {
> > > -	{ .refclk = 19200, .cdclk =  79200, .divider = 8, .ratio = 33 },
> > > -	{ .refclk = 19200, .cdclk = 158400, .divider = 4, .ratio = 33 },
> > > -	{ .refclk = 19200, .cdclk = 316800, .divider = 2, .ratio = 33 },
> > > +	{ .refclk = 19200, .cdclk =  79200, .ratio = 33 },
> > > +	{ .refclk = 19200, .cdclk = 158400, .ratio = 33 },
> > > +	{ .refclk = 19200, .cdclk = 316800, .ratio = 33 },
> > >  	{}
> > >  };
> > >  
> > >  static const struct intel_cdclk_vals icl_cdclk_table[] = {
> > > -	{ .refclk = 19200, .cdclk = 172800, .divider = 2, .ratio = 18 },
> > > -	{ .refclk = 19200, .cdclk = 192000, .divider = 2, .ratio = 20 },
> > > -	{ .refclk = 19200, .cdclk = 307200, .divider = 2, .ratio = 32 },
> > > -	{ .refclk = 19200, .cdclk = 326400, .divider = 4, .ratio = 68 },
> > > -	{ .refclk = 19200, .cdclk = 556800, .divider = 2, .ratio = 58 },
> > > -	{ .refclk = 19200, .cdclk = 652800, .divider = 2, .ratio = 68 },
> > > -
> > > -	{ .refclk = 24000, .cdclk = 180000, .divider = 2, .ratio = 15 },
> > > -	{ .refclk = 24000, .cdclk = 192000, .divider = 2, .ratio = 16 },
> > > -	{ .refclk = 24000, .cdclk = 312000, .divider = 2, .ratio = 26 },
> > > -	{ .refclk = 24000, .cdclk = 324000, .divider = 4, .ratio = 54 },
> > > -	{ .refclk = 24000, .cdclk = 552000, .divider = 2, .ratio = 46 },
> > > -	{ .refclk = 24000, .cdclk = 648000, .divider = 2, .ratio = 54 },
> > > -
> > > -	{ .refclk = 38400, .cdclk = 172800, .divider = 2, .ratio =  9 },
> > > -	{ .refclk = 38400, .cdclk = 192000, .divider = 2, .ratio = 10 },
> > > -	{ .refclk = 38400, .cdclk = 307200, .divider = 2, .ratio = 16 },
> > > -	{ .refclk = 38400, .cdclk = 326400, .divider = 4, .ratio = 34 },
> > > -	{ .refclk = 38400, .cdclk = 556800, .divider = 2, .ratio = 29 },
> > > -	{ .refclk = 38400, .cdclk = 652800, .divider = 2, .ratio = 34 },
> > > +	{ .refclk = 19200, .cdclk = 172800, .ratio = 18 },
> > > +	{ .refclk = 19200, .cdclk = 192000, .ratio = 20 },
> > > +	{ .refclk = 19200, .cdclk = 307200, .ratio = 32 },
> > > +	{ .refclk = 19200, .cdclk = 326400, .ratio = 68 },
> > > +	{ .refclk = 19200, .cdclk = 556800, .ratio = 58 },
> > > +	{ .refclk = 19200, .cdclk = 652800, .ratio = 68 },
> > > +
> > > +	{ .refclk = 24000, .cdclk = 180000, .ratio = 15 },
> > > +	{ .refclk = 24000, .cdclk = 192000, .ratio = 16 },
> > > +	{ .refclk = 24000, .cdclk = 312000, .ratio = 26 },
> > > +	{ .refclk = 24000, .cdclk = 324000, .ratio = 54 },
> > > +	{ .refclk = 24000, .cdclk = 552000, .ratio = 46 },
> > > +	{ .refclk = 24000, .cdclk = 648000, .ratio = 54 },
> > > +
> > > +	{ .refclk = 38400, .cdclk = 172800, .ratio =  9 },
> > > +	{ .refclk = 38400, .cdclk = 192000, .ratio = 10 },
> > > +	{ .refclk = 38400, .cdclk = 307200, .ratio = 16 },
> > > +	{ .refclk = 38400, .cdclk = 326400, .ratio = 34 },
> > > +	{ .refclk = 38400, .cdclk = 556800, .ratio = 29 },
> > > +	{ .refclk = 38400, .cdclk = 652800, .ratio = 34 },
> > >  	{}
> > >  };
> > >  
> > >  static const struct intel_cdclk_vals rkl_cdclk_table[] = {
> > > -	{ .refclk = 19200, .cdclk = 172800, .divider = 4, .ratio =  36 },
> > > -	{ .refclk = 19200, .cdclk = 192000, .divider = 4, .ratio =  40 },
> > > -	{ .refclk = 19200, .cdclk = 307200, .divider = 4, .ratio =  64 },
> > > -	{ .refclk = 19200, .cdclk = 326400, .divider = 8, .ratio = 136 },
> > > -	{ .refclk = 19200, .cdclk = 556800, .divider = 4, .ratio = 116 },
> > > -	{ .refclk = 19200, .cdclk = 652800, .divider = 4, .ratio = 136 },
> > > -
> > > -	{ .refclk = 24000, .cdclk = 180000, .divider = 4, .ratio =  30 },
> > > -	{ .refclk = 24000, .cdclk = 192000, .divider = 4, .ratio =  32 },
> > > -	{ .refclk = 24000, .cdclk = 312000, .divider = 4, .ratio =  52 },
> > > -	{ .refclk = 24000, .cdclk = 324000, .divider = 8, .ratio = 108 },
> > > -	{ .refclk = 24000, .cdclk = 552000, .divider = 4, .ratio =  92 },
> > > -	{ .refclk = 24000, .cdclk = 648000, .divider = 4, .ratio = 108 },
> > > -
> > > -	{ .refclk = 38400, .cdclk = 172800, .divider = 4, .ratio = 18 },
> > > -	{ .refclk = 38400, .cdclk = 192000, .divider = 4, .ratio = 20 },
> > > -	{ .refclk = 38400, .cdclk = 307200, .divider = 4, .ratio = 32 },
> > > -	{ .refclk = 38400, .cdclk = 326400, .divider = 8, .ratio = 68 },
> > > -	{ .refclk = 38400, .cdclk = 556800, .divider = 4, .ratio = 58 },
> > > -	{ .refclk = 38400, .cdclk = 652800, .divider = 4, .ratio = 68 },
> > > +	{ .refclk = 19200, .cdclk = 172800, .ratio =  36 },
> > > +	{ .refclk = 19200, .cdclk = 192000, .ratio =  40 },
> > > +	{ .refclk = 19200, .cdclk = 307200, .ratio =  64 },
> > > +	{ .refclk = 19200, .cdclk = 326400, .ratio = 136 },
> > > +	{ .refclk = 19200, .cdclk = 556800, .ratio = 116 },
> > > +	{ .refclk = 19200, .cdclk = 652800, .ratio = 136 },
> > > +
> > > +	{ .refclk = 24000, .cdclk = 180000, .ratio =  30 },
> > > +	{ .refclk = 24000, .cdclk = 192000, .ratio =  32 },
> > > +	{ .refclk = 24000, .cdclk = 312000, .ratio =  52 },
> > > +	{ .refclk = 24000, .cdclk = 324000, .ratio = 108 },
> > > +	{ .refclk = 24000, .cdclk = 552000, .ratio =  92 },
> > > +	{ .refclk = 24000, .cdclk = 648000, .ratio = 108 },
> > > +
> > > +	{ .refclk = 38400, .cdclk = 172800, .ratio = 18 },
> > > +	{ .refclk = 38400, .cdclk = 192000, .ratio = 20 },
> > > +	{ .refclk = 38400, .cdclk = 307200, .ratio = 32 },
> > > +	{ .refclk = 38400, .cdclk = 326400, .ratio = 68 },
> > > +	{ .refclk = 38400, .cdclk = 556800, .ratio = 58 },
> > > +	{ .refclk = 38400, .cdclk = 652800, .ratio = 68 },
> > >  	{}
> > >  };
> > >  
> > >  static const struct intel_cdclk_vals adlp_a_step_cdclk_table[] = {
> > > -	{ .refclk = 19200, .cdclk = 307200, .divider = 2, .ratio = 32 },
> > > -	{ .refclk = 19200, .cdclk = 556800, .divider = 2, .ratio = 58 },
> > > -	{ .refclk = 19200, .cdclk = 652800, .divider = 2, .ratio = 68 },
> > > +	{ .refclk = 19200, .cdclk = 307200, .ratio = 32 },
> > > +	{ .refclk = 19200, .cdclk = 556800, .ratio = 58 },
> > > +	{ .refclk = 19200, .cdclk = 652800, .ratio = 68 },
> > >  
> > > -	{ .refclk = 24000, .cdclk = 312000, .divider = 2, .ratio = 26 },
> > > -	{ .refclk = 24000, .cdclk = 552000, .divider = 2, .ratio = 46 },
> > > -	{ .refclk = 24400, .cdclk = 648000, .divider = 2, .ratio = 54 },
> > > +	{ .refclk = 24000, .cdclk = 312000, .ratio = 26 },
> > > +	{ .refclk = 24000, .cdclk = 552000, .ratio = 46 },
> > > +	{ .refclk = 24400, .cdclk = 648000, .ratio = 54 },
> > >  
> > > -	{ .refclk = 38400, .cdclk = 307200, .divider = 2, .ratio = 16 },
> > > -	{ .refclk = 38400, .cdclk = 556800, .divider = 2, .ratio = 29 },
> > > -	{ .refclk = 38400, .cdclk = 652800, .divider = 2, .ratio = 34 },
> > > +	{ .refclk = 38400, .cdclk = 307200, .ratio = 16 },
> > > +	{ .refclk = 38400, .cdclk = 556800, .ratio = 29 },
> > > +	{ .refclk = 38400, .cdclk = 652800, .ratio = 34 },
> > >  	{}
> > >  };
> > >  
> > >  static const struct intel_cdclk_vals adlp_cdclk_table[] = {
> > > -	{ .refclk = 19200, .cdclk = 172800, .divider = 3, .ratio = 27 },
> > > -	{ .refclk = 19200, .cdclk = 192000, .divider = 2, .ratio = 20 },
> > > -	{ .refclk = 19200, .cdclk = 307200, .divider = 2, .ratio = 32 },
> > > -	{ .refclk = 19200, .cdclk = 556800, .divider = 2, .ratio = 58 },
> > > -	{ .refclk = 19200, .cdclk = 652800, .divider = 2, .ratio = 68 },
> > > -
> > > -	{ .refclk = 24000, .cdclk = 176000, .divider = 3, .ratio = 22 },
> > > -	{ .refclk = 24000, .cdclk = 192000, .divider = 2, .ratio = 16 },
> > > -	{ .refclk = 24000, .cdclk = 312000, .divider = 2, .ratio = 26 },
> > > -	{ .refclk = 24000, .cdclk = 552000, .divider = 2, .ratio = 46 },
> > > -	{ .refclk = 24000, .cdclk = 648000, .divider = 2, .ratio = 54 },
> > > -
> > > -	{ .refclk = 38400, .cdclk = 179200, .divider = 3, .ratio = 14 },
> > > -	{ .refclk = 38400, .cdclk = 192000, .divider = 2, .ratio = 10 },
> > > -	{ .refclk = 38400, .cdclk = 307200, .divider = 2, .ratio = 16 },
> > > -	{ .refclk = 38400, .cdclk = 556800, .divider = 2, .ratio = 29 },
> > > -	{ .refclk = 38400, .cdclk = 652800, .divider = 2, .ratio = 34 },
> > > +	{ .refclk = 19200, .cdclk = 172800, .ratio = 27 },
> > > +	{ .refclk = 19200, .cdclk = 192000, .ratio = 20 },
> > > +	{ .refclk = 19200, .cdclk = 307200, .ratio = 32 },
> > > +	{ .refclk = 19200, .cdclk = 556800, .ratio = 58 },
> > > +	{ .refclk = 19200, .cdclk = 652800, .ratio = 68 },
> > > +
> > > +	{ .refclk = 24000, .cdclk = 176000, .ratio = 22 },
> > > +	{ .refclk = 24000, .cdclk = 192000, .ratio = 16 },
> > > +	{ .refclk = 24000, .cdclk = 312000, .ratio = 26 },
> > > +	{ .refclk = 24000, .cdclk = 552000, .ratio = 46 },
> > > +	{ .refclk = 24000, .cdclk = 648000, .ratio = 54 },
> > > +
> > > +	{ .refclk = 38400, .cdclk = 179200, .ratio = 14 },
> > > +	{ .refclk = 38400, .cdclk = 192000, .ratio = 10 },
> > > +	{ .refclk = 38400, .cdclk = 307200, .ratio = 16 },
> > > +	{ .refclk = 38400, .cdclk = 556800, .ratio = 29 },
> > > +	{ .refclk = 38400, .cdclk = 652800, .ratio = 34 },
> > >  	{}
> > >  };
> > >  
> > >  static const struct intel_cdclk_vals rplu_cdclk_table[] = {
> > > -	{ .refclk = 19200, .cdclk = 172800, .divider = 3, .ratio = 27 },
> > > -	{ .refclk = 19200, .cdclk = 192000, .divider = 2, .ratio = 20 },
> > > -	{ .refclk = 19200, .cdclk = 307200, .divider = 2, .ratio = 32 },
> > > -	{ .refclk = 19200, .cdclk = 480000, .divider = 2, .ratio = 50 },
> > > -	{ .refclk = 19200, .cdclk = 556800, .divider = 2, .ratio = 58 },
> > > -	{ .refclk = 19200, .cdclk = 652800, .divider = 2, .ratio = 68 },
> > > -
> > > -	{ .refclk = 24000, .cdclk = 176000, .divider = 3, .ratio = 22 },
> > > -	{ .refclk = 24000, .cdclk = 192000, .divider = 2, .ratio = 16 },
> > > -	{ .refclk = 24000, .cdclk = 312000, .divider = 2, .ratio = 26 },
> > > -	{ .refclk = 24000, .cdclk = 480000, .divider = 2, .ratio = 40 },
> > > -	{ .refclk = 24000, .cdclk = 552000, .divider = 2, .ratio = 46 },
> > > -	{ .refclk = 24000, .cdclk = 648000, .divider = 2, .ratio = 54 },
> > > -
> > > -	{ .refclk = 38400, .cdclk = 179200, .divider = 3, .ratio = 14 },
> > > -	{ .refclk = 38400, .cdclk = 192000, .divider = 2, .ratio = 10 },
> > > -	{ .refclk = 38400, .cdclk = 307200, .divider = 2, .ratio = 16 },
> > > -	{ .refclk = 38400, .cdclk = 480000, .divider = 2, .ratio = 25 },
> > > -	{ .refclk = 38400, .cdclk = 556800, .divider = 2, .ratio = 29 },
> > > -	{ .refclk = 38400, .cdclk = 652800, .divider = 2, .ratio = 34 },
> > > +	{ .refclk = 19200, .cdclk = 172800, .ratio = 27 },
> > > +	{ .refclk = 19200, .cdclk = 192000, .ratio = 20 },
> > > +	{ .refclk = 19200, .cdclk = 307200, .ratio = 32 },
> > > +	{ .refclk = 19200, .cdclk = 480000, .ratio = 50 },
> > > +	{ .refclk = 19200, .cdclk = 556800, .ratio = 58 },
> > > +	{ .refclk = 19200, .cdclk = 652800, .ratio = 68 },
> > > +
> > > +	{ .refclk = 24000, .cdclk = 176000, .ratio = 22 },
> > > +	{ .refclk = 24000, .cdclk = 192000, .ratio = 16 },
> > > +	{ .refclk = 24000, .cdclk = 312000, .ratio = 26 },
> > > +	{ .refclk = 24000, .cdclk = 480000, .ratio = 40 },
> > > +	{ .refclk = 24000, .cdclk = 552000, .ratio = 46 },
> > > +	{ .refclk = 24000, .cdclk = 648000, .ratio = 54 },
> > > +
> > > +	{ .refclk = 38400, .cdclk = 179200, .ratio = 14 },
> > > +	{ .refclk = 38400, .cdclk = 192000, .ratio = 10 },
> > > +	{ .refclk = 38400, .cdclk = 307200, .ratio = 16 },
> > > +	{ .refclk = 38400, .cdclk = 480000, .ratio = 25 },
> > > +	{ .refclk = 38400, .cdclk = 556800, .ratio = 29 },
> > > +	{ .refclk = 38400, .cdclk = 652800, .ratio = 34 },
> > >  	{}
> > >  };
> > >  
> > >  static const struct intel_cdclk_vals dg2_cdclk_table[] = {
> > > -	{ .refclk = 38400, .cdclk = 163200, .divider = 2, .ratio = 34, .waveform = 0x8888 },
> > > -	{ .refclk = 38400, .cdclk = 204000, .divider = 2, .ratio = 34, .waveform = 0x9248 },
> > > -	{ .refclk = 38400, .cdclk = 244800, .divider = 2, .ratio = 34, .waveform = 0xa4a4 },
> > > -	{ .refclk = 38400, .cdclk = 285600, .divider = 2, .ratio = 34, .waveform = 0xa54a },
> > > -	{ .refclk = 38400, .cdclk = 326400, .divider = 2, .ratio = 34, .waveform = 0xaaaa },
> > > -	{ .refclk = 38400, .cdclk = 367200, .divider = 2, .ratio = 34, .waveform = 0xad5a },
> > > -	{ .refclk = 38400, .cdclk = 408000, .divider = 2, .ratio = 34, .waveform = 0xb6b6 },
> > > -	{ .refclk = 38400, .cdclk = 448800, .divider = 2, .ratio = 34, .waveform = 0xdbb6 },
> > > -	{ .refclk = 38400, .cdclk = 489600, .divider = 2, .ratio = 34, .waveform = 0xeeee },
> > > -	{ .refclk = 38400, .cdclk = 530400, .divider = 2, .ratio = 34, .waveform = 0xf7de },
> > > -	{ .refclk = 38400, .cdclk = 571200, .divider = 2, .ratio = 34, .waveform = 0xfefe },
> > > -	{ .refclk = 38400, .cdclk = 612000, .divider = 2, .ratio = 34, .waveform = 0xfffe },
> > > -	{ .refclk = 38400, .cdclk = 652800, .divider = 2, .ratio = 34, .waveform = 0xffff },
> > > +	{ .refclk = 38400, .cdclk = 163200, .ratio = 34, .waveform = 0x8888 },
> > > +	{ .refclk = 38400, .cdclk = 204000, .ratio = 34, .waveform = 0x9248 },
> > > +	{ .refclk = 38400, .cdclk = 244800, .ratio = 34, .waveform = 0xa4a4 },
> > > +	{ .refclk = 38400, .cdclk = 285600, .ratio = 34, .waveform = 0xa54a },
> > > +	{ .refclk = 38400, .cdclk = 326400, .ratio = 34, .waveform = 0xaaaa },
> > > +	{ .refclk = 38400, .cdclk = 367200, .ratio = 34, .waveform = 0xad5a },
> > > +	{ .refclk = 38400, .cdclk = 408000, .ratio = 34, .waveform = 0xb6b6 },
> > > +	{ .refclk = 38400, .cdclk = 448800, .ratio = 34, .waveform = 0xdbb6 },
> > > +	{ .refclk = 38400, .cdclk = 489600, .ratio = 34, .waveform = 0xeeee },
> > > +	{ .refclk = 38400, .cdclk = 530400, .ratio = 34, .waveform = 0xf7de },
> > > +	{ .refclk = 38400, .cdclk = 571200, .ratio = 34, .waveform = 0xfefe },
> > > +	{ .refclk = 38400, .cdclk = 612000, .ratio = 34, .waveform = 0xfffe },
> > > +	{ .refclk = 38400, .cdclk = 652800, .ratio = 34, .waveform = 0xffff },
> > >  	{}
> > >  };
> > >  
> > >  static const struct intel_cdclk_vals mtl_cdclk_table[] = {
> > > -	{ .refclk = 38400, .cdclk = 172800, .divider = 2, .ratio = 16, .waveform = 0xad5a },
> > > -	{ .refclk = 38400, .cdclk = 192000, .divider = 2, .ratio = 16, .waveform = 0xb6b6 },
> > > -	{ .refclk = 38400, .cdclk = 307200, .divider = 2, .ratio = 16, .waveform = 0x0000 },
> > > -	{ .refclk = 38400, .cdclk = 480000, .divider = 2, .ratio = 25, .waveform = 0x0000 },
> > > -	{ .refclk = 38400, .cdclk = 556800, .divider = 2, .ratio = 29, .waveform = 0x0000 },
> > > -	{ .refclk = 38400, .cdclk = 652800, .divider = 2, .ratio = 34, .waveform = 0x0000 },
> > > +	{ .refclk = 38400, .cdclk = 172800, .ratio = 16, .waveform = 0xad5a },
> > > +	{ .refclk = 38400, .cdclk = 192000, .ratio = 16, .waveform = 0xb6b6 },
> > > +	{ .refclk = 38400, .cdclk = 307200, .ratio = 16, .waveform = 0x0000 },
> > > +	{ .refclk = 38400, .cdclk = 480000, .ratio = 25, .waveform = 0x0000 },
> > > +	{ .refclk = 38400, .cdclk = 556800, .ratio = 29, .waveform = 0x0000 },
> > > +	{ .refclk = 38400, .cdclk = 652800, .ratio = 34, .waveform = 0x0000 },
> > >  	{}
> > >  };
> > >  
> > >  static const struct intel_cdclk_vals lnl_cdclk_table[] = {
> > > -	{ .refclk = 38400, .cdclk = 153600, .divider = 2, .ratio = 16, .waveform = 0xaaaa },
> > > -	{ .refclk = 38400, .cdclk = 172800, .divider = 2, .ratio = 16, .waveform = 0xad5a },
> > > -	{ .refclk = 38400, .cdclk = 192000, .divider = 2, .ratio = 16, .waveform = 0xb6b6 },
> > > -	{ .refclk = 38400, .cdclk = 211200, .divider = 2, .ratio = 16, .waveform = 0xdbb6 },
> > > -	{ .refclk = 38400, .cdclk = 230400, .divider = 2, .ratio = 16, .waveform = 0xeeee },
> > > -	{ .refclk = 38400, .cdclk = 249600, .divider = 2, .ratio = 16, .waveform = 0xf7de },
> > > -	{ .refclk = 38400, .cdclk = 268800, .divider = 2, .ratio = 16, .waveform = 0xfefe },
> > > -	{ .refclk = 38400, .cdclk = 288000, .divider = 2, .ratio = 16, .waveform = 0xfffe },
> > > -	{ .refclk = 38400, .cdclk = 307200, .divider = 2, .ratio = 16, .waveform = 0xffff },
> > > -	{ .refclk = 38400, .cdclk = 330000, .divider = 2, .ratio = 25, .waveform = 0xdbb6 },
> > > -	{ .refclk = 38400, .cdclk = 360000, .divider = 2, .ratio = 25, .waveform = 0xeeee },
> > > -	{ .refclk = 38400, .cdclk = 390000, .divider = 2, .ratio = 25, .waveform = 0xf7de },
> > > -	{ .refclk = 38400, .cdclk = 420000, .divider = 2, .ratio = 25, .waveform = 0xfefe },
> > > -	{ .refclk = 38400, .cdclk = 450000, .divider = 2, .ratio = 25, .waveform = 0xfffe },
> > > -	{ .refclk = 38400, .cdclk = 480000, .divider = 2, .ratio = 25, .waveform = 0xffff },
> > > -	{ .refclk = 38400, .cdclk = 487200, .divider = 2, .ratio = 29, .waveform = 0xfefe },
> > > -	{ .refclk = 38400, .cdclk = 522000, .divider = 2, .ratio = 29, .waveform = 0xfffe },
> > > -	{ .refclk = 38400, .cdclk = 556800, .divider = 2, .ratio = 29, .waveform = 0xffff },
> > > -	{ .refclk = 38400, .cdclk = 571200, .divider = 2, .ratio = 34, .waveform = 0xfefe },
> > > -	{ .refclk = 38400, .cdclk = 612000, .divider = 2, .ratio = 34, .waveform = 0xfffe },
> > > -	{ .refclk = 38400, .cdclk = 652800, .divider = 2, .ratio = 34, .waveform = 0xffff },
> > > +	{ .refclk = 38400, .cdclk = 153600, .ratio = 16, .waveform = 0xaaaa },
> > > +	{ .refclk = 38400, .cdclk = 172800, .ratio = 16, .waveform = 0xad5a },
> > > +	{ .refclk = 38400, .cdclk = 192000, .ratio = 16, .waveform = 0xb6b6 },
> > > +	{ .refclk = 38400, .cdclk = 211200, .ratio = 16, .waveform = 0xdbb6 },
> > > +	{ .refclk = 38400, .cdclk = 230400, .ratio = 16, .waveform = 0xeeee },
> > > +	{ .refclk = 38400, .cdclk = 249600, .ratio = 16, .waveform = 0xf7de },
> > > +	{ .refclk = 38400, .cdclk = 268800, .ratio = 16, .waveform = 0xfefe },
> > > +	{ .refclk = 38400, .cdclk = 288000, .ratio = 16, .waveform = 0xfffe },
> > > +	{ .refclk = 38400, .cdclk = 307200, .ratio = 16, .waveform = 0xffff },
> > > +	{ .refclk = 38400, .cdclk = 330000, .ratio = 25, .waveform = 0xdbb6 },
> > > +	{ .refclk = 38400, .cdclk = 360000, .ratio = 25, .waveform = 0xeeee },
> > > +	{ .refclk = 38400, .cdclk = 390000, .ratio = 25, .waveform = 0xf7de },
> > > +	{ .refclk = 38400, .cdclk = 420000, .ratio = 25, .waveform = 0xfefe },
> > > +	{ .refclk = 38400, .cdclk = 450000, .ratio = 25, .waveform = 0xfffe },
> > > +	{ .refclk = 38400, .cdclk = 480000, .ratio = 25, .waveform = 0xffff },
> > > +	{ .refclk = 38400, .cdclk = 487200, .ratio = 29, .waveform = 0xfefe },
> > > +	{ .refclk = 38400, .cdclk = 522000, .ratio = 29, .waveform = 0xfffe },
> > > +	{ .refclk = 38400, .cdclk = 556800, .ratio = 29, .waveform = 0xffff },
> > > +	{ .refclk = 38400, .cdclk = 571200, .ratio = 34, .waveform = 0xfefe },
> > > +	{ .refclk = 38400, .cdclk = 612000, .ratio = 34, .waveform = 0xfffe },
> > > +	{ .refclk = 38400, .cdclk = 652800, .ratio = 34, .waveform = 0xffff },
> > >  	{}
> > >  };
> > >  
> > > -- 
> > > 2.42.1
> > > 
> > 
> > -- 
> > Matt Roper
> > Graphics Software Engineer
> > Linux GPU Platform Enablement
> > Intel Corporation
> 
> -- 
> Ville Syrjälä
> Intel
