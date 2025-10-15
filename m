Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60850BDE8AD
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 14:52:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D90D10E7B4;
	Wed, 15 Oct 2025 12:51:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iJU1JYwT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA5EA10E7B1;
 Wed, 15 Oct 2025 12:51:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760532717; x=1792068717;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=EYXfIIEJCiCCU3y2RJW6hWY/72NINQUan1hXy/GXO/8=;
 b=iJU1JYwTdpX+3jjDvqci5xFvG2V5UMI9O9uWbe1EcZKA3MDHToBxYTvM
 qRxTMqUmLvi6Kykh/tEGTs8LjmN2N31zQE1Vym42DUuqVjQo/B7Hr/Rw5
 QgzAk3qUvNqgjATausipa9p4kmYsm2a/Sqldp6qyi9pMq9hJZxZKaZT47
 sBQQVHdvVnK+d5lTWvsyL6hNJM47t6cVO9uiasRViJkO4+YE77w6qrC5r
 HEZ7/tK54RRiM89fo/z03MS2PeCYmkfeIJfgoFHvJF91gRuJ0eRAkJ2zG
 pgsaDq1yFupoqopZSzRyMU5Jt/jkjywPh21YNXGV1NtxPlUQnvjc8INjJ A==;
X-CSE-ConnectionGUID: OQMY/g4mS+ajAkxL+Gj9WA==
X-CSE-MsgGUID: mEZDslJ1T0qSrEYU+q8JTw==
X-IronPort-AV: E=McAfee;i="6800,10657,11583"; a="62747681"
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="62747681"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 05:51:57 -0700
X-CSE-ConnectionGUID: 4eS/nudaSZObvsI+uLquAA==
X-CSE-MsgGUID: G+SVyLbSToio7KRL7AzfuQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="219308958"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.116])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 05:51:54 -0700
Date: Wed, 15 Oct 2025 15:51:51 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH v2 6/9] drm/i915/scaler: Add scaler prefill helpers
Message-ID: <aO-Y5yO8iXiBMIx2@intel.com>
References: <20251014191808.12326-1-ville.syrjala@linux.intel.com>
 <20251014191808.12326-7-ville.syrjala@linux.intel.com>
 <DM4PR11MB6360B656407423688E38E493F4E8A@DM4PR11MB6360.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <DM4PR11MB6360B656407423688E38E493F4E8A@DM4PR11MB6360.namprd11.prod.outlook.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Wed, Oct 15, 2025 at 11:23:50AM +0000, Shankar, Uma wrote:
