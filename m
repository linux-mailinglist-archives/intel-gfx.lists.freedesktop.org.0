Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68D915A0BD6
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Aug 2022 10:50:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FBC011381A;
	Thu, 25 Aug 2022 08:49:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BCCB11371C
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Aug 2022 08:49:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661417388; x=1692953388;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=XgD6+I9M5mgiS4OaThmudi5Z4kK9hJ8gxph/68Q5YbU=;
 b=aqApaKipfIjCjPChtBHfl8Jk/y3DxzO2xGTiyGeaEigBvlVVP2jl0x0L
 LTFK/fpYy8rc+ZFPdviGMt/2eWD9vnuooLR2kN809eglKOHHDbbgG1VR6
 ZZsPP+W/7+l5qdNm9p0y54AEVS3MoZFjb11qgCMian2fBxHW7hJMcMzXK
 6NNq2admpJWuyNoAXo3yy8BV3whnB6eGxREwm/Qq0jwEwDICdpn7EzxcL
 kPQ/me45KN72As1gL/UmdO15zahHQQ0RspvvpRyT8DErZtXv39yLHZ3yx
 +zb/ZOgd1U/Ps+HbNH8+JmGeGvoFqht9v3UpQ7zIfHXi6QFYg6BcCA0t/ g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10449"; a="292931797"
X-IronPort-AV: E=Sophos;i="5.93,262,1654585200"; d="scan'208";a="292931797"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2022 01:49:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,262,1654585200"; d="scan'208";a="670891385"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.59])
 by fmsmga008.fm.intel.com with SMTP; 25 Aug 2022 01:49:45 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 25 Aug 2022 11:49:45 +0300
Date: Thu, 25 Aug 2022 11:49:45 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Message-ID: <Ywc3qSi7WjopSsgG@intel.com>
References: <20220617160730.10981-1-ville.syrjala@linux.intel.com>
 <YwcqyKdjSdDZmx0c@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <YwcqyKdjSdDZmx0c@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Implement a bit of bw_state
 readout
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

On Thu, Aug 25, 2022 at 10:54:48AM +0300, Lisovskiy, Stanislav wrote:
> On Fri, Jun 17, 2022 at 07:07:30PM +0300, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > We currently fail to reconstruct the bw related cdclk limits
> > during readout, which triggers a  cdclk reclaculation during
> > fastboot, which is then likely forces a full modeset anyway.
> > Reconstruct some of the missing state so that we can skip
> > the cdclk recomputation and thus have a higher chance for
> > flicker free boot.
> 
> Problem is that intel_bw_min_cdclk is using intel_bw_dbuf_min_cdclk,
> which in turns relies that bw_state->dbuf_bw was already calculated,
> however this is calculated in intel_bw_calc_min_cdclk, which is called
> from intel_cdclk_atomic_check.
> 
> So wondering will that work?

Hmm. I guess we're more or less just missing a call to
skl_crtc_calc_dbuf_bw(), but I don't have all that code paged
in atm so might be missing something.

So as is this is probably not a complete solution, but it did
avoid the cdclk modeset on some machine I tested. I guess that
one was a tgl and thus the maximum pipe read bandwidth stuff
kicked in and populated things suffiiciently to avoid the full
cdclk recalculation. I'll have to try this on some older machine
to check how it behaves...

> 
> Stan
> 
> > 
> > Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_bw.c      | 9 ++++++---
> >  drivers/gpu/drm/i915/display/intel_display.c | 7 +++++--
> >  2 files changed, 11 insertions(+), 5 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> > index 79269d2c476b..30ffec63f9a3 100644
> > --- a/drivers/gpu/drm/i915/display/intel_bw.c
> > +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> > @@ -627,11 +627,14 @@ void intel_bw_crtc_update(struct intel_bw_state *bw_state,
> >  		intel_bw_crtc_data_rate(crtc_state);
> >  	bw_state->num_active_planes[crtc->pipe] =
> >  		intel_bw_crtc_num_active_planes(crtc_state);
> > +	bw_state->min_cdclk[crtc->pipe] =
> > +		intel_bw_crtc_min_cdclk(crtc_state);
> >  
> > -	drm_dbg_kms(&i915->drm, "pipe %c data rate %u num active planes %u\n",
> > -		    pipe_name(crtc->pipe),
> > +	drm_dbg_kms(&i915->drm, "[CRTC:%d:%s] data rate %u num active planes %u min cdclk %d kHz\n",
> > +		    crtc->base.base.id, crtc->base.name,
> >  		    bw_state->data_rate[crtc->pipe],
> > -		    bw_state->num_active_planes[crtc->pipe]);
> > +		    bw_state->num_active_planes[crtc->pipe],
> > +		    bw_state->min_cdclk[crtc->pipe]);
> >  }
> >  
> >  static unsigned int intel_bw_num_active_planes(struct drm_i915_private *dev_priv,
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > index 90bd26431e31..b17b9493c68f 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -2498,6 +2498,7 @@ static void intel_crtc_disable_noatomic(struct intel_crtc *crtc,
> >  
> >  	bw_state->data_rate[pipe] = 0;
> >  	bw_state->num_active_planes[pipe] = 0;
> > +	bw_state->min_cdclk[pipe] = 0;
> >  }
> >  
> >  /*
> > @@ -9310,6 +9311,8 @@ static void intel_modeset_readout_hw_state(struct drm_device *dev)
> >  		to_intel_cdclk_state(dev_priv->cdclk.obj.state);
> >  	struct intel_dbuf_state *dbuf_state =
> >  		to_intel_dbuf_state(dev_priv->dbuf.obj.state);
> > +	struct intel_bw_state *bw_state =
> > +		to_intel_bw_state(dev_priv->bw_obj.state);
> >  	enum pipe pipe;
> >  	struct intel_crtc *crtc;
> >  	struct intel_encoder *encoder;
> > @@ -9425,8 +9428,6 @@ static void intel_modeset_readout_hw_state(struct drm_device *dev)
> >  	drm_connector_list_iter_end(&conn_iter);
> >  
> >  	for_each_intel_crtc(dev, crtc) {
> > -		struct intel_bw_state *bw_state =
> > -			to_intel_bw_state(dev_priv->bw_obj.state);
> >  		struct intel_crtc_state *crtc_state =
> >  			to_intel_crtc_state(crtc->base.state);
> >  		struct intel_plane *plane;
> > @@ -9490,6 +9491,8 @@ static void intel_modeset_readout_hw_state(struct drm_device *dev)
> >  
> >  		intel_bw_crtc_update(bw_state, crtc_state);
> >  	}
> > +
> > +	cdclk_state->bw_min_cdclk = intel_bw_min_cdclk(dev_priv, bw_state);
> >  }
> >  
> >  static void
> > -- 
> > 2.35.1
> > 

-- 
Ville Syrjälä
Intel
