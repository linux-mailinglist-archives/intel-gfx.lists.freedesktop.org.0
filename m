Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1AE43B344B
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Jun 2021 19:06:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3BFC6EC63;
	Thu, 24 Jun 2021 17:05:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37F646EC63
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Jun 2021 17:05:56 +0000 (UTC)
IronPort-SDR: B0xfhLJnravJwqGR4W1GhmvaRF+QXt9N0bTu36/2QqHtsU+V1hccYtMOie/BeiKJA6i9Rsx+LZ
 UgklJW36Nxnw==
X-IronPort-AV: E=McAfee;i="6200,9189,10025"; a="194814435"
X-IronPort-AV: E=Sophos;i="5.83,296,1616482800"; d="scan'208";a="194814435"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2021 10:05:55 -0700
IronPort-SDR: f8ZN45R4VsgugYGxTLDEfGhofdsi1rQu0PaWQrothXeSzTOCHjBzE7EmAz/eKFqi3sLt+wUvMe
 Xl13B8KPLVSg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,296,1616482800"; d="scan'208";a="418134799"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga007.fm.intel.com with SMTP; 24 Jun 2021 10:05:53 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 24 Jun 2021 20:05:51 +0300
Date: Thu, 24 Jun 2021 20:05:51 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <YNS7bwIUSZ+1MEgi@intel.com>
References: <20210608073603.2408-1-ville.syrjala@linux.intel.com>
 <20210608073603.2408-16-ville.syrjala@linux.intel.com>
 <87tulou0ri.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87tulou0ri.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 15/17] drm/i915: Clean up jsl/ehl buf
 trans functions
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

On Wed, Jun 23, 2021 at 05:13:53PM +0300, Jani Nikula wrote:
> On Tue, 08 Jun 2021, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> >
> > The jsl/ehl buf trans functions are needlessly conplicated.
>                                                    ^
> =

> My only disappointment here is that now some of the
> *_get_combo_buf_trans_edp() functions handle low vswing inside, and some
> expect to only be called for low vswing.

Yeah, that is a bit annoying. Not really sure what the best approach is
for everything :/

> =

> At least cnl could switch to same style as here, the rest get more
> complicated.
> =

> Not a big issue, and the code is easy enough to follow for each
> individual platform. And I like the reduction in call depth.
> =

> Reviewed-by: Jani Nikula <jani.nikula@intel.com>

Ta.

> =

> =

> > Simplify them.
> >
> > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > ---
> >  .../drm/i915/display/intel_ddi_buf_trans.c    | 87 +++++--------------
> >  1 file changed, 20 insertions(+), 67 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drive=
rs/gpu/drm/i915/display/intel_ddi_buf_trans.c
> > index 9398aa62585b..2bd51ce4aa2c 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> > @@ -1377,42 +1377,16 @@ icl_get_mg_buf_trans(struct intel_encoder *enco=
der,
> >  		return icl_get_mg_buf_trans_dp(encoder, crtc_state, n_entries);
> >  }
> >  =

> > -static const struct intel_ddi_buf_trans *
> > -ehl_get_combo_buf_trans_hdmi(struct intel_encoder *encoder,
> > -			     const struct intel_crtc_state *crtc_state,
> > -			     int *n_entries)
> > -{
> > -	return intel_get_buf_trans(&icl_combo_phy_ddi_translations_hdmi,
> > -				   n_entries);
> > -}
> > -
> > -static const struct intel_ddi_buf_trans *
> > -ehl_get_combo_buf_trans_dp(struct intel_encoder *encoder,
> > -			   const struct intel_crtc_state *crtc_state,
> > -			   int *n_entries)
> > -{
> > -	return intel_get_buf_trans(&ehl_combo_phy_ddi_translations_dp,
> > -				   n_entries);
> > -}
> >  =

> >  static const struct intel_ddi_buf_trans *
> >  ehl_get_combo_buf_trans_edp(struct intel_encoder *encoder,
> >  			    const struct intel_crtc_state *crtc_state,
> >  			    int *n_entries)
> >  {
> > -	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> > -
> > -	if (dev_priv->vbt.edp.low_vswing) {
> > -		if (crtc_state->port_clock > 270000) {
> > -			return intel_get_buf_trans(&ehl_combo_phy_ddi_translations_edp_hbr2,
> > -						   n_entries);
> > -		} else {
> > -			return intel_get_buf_trans(&icl_combo_phy_ddi_translations_edp_hbr2,
> > -						   n_entries);
> > -		}
> > -	}
> > -
> > -	return ehl_get_combo_buf_trans_dp(encoder, crtc_state, n_entries);
> > +	if (crtc_state->port_clock > 270000)
> > +		return intel_get_buf_trans(&ehl_combo_phy_ddi_translations_edp_hbr2,=
 n_entries);
> > +	else
> > +		return intel_get_buf_trans(&icl_combo_phy_ddi_translations_edp_hbr2,=
 n_entries);
> >  }
> >  =

