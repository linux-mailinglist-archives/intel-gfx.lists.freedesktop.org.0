Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 262E84CD755
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Mar 2022 16:10:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6762710E366;
	Fri,  4 Mar 2022 15:10:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9969010E366
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Mar 2022 15:10:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646406636; x=1677942636;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=XB7mtJMoj9i3KN6dKW7zAJgFsK8mPufp9zWgXzAG8rw=;
 b=A0G28bqWK31+hQCM7pQamoHxmdSklNXw9/zvyueHHuTHY2o9T9g8uEae
 UjdD0/0ucty7g/BiUS1DraF9OgUPlc13dfR+X4gwrVgercf+SEoIcvFic
 yPIlTvQ2kFNwPSUsPLp7Yl0ILR/BNtyEd7xAyQeitHxtT8npBn6WTI6gs
 bVjX/hF906ur6iDbfGJnXU43Mq8q3DYuGWAKqMSHg/ze2SCNSW3bSv8Ri
 9IYiLaHXDUk+Sc/gjyvMSXiW2AqBvPl0gb/5a6yp/cwbT4I27u2zAwbqL
 EcMgW/Zc5j3qnymYm5GAE6zoqglfsap6EPAEA4t8+uN3EJlNjoE7v7txp Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10276"; a="241415372"
X-IronPort-AV: E=Sophos;i="5.90,155,1643702400"; d="scan'208";a="241415372"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2022 07:10:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,155,1643702400"; d="scan'208";a="552252537"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga008.jf.intel.com with SMTP; 04 Mar 2022 07:10:33 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 04 Mar 2022 17:10:33 +0200
Date: Fri, 4 Mar 2022 17:10:33 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Navare, Manasi" <manasi.d.navare@intel.com>
Message-ID: <YiIr6cUI3slPfjhQ@intel.com>
References: <20220223131315.18016-1-ville.syrjala@linux.intel.com>
 <20220223131315.18016-14-ville.syrjala@linux.intel.com>
 <20220303224116.GB17231@labuser-Z97X-UD5H>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220303224116.GB17231@labuser-Z97X-UD5H>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 13/13] drm/i915: Make the PIPESC rect
 relative to the entire bigjoiner area
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

