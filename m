Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51B84A39D1C
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2025 14:14:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C660510E6B0;
	Tue, 18 Feb 2025 13:14:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kxBxs0qn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3087010E09E;
 Tue, 18 Feb 2025 13:14:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739884473; x=1771420473;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=jOJLCl93tsKsew8t2ufC20SCID4TNwtwEbwZl6+i5hM=;
 b=kxBxs0qnrT/kRtqAaavD4r8XhT0TYPvARR1u1WInrQK9JE6RhAZtDjnV
 Rxi1DWIdTOWeMEsdMJVnYJmi+qOai2OGkwtrDTrf8Vm5qoCTtkVY/7nSM
 YrgYNyjGothi/rRNO3dIHag0RUnH51wAQSPekFRN2ec0GKxGrowgEfbNh
 g37I3k6VbYW2f4+CGnOOV1Ud0c6bGdiYmiTK/4i0+cV6gICPxYZlZp3an
 7E9qy0Gl0u7DOnggspIPrOs9q9SYQgePD1UgQxX2wUwFjqoWraKv94lKW
 TGUdtl9pWr1hMt5TWcJrQnajDd6ye+pKQJkdhQw8/xYiBIeuTy+m2AGjT g==;
X-CSE-ConnectionGUID: CpDkVA5KQLePzIxBnwR5tw==
X-CSE-MsgGUID: kJdAaFI+Trix94vyi+TWWw==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="40785385"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="40785385"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2025 05:14:33 -0800
X-CSE-ConnectionGUID: 4LjJA3QZT2qRUEvpeNwZrg==
X-CSE-MsgGUID: n5eXVk15RoumrWiqBNDbIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="145293964"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2025 05:14:30 -0800
Date: Tue, 18 Feb 2025 15:15:30 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 2/2] drm/i915/dp: Fix disabling the transcoder function
 in 128b/132b mode
Message-ID: <Z7SH8qfWiz1KHEJW@ideak-desk.fi.intel.com>
References: <20250217223828.1166093-1-imre.deak@intel.com>
 <20250217223828.1166093-3-imre.deak@intel.com>
 <8734gbo15k.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8734gbo15k.fsf@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Feb 18, 2025 at 03:03:35PM +0200, Jani Nikula wrote:
> On Tue, 18 Feb 2025, Imre Deak <imre.deak@intel.com> wrote:
> > During disabling the transcoder in DP 128b/132b mode (both in case of an
> > MST master transcoder and in case of SST) the transcoder function must
> > be first disabled without changing any other field in the register (in
> > particular leaving the DDI port and mode select fields unchanged) and
> > clearing the DDI port and mode select fields separately, later during
> > the disabling sequences. Fix the sequence accordingly.
> >
> > Bspec: 54128, 65448, 68849
> > Cc: Jani Nikula <jani.nikula@intel.com>
> > Fixes: 79a6734cd56e ("drm/i915/ddi: disable trancoder port select for 128b/132b SST")
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> 
> Looks like I've intentionally done it this way. I think I've stumbled on
> the bspec text "DP v2.0/128b Primary" and the "primary" has convinced me
> this means MST. In most cases one should just read all things MST as
> being true for MTP, regardless of 8b/10b or 128b/132b, no matter what
> the text actually says. :p

Right, I also understood the spec the same way, i.e. that the 128b/132b
MST and SST modeset sequences would be different. It's clearer now that
this can't be the case, as far as the HW is concerned there is no
difference. The only difference is the extra side-band messaging for the
MST case, which the HW doesn't "care" about, since it's not aware of
anything about those SB messages.

Btw, I'm guessing intel_dp_mst_is_master_trans() could be renamed
accordingly, intel_dp_is_mst_master_or_uhbr_trans(), or something (and
crtc_state->mst_master_transcoder accordingly).

> Thanks for debugging and fixing these!
> 
> BR,
> Jani.
> 
> 
> > ---
> >  drivers/gpu/drm/i915/display/intel_ddi.c | 6 ++----
> >  1 file changed, 2 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index 5082f38b0a02e..7937f4de66cb4 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -681,7 +681,6 @@ void intel_ddi_disable_transcoder_func(const struct intel_crtc_state *crtc_state
> >  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> >  	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> >  	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> > -	bool is_mst = intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST);
> >  	u32 ctl;
> >  
> >  	if (DISPLAY_VER(dev_priv) >= 11)
> > @@ -701,8 +700,7 @@ void intel_ddi_disable_transcoder_func(const struct intel_crtc_state *crtc_state
> >  			 TRANS_DDI_PORT_SYNC_MASTER_SELECT_MASK);
> >  
> >  	if (DISPLAY_VER(dev_priv) >= 12) {
> > -		if (!intel_dp_mst_is_master_trans(crtc_state) ||
> > -		    (!is_mst && intel_dp_is_uhbr(crtc_state))) {
> > +		if (!intel_dp_mst_is_master_trans(crtc_state)) {
> >  			ctl &= ~(TGL_TRANS_DDI_PORT_MASK |
> >  				 TRANS_DDI_MODE_SELECT_MASK);
> >  		}
> > @@ -3138,7 +3136,7 @@ static void intel_ddi_post_disable_dp(struct intel_atomic_state *state,
> >  	intel_dp_set_power(intel_dp, DP_SET_POWER_D3);
> >  
> >  	if (DISPLAY_VER(dev_priv) >= 12) {
> > -		if (is_mst) {
> > +		if (is_mst || intel_dp_is_uhbr(old_crtc_state)) {
> >  			enum transcoder cpu_transcoder = old_crtc_state->cpu_transcoder;
> >  
> >  			intel_de_rmw(dev_priv,
> 
> -- 
> Jani Nikula, Intel
