Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6E6149ACFB
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jan 2022 08:07:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4566C10EDB4;
	Tue, 25 Jan 2022 07:07:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8178910ED84
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jan 2022 07:07:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643094468; x=1674630468;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=4raCPKpEfy+yP4L6RUMFsf2R1A1k2O5+C+1bJqvFXFA=;
 b=CE5Qk4yzA5zwuL+ym3R8leF4IAlA3/TvS8FbDcC/jraevEM4k82LM2vQ
 blLOK5iF3JFYn4/l1gLCE27HyY0J4cmtbU7pL3IILiVsh7CKDtZk1+/gB
 x7no1DC+NN8NHPAvtwllMoRBRcduzzLMw2eTldo8VJqH4daiocnAN0zP0
 OANSObaIMrvd/E5gBsKWLk4Zz3uqqx0IdX/dBMZnzPOFsf4S436IBWyWd
 15Bo9KEVXFUMcuwV2D0vKAsT5D6d70zZKn0H+BN86/bm3MlUqTV/263Gs
 tlFw+KZSijV0VnuPafBAqChr3EKI4YM0kCBaplOu9QSXv+4L5XHZEsC0Q w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10237"; a="270681847"
X-IronPort-AV: E=Sophos;i="5.88,314,1635231600"; d="scan'208";a="270681847"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2022 23:07:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,314,1635231600"; d="scan'208";a="532334682"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by fmsmga007.fm.intel.com with SMTP; 24 Jan 2022 23:07:45 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 25 Jan 2022 09:07:45 +0200
Date: Tue, 25 Jan 2022 09:07:45 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <Ye+hwWx4rPJQHZmE@intel.com>
References: <20220124192638.26262-5-ville.syrjala@linux.intel.com>
 <20220125063937.7003-1-ville.syrjala@linux.intel.com>
 <87o8401f7c.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87o8401f7c.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 5/5] drm/i915: Move dsc/joiner enable
 into hsw_crtc_enable()
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

On Tue, Jan 25, 2022 at 08:50:47AM +0200, Jani Nikula wrote:
> On Tue, 25 Jan 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Lift the dsc/joiner enable up from the wonky places where it
> > currently sits (ddi .pre_enable() or icl_ddi_bigjoiner_pre_enable())
> > into hsw_crtc_enable() where we write the other per-pipe stuff
> > as well. Makes the transcoder vs. pipe split less confusing.
> >
> > For DSI this results in slight reordering between the dsc/joiner
> > enable vs. transcoder timings setup, but I can't really think
> > why that should cause any issues since the transcoder isn't yet
> > enabled at that point.
> >
> > v2: Take care of dsi (Jani)
> >
> > Cc: Jani Nikula <jani.nikula@intel.com>
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> 
> One question inline.
> 
> > ---
> >  drivers/gpu/drm/i915/display/icl_dsi.c       |  2 --
> >  drivers/gpu/drm/i915/display/intel_ddi.c     |  6 ------
> >  drivers/gpu/drm/i915/display/intel_display.c | 12 +++++-------
> >  3 files changed, 5 insertions(+), 15 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
> > index 95f49535fa6e..16a611f7d659 100644
> > --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> > +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> > @@ -1233,8 +1233,6 @@ static void gen11_dsi_pre_enable(struct intel_atomic_state *state,
> >  
> >  	intel_dsc_dsi_pps_write(encoder, pipe_config);
> >  
> > -	intel_dsc_enable(pipe_config);
> > -
> >  	/* step6c: configure transcoder timings */
> >  	gen11_dsi_set_transcoder_timings(encoder, pipe_config);
> >  }
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index 2f20abc5122d..5d1f7d6218c5 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -2425,9 +2425,6 @@ static void tgl_ddi_pre_enable_dp(struct intel_atomic_state *state,
> >  	intel_ddi_enable_fec(encoder, crtc_state);
> >  
> >  	intel_dsc_dp_pps_write(encoder, crtc_state);
> > -
> > -	if (!crtc_state->bigjoiner)
> > -		intel_dsc_enable(crtc_state);
> >  }
> >  
> >  static void hsw_ddi_pre_enable_dp(struct intel_atomic_state *state,
> > @@ -2493,9 +2490,6 @@ static void hsw_ddi_pre_enable_dp(struct intel_atomic_state *state,
> >  		intel_ddi_enable_pipe_clock(encoder, crtc_state);
> >  
> >  	intel_dsc_dp_pps_write(encoder, crtc_state);
> > -
> > -	if (!crtc_state->bigjoiner)
> > -		intel_dsc_enable(crtc_state);
> >  }
> >  
> >  static void intel_ddi_pre_enable_dp(struct intel_atomic_state *state,
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > index d2906434ab3f..13b1de03640d 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -1974,7 +1974,6 @@ static void hsw_set_frame_start_delay(const struct intel_crtc_state *crtc_state)
> >  static void icl_ddi_bigjoiner_pre_enable(struct intel_atomic_state *state,
> >  					 const struct intel_crtc_state *crtc_state)
> >  {
> > -	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
> >  	struct intel_crtc_state *master_crtc_state;
> >  	struct intel_crtc *master_crtc;
> >  	struct drm_connector_state *conn_state;
> > @@ -2004,12 +2003,6 @@ static void icl_ddi_bigjoiner_pre_enable(struct intel_atomic_state *state,
> >  
> >  	if (crtc_state->bigjoiner_slave)
> >  		intel_encoders_pre_enable(state, master_crtc);
> > -
> > -	/* need to enable VDSC, which we skipped in pre-enable */
> > -	intel_dsc_enable(crtc_state);
> > -
> > -	if (DISPLAY_VER(dev_priv) >= 13)
> > -		intel_uncompressed_joiner_enable(crtc_state);
> >  }
> >  
> >  static void hsw_configure_cpu_transcoder(const struct intel_crtc_state *crtc_state)
> > @@ -2057,6 +2050,11 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
> >  		icl_ddi_bigjoiner_pre_enable(state, new_crtc_state);
> >  	}
> >  
> > +	intel_dsc_enable(new_crtc_state);
> > +
> > +	if (DISPLAY_VER(dev_priv) >= 13)
> > +		intel_uncompressed_joiner_enable(new_crtc_state);
> > +
> 
> Should this call be moved inside intel_dsc_enable()? I mean it's not
> compression, but it's the same splitter/joiner/etc. block that handles
> all of this?

We probably want to restructure the code a bit more so that
it's not all pretending to be about dsc. Dunno if we should just have
some dss_enable() thing to configure everything about the
splitter/joiner stuff. Although maybe there are some conflicting
sequencing requirements for MSO, so maybe not all of it can go into
the same place? In which case I quess we should just have some kind
of joiner_enable() thing.

-- 
Ville Syrjälä
Intel
