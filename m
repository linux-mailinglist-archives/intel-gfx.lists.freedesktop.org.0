Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F11E226A523
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Sep 2020 14:28:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E21B6E286;
	Tue, 15 Sep 2020 12:28:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D81E26E286
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Sep 2020 12:28:38 +0000 (UTC)
IronPort-SDR: z95w6tUzsUKkSVqhfrYFq/pVZxKB11QDQrhXDauIK6Cr/UG6wSvHpM+3WNuV/I2G2EpTGNyOuz
 IZFlhXlTrfTQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9744"; a="158530502"
X-IronPort-AV: E=Sophos;i="5.76,429,1592895600"; d="scan'208";a="158530502"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2020 05:28:38 -0700
IronPort-SDR: vQSffr0OlnPi7qW4J1SaBXKFO+ADOa0mctChdczlQbbEE/MqzKF/PhZkmjAGLIMh30/cG1pVec
 Jh/D5Ej57hrA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,429,1592895600"; d="scan'208";a="343485636"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by FMSMGA003.fm.intel.com with ESMTP; 15 Sep 2020 05:28:38 -0700
Received: from bgsmsx601.gar.corp.intel.com (10.109.78.80) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 15 Sep 2020 05:28:37 -0700
Received: from bgsmsx602.gar.corp.intel.com (10.109.78.81) by
 BGSMSX601.gar.corp.intel.com (10.109.78.80) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 15 Sep 2020 17:58:35 +0530
Received: from bgsmsx602.gar.corp.intel.com ([10.109.78.81]) by
 BGSMSX602.gar.corp.intel.com ([10.109.78.81]) with mapi id 15.01.1713.004;
 Tue, 15 Sep 2020 17:58:35 +0530
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [V9 4/4] drm/i915/dsi: Initiate fame request in cmd mode
Thread-Index: AQHWhoc0DZb/tYMtLECWTuaqsBWJe6lpR+GAgABiJBA=
Date: Tue, 15 Sep 2020 12:28:35 +0000
Message-ID: <e3a8b239542540b6950eec283cdaa5ec@intel.com>
References: <20200909085047.31004-1-vandita.kulkarni@intel.com>
 <20200909085047.31004-5-vandita.kulkarni@intel.com>
 <871rj3xn16.fsf@intel.com>
