Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1180FBD6680
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Oct 2025 23:50:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BB9A10E501;
	Mon, 13 Oct 2025 21:50:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nQEn/QQq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D53510E4F9;
 Mon, 13 Oct 2025 21:49:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760392199; x=1791928199;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=H6a6n6VgndXHodwRzgUUELRPl8Z4hzeYGAgPvy4/bWI=;
 b=nQEn/QQqT91nwwiUzfva5bpe2PN9shqfh8Grp7FLkmlkW8ERhp8QjMqD
 vz6XsFznC5UHlhiP/sT703lKj04zIFmmc+inP1xXByqkJfiIwBI5cmT1j
 BMmrX417se60yc9PAk4A41wTK6gl3UWMKgzJh/D3zPzmE0Mu3IeO9WqIf
 xk38oCuiLbj1Ih79MIMLz18K2hono2x5SCo18C+IugLiFEmFOQHWDLaqK
 As8EXk+Qy0zT1lg0kR5MggUU6zHuUJK12vU9oPN3/R70abM3+0PSnWxbF
 Mtv3mqkopzRumyOtbs2HQUdvPyrpM3b+pHGL963K0tsZnT30Ufg8Vgsav Q==;
X-CSE-ConnectionGUID: 3/CnW8c3SfanHDdls57UUw==
X-CSE-MsgGUID: zANNaNsXTyq3yk3tbXinCQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11581"; a="73224599"
X-IronPort-AV: E=Sophos;i="6.19,226,1754982000"; d="scan'208";a="73224599"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 14:49:59 -0700
X-CSE-ConnectionGUID: kSVFYucbQJmA4DI8IyyO8A==
X-CSE-MsgGUID: qH51DWnVRVqxONiJ+etWKg==
X-ExtLoop1: 1
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.105])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 14:49:57 -0700
Date: Tue, 14 Oct 2025 00:49:54 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: Re: [RFC][PATCH 06/11] drm/i195/wm: Add WM0 prefill helpers
Message-ID: <aO10AiKxoC-uKzg0@intel.com>
References: <20251008182559.20615-1-ville.syrjala@linux.intel.com>
 <20251008182559.20615-7-ville.syrjala@linux.intel.com>
 <DM4PR11MB6360E7A89CAF8C2E64384053F4EAA@DM4PR11MB6360.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <DM4PR11MB6360E7A89CAF8C2E64384053F4EAA@DM4PR11MB6360.namprd11.prod.outlook.com>
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

On Mon, Oct 13, 2025 at 06:30:20PM +0000, Shankar, Uma wrote:
> 
> 
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ville
> > Syrjala
> > Sent: Wednesday, October 8, 2025 11:56 PM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: intel-xe@lists.freedesktop.org
> > Subject: [RFC][PATCH 06/11] drm/i195/wm: Add WM0 prefill helpers
> > 
> 
> Nit: Typo in i915
> 
> Overall looks good to me. More refinement can be done later for the FIXME's 
> and Todo's

Actually I think I can just drop a bunch of it since this will only
get used for the VRR guardband calculation, so we definitely don't
have to worry about any pre-icl stuff here. I'll probably throw in
a WARN(!HAS_VRR)+comment as a reminder.

