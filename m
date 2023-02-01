Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CA4AB6864E2
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Feb 2023 12:01:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9289110E2B8;
	Wed,  1 Feb 2023 11:01:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3AB8010E2B8
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Feb 2023 11:01:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675249268; x=1706785268;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=0YLPV6+x5pR/6mr3sQRGzRK9M3lqoWscQOxJP41H8JE=;
 b=OpG9Sx0DRUWNS+4N3JSIy8htx5Vf2gf5tZtc0C+rH+x/bkYra2cyJxCm
 goam18aAgovzL0wI9oSHTRDwmv0Dz/FCMH5QImwr3tfNmE8xrVmgSQ69F
 zgsMV9ilZ7ivGJy1sABN01QWwAMKKIVrG1KLO+IfntMqx7ST9pEYTC+Iv
 uipLJx9jQQU2BaI8xb25EO/D83E37mkclm0Z/ZxWxnd8YKCzG80PMK5py
 dNw0JZLn/WPOWGRJQkTSlMhmuHbnjNHvVxIF5HtQh3QYIF/PV338Qv2q6
 kGq7FO73YBuUVd8YL3dgnwGmOao+NXYXWD7JftSx0xFLqysnK6w5mebjx g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10607"; a="392688065"
X-IronPort-AV: E=Sophos;i="5.97,263,1669104000"; d="scan'208";a="392688065"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2023 03:01:07 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10607"; a="695318941"
X-IronPort-AV: E=Sophos;i="5.97,263,1669104000"; d="scan'208";a="695318941"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2023 03:01:06 -0800
Date: Wed, 1 Feb 2023 13:00:59 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <Y9pGaxQueHKvAdvB@intel.com>
References: <20230116111937.875-1-stanislav.lisovskiy@intel.com>
 <20230116111937.875-3-stanislav.lisovskiy@intel.com>
 <Y9ktDuLR9olCgy79@intel.com> <Y9kxzNW7wPlnOz5b@intel.com>
 <Y9k2uWyLPWqCgbc3@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Y9k2uWyLPWqCgbc3@intel.com>
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

On Tue, Jan 31, 2023 at 05:41:45PM +0200, Ville Syrjälä wrote:
> On Tue, Jan 31, 2023 at 05:20:44PM +0200, Lisovskiy, Stanislav wrote:
> > On Tue, Jan 31, 2023 at 05:00:30PM +0200, Ville Syrjälä wrote:
> > > On Mon, Jan 16, 2023 at 01:19:37PM +0200, Stanislav Lisovskiy wrote:
> > > > According to spec, we should check if output_bpp * pixel_rate is less
> > > > than DDI clock * 72, if UHBR is used.
> > > > 
> > > > HSDES: 1406899791
> > > > BSPEC: 49259
> > > > 
> > > > v2: - Removed wrong comment(Rodrigo Vivi)
> > > >     - Added HSDES to the commit msg(Rodrigo Vivi)
> > > >     - Moved UHBR check to the MST specific code
> > > > 
> > > > v3: - Changed commit subject(Rodrigo Vivi)
> > > >     - Fixed the error message if check fails(Rodrigo Vivi)
> > > > 
> > > > v4: - Move UHBR check to new helper function
> > > >     - Now both for non-DSC/DSC we use that new check as
> > > >       one of the constraints, when figuring out output bpp
> > > >       to be used(Ville Syrjälä)
> > > > 
> > > > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_dp_mst.c | 13 ++++++++++++-
> > > >  1 file changed, 12 insertions(+), 1 deletion(-)
> > > > 
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > > index e3e7c305fece..b95051fed23d 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > > @@ -47,8 +47,19 @@
> > > >  
> > > >  static int intel_dp_mst_check_constraints(struct drm_i915_private *i915, int bpp,
> > > >  					  const struct drm_display_mode *adjusted_mode,
> > > > -					  struct intel_crtc_state *crtc_state)
> > > > +					  struct intel_crtc_state *pipe_config)
> > > >  {
> > > > +	if (intel_dp_is_uhbr(pipe_config)) {
> > > > +		int output_bpp = bpp;
> > > > +
> > > > +		if (output_bpp * adjusted_mode->crtc_clock >=
> > > > +		    pipe_config->port_clock * 72) {
> > > 
> > > This seems to be some DSC specific constraint, but this code appears to
> > > apply it also to uncompresed output.
> > 
> > Was thinking about that. Looking at the initial HSD, also to the DSC page
> > in the BSpec, I have a strong feeling that this applies to any output bpp,
> > regardless if its compressed or not.
> > So decided to make this check more generic. I think this is a just general
> > Link BW limitation which just happened to be mentioned on DSC page.
> > I will clarify that.
> > 
> > > 
> > > Also DDICLK != port_clock, so this looks to be off by quite a lot.
> > 
> > Any hints, what should I use instead?..
> 
> DDICLK looks to be the symbol clock more or less (for 32bit symbols),
> so presumably you want a /32, with maybe an extra factor of 10^n in
> there, or not.
> 
> That magic 72 is also strange. Maybe a 2*36, but dunno what that would
> really be either. The spec could really use some better explanations.

There is another check mentioned right above in the same place, which 
I believe is related(btw, we probably need that one as well, if not added):

Output bpp < Number of lanes * DDICLK frequency * Bits per lane / Pixel clock

and bits per lane have to be:

DisplayPort 8b/10b bits per lane = 8
DisplayPort 2 128b/132b bits per lane = 32

The check we are talking here is:

Output bpp * Pixel clock < DDICLK frequency * 72 bits

Which means

Output bpp < (DDICLK frequency * 72 bits) / Pixel clock

So I guess that means that to get DDICLK I need to divide port_clock by bits_per_lane.

And 72 bits is a probably max symbol width which can be used due to some HW
restrictions.


Stan


> 
> -- 
> Ville Syrjälä
> Intel
