Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A84774F7E03
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Apr 2022 13:24:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A20010E6F2;
	Thu,  7 Apr 2022 11:24:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3258210E6F2
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Apr 2022 11:24:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649330640; x=1680866640;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=aUTSIPTACQW6C+rfoU1dYWl77v331Zp2GMTdiNBBxkU=;
 b=DoMCFFRvgAoKX892WNCpHgylvE4G0G2kSOyG5rBWxjdkevqDtLz2V9wS
 gKcIr9Axm+4yICT120LXVhSI/BO+Reu3q4k2LGV5kFpQTZAF8w3HJIaia
 DNkm5OfbGVlsY9Ngkd83Gwvttdd1MM02retolJsG4lSqRVm6yu1Gvm0YY
 kYvk75Qt8RgK+c0BEaBgbtC17uxODwPICc8ANyPrv82Mg3lt52Zu8DQwu
 55WkeB9QBDpmHWwwOmYDkqEqj4+LgVr7PlvisH42UoSBKqjnII5Ek5TBe
 4288CjKnYiunVb+DZBE8+Z78Ic3gsoI78ZUBsNi6179NcaPdGgKYlJuD4 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10309"; a="261475166"
X-IronPort-AV: E=Sophos;i="5.90,241,1643702400"; d="scan'208";a="261475166"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2022 04:23:37 -0700
X-IronPort-AV: E=Sophos;i="5.90,241,1643702400"; d="scan'208";a="550006953"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2022 04:23:36 -0700
Date: Thu, 7 Apr 2022 14:24:17 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20220407112417.GA20534@intel.com>
References: <20220407084235.9526-1-stanislav.lisovskiy@intel.com>
 <Yk7GvHfxpwTuq1Wm@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Yk7GvHfxpwTuq1Wm@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix FIFO underruns caused by
 missing cumulative bpp W/A
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

On Thu, Apr 07, 2022 at 02:10:52PM +0300, Ville Syrjälä wrote:
> On Thu, Apr 07, 2022 at 11:42:35AM +0300, Stanislav Lisovskiy wrote:
> > We had some FIFO underruns appearing on platforms like ADL,
> > which could be fixed though by increasing CDCLK, however we were
> > lacking explanation for that - we were not calculating CDCLK,
> > also based on cumulative bpp W/A formula, mentioned in BSpec 64631.
> 
> We already have that in intel_bw_crtc_min_cdclk().

It actually is not quite what BSpec is talking about it adds
data_rate per plane, instead of bpp, I think it confuses 
those 2 from BSpec:

"
Plane required bandwidth MB/s = pixel rate MHz * source pixel format in bytes 
* plane down scale amount * pipe down scale amount
Display required memory bandwidth MB/s += Plane required bandwidth
Pipe cumulative bytes per pixel += plane source pixel format in bytes
"

then we have to different formulas used to estimate whats the CDCLK
should be, one is "DBUF maximum data buffer bandwidth MB/s = CDCLK frequency MHz * 64 Bytes"

another is pipe CDCLK = cumulative bytes per pixel * (pixel rate MHz * 
plane down scale amount * pipe down scale amount)) * 51.2)

So as I checked for some tests in kms_plane_multiple the estimation
from the latter was sometimes higher than the one we currently have and
it happened exactly when we did have FIFO underruns, otherwise CDCLK
stayed pretty much the same, which also shows that there is something
obvisously wrong with current calculations.

That patch fixes it and we don't have underruns at after it is applied.


Stan

