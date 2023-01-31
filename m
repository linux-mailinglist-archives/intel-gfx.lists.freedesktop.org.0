Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74860683157
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Jan 2023 16:21:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3BA310E032;
	Tue, 31 Jan 2023 15:21:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3059110E032
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Jan 2023 15:21:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675178481; x=1706714481;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=TNz++Gy1vLdelrUBq8gfZyvU3KWdeD5eztJf0K38NHk=;
 b=P+Is+AYVLD/1OF9gHCr6bHhz5y6xU3Kt+f3QA8qubUQzOw5asm9IizFx
 VktEKqn86qeo6JHhapec4D+fc2YsHwivUGrprFtPwMbxXhWqRUYpCMXZI
 qEbx9aZPBjt1ygJvjxTP5R4ZNJ1734juojydzEB9yrzD+HnO+2b0nuRhA
 +IUkus1FY4xLz1wnM4NKhfRyaGG/IJWsRFU1YCFlHMDo8eNidae02zaDu
 cnI+dKjkLRbk1enQI8xZKSebQ6NpBtQb5WMyU7gBqDz4V13+IEB/6o34c
 /f/5VHhCitnPMKqssLg5nEs9UB3tEewzktMhXHTyC2AI2zaILiIC4ofsI g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="390230608"
X-IronPort-AV: E=Sophos;i="5.97,261,1669104000"; d="scan'208";a="390230608"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2023 07:20:53 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="733152241"
X-IronPort-AV: E=Sophos;i="5.97,261,1669104000"; d="scan'208";a="733152241"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2023 07:20:52 -0800
Date: Tue, 31 Jan 2023 17:20:44 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <Y9kxzNW7wPlnOz5b@intel.com>
References: <20230116111937.875-1-stanislav.lisovskiy@intel.com>
 <20230116111937.875-3-stanislav.lisovskiy@intel.com>
 <Y9ktDuLR9olCgy79@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Y9ktDuLR9olCgy79@intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Implement UHBR bandwidth check
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

On Tue, Jan 31, 2023 at 05:00:30PM +0200, Ville Syrjälä wrote:
> On Mon, Jan 16, 2023 at 01:19:37PM +0200, Stanislav Lisovskiy wrote:
> > According to spec, we should check if output_bpp * pixel_rate is less
> > than DDI clock * 72, if UHBR is used.
> > 
> > HSDES: 1406899791
> > BSPEC: 49259
> > 
> > v2: - Removed wrong comment(Rodrigo Vivi)
> >     - Added HSDES to the commit msg(Rodrigo Vivi)
> >     - Moved UHBR check to the MST specific code
> > 
> > v3: - Changed commit subject(Rodrigo Vivi)
> >     - Fixed the error message if check fails(Rodrigo Vivi)
> > 
> > v4: - Move UHBR check to new helper function
> >     - Now both for non-DSC/DSC we use that new check as
> >       one of the constraints, when figuring out output bpp
> >       to be used(Ville Syrjälä)
> > 
> > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp_mst.c | 13 ++++++++++++-
> >  1 file changed, 12 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > index e3e7c305fece..b95051fed23d 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > @@ -47,8 +47,19 @@
> >  
> >  static int intel_dp_mst_check_constraints(struct drm_i915_private *i915, int bpp,
> >  					  const struct drm_display_mode *adjusted_mode,
> > -					  struct intel_crtc_state *crtc_state)
> > +					  struct intel_crtc_state *pipe_config)
> >  {
> > +	if (intel_dp_is_uhbr(pipe_config)) {
> > +		int output_bpp = bpp;
> > +
> > +		if (output_bpp * adjusted_mode->crtc_clock >=
> > +		    pipe_config->port_clock * 72) {
> 
> This seems to be some DSC specific constraint, but this code appears to
> apply it also to uncompresed output.

Was thinking about that. Looking at the initial HSD, also to the DSC page
in the BSpec, I have a strong feeling that this applies to any output bpp,
regardless if its compressed or not.
So decided to make this check more generic. I think this is a just general
Link BW limitation which just happened to be mentioned on DSC page.
I will clarify that.

> 
> Also DDICLK != port_clock, so this looks to be off by quite a lot.

Any hints, what should I use instead?..

Stan

> 
> 
> > +			drm_dbg_kms(&i915->drm, "UHBR check failed(required bw %d available %d)\n",
> > +				    output_bpp * adjusted_mode->crtc_clock, pipe_config->port_clock * 72);
> > +			return -EINVAL;
> > +		}
> > +	}
> > +
> >  	return 0;
> >  }
> >  
> > -- 
> > 2.37.3
> 
> -- 
> Ville Syrjälä
> Intel