In-Reply-To: <871rj3xn16.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [V9 4/4] drm/i915/dsi: Initiate fame request in cmd
 mode
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> -----Original Message-----
> From: Jani Nikula <jani.nikula@intel.com>
> Sent: Tuesday, September 15, 2020 5:36 PM
> To: Kulkarni, Vandita <vandita.kulkarni@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: ville.syrjala@linux.intel.com; B S, Karthik <karthik.b.s@intel.com>;
> Kulkarni, Vandita <vandita.kulkarni@intel.com>
> Subject: Re: [V9 4/4] drm/i915/dsi: Initiate fame request in cmd mode
> 
> On Wed, 09 Sep 2020, Vandita Kulkarni <vandita.kulkarni@intel.com> wrote:
> > In TE Gate mode or TE NO_GATE mode on every flip we need to set the
> > frame update request bit.
> > After this  bit is set transcoder hardware will automatically send the
> > frame data to the panel in case of TE NO_GATE mode, where it sends
> > after it receives the TE event in case of TE_GATE mode.
> > Once the frame data is sent to the panel, we see the frame counter
> > updating.
> >
> > v2: Use intel_de_read/write
> >
> > v3: remove the usage of private_flags
> >
> > Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/icl_dsi.c       | 26 ++++++++++++++++++++
> >  drivers/gpu/drm/i915/display/intel_display.c | 13 ++++++++++
> >  drivers/gpu/drm/i915/display/intel_dsi.h     |  3 +++
> >  3 files changed, 42 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c
> > b/drivers/gpu/drm/i915/display/icl_dsi.c
> > index ee3c5c085cd3..cdc9d8874945 100644
> > --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> > +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> > @@ -205,6 +205,32 @@ static int dsi_send_pkt_payld(struct intel_dsi_host
> *host,
> >  	return 0;
> >  }
> >
> > +void gen11_dsi_frame_update(struct intel_crtc_state *crtc_state) {
> > +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> > +	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> > +	u32 tmp, flags;
> > +	enum port port;
> > +
> > +	flags = crtc->mode_flags;
> > +
> > +	/*
> > +	 * case 1 also covers dual link
> > +	 * In case of dual link, frame update should be set on
> > +	 * DSI_0
> > +	 */
> > +	if (flags & I915_MODE_FLAG_DSI_USE_TE0)
> > +		port = PORT_A;
> > +	else if (flags & I915_MODE_FLAG_DSI_USE_TE1)
> > +		port = PORT_B;
> > +	else
> > +		return;
> > +
> > +	tmp = intel_de_read(dev_priv, DSI_CMD_FRMCTL(port));
> > +	tmp |= DSI_FRAME_UPDATE_REQUEST;
> > +	intel_de_write(dev_priv, DSI_CMD_FRMCTL(port), tmp); }
> > +
> >  static void dsi_program_swing_and_deemphasis(struct intel_encoder
> > *encoder)  {
> >  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> diff
> > --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index ec148a8da2c2..cd852c24d3bc 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -15615,6 +15615,18 @@ static void intel_atomic_commit_tail(struct
> intel_atomic_state *state)
> >  		intel_set_cdclk_post_plane_update(state);
> >  	}
> >
> > +	/*
> > +	 * Incase of mipi dsi command mode, we need to set frame update
> > +	 * for every commit
> > +	 */
> > +	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
> > +		if ((INTEL_GEN(dev_priv) >= 11) &&
> > +		    (intel_crtc_has_type(new_crtc_state,
> INTEL_OUTPUT_DSI))) {
> 
> Excessive parens.
> 
> > +			if (new_crtc_state->hw.active)
> > +				gen11_dsi_frame_update(new_crtc_state);
> > +		}
> > +	}
> > +
> >  	/* FIXME: We should call drm_atomic_helper_commit_hw_done()
> here
> >  	 * already, but still need the state for the delayed optimization. To
> >  	 * fix this:
> > @@ -15626,6 +15638,7 @@ static void intel_atomic_commit_tail(struct
> intel_atomic_state *state)
> >  	 */
> >  	drm_atomic_helper_wait_for_flip_done(dev, &state->base);
> >
> > +
> 
> Superfluous blank line.
> 
> >  	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
> >  		if (new_crtc_state->hw.active &&
> >  		    !needs_modeset(new_crtc_state) && diff --git
> > a/drivers/gpu/drm/i915/display/intel_dsi.h
> > b/drivers/gpu/drm/i915/display/intel_dsi.h
> > index 19f78a4022d3..08f1f586eefb 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dsi.h
> > +++ b/drivers/gpu/drm/i915/display/intel_dsi.h
> > @@ -205,6 +205,9 @@ u32 bxt_dsi_get_pclk(struct intel_encoder
> *encoder,
> >  		     struct intel_crtc_state *config);  void
> > bxt_dsi_reset_clocks(struct intel_encoder *encoder, enum port port);
> >
> > +/* icl_dsi.c */
> > +void gen11_dsi_frame_update(struct intel_crtc_state *crtc_state);
>
> There's an icl_dsi.c section above. Maybe prefix the function icl_dsi while at
> it; only the static functions in icl_dsi.c are gen11 prefixed for historical
> reasons.
> 

Ok, will fix it. Thanks for the review.

-Vandita
> > +
> >  /* intel_dsi_vbt.c */
> >  bool intel_dsi_vbt_init(struct intel_dsi *intel_dsi, u16 panel_id);
> > void intel_dsi_vbt_gpio_init(struct intel_dsi *intel_dsi, bool
> > panel_is_on);
> 
> --
> Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
