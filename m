Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D78A1552296
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jun 2022 19:05:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9318410E73C;
	Mon, 20 Jun 2022 17:05:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4699210E72F
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jun 2022 17:05:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655744713; x=1687280713;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=/xhq5m76SN9XR+XqOwFhg8565RkDx4gHUW+OogOF2vI=;
 b=PGG/I4zNnrVw/LoVT4unrGE3Lck6sdlJ02vKfoXnm13b5zxcTrRBawlK
 FBQt5QSYBb4vsWDHrJmBATlSEUdMM0RjVHPxhTRIMbFQ1dq5+Q9TKOqDS
 h8EokL5DBlwCgXBrOXRi7vtsrTdmVRyX9kd2teuQXFpd7moUiJOD3Scui
 b4dvAO5BS/Y2GowHKXDuAJqwuRn1SFv+yj4dIKTHlrFDqHWAPJ54L2ANZ
 rGJP9gl2XVcGvk7I+hAhHOzvjd3quSqv5kTxLE1m0PYEBI7LYLv/47n8B
 jVRxa0qxzUIcjuz6katQPp1Z0gNSvPkB9QnlUwB6VZO1d8BWw/egbovCC Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10384"; a="280672768"
X-IronPort-AV: E=Sophos;i="5.92,207,1650956400"; d="scan'208";a="280672768"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 10:05:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,207,1650956400"; d="scan'208";a="643201663"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by fmsmga008.fm.intel.com with SMTP; 20 Jun 2022 10:05:10 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 20 Jun 2022 20:05:09 +0300
Date: Mon, 20 Jun 2022 20:05:09 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <YrCoxUgSEuzl+Amp@intel.com>
References: <20220617160510.2082-1-ville.syrjala@linux.intel.com>
 <20220617160510.2082-4-ville.syrjala@linux.intel.com>
 <87h74fu2l5.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87h74fu2l5.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 03/16] drm/i915: Extract
 has_double_buffered_m_n()
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

On Mon, Jun 20, 2022 at 12:05:42PM +0300, Jani Nikula wrote:
> On Fri, 17 Jun 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > We have a couple of places that want to make distinction between
> > double buffered M/N registers vs. the split M1/N1+M2/N2 registers.
> > Add a helper for that.
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Mhh. So why a function in intel_display.c instead of a macro in
> i915_drv.h? Both are kind of cluttered, but at least in i915_drv.h it
> would be among others.

Doesn't feel quite right to me to put low level details like this
into the i915 feature stuff. I'd rather keep it next to the
implementation so I have all the relevant details in one place.

For higher level stuff and features named in bspec the HAS_FOO()
stuff feels more appropriate to me.

But maybe that's just me.

> 
> I do think we should have a separate file for display feature check
> macros, and move most if not all of the display related HAS_*() stuff
> there from i915_drv.h.
> 
> So technically this does what it says on the box, and in that sense,
> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> 
> but I don't much like the example and precedence this function sets.
> 
> 
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 7 ++++++-
> >  drivers/gpu/drm/i915/display/intel_display.h | 1 +
> >  drivers/gpu/drm/i915/display/intel_dp.c      | 3 +--
> >  3 files changed, 8 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > index b24784c4522d..5559688047b3 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -2798,6 +2798,11 @@ static int intel_crtc_compute_config(struct intel_atomic_state *state,
> >  	return 0;
> >  }
> >  
> > +bool has_double_buffered_m_n(struct drm_i915_private *i915)
> > +{
> > +	return DISPLAY_VER(i915) >= 9 || IS_BROADWELL(i915);
> > +}
> > +
> >  static void
> >  intel_reduce_m_n_ratio(u32 *num, u32 *den)
> >  {
> > @@ -5900,7 +5905,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
> >  	PIPE_CONF_CHECK_I(lane_count);
> >  	PIPE_CONF_CHECK_X(lane_lat_optim_mask);
> >  
> > -	if (DISPLAY_VER(dev_priv) >= 9 || IS_BROADWELL(dev_priv)) {
> > +	if (has_double_buffered_m_n(dev_priv)) {
> >  		PIPE_CONF_CHECK_M_N_ALT(dp_m_n, dp_m2_n2);
> >  	} else {
> >  		PIPE_CONF_CHECK_M_N(dp_m_n);
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
> > index 2feb8ae5d5d4..44c88aadfc30 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display.h
> > @@ -543,6 +543,7 @@ int intel_atomic_add_affected_planes(struct intel_atomic_state *state,
> >  				     struct intel_crtc *crtc);
> >  u8 intel_calc_active_pipes(struct intel_atomic_state *state,
> >  			   u8 active_pipes);
> > +bool has_double_buffered_m_n(struct drm_i915_private *i915);
> >  void intel_link_compute_m_n(u16 bpp, int nlanes,
> >  			    int pixel_clock, int link_clock,
> >  			    struct intel_link_m_n *m_n,
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 2fac76bcf06d..75645508080a 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -1842,8 +1842,7 @@ intel_dp_compute_hdr_metadata_infoframe_sdp(struct intel_dp *intel_dp,
> >  static bool cpu_transcoder_has_drrs(struct drm_i915_private *i915,
> >  				    enum transcoder cpu_transcoder)
> >  {
> > -	/* M1/N1 is double buffered */
> > -	if (DISPLAY_VER(i915) >= 9 || IS_BROADWELL(i915))
> > +	if (has_double_buffered_m_n(i915))
> >  		return true;
> >  
> >  	return intel_cpu_transcoder_has_m2_n2(i915, cpu_transcoder);
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center

-- 
Ville Syrjälä
Intel
