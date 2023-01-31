Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F21E6831BE
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Jan 2023 16:42:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64F2110E032;
	Tue, 31 Jan 2023 15:42:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63AE310E032
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Jan 2023 15:42:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675179720; x=1706715720;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=8rDnKt+DWXfCjDKyBUaCQMVg92MIxnIujT0fPk8MbMg=;
 b=PnECVlEwrYm0t3Gn2JuPKqgKsT//rwCtvzvH6QzfxNcCXVJoZkZ3rEUY
 acRRqpoYFV6LcoWw6cRmdBIMaP+Lqepbpw5bWCbOtQZ2DnAFkMHX8BUk3
 PTLmxQHQF2bhy04MKdoH7V2wL9KUEmn4F0hrcMCnOVmi6gUOquk74KOgU
 0lslCYjiXIaFBbrFYknCvf7n8hV+g52AjdZ9nK82GaTRW++NVOh7QnbBC
 o552c/6hda7GJRsW62VeNmJnwyDZGvyq549u2BrU3+1SPgy/0PkqAZlW/
 FSRmXKhpflzzkmxZqr4MROl5vHNwxObv76w08CXXHxsKO0CzNmL0KutxJ Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="390236264"
X-IronPort-AV: E=Sophos;i="5.97,261,1669104000"; d="scan'208";a="390236264"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2023 07:41:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="773021970"
X-IronPort-AV: E=Sophos;i="5.97,261,1669104000"; d="scan'208";a="773021970"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by fmsmga002.fm.intel.com with SMTP; 31 Jan 2023 07:41:45 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 31 Jan 2023 17:41:45 +0200
Date: Tue, 31 Jan 2023 17:41:45 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Message-ID: <Y9k2uWyLPWqCgbc3@intel.com>
References: <20230116111937.875-1-stanislav.lisovskiy@intel.com>
 <20230116111937.875-3-stanislav.lisovskiy@intel.com>
 <Y9ktDuLR9olCgy79@intel.com> <Y9kxzNW7wPlnOz5b@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Y9kxzNW7wPlnOz5b@intel.com>
X-Patchwork-Hint: comment
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

On Tue, Jan 31, 2023 at 05:20:44PM +0200, Lisovskiy, Stanislav wrote:
> On Tue, Jan 31, 2023 at 05:00:30PM +0200, Ville Syrjälä wrote:
> > On Mon, Jan 16, 2023 at 01:19:37PM +0200, Stanislav Lisovskiy wrote:
> > > According to spec, we should check if output_bpp * pixel_rate is less
> > > than DDI clock * 72, if UHBR is used.
> > > 
> > > HSDES: 1406899791
> > > BSPEC: 49259
> > > 
> > > v2: - Removed wrong comment(Rodrigo Vivi)
> > >     - Added HSDES to the commit msg(Rodrigo Vivi)
> > >     - Moved UHBR check to the MST specific code
> > > 
> > > v3: - Changed commit subject(Rodrigo Vivi)
> > >     - Fixed the error message if check fails(Rodrigo Vivi)
> > > 
> > > v4: - Move UHBR check to new helper function
> > >     - Now both for non-DSC/DSC we use that new check as
> > >       one of the constraints, when figuring out output bpp
> > >       to be used(Ville Syrjälä)
> > > 
> > > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_dp_mst.c | 13 ++++++++++++-
> > >  1 file changed, 12 insertions(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > index e3e7c305fece..b95051fed23d 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > @@ -47,8 +47,19 @@
> > >  
> > >  static int intel_dp_mst_check_constraints(struct drm_i915_private *i915, int bpp,
> > >  					  const struct drm_display_mode *adjusted_mode,
> > > -					  struct intel_crtc_state *crtc_state)
> > > +					  struct intel_crtc_state *pipe_config)
> > >  {
> > > +	if (intel_dp_is_uhbr(pipe_config)) {
> > > +		int output_bpp = bpp;
> > > +
> > > +		if (output_bpp * adjusted_mode->crtc_clock >=
> > > +		    pipe_config->port_clock * 72) {
> > 
> > This seems to be some DSC specific constraint, but this code appears to
> > apply it also to uncompresed output.
> 
> Was thinking about that. Looking at the initial HSD, also to the DSC page
> in the BSpec, I have a strong feeling that this applies to any output bpp,
> regardless if its compressed or not.
> So decided to make this check more generic. I think this is a just general
> Link BW limitation which just happened to be mentioned on DSC page.
> I will clarify that.
> 
> > 
> > Also DDICLK != port_clock, so this looks to be off by quite a lot.
> 
> Any hints, what should I use instead?..

DDICLK looks to be the symbol clock more or less (for 32bit symbols),
so presumably you want a /32, with maybe an extra factor of 10^n in
there, or not.

That magic 72 is also strange. Maybe a 2*36, but dunno what that would
really be either. The spec could really use some better explanations.

-- 
Ville Syrjälä
Intel