> Reviewed-by: Uma Shankar <uma.shankar@intel.com>
> 
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Add skl_wm0_prefill_lines() (based on the actual state) and
> > skl_wm0_prefill_lines_worst() (worst case estimate) which tell us how many extra
> > lines are needed in prefill for WM0.
> > 
> > The returned numbers are in .16 binary fixed point.
> > 
> > TODO: skl_wm0_prefill_lines_worst() is a bit rough still
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/skl_scaler.c    | 32 ++++++++++-
> >  drivers/gpu/drm/i915/display/skl_scaler.h    |  4 ++
> >  drivers/gpu/drm/i915/display/skl_watermark.c | 59 ++++++++++++++++++++
> > drivers/gpu/drm/i915/display/skl_watermark.h |  3 +
> >  4 files changed, 97 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c
> > b/drivers/gpu/drm/i915/display/skl_scaler.c
> > index 6e90639494ca..783fee985e84 100644
> > --- a/drivers/gpu/drm/i915/display/skl_scaler.c
> > +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
> > @@ -1089,7 +1089,37 @@ static unsigned int _skl_scaler_max_scale(const
> > struct intel_crtc_state *crtc_st
> >  					       crtc_state-
> > >hw.pipe_mode.crtc_clock));
> >  }
> > 
> > -static unsigned int skl_scaler_max_scale(const struct intel_crtc_state
> > *crtc_state)
> > +unsigned int skl_scaler_max_total_scale(const struct intel_crtc_state
> > +*crtc_state) {
> > +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> > +	unsigned int max_scale;
> > +
> > +	if (crtc->num_scalers < 1)
> > +		return 0x10000;
> > +
> > +	/* FIXME find out the max downscale factors properly */
> > +	max_scale = 9 << 16;
> > +	if (crtc->num_scalers > 1)
> > +		max_scale *= 9;
> > +
> > +	return _skl_scaler_max_scale(crtc_state, max_scale); }
> > +
> > +unsigned int skl_scaler_max_hscale(const struct intel_crtc_state
> > +*crtc_state) {
> > +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> > +	unsigned int max_scale;
> > +
> > +	if (crtc->num_scalers < 1)
> > +		return 0x10000;
> > +
> > +	/* FIXME find out the max downscale factors properly */
> > +	max_scale = 3 << 16;
> > +
> > +	return _skl_scaler_max_scale(crtc_state, max_scale); }
> > +
> > +unsigned int skl_scaler_max_scale(const struct intel_crtc_state
> > +*crtc_state)
> >  {
> >  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> >  	unsigned int max_scale;
> > diff --git a/drivers/gpu/drm/i915/display/skl_scaler.h
> > b/drivers/gpu/drm/i915/display/skl_scaler.h
> > index 6fab40d2b4ee..5deabca909e6 100644
> > --- a/drivers/gpu/drm/i915/display/skl_scaler.h
> > +++ b/drivers/gpu/drm/i915/display/skl_scaler.h
> > @@ -46,6 +46,10 @@ void adl_scaler_ecc_mask(const struct intel_crtc_state
> > *crtc_state);
> > 
> >  void adl_scaler_ecc_unmask(const struct intel_crtc_state *crtc_state);
> > 
> > +unsigned int skl_scaler_max_total_scale(const struct intel_crtc_state
> > +*crtc_state); unsigned int skl_scaler_max_scale(const struct
> > +intel_crtc_state *crtc_state); unsigned int skl_scaler_max_hscale(const
> > +struct intel_crtc_state *crtc_state);
> > +
> >  unsigned int skl_scaler_1st_prefill_adjustment_worst(const struct intel_crtc_state
> > *crtc_state);  unsigned int skl_scaler_2nd_prefill_adjustment_worst(const struct
> > intel_crtc_state *crtc_state);  unsigned int
> > skl_scaler_1st_prefill_lines_worst(const struct intel_crtc_state *crtc_state); diff --
> > git a/drivers/gpu/drm/i915/display/skl_watermark.c
> > b/drivers/gpu/drm/i915/display/skl_watermark.c
> > index 9df9ee137bf9..aac3ca8f6c0f 100644
> > --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> > +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> > @@ -29,6 +29,7 @@
> >  #include "intel_pcode.h"
> >  #include "intel_plane.h"
> >  #include "intel_wm.h"
> > +#include "skl_scaler.h"
> >  #include "skl_universal_plane_regs.h"
> >  #include "skl_watermark.h"
> >  #include "skl_watermark_regs.h"
> > @@ -2244,6 +2245,59 @@ skl_is_vblank_too_short(const struct intel_crtc_state
> > *crtc_state,
> >  		adjusted_mode->crtc_vtotal - adjusted_mode->crtc_vblank_start;
> > }
> > 
> > +unsigned int skl_wm0_prefill_lines_worst(const struct intel_crtc_state
> > +*crtc_state) {
> > +	struct intel_display *display = to_intel_display(crtc_state);
> > +	struct intel_plane *plane = to_intel_plane(crtc_state->uapi.crtc->primary);
> > +	const struct drm_display_mode *pipe_mode = &crtc_state-
> > >hw.pipe_mode;
> > +	int ret, pixel_rate, width, level = 0;
> > +	struct skl_wm_level wm = {};
> > +	struct skl_wm_params wp;
> > +	unsigned int latency;
> > +	u64 modifier;
> > +
> > +	/*
> > +	 * FIXME rather ugly to pick this by hand but maybe no other way?
> > +	 * FIXME older hw doesn't support 16bpc+scaling so we should figure
> > +	 *       out a more realistic modifier+scaling combo on those...
> > +	 */
> > +	if (DISPLAY_VER(display) == 9)
> > +		modifier = I915_FORMAT_MOD_Y_TILED_CCS;
> > +	else if (HAS_4TILE(display))
> > +		modifier = I915_FORMAT_MOD_4_TILED;
> > +	else
> > +		modifier = I915_FORMAT_MOD_Y_TILED;
> > +
> > +	pixel_rate =
> > DIV_ROUND_UP_ULL(mul_u32_u32(skl_scaler_max_total_scale(crtc_state),
> > +						  pipe_mode->crtc_clock),
> > +				      0x10000);
> > +
> > +	/* FIXME limit to max plane width? */
> > +	width =
> > DIV_ROUND_UP_ULL(mul_u32_u32(skl_scaler_max_hscale(crtc_state),
> > +					     pipe_mode->crtc_hdisplay),
> > +				 0x10000);
> > +
> > +	/* FIXME is 90/270 rotation worse than 0/180? */
> > +	ret = skl_compute_wm_params(crtc_state, width,
> > +
> > drm_format_info(DRM_FORMAT_XBGR16161616F),
> > +				    modifier, DRM_MODE_ROTATE_0,
> > +				    pixel_rate, &wp, 0, 1);
> > +	drm_WARN_ON(display->drm, ret);
> > +
> > +	latency = skl_wm_latency(display, level, &wp);
> > +
> > +	skl_compute_plane_wm(crtc_state, plane, level, latency, &wp, &wm,
> > +&wm);
> > +
> > +	/*
> > +	 * FIXME Is this sane? Older hw doesn't even have wm.lines for WM0 so
> > +	 * those will never hit this and just return the computed wm.lines.
> > +	 */
> > +	if (wm.min_ddb_alloc == U16_MAX)
> > +		wm.lines = skl_wm_max_lines(display);
> > +
> > +	return wm.lines << 16;
> > +}
> > +
> >  static int skl_max_wm0_lines(const struct intel_crtc_state *crtc_state)  {
> >  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> > @@ -2260,6 +2314,11 @@ static int skl_max_wm0_lines(const struct
> > intel_crtc_state *crtc_state)
> >  	return wm0_lines;
> >  }
> > 
> > +unsigned int skl_wm0_prefill_lines(const struct intel_crtc_state
> > +*crtc_state) {
> > +	return skl_max_wm0_lines(crtc_state) << 16; }
> > +
> >  /*
> >   * TODO: In case we use PKG_C_LATENCY to allow C-states when the delayed
> > vblank
> >   * size is too small for the package C exit latency we need to notify PSR about
> > diff --git a/drivers/gpu/drm/i915/display/skl_watermark.h
> > b/drivers/gpu/drm/i915/display/skl_watermark.h
> > index 62790816f030..6bc2ec9164bf 100644
> > --- a/drivers/gpu/drm/i915/display/skl_watermark.h
> > +++ b/drivers/gpu/drm/i915/display/skl_watermark.h
> > @@ -79,5 +79,8 @@ void intel_program_dpkgc_latency(struct intel_atomic_state
> > *state);
> > 
> >  bool intel_dbuf_pmdemand_needs_update(struct intel_atomic_state *state);
> > 
> > +unsigned int skl_wm0_prefill_lines_worst(const struct intel_crtc_state
> > +*crtc_state); unsigned int skl_wm0_prefill_lines(const struct
> > +intel_crtc_state *crtc_state);
> > +
> >  #endif /* __SKL_WATERMARK_H__ */
> > 
> > --
> > 2.49.1
> 

-- 
Ville Syrjälä
Intel