> >  static const struct intel_ddi_buf_trans *
> > @@ -1420,30 +1394,15 @@ ehl_get_combo_buf_trans(struct intel_encoder *e=
ncoder,
> >  			const struct intel_crtc_state *crtc_state,
> >  			int *n_entries)
> >  {
> > +	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> > +
> >  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
> > -		return ehl_get_combo_buf_trans_hdmi(encoder, crtc_state, n_entries);
> > -	else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP))
> > +		return intel_get_buf_trans(&icl_combo_phy_ddi_translations_hdmi, n_e=
ntries);
> > +	else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP) &&
> > +		 dev_priv->vbt.edp.low_vswing)
> >  		return ehl_get_combo_buf_trans_edp(encoder, crtc_state, n_entries);
> >  	else
> > -		return ehl_get_combo_buf_trans_dp(encoder, crtc_state, n_entries);
> > -}
> > -
> > -static const struct intel_ddi_buf_trans *
> > -jsl_get_combo_buf_trans_hdmi(struct intel_encoder *encoder,
> > -			     const struct intel_crtc_state *crtc_state,
> > -			     int *n_entries)
> > -{
> > -	return intel_get_buf_trans(&icl_combo_phy_ddi_translations_hdmi,
> > -				   n_entries);
> > -}
> > -
> > -static const struct intel_ddi_buf_trans *
> > -jsl_get_combo_buf_trans_dp(struct intel_encoder *encoder,
> > -			   const struct intel_crtc_state *crtc_state,
> > -			   int *n_entries)
> > -{
> > -	return intel_get_buf_trans(&icl_combo_phy_ddi_translations_dp_hbr2_ed=
p_hbr3,
> > -				   n_entries);
> > +		return intel_get_buf_trans(&ehl_combo_phy_ddi_translations_dp, n_ent=
ries);
> >  }
> >  =

> >  static const struct intel_ddi_buf_trans *
> > @@ -1451,19 +1410,10 @@ jsl_get_combo_buf_trans_edp(struct intel_encode=
r *encoder,
> >  			    const struct intel_crtc_state *crtc_state,
> >  			    int *n_entries)
> >  {
> > -	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> > -
> > -	if (dev_priv->vbt.edp.low_vswing) {
> > -		if (crtc_state->port_clock > 270000) {
> > -			return intel_get_buf_trans(&jsl_combo_phy_ddi_translations_edp_hbr2,
> > -						   n_entries);
> > -		} else {
> > -			return intel_get_buf_trans(&jsl_combo_phy_ddi_translations_edp_hbr,
> > -						   n_entries);
> > -		}
> > -	}
> > -
> > -	return jsl_get_combo_buf_trans_dp(encoder, crtc_state, n_entries);
> > +	if (crtc_state->port_clock > 270000)
> > +		return intel_get_buf_trans(&jsl_combo_phy_ddi_translations_edp_hbr2,=
 n_entries);
> > +	else
> > +		return intel_get_buf_trans(&jsl_combo_phy_ddi_translations_edp_hbr, =
n_entries);
> >  }
> >  =

> >  static const struct intel_ddi_buf_trans *
> > @@ -1471,12 +1421,15 @@ jsl_get_combo_buf_trans(struct intel_encoder *e=
ncoder,
> >  			const struct intel_crtc_state *crtc_state,
> >  			int *n_entries)
> >  {
> > +	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> > +
> >  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
> > -		return jsl_get_combo_buf_trans_hdmi(encoder, crtc_state, n_entries);
> > -	else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP))
> > +		return intel_get_buf_trans(&icl_combo_phy_ddi_translations_hdmi, n_e=
ntries);
> > +	else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP) &&
> > +		 dev_priv->vbt.edp.low_vswing)
> >  		return jsl_get_combo_buf_trans_edp(encoder, crtc_state, n_entries);
> >  	else
> > -		return jsl_get_combo_buf_trans_dp(encoder, crtc_state, n_entries);
> > +		return intel_get_buf_trans(&icl_combo_phy_ddi_translations_dp_hbr2_e=
dp_hbr3, n_entries);
> >  }
> >  =

> >  static const struct intel_ddi_buf_trans *
> =

> -- =

> Jani Nikula, Intel Open Source Graphics Center

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
