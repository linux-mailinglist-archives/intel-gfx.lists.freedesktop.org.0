Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8600627F19D
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Sep 2020 20:51:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A7526E7EC;
	Wed, 30 Sep 2020 18:51:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF6D16E7EC
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Sep 2020 18:51:00 +0000 (UTC)
IronPort-SDR: 4FR4YGWKaKRQXarMyv/sp+MsMfz+XtAJ2pyj5B4bg/cUq2khUyCv9kt+6VBAIhROmDWo8chZIr
 j4EdMixF8ipg==
X-IronPort-AV: E=McAfee;i="6000,8403,9760"; a="142528731"
X-IronPort-AV: E=Sophos;i="5.77,322,1596524400"; d="scan'208";a="142528731"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2020 11:50:55 -0700
IronPort-SDR: s/Gd9c3RjgnfIjU9e55JQfDfqQNE96WhrDBHwp2dfNf+0lOXB5QZJ2VmGmSBoxfyFPkPSzzipA
 k26TomGbZn+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,322,1596524400"; d="scan'208";a="351637392"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 30 Sep 2020 11:50:53 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 30 Sep 2020 21:50:52 +0300
Date: Wed, 30 Sep 2020 21:50:52 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <20200930185052.GM6112@intel.com>
References: <20200929233449.32323-1-ville.syrjala@linux.intel.com>
 <20200929233449.32323-11-ville.syrjala@linux.intel.com>
 <20200930163624.GJ867650@ideak-desk.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200930163624.GJ867650@ideak-desk.fi.intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2 10/11] drm/i915: Plumb crtc_state to link
 training
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Sep 30, 2020 at 07:36:24PM +0300, Imre Deak wrote:
> On Wed, Sep 30, 2020 at 02:34:48AM +0300, Ville Syrjala wrote:
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > =

> > Get rid of mode crtc->config usage, and some ad-hoc intel_dp state
> > usage by plumbing the crtc state all the way down to the link training
> > code.
> > =

> > Unfortunately we do have to keep some cached state in intel_dp so
> > that we can do the "does the link need retraining?" checks from
> > the short hpd handler.
> > =

> > v2: Add intel_crtc_state forward declaration
> > v3: Don't kill the PHY test code totally since it's
> >     now in the hotplug work where we can get at the states
> > =

> > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Reviewed-by: Imre Deak <imre.deak@intel.com>
> =

> 4 nitpicks below.
> =

<snip>
> >  static void
> > -tgl_dkl_phy_ddi_vswing_sequence(struct intel_encoder *encoder, int lin=
k_clock,
> > -				u32 level, enum intel_output_type type)
> > +tgl_dkl_phy_ddi_vswing_sequence(struct intel_encoder *encoder,
> > +				const struct intel_crtc_state *crtc_state,
> > +				int level)
> >  {
> >  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> >  	enum tc_port tc_port =3D intel_port_to_tc(dev_priv, encoder->port);
> >  	const struct tgl_dkl_phy_ddi_buf_trans *ddi_translations;
> > -	u32 n_entries, val, ln, dpcnt_mask, dpcnt_val;
> > -	int rate =3D 0;
> > +	u32 val, dpcnt_mask, dpcnt_val;
> > +	int n_entries, ln;
> >  =

> > -	if (type =3D=3D INTEL_OUTPUT_HDMI) {
> > -		struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
> > -
> > -		rate =3D intel_dp->link_rate;
> =

> Looks like a bugfix and then would make sense to fix it in a separate
> patch.

Didn't even notie this one. I need to check whether it's a current bug
or if I just fumbled the earlier patches somehow.

<snip>
> > @@ -4224,10 +4209,11 @@ static void intel_ddi_prepare_link_retrain(stru=
ct intel_dp *intel_dp)
> >  			intel_wait_ddi_buf_idle(dev_priv, port);
> >  	}
> >  =

> > -	dp_tp_ctl =3D DP_TP_CTL_ENABLE | DP_TP_CTL_LINK_TRAIN_PAT1;
> > -	if (intel_dp->link_mst)
> > +	dp_tp_ctl =3D DP_TP_CTL_ENABLE |
> > +		    DP_TP_CTL_LINK_TRAIN_PAT1 | DP_TP_CTL_SCRAMBLE_DISABLE;
> =

> Disable scrambling looks like some HW debugging feature, the HW toggles it
> automatically based on the spec. There was a recent related change
> removing setting it in intel_ddi_set_link_train().
> =

> If needed, it should be a separate change imo.

This is just a rebase fail on my part I think.
Thanks for catching it.

<snip>
> > @@ -5852,8 +5871,20 @@ int intel_dp_retrain_link(struct intel_encoder *=
encoder,
> >  							      intel_crtc_pch_transcoder(crtc), false);
> >  	}
> >  =

> > -	intel_dp_start_link_train(intel_dp);
> > -	intel_dp_stop_link_train(intel_dp);
> > +	for_each_intel_crtc_mask(&dev_priv->drm, crtc, crtc_mask) {
> > +		const struct intel_crtc_state *crtc_state =3D
> > +			to_intel_crtc_state(crtc->base.state);
> > +
> > +		/* retrain on the MST master transcoder */
> > +		if (INTEL_GEN(dev_priv) >=3D 12 &&
> > +		    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST) &&
> > +		    crtc_state->cpu_transcoder !=3D crtc_state->mst_master_transcode=
r)
> =

> Could use intel_dp_mst_is_master_trans().

Ack. Didn't remember we had such a thing.

> =

> > +			continue;
> > +
> > +		intel_dp_start_link_train(intel_dp, crtc_state);
> > +		intel_dp_stop_link_train(intel_dp, crtc_state);
> > +		break;
> > +	}
> >  =

> >  	for_each_intel_crtc_mask(&dev_priv->drm, crtc, crtc_mask) {
> >  		const struct intel_crtc_state *crtc_state =3D
> > @@ -5923,6 +5954,7 @@ static int intel_dp_do_phy_test(struct intel_enco=
der *encoder,
> >  {
> >  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> >  	struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
> > +	struct intel_crtc *crtc;
> >  	u32 crtc_mask;
> >  	int ret;
> >  =

> > @@ -5940,7 +5972,20 @@ static int intel_dp_do_phy_test(struct intel_enc=
oder *encoder,
> >  =

> >  	drm_dbg_kms(&dev_priv->drm, "[ENCODER:%d:%s] PHY test\n",
> >  		    encoder->base.base.id, encoder->base.name);
> > -	intel_dp_process_phy_request(intel_dp);
> > +
> > +	for_each_intel_crtc_mask(&dev_priv->drm, crtc, crtc_mask) {
> > +		const struct intel_crtc_state *crtc_state =3D
> > +			to_intel_crtc_state(crtc->base.state);
> > +
> > +		/* test on the MST master transcoder */
> > +		if (INTEL_GEN(dev_priv) >=3D 12 &&
> > +		    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST) &&
> > +		    crtc_state->cpu_transcoder !=3D crtc_state->mst_master_transcode=
r)
> =

> Here too.
> =

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