> 
> 
> > -----Original Message-----
> > From: Ville Syrjala <ville.syrjala@linux.intel.com>
> > Sent: Wednesday, October 15, 2025 12:48 AM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: intel-xe@lists.freedesktop.org; Shankar, Uma <uma.shankar@intel.com>
> > Subject: [PATCH v2 6/9] drm/i915/scaler: Add scaler prefill helpers
> > 
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Add helpers to compute the required prefill line count and adjustment factors for
> > the scalers.
> > 
> > The "1st" variants hand out numbers for the first scaler stage in the pipeline (pipe
> > scaler if no plane scalers are enabled, or the max from all the plane scaler). The
> > "2nd" variants deal with second scaler stage (pipe scaler when plane scaling is
> > also enabled, otherwise there is no second stage).
> > 
> > The _worst() variants give out worst case estimates, meant for guardband sizing.
> > The other variants are meant for the actual vblank/guardband length check vs.
> > prefill+pkgc/sagv latency.
> > 
> > A few other helpers are added for the purpose of the WM0 prefill worst case
> > estimates (to be introduced later).
> > 
> > The returned numbers are in .16 binary fixed point.
> > 
> > TODO: pretty rough, should check the actual scaler max scaling
> >       factors instead of just assuming 3x everywhere
> > 
> > v2: Drop debugs
> > 
> > Reviewed-by: Uma Shankar <uma.shankar@intel.com> #v1
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/skl_scaler.c | 168 ++++++++++++++++++++++
> > drivers/gpu/drm/i915/display/skl_scaler.h |  11 ++
> >  2 files changed, 179 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c
> > b/drivers/gpu/drm/i915/display/skl_scaler.c
> > index c6cccf170ff1..47cdea75d27c 100644
> > --- a/drivers/gpu/drm/i915/display/skl_scaler.c
> > +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
> > @@ -968,3 +968,171 @@ void adl_scaler_ecc_unmask(const struct
> > intel_crtc_state *crtc_state)
> >  			  1);
> >  	intel_de_write(display, XELPD_DISPLAY_ERR_FATAL_MASK, 0);  }
> > +
> > +static unsigned int skl_scaler_scale(const struct intel_crtc_state
> > +*crtc_state, int i) {
> > +	const struct intel_crtc_scaler_state *scaler_state =
> > +		&crtc_state->scaler_state;
> > +
> > +	return DIV_ROUND_UP_ULL(mul_u32_u32(scaler_state-
> > >scalers[i].hscale,
> > +					    scaler_state->scalers[i].vscale),
> > +				0x10000);
> > +}
> > +
> > +static unsigned int skl_scaler_downscale(const struct intel_crtc_state
> > +*crtc_state, int i) {
> > +	return max(0x10000, skl_scaler_scale(crtc_state, i)); }
> > +
> > +static unsigned int skl_plane_scaler_downscale(const struct
> > +intel_crtc_state *crtc_state) {
> > +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> > +	const struct intel_crtc_scaler_state *scaler_state =
> > +		&crtc_state->scaler_state;
> > +	unsigned int scale = 0x10000;
> > +	int i;
> > +
> > +	for (i = 0; i < crtc->num_scalers; i++) {
> > +		/* ignore pfit */
> > +		if (i == scaler_state->scaler_id)
> > +			continue;
> > +
> > +		if (!scaler_state->scalers[i].in_use)
> > +			continue;
> > +
> > +		scale = max(scale, skl_scaler_downscale(crtc_state, i));
> > +	}
> > +
> > +	return scale;
> > +}
> > +
> > +static unsigned int skl_pipe_scaler_downscale(const struct
> > +intel_crtc_state *crtc_state) {
> > +	const struct intel_crtc_scaler_state *scaler_state =
> > +		&crtc_state->scaler_state;
> > +
> > +	if (!crtc_state->pch_pfit.enabled)
> > +		return 0x10000;
> 
> Hi Ville,
> It seems CI has some issue with bound check for scaler.
> Maybe good to add a check here.

Yeah, it's due to the scalers not being assigned yet when we do the
vblank length check. I think I'll just hardcode the adjustment factors
to 1.0 for now.

> 
> Regards,
> Uma Shankar
> 
> > +	return skl_scaler_downscale(crtc_state, scaler_state->scaler_id); }
> > +
> > +unsigned int skl_scaler_1st_prefill_adjustment(const struct
> > +intel_crtc_state *crtc_state) {
> > +	const struct intel_crtc_scaler_state *scaler_state =
> > +		&crtc_state->scaler_state;
> > +	int num_scalers = hweight32(scaler_state->scaler_users);
> > +
> > +	if (num_scalers < 1)
> > +		return 0x10000;
> > +
> > +	if (num_scalers == 1 && crtc_state->pch_pfit.enabled)
> > +		return skl_pipe_scaler_downscale(crtc_state);
> > +	else
> > +		return skl_plane_scaler_downscale(crtc_state);
> > +}
> > +
> > +unsigned int skl_scaler_2nd_prefill_adjustment(const struct
> > +intel_crtc_state *crtc_state) {
> > +	const struct intel_crtc_scaler_state *scaler_state =
> > +		&crtc_state->scaler_state;
> > +	int num_scalers = hweight32(scaler_state->scaler_users);
> > +
> > +	if (num_scalers < 2)
> > +		return 0x10000;
> > +
> > +	return skl_pipe_scaler_downscale(crtc_state);
> > +}
> > +
> > +unsigned int skl_scaler_1st_prefill_lines(const struct intel_crtc_state
> > +*crtc_state) {
> > +	const struct intel_crtc_scaler_state *scaler_state =
> > +		&crtc_state->scaler_state;
> > +	int num_scalers = hweight32(scaler_state->scaler_users);
> > +
> > +	if (num_scalers > 0)
> > +		return 4 << 16;
> > +
> > +	return 0;
> > +}
> > +
> > +unsigned int skl_scaler_2nd_prefill_lines(const struct intel_crtc_state
> > +*crtc_state) {
> > +	const struct intel_crtc_scaler_state *scaler_state =
> > +		&crtc_state->scaler_state;
> > +	int num_scalers = hweight32(scaler_state->scaler_users);
> > +
> > +	if (num_scalers > 1 && crtc_state->pch_pfit.enabled)
> > +		return 4 << 16;
> > +
> > +	return 0;
> > +}
> > +
> > +static unsigned int _skl_scaler_max_scale(const struct intel_crtc_state
> > *crtc_state,
> > +					  unsigned int max_scale)
> > +{
> > +	struct intel_display *display = to_intel_display(crtc_state);
> > +
> > +	/*
> > +	 * Downscaling requires increasing cdclk, so max scale
> > +	 * factor is limited to the max_dotclock/dotclock ratio.
> > +	 *
> > +	 * FIXME find out the max downscale factors properly
> > +	 */
> > +	return min(max_scale, DIV_ROUND_UP_ULL((u64)display-
> > >cdclk.max_dotclk_freq << 16,
> > +					       crtc_state-
> > >hw.pipe_mode.crtc_clock));
> > +}
> > +
> > +static unsigned int skl_scaler_max_scale(const struct intel_crtc_state
> > +*crtc_state) {
> > +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> > +	unsigned int max_scale;
> > +
> > +	if (crtc->num_scalers < 1)
> > +		return 0x10000;
> > +
> > +	/* FIXME find out the max downscale factors properly */
> > +	max_scale = 9 << 16;
> > +
> > +	return _skl_scaler_max_scale(crtc_state, max_scale); }
> > +
> > +unsigned int skl_scaler_1st_prefill_adjustment_worst(const struct
> > +intel_crtc_state *crtc_state) {
> > +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> > +
> > +	if (crtc->num_scalers > 0)
> > +		return skl_scaler_max_scale(crtc_state);
> > +	else
> > +		return 0x10000;
> > +}
> > +
> > +unsigned int skl_scaler_2nd_prefill_adjustment_worst(const struct
> > +intel_crtc_state *crtc_state) {
> > +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> > +
> > +	if (crtc->num_scalers > 1)
> > +		return skl_scaler_max_scale(crtc_state);
> > +	else
> > +		return 0x10000;
> > +}
> > +
> > +unsigned int skl_scaler_1st_prefill_lines_worst(const struct
> > +intel_crtc_state *crtc_state) {
> > +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> > +
> > +	if (crtc->num_scalers > 0)
> > +		return 4 << 16;
> > +	else
> > +		return 0;
> > +}
> > +
> > +unsigned int skl_scaler_2nd_prefill_lines_worst(const struct
> > +intel_crtc_state *crtc_state) {
> > +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> > +
> > +	if (crtc->num_scalers > 1)
> > +		return 4 << 16;
> > +	else
> > +		return 0;
> > +}
> > diff --git a/drivers/gpu/drm/i915/display/skl_scaler.h
> > b/drivers/gpu/drm/i915/display/skl_scaler.h
> > index 12a19016c5f6..6fab40d2b4ee 100644
> > --- a/drivers/gpu/drm/i915/display/skl_scaler.h
> > +++ b/drivers/gpu/drm/i915/display/skl_scaler.h
> > @@ -45,4 +45,15 @@ skl_scaler_mode_valid(struct intel_display *display,  void
> > adl_scaler_ecc_mask(const struct intel_crtc_state *crtc_state);
> > 
> >  void adl_scaler_ecc_unmask(const struct intel_crtc_state *crtc_state);
> > +
> > +unsigned int skl_scaler_1st_prefill_adjustment_worst(const struct
> > +intel_crtc_state *crtc_state); unsigned int
> > +skl_scaler_2nd_prefill_adjustment_worst(const struct intel_crtc_state
> > +*crtc_state); unsigned int skl_scaler_1st_prefill_lines_worst(const
> > +struct intel_crtc_state *crtc_state); unsigned int
> > +skl_scaler_2nd_prefill_lines_worst(const struct intel_crtc_state
> > +*crtc_state);
> > +
> > +unsigned int skl_scaler_1st_prefill_adjustment(const struct
> > +intel_crtc_state *crtc_state); unsigned int
> > +skl_scaler_2nd_prefill_adjustment(const struct intel_crtc_state
> > +*crtc_state); unsigned int skl_scaler_1st_prefill_lines(const struct
> > +intel_crtc_state *crtc_state); unsigned int
> > +skl_scaler_2nd_prefill_lines(const struct intel_crtc_state
> > +*crtc_state);
> > +
> >  #endif
> > --
> > 2.49.1
> 

-- 
Ville Syrjälä
Intel