On Thu, Mar 03, 2022 at 02:41:23PM -0800, Navare, Manasi wrote:
> On Wed, Feb 23, 2022 at 03:13:15PM +0200, Ville Syrjala wrote:
> > From: Ville Syrj�l� <ville.syrjala@linux.intel.com>
> > 
> > When using bigjoiner it's useful to know the offset of each
> > individual pipe in the whole set of joined pipes. Let's include
> > that information in our PIPESRC rectangle. With this we can make
> > the plane clipping code blissfully unaware of bigjoiner usage, as
> > all we have to do is remove the pipe's offset from the final plane
> > destination coordinates.
> > 
> > v2: Use intel_bigjoiner_num_pipes()
> > 
> > Signed-off-by: Ville Syrj�l� <ville.syrjala@linux.intel.com>
> > ---
> >  .../gpu/drm/i915/display/intel_atomic_plane.c |  7 +++---
> >  drivers/gpu/drm/i915/display/intel_cursor.c   |  8 ++++---
> >  drivers/gpu/drm/i915/display/intel_display.c  | 21 ++++++++++++++++++
> >  drivers/gpu/drm/i915/display/intel_overlay.c  | 22 +++++++++----------
> >  4 files changed, 40 insertions(+), 18 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > index 3cbf66146da0..92ae4eebc62f 100644
> > --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > @@ -824,10 +824,6 @@ int intel_atomic_plane_check_clipping(struct intel_plane_state *plane_state,
> >  		return -ERANGE;
> >  	}
> >  
> > -	/* right side of the image is on the slave crtc, adjust dst to match */
> > -	if (intel_crtc_is_bigjoiner_slave(crtc_state))
> > -		drm_rect_translate(dst, -drm_rect_width(&crtc_state->pipe_src), 0);
> > -
> >  	/*
> >  	 * FIXME: This might need further adjustment for seamless scaling
> >  	 * with phase information, for the 2p2 and 2p1 scenarios.
> > @@ -844,6 +840,9 @@ int intel_atomic_plane_check_clipping(struct intel_plane_state *plane_state,
> >  		return -EINVAL;
> >  	}
> >  
> > +	/* final plane coordinates will be relative to the plane's pipe */
> > +	drm_rect_translate(dst, -clip->x1, -clip->y1);
> > +
> >  	return 0;
> >  }
> >  
> > diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
> > index da6cf0515164..9279e2783e7e 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cursor.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cursor.c
> > @@ -152,9 +152,11 @@ static int intel_check_cursor(struct intel_crtc_state *crtc_state,
> >  	/* Use the unclipped src/dst rectangles, which we program to hw */
> >  	plane_state->uapi.src = src;
> >  	plane_state->uapi.dst = dst;
> > -	if (intel_crtc_is_bigjoiner_slave(crtc_state))
> > -		drm_rect_translate(&plane_state->uapi.dst,
> > -				   -drm_rect_width(&crtc_state->pipe_src), 0);
> > +
> > +	/* final plane coordinates will be relative to the plane's pipe */
> > +	drm_rect_translate(&plane_state->uapi.dst,
> > +			   -crtc_state->pipe_src.x1,
> > +			   -crtc_state->pipe_src.y1);
> >  
> >  	ret = intel_cursor_check_surface(plane_state);
> >  	if (ret)
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > index 7a09bb33c1eb..a9c15f27b948 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -3204,6 +3204,23 @@ static void intel_get_transcoder_timings(struct intel_crtc *crtc,
> >  	}
> >  }
> >  
> > +static void intel_bigjoiner_adjust_pipe_src(struct intel_crtc_state *crtc_state)
> > +{
> > +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> > +	int num_pipes = intel_bigjoiner_num_pipes(crtc_state);
> > +	enum pipe master_pipe, pipe = crtc->pipe;
> > +	int width;
> > +
> > +	if (num_pipes < 2)
> > +		return;
> > +
> > +	master_pipe = bigjoiner_master_pipe(crtc_state);
> > +	width = drm_rect_width(&crtc_state->pipe_src);
> > +
> > +	drm_rect_translate_to(&crtc_state->pipe_src,
> > +			      (pipe - master_pipe) * width, 0);
> > +}
> > +
> >  static void intel_get_pipe_src_size(struct intel_crtc *crtc,
> >  				    struct intel_crtc_state *pipe_config)
> >  {
> > @@ -3216,6 +3233,8 @@ static void intel_get_pipe_src_size(struct intel_crtc *crtc,
> >  	drm_rect_init(&pipe_config->pipe_src, 0, 0,
> >  		      REG_FIELD_GET(PIPESRC_WIDTH_MASK, tmp) + 1,
> >  		      REG_FIELD_GET(PIPESRC_HEIGHT_MASK, tmp) + 1);
> > +
> > +	intel_bigjoiner_adjust_pipe_src(pipe_config);
> >  }
> >  
> >  static void i9xx_set_pipeconf(const struct intel_crtc_state *crtc_state)
> > @@ -5853,6 +5872,8 @@ intel_modeset_pipe_config_late(struct intel_crtc_state *crtc_state)
> >  	struct drm_connector *connector;
> >  	int i;
> >  
> > +	intel_bigjoiner_adjust_pipe_src(crtc_state);
> > +
> >  	for_each_new_connector_in_state(&state->base, connector,
> >  					conn_state, i) {
> >  		struct intel_encoder *encoder =
> > diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
> > index 631e1f1dc5e6..ee46561b5ae8 100644
> > --- a/drivers/gpu/drm/i915/display/intel_overlay.c
> > +++ b/drivers/gpu/drm/i915/display/intel_overlay.c
> > @@ -958,21 +958,21 @@ static void update_pfit_vscale_ratio(struct intel_overlay *overlay)
> >  static int check_overlay_dst(struct intel_overlay *overlay,
> >  			     struct drm_intel_overlay_put_image *rec)
> >  {
> > -	const struct intel_crtc_state *pipe_config =
> > +	const struct intel_crtc_state *crtc_state =
> >  		overlay->crtc->config;
> > -	int pipe_src_w = drm_rect_width(&pipe_config->pipe_src);
> > -	int pipe_src_h = drm_rect_height(&pipe_config->pipe_src);
> > +	struct drm_rect req, clipped;
> >  
> > -	if (rec->dst_height == 0 || rec->dst_width == 0)
> > -		return -EINVAL;
> > +	drm_rect_init(&req, rec->dst_x, rec->dst_y,
> > +		      rec->dst_width, rec->dst_height);
> > +
> > +	clipped = req;
> > +	drm_rect_intersect(&clipped, &crtc_state->pipe_src);
> >  
> > -	if (rec->dst_x < pipe_src_w &&
> > -	    rec->dst_x + rec->dst_width <= pipe_src_w &&
> > -	    rec->dst_y < pipe_src_h &&
> > -	    rec->dst_y + rec->dst_height <= pipe_src_h)
> > -		return 0;
> > -	else
> > +	if (!drm_rect_visible(&clipped) ||
> > +	    !drm_rect_equals(&clipped, &req))
> >  		return -EINVAL;
> > +
> > +	return 0;
> 
> I dont quite understand what we are trying to do here with the clipped ?
> Can you elaborate a bit what this function does?

It checks whether the userspace provided coordinates were fully
within the pipe source rectangle. If not we return an error.

I suppose technically we should be checking against the uapi
hdisplay/vdisplay since this is uapi stuff, but no bigjoiner
on these old platforms so this will effectively do the same
thing.

-- 
Ville Syrj�l�
Intel
