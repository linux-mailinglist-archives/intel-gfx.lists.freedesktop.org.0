Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7358D829647
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jan 2024 10:25:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1547610E587;
	Wed, 10 Jan 2024 09:25:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5198310E587
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jan 2024 09:25:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704878714; x=1736414714;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=RxJoRMWcXEhuoD+y3jMWm8eWAH0XxdnwAC0BJyv3o4Y=;
 b=CRuXWZrUpObomOGtOrEnm3xzns9VuLXZ7SlVtjg3En4BI6f3FNqei3W/
 gzcTZvMH59t5qhrgFVNnu6mvqVNAn4DGQAgAXbpk/BkTn0ae96dulAWeb
 nzpcjyUhQ49YmydAcdtW1zl0H6xU0jCRx5Gk8D6xh5ObHy4toyJpVOeV1
 jQo1brI7l/P06ptWmaNe0fq5KGoQdBA70bznF0+VSoXAyRDLAOMLTNUb9
 rK2/UFkL+5KVNyuk5hfxPMY6U8WmYIyYY4AYzc2D5arb1uOk3Qtle0gDs
 JK6eGDJ0nexINwsxgLGtob4VrXiQN3gy6PSIkUqMGv4WKhOdFiyD7mjGx A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="5207069"
X-IronPort-AV: E=Sophos;i="6.04,184,1695711600"; 
   d="scan'208";a="5207069"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2024 01:25:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="758306311"
X-IronPort-AV: E=Sophos;i="6.04,184,1695711600"; d="scan'208";a="758306311"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2024 01:25:12 -0800
Date: Wed, 10 Jan 2024 11:25:04 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix bigjoiner case for DP2.0
Message-ID: <ZZ5h7Fqe3OOh4TiV@intel.com>
References: <20231012193000.11917-1-vidya.srinivas@intel.com>
 <ZSkfYh9hhca-o0DL@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZSkfYh9hhca-o0DL@intel.com>
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

On Fri, Oct 13, 2023 at 01:43:46PM +0300, Ville Syrjälä wrote:
> On Fri, Oct 13, 2023 at 01:00:00AM +0530, vsrini4 wrote:
> > Patch calculates bigjoiner pipes in mst compute.
> > Patch also passes bigjoiner bool to validate plane
> > max size.
> 
> I doubt this is sufficient. The modeset sequence is still all
> wrong for bigjoiner+mst.

Should that be now enough with my series also?

https://patchwork.freedesktop.org/series/128311/

Stan

> 
> > 
> > Signed-off-by: vsrini4 <vidya.srinivas@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp_mst.c | 19 ++++++++++++-------
> >  1 file changed, 12 insertions(+), 7 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > index e3f176a093d2..f499ce39b2a8 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > @@ -308,6 +308,7 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
> >  				       struct drm_connector_state *conn_state)
> >  {
> >  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> > +	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
> >  	struct intel_dp_mst_encoder *intel_mst = enc_to_mst(encoder);
> >  	struct intel_dp *intel_dp = &intel_mst->primary->dp;
> >  	const struct drm_display_mode *adjusted_mode =
> > @@ -318,6 +319,10 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
> >  	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
> >  		return -EINVAL;
> >  
> > +	if (intel_dp_need_bigjoiner(intel_dp, adjusted_mode->crtc_hdisplay,
> > +				    adjusted_mode->crtc_clock))
> > +		pipe_config->bigjoiner_pipes = GENMASK(crtc->pipe + 1, crtc->pipe);
> > +
> >  	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
> >  	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
> >  	pipe_config->has_pch_encoder = false;
> > @@ -936,12 +941,6 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
> >  	if (ret)
> >  		return ret;
> >  
> > -	if (mode_rate > max_rate || mode->clock > max_dotclk ||
> > -	    drm_dp_calc_pbn_mode(mode->clock, min_bpp, false) > port->full_pbn) {
> > -		*status = MODE_CLOCK_HIGH;
> > -		return 0;
> > -	}
> > -
> >  	if (mode->clock < 10000) {
> >  		*status = MODE_CLOCK_LOW;
> >  		return 0;
> > @@ -957,6 +956,12 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
> >  		max_dotclk *= 2;
> >  	}
> >  
> > +	if (mode_rate > max_rate || mode->clock > max_dotclk ||
> > +	    drm_dp_calc_pbn_mode(mode->clock, min_bpp, false) > port->full_pbn) {
> > +		*status = MODE_CLOCK_HIGH;
> > +		return 0;
> > +	}
> > +
> >  	if (DISPLAY_VER(dev_priv) >= 10 &&
> >  	    drm_dp_sink_supports_dsc(intel_dp->dsc_dpcd)) {
> >  		/*
> > @@ -994,7 +999,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
> >  	if (mode_rate > max_rate && !dsc)
> >  		return MODE_CLOCK_HIGH;
> >  
> > -	*status = intel_mode_valid_max_plane_size(dev_priv, mode, false);
> > +	*status = intel_mode_valid_max_plane_size(dev_priv, mode, bigjoiner);
> >  	return 0;
> >  }
> >  
> > -- 
> > 2.33.0
> 
> -- 
> Ville Syrjälä
> Intel
