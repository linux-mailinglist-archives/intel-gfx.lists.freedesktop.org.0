Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A1199C48B5
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2024 23:03:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA6D810E186;
	Mon, 11 Nov 2024 22:03:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="an2idXJe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4485610E186
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Nov 2024 22:03:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731362629; x=1762898629;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=vD7ihDP3oqrnBzTsMF8fvmXWam9VZ6Y8mgMhJC8YBhw=;
 b=an2idXJejKTztxrVmpIZt9zasMB+3eY9mjFhZJ2XmiId0fj3CmX4evrW
 1cwQ2usSzG/F4XBoQ97SBu8PtErKloBK9u0QXZacEGwKV3jnsn9UGHKS4
 H9UXk0gzGEx5wsptDhDkm1z37Hzuzo4uNmuGQsLgKEFxessy0Nx2QZmjM
 F24q1s/C0BMK55TzHf6f9YNSz6J3ke2LqObsmiNBDptlwf9nQB8pR8hOP
 9O2UViPkqg+09IXOy7N/0pX6CVKsIh5qxY3Dz22XekdEcUiDdFQZpd9fk
 DylvTmwMk/PYVg5D3ctjkhK76coe2IczNIeiKzuaZ6SDV0tX/cWDs5sD0 Q==;
X-CSE-ConnectionGUID: mz/BVhRKRlK0wf5ZeUfKCg==
X-CSE-MsgGUID: 8TSCAlRUTEWNioOXfz4pjw==
X-IronPort-AV: E=McAfee;i="6700,10204,11253"; a="34052052"
X-IronPort-AV: E=Sophos;i="6.12,146,1728975600"; d="scan'208";a="34052052"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 14:03:49 -0800
X-CSE-ConnectionGUID: M98nO/qUQ2ya1boMZwHPNQ==
X-CSE-MsgGUID: WG/q82lzQXWLyWVsl/plQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,146,1728975600"; d="scan'208";a="87216812"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 11 Nov 2024 14:03:46 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 12 Nov 2024 00:03:45 +0200
Date: Tue, 12 Nov 2024 00:03:45 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 01/10] drm/i915: Grab intel_display from the encoder to
 avoid potential oopsies
Message-ID: <ZzJ_QQisgzaZy3HS@intel.com>
References: <20241107161123.16269-1-ville.syrjala@linux.intel.com>
 <20241107161123.16269-2-ville.syrjala@linux.intel.com>
 <87v7wxev8a.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87v7wxev8a.fsf@intel.com>
X-Patchwork-Hint: comment
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

On Fri, Nov 08, 2024 at 03:00:21PM +0200, Jani Nikula wrote:
> On Thu, 07 Nov 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Grab the intel_display from 'encoder' rather than 'state'
> > in the encoder hooks to avoid the massive footgun that is
> > intel_sanitize_encoder(), which passes NULL as the 'state'
> > argument to encoder .disable() and .post_disable().
> >
> > TODO: figure out how to actually fix intel_sanitize_encoder()...
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Whoopsies.
> 
> Do we need a Fixes: tag? I presume the changes are headed to v6.13 and
> without the tag this one isn't.

Slapped these on:
Fixes: 40eb34c3f491 ("drm/i915/crt: convert to struct intel_display")
Fixes: ab0b0eb5c85c ("drm/i915/tv: convert to struct intel_display")

> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>

Thanks. Pushed the lot.
 
> 
> > ---
> >  drivers/gpu/drm/i915/display/intel_crt.c | 10 +++++-----
> >  drivers/gpu/drm/i915/display/intel_tv.c  |  4 ++--
> >  2 files changed, 7 insertions(+), 7 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
> > index 74c1983fe07e..1be55bdb48b9 100644
> > --- a/drivers/gpu/drm/i915/display/intel_crt.c
> > +++ b/drivers/gpu/drm/i915/display/intel_crt.c
> > @@ -244,7 +244,7 @@ static void hsw_disable_crt(struct intel_atomic_state *state,
> >  			    const struct intel_crtc_state *old_crtc_state,
> >  			    const struct drm_connector_state *old_conn_state)
> >  {
> > -	struct intel_display *display = to_intel_display(state);
> > +	struct intel_display *display = to_intel_display(encoder);
> >  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> >  
> >  	drm_WARN_ON(display->drm, !old_crtc_state->has_pch_encoder);
> > @@ -257,7 +257,7 @@ static void hsw_post_disable_crt(struct intel_atomic_state *state,
> >  				 const struct intel_crtc_state *old_crtc_state,
> >  				 const struct drm_connector_state *old_conn_state)
> >  {
> > -	struct intel_display *display = to_intel_display(state);
> > +	struct intel_display *display = to_intel_display(encoder);
> >  	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
> >  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> >  
> > @@ -287,7 +287,7 @@ static void hsw_pre_pll_enable_crt(struct intel_atomic_state *state,
> >  				   const struct intel_crtc_state *crtc_state,
> >  				   const struct drm_connector_state *conn_state)
> >  {
> > -	struct intel_display *display = to_intel_display(state);
> > +	struct intel_display *display = to_intel_display(encoder);
> >  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> >  
> >  	drm_WARN_ON(display->drm, !crtc_state->has_pch_encoder);
> > @@ -300,7 +300,7 @@ static void hsw_pre_enable_crt(struct intel_atomic_state *state,
> >  			       const struct intel_crtc_state *crtc_state,
> >  			       const struct drm_connector_state *conn_state)
> >  {
> > -	struct intel_display *display = to_intel_display(state);
> > +	struct intel_display *display = to_intel_display(encoder);
> >  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> >  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> >  	enum pipe pipe = crtc->pipe;
> > @@ -319,7 +319,7 @@ static void hsw_enable_crt(struct intel_atomic_state *state,
> >  			   const struct intel_crtc_state *crtc_state,
> >  			   const struct drm_connector_state *conn_state)
> >  {
> > -	struct intel_display *display = to_intel_display(state);
> > +	struct intel_display *display = to_intel_display(encoder);
> >  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> >  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> >  	enum pipe pipe = crtc->pipe;
> > diff --git a/drivers/gpu/drm/i915/display/intel_tv.c b/drivers/gpu/drm/i915/display/intel_tv.c
> > index bfd16054ca05..27c530218ee6 100644
> > --- a/drivers/gpu/drm/i915/display/intel_tv.c
> > +++ b/drivers/gpu/drm/i915/display/intel_tv.c
> > @@ -929,7 +929,7 @@ intel_enable_tv(struct intel_atomic_state *state,
> >  		const struct intel_crtc_state *pipe_config,
> >  		const struct drm_connector_state *conn_state)
> >  {
> > -	struct intel_display *display = to_intel_display(state);
> > +	struct intel_display *display = to_intel_display(encoder);
> >  
> >  	/* Prevents vblank waits from timing out in intel_tv_detect_type() */
> >  	intel_crtc_wait_for_next_vblank(to_intel_crtc(pipe_config->uapi.crtc));
> > @@ -943,7 +943,7 @@ intel_disable_tv(struct intel_atomic_state *state,
> >  		 const struct intel_crtc_state *old_crtc_state,
> >  		 const struct drm_connector_state *old_conn_state)
> >  {
> > -	struct intel_display *display = to_intel_display(state);
> > +	struct intel_display *display = to_intel_display(encoder);
> >  
> >  	intel_de_rmw(display, TV_CTL, TV_ENC_ENABLE, 0);
> >  }
> 
> -- 
> Jani Nikula, Intel

-- 
Ville Syrjälä
Intel