> 
> > 
> > With that patch no FIFO underruns appear anymore.
> > 
> > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_bw.c | 71 ++++++++++++++++++++++---
> >  drivers/gpu/drm/i915/display/intel_bw.h |  2 +
> >  2 files changed, 67 insertions(+), 6 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> > index 37bd7b17f3d0..3a2aeeffee7c 100644
> > --- a/drivers/gpu/drm/i915/display/intel_bw.c
> > +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> > @@ -743,20 +743,51 @@ static void skl_plane_calc_dbuf_bw(struct intel_bw_state *bw_state,
> >  	}
> >  }
> >  
> > -static void skl_crtc_calc_dbuf_bw(struct intel_bw_state *bw_state,
> > +static int intel_plane_bw_bpp(const struct drm_format_info *info)
> > +{
> > +	/*
> > +	 * For the purposes of memory bandwidth calculations,
> > +	 * planar formats are treated as if both planes had the
> > +	 * same bpp (with no reduction for vertical
> > +	 * subsampling). I.e we take as usual the worst case
> > +	 * scenario.
> > +	 */
> > +	if (drm_format_info_is_yuv_semiplanar(info))
> > +		return 2 * max(info->cpp[0], info->cpp[1]);
> > +
> > +	return info->cpp[0];
> > +}
> > +
> > +static void skl_crtc_calc_dbuf_bw(struct intel_atomic_state *state,
> > +				  struct intel_bw_state *bw_state,
> >  				  const struct intel_crtc_state *crtc_state)
> >  {
> >  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> >  	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> >  	struct intel_dbuf_bw *crtc_bw = &bw_state->dbuf_bw[crtc->pipe];
> > -	enum plane_id plane_id;
> > +	struct intel_plane *plane;
> >  
> >  	memset(crtc_bw, 0, sizeof(*crtc_bw));
> >  
> >  	if (!crtc_state->hw.active)
> >  		return;
> >  
> > -	for_each_plane_id_on_crtc(crtc, plane_id) {
> > +	for_each_intel_plane_on_crtc(&i915->drm, crtc, plane) {
> > +		const struct drm_framebuffer *fb;
> > +		enum plane_id plane_id = plane->id;
> > +		unsigned int plane_bpp = 0;
> > +		struct intel_plane_state *plane_state =
> > +			intel_atomic_get_new_plane_state(state, plane);
> > +
> > +		if (plane_state) {
> > +			fb = plane_state->hw.fb;
> > +
> > +			if (plane_state->uapi.visible && fb)
> > +				plane_bpp = intel_plane_bw_bpp(fb->format);
> > +		}
> > +
> > +		crtc_bw->pipe_cumulative_bpp += plane_bpp;
> > +
> >  		/*
> >  		 * We assume cursors are small enough
> >  		 * to not cause bandwidth problems.
> > @@ -773,6 +804,10 @@ static void skl_crtc_calc_dbuf_bw(struct intel_bw_state *bw_state,
> >  					       &crtc_state->wm.skl.plane_ddb_y[plane_id],
> >  					       crtc_state->data_rate[plane_id]);
> >  	}
> > +
> > +	crtc_bw->bpp_cdclk = DIV_ROUND_UP_ULL(mul_u32_u32(crtc_state->pixel_rate,
> > +					      crtc_bw->pipe_cumulative_bpp * 512),
> > +					      10) / 1000;
> >  }
> >  
> >  /* "Maximum Data Buffer Bandwidth" */
> > @@ -782,11 +817,13 @@ intel_bw_dbuf_min_cdclk(struct drm_i915_private *i915,
> >  {
> >  	unsigned int total_max_bw = 0;
> >  	enum dbuf_slice slice;
> > +	enum pipe pipe;
> > +	unsigned int bpp_cdclk = 0;
> > +	unsigned int dbuf_bw_cdclk;
> >  
> >  	for_each_dbuf_slice(i915, slice) {
> >  		int num_active_planes = 0;
> >  		unsigned int max_bw = 0;
> > -		enum pipe pipe;
> >  
> >  		/*
> >  		 * The arbiter can only really guarantee an
> > @@ -803,7 +840,29 @@ intel_bw_dbuf_min_cdclk(struct drm_i915_private *i915,
> >  		total_max_bw = max(total_max_bw, max_bw);
> >  	}
> >  
> > -	return DIV_ROUND_UP(total_max_bw, 64);
> > +	for_each_pipe(i915, pipe) {
> > +		const struct intel_dbuf_bw *crtc_bw = &bw_state->dbuf_bw[pipe];
> > +		/*
> > +		 * From BSpec 64631:
> > +		 * Pipe cumulative bytes should be less or equal to
> > +		 * CDCLK / (pixel_rate * scaling_factors * 51.2) thus
> > +		 * CDCLK = pipe_cumulative_bpp * pixel_rate * scaling_factors * 51.2.
> > +		 * Considering that intel_plane_pixel_rate already returns adjusted pixel rate,
> > +		 * no scaling factors needed here.
> > +		 */
> > +		bpp_cdclk = max_t(unsigned int, crtc_bw->bpp_cdclk,
> > +						bpp_cdclk);
> > +	}
> > +
> > +	dbuf_bw_cdclk = DIV_ROUND_UP(total_max_bw, 64);
> > +
> > +	/*
> > +	 * So now we have two CDCLK estimations:
> > +	 * one is based on required DBuf BW and another is
> > +	 * based on pipe cumulative bpp W/A(BSpec 64631)
> > +	 * Traditionally take the more demanding into use(worst case)
> > +	 */
> > +	return max_t(unsigned int, dbuf_bw_cdclk, bpp_cdclk);
> >  }
> >  
> >  int intel_bw_min_cdclk(struct drm_i915_private *i915,
> > @@ -842,7 +901,7 @@ int intel_bw_calc_min_cdclk(struct intel_atomic_state *state,
> >  
> >  		old_bw_state = intel_atomic_get_old_bw_state(state);
> >  
> > -		skl_crtc_calc_dbuf_bw(new_bw_state, crtc_state);
> > +		skl_crtc_calc_dbuf_bw(state, new_bw_state, crtc_state);
> >  
> >  		new_bw_state->min_cdclk[crtc->pipe] =
> >  			intel_bw_crtc_min_cdclk(crtc_state);
> > diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/gpu/drm/i915/display/intel_bw.h
> > index cb7ee3a24a58..9e3a6ad03b19 100644
> > --- a/drivers/gpu/drm/i915/display/intel_bw.h
> > +++ b/drivers/gpu/drm/i915/display/intel_bw.h
> > @@ -19,6 +19,8 @@ struct intel_crtc_state;
> >  struct intel_dbuf_bw {
> >  	unsigned int max_bw[I915_MAX_DBUF_SLICES];
> >  	u8 active_planes[I915_MAX_DBUF_SLICES];
> > +	unsigned int pipe_cumulative_bpp;
> > +	unsigned int bpp_cdclk;
> >  };
> >  
> >  struct intel_bw_state {
> > -- 
> > 2.24.1.485.gad05a3d8e5
> 
> -- 
> Ville Syrjälä
> Intel
