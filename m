Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EFD241C834D
	for <lists+intel-gfx@lfdr.de>; Thu,  7 May 2020 09:16:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C67A289AFF;
	Thu,  7 May 2020 07:16:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 09FBE6E932
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 May 2020 07:16:11 +0000 (UTC)
IronPort-SDR: 7ua2JSU4bCqjZjg6DAzS76TX+sja7LLbp7VaMX+3z9AH/I9hn4W97E2YUx/DtXxSwQxa/b5+O7
 9ogxBb28kseQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2020 00:09:10 -0700
IronPort-SDR: shoeItfcPKrbWTgSPObpaZv2+29gj9/BKVoVYsWqJPqVZ6h6/B5l9tLQohp/BOnhqCe438GGbz
 SRsifMgLVMig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,362,1583222400"; d="scan'208";a="249193013"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 07 May 2020 00:09:08 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 07 May 2020 10:09:07 +0300
Date: Thu, 7 May 2020 10:09:07 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20200507070907.GZ6112@intel.com>
References: <20200506112328.16562-1-ville.syrjala@linux.intel.com>
 <20200506112328.16562-5-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200506112328.16562-5-ville.syrjala@linux.intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 4/9] drm/i915: Add {preemph,
 voltage}_max() vfuncs
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, May 06, 2020 at 02:23:23PM +0300, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Different platforms have different max vswing/preemph settings.
> Turn that into a pair vfuncs so we can decouple intel_dp.c and
> intel_ddi.c further.

Forgot to mention that it not only depends on the platform, but also
the link rate which is a runtime thing. So unfortunately can't just
make these into fixed init time assignments.

Though I have been pondering about making an init time split
between eDP vs. eDP low vswing vs. DP vs. HDMI though. That
could potentially make some of the if ladders in the ddi dbuf
trans code less confusing. Haven't actually tried to code
it up to see how it would look in the end.

> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c      | 21 ++----
>  drivers/gpu/drm/i915/display/intel_ddi.h      |  3 -
>  .../drm/i915/display/intel_display_types.h    |  3 +
>  drivers/gpu/drm/i915/display/intel_dp.c       | 67 ++++++-------------
>  drivers/gpu/drm/i915/display/intel_dp.h       |  4 --
>  .../drm/i915/display/intel_dp_link_training.c | 20 +++++-
>  6 files changed, 49 insertions(+), 69 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index 5601673c3f30..409b8a68570f 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -2095,10 +2095,10 @@ static void bxt_ddi_vswing_sequence(struct intel_=
encoder *encoder,
>  				     ddi_translations[level].deemphasis);
>  }
>  =

> -u8 intel_ddi_dp_voltage_max(struct intel_encoder *encoder)
> +static u8 intel_ddi_dp_voltage_max(struct intel_dp *intel_dp)
>  {
> +	struct intel_encoder *encoder =3D &dp_to_dig_port(intel_dp)->base;
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> -	struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
>  	enum port port =3D encoder->port;
>  	enum phy phy =3D intel_port_to_phy(dev_priv, port);
>  	int n_entries;
> @@ -2151,19 +2151,9 @@ u8 intel_ddi_dp_voltage_max(struct intel_encoder *=
encoder)
>   * used on all DDI platforms. Should that change we need to
>   * rethink this code.
>   */
> -u8 intel_ddi_dp_pre_emphasis_max(struct intel_encoder *encoder, u8 volta=
ge_swing)
> +static u8 intel_ddi_dp_preemph_max(struct intel_dp *intel_dp)
>  {
> -	switch (voltage_swing & DP_TRAIN_VOLTAGE_SWING_MASK) {
> -	case DP_TRAIN_VOLTAGE_SWING_LEVEL_0:
> -		return DP_TRAIN_PRE_EMPH_LEVEL_3;
> -	case DP_TRAIN_VOLTAGE_SWING_LEVEL_1:
> -		return DP_TRAIN_PRE_EMPH_LEVEL_2;
> -	case DP_TRAIN_VOLTAGE_SWING_LEVEL_2:
> -		return DP_TRAIN_PRE_EMPH_LEVEL_1;
> -	case DP_TRAIN_VOLTAGE_SWING_LEVEL_3:
> -	default:
> -		return DP_TRAIN_PRE_EMPH_LEVEL_0;
> -	}
> +	return DP_TRAIN_PRE_EMPH_LEVEL_3;
>  }
>  =

>  static void cnl_ddi_vswing_program(struct intel_encoder *encoder,
> @@ -4510,6 +4500,9 @@ intel_ddi_init_dp_connector(struct intel_digital_po=
rt *intel_dig_port)
>  	else
>  		intel_dig_port->dp.set_signal_levels =3D hsw_set_signal_levels;
>  =

> +	intel_dig_port->dp.voltage_max =3D intel_ddi_dp_voltage_max;
> +	intel_dig_port->dp.preemph_max =3D intel_ddi_dp_preemph_max;
> +
>  	if (INTEL_GEN(dev_priv) < 12) {
>  		intel_dig_port->dp.regs.dp_tp_ctl =3D DP_TP_CTL(port);
>  		intel_dig_port->dp.regs.dp_tp_status =3D DP_TP_STATUS(port);
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.h b/drivers/gpu/drm/i=
915/display/intel_ddi.h
> index fbdf8ddde486..077e9dbbe367 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.h
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.h
> @@ -42,9 +42,6 @@ void intel_ddi_compute_min_voltage_level(struct drm_i91=
5_private *dev_priv,
>  					 struct intel_crtc_state *crtc_state);
>  u32 bxt_signal_levels(struct intel_dp *intel_dp);
>  u32 ddi_signal_levels(struct intel_dp *intel_dp);
> -u8 intel_ddi_dp_voltage_max(struct intel_encoder *encoder);
> -u8 intel_ddi_dp_pre_emphasis_max(struct intel_encoder *encoder,
> -				 u8 voltage_swing);
>  int intel_ddi_toggle_hdcp_signalling(struct intel_encoder *intel_encoder,
>  				     bool enable);
>  void icl_sanitize_encoder_pll_mapping(struct intel_encoder *encoder);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index 9488449e4b94..e0384af489c2 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1371,6 +1371,9 @@ struct intel_dp {
>  	void (*set_idle_link_train)(struct intel_dp *intel_dp);
>  	void (*set_signal_levels)(struct intel_dp *intel_dp);
>  =

> +	u8 (*preemph_max)(struct intel_dp *intel_dp);
> +	u8 (*voltage_max)(struct intel_dp *intel_dp);
> +
>  	/* Displayport compliance testing */
>  	struct intel_dp_compliance compliance;
>  =

> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index a52f01c48644..1b786d5af383 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -3947,58 +3947,24 @@ intel_dp_get_link_status(struct intel_dp *intel_d=
p, u8 link_status[DP_LINK_STATU
>  				DP_LINK_STATUS_SIZE) =3D=3D DP_LINK_STATUS_SIZE;
>  }
>  =

> -/* These are source-specific values. */
> -u8
> -intel_dp_voltage_max(struct intel_dp *intel_dp)
> +static u8 intel_dp_voltage_max_2(struct intel_dp *intel_dp)
>  {
> -	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
> -	struct intel_encoder *encoder =3D &dp_to_dig_port(intel_dp)->base;
> -	enum port port =3D encoder->port;
> +	return DP_TRAIN_VOLTAGE_SWING_LEVEL_2;
> +}
>  =

> -	if (HAS_DDI(dev_priv))
> -		return intel_ddi_dp_voltage_max(encoder);
> -	else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv) ||
> -		 (HAS_PCH_SPLIT(dev_priv) && port !=3D PORT_A))
> -		return DP_TRAIN_VOLTAGE_SWING_LEVEL_3;
> -	else
> -		return DP_TRAIN_VOLTAGE_SWING_LEVEL_2;
> +static u8 intel_dp_voltage_max_3(struct intel_dp *intel_dp)
> +{
> +	return DP_TRAIN_VOLTAGE_SWING_LEVEL_3;
>  }
>  =

> -u8
> -intel_dp_pre_emphasis_max(struct intel_dp *intel_dp, u8 voltage_swing)
> +static u8 intel_dp_pre_empemph_max_2(struct intel_dp *intel_dp)
>  {
> -	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
> -	struct intel_encoder *encoder =3D &dp_to_dig_port(intel_dp)->base;
> -	enum port port =3D encoder->port;
> +	return DP_TRAIN_PRE_EMPH_LEVEL_2;
> +}
>  =

> -	if (HAS_DDI(dev_priv)) {
> -		return intel_ddi_dp_pre_emphasis_max(encoder, voltage_swing);
> -	} else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv) ||
> -		   (HAS_PCH_SPLIT(dev_priv) && port !=3D PORT_A)) {
> -		switch (voltage_swing & DP_TRAIN_VOLTAGE_SWING_MASK) {
> -		case DP_TRAIN_VOLTAGE_SWING_LEVEL_0:
> -			return DP_TRAIN_PRE_EMPH_LEVEL_3;
> -		case DP_TRAIN_VOLTAGE_SWING_LEVEL_1:
> -			return DP_TRAIN_PRE_EMPH_LEVEL_2;
> -		case DP_TRAIN_VOLTAGE_SWING_LEVEL_2:
> -			return DP_TRAIN_PRE_EMPH_LEVEL_1;
> -		case DP_TRAIN_VOLTAGE_SWING_LEVEL_3:
> -		default:
> -			return DP_TRAIN_PRE_EMPH_LEVEL_0;
> -		}
> -	} else {
> -		switch (voltage_swing & DP_TRAIN_VOLTAGE_SWING_MASK) {
> -		case DP_TRAIN_VOLTAGE_SWING_LEVEL_0:
> -			return DP_TRAIN_PRE_EMPH_LEVEL_2;
> -		case DP_TRAIN_VOLTAGE_SWING_LEVEL_1:
> -			return DP_TRAIN_PRE_EMPH_LEVEL_2;
> -		case DP_TRAIN_VOLTAGE_SWING_LEVEL_2:
> -			return DP_TRAIN_PRE_EMPH_LEVEL_1;
> -		case DP_TRAIN_VOLTAGE_SWING_LEVEL_3:
> -		default:
> -			return DP_TRAIN_PRE_EMPH_LEVEL_0;
> -		}
> -	}
> +static u8 intel_dp_pre_empemph_max_3(struct intel_dp *intel_dp)
> +{
> +	return DP_TRAIN_PRE_EMPH_LEVEL_3;
>  }
>  =

>  static void vlv_set_signal_levels(struct intel_dp *intel_dp)
> @@ -8491,6 +8457,15 @@ bool intel_dp_init(struct drm_i915_private *dev_pr=
iv,
>  	else
>  		intel_dig_port->dp.set_signal_levels =3D g4x_set_signal_levels;
>  =

> +	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv) ||
> +	    (HAS_PCH_SPLIT(dev_priv) && port !=3D PORT_A)) {
> +		intel_dig_port->dp.preemph_max =3D intel_dp_pre_empemph_max_3;
> +		intel_dig_port->dp.voltage_max =3D intel_dp_voltage_max_3;
> +	} else {
> +		intel_dig_port->dp.preemph_max =3D intel_dp_pre_empemph_max_2;
> +		intel_dig_port->dp.voltage_max =3D intel_dp_voltage_max_2;
> +	}
> +
>  	intel_dig_port->dp.output_reg =3D output_reg;
>  	intel_dig_port->max_lanes =3D 4;
>  	intel_dig_port->dp.regs.dp_tp_ctl =3D DP_TP_CTL(port);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i9=
15/display/intel_dp.h
> index 6659ce15a693..e8375a75c3ec 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -91,10 +91,6 @@ intel_dp_program_link_training_pattern(struct intel_dp=
 *intel_dp,
>  void
>  intel_dp_set_signal_levels(struct intel_dp *intel_dp);
>  void intel_dp_set_idle_link_train(struct intel_dp *intel_dp);
> -u8
> -intel_dp_voltage_max(struct intel_dp *intel_dp);
> -u8
> -intel_dp_pre_emphasis_max(struct intel_dp *intel_dp, u8 voltage_swing);
>  void intel_dp_compute_rate(struct intel_dp *intel_dp, int port_clock,
>  			   u8 *link_bw, u8 *rate_select);
>  bool intel_dp_source_supports_hbr2(struct intel_dp *intel_dp);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/driv=
ers/gpu/drm/i915/display/intel_dp_link_training.c
> index e4f1843170b7..171d9e842fc0 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -34,6 +34,21 @@ intel_dp_dump_link_status(const u8 link_status[DP_LINK=
_STATUS_SIZE])
>  		      link_status[3], link_status[4], link_status[5]);
>  }
>  =

> +static u8 dp_pre_emphasis_max(u8 voltage_swing)
> +{
> +	switch (voltage_swing & DP_TRAIN_VOLTAGE_SWING_MASK) {
> +	case DP_TRAIN_VOLTAGE_SWING_LEVEL_0:
> +		return DP_TRAIN_PRE_EMPH_LEVEL_3;
> +	case DP_TRAIN_VOLTAGE_SWING_LEVEL_1:
> +		return DP_TRAIN_PRE_EMPH_LEVEL_2;
> +	case DP_TRAIN_VOLTAGE_SWING_LEVEL_2:
> +		return DP_TRAIN_PRE_EMPH_LEVEL_1;
> +	case DP_TRAIN_VOLTAGE_SWING_LEVEL_3:
> +	default:
> +		return DP_TRAIN_PRE_EMPH_LEVEL_0;
> +	}
> +}
> +
>  void intel_dp_get_adjust_train(struct intel_dp *intel_dp,
>  			       const u8 link_status[DP_LINK_STATUS_SIZE])
>  {
> @@ -53,11 +68,12 @@ void intel_dp_get_adjust_train(struct intel_dp *intel=
_dp,
>  			p =3D this_p;
>  	}
>  =

> -	voltage_max =3D intel_dp_voltage_max(intel_dp);
> +	voltage_max =3D intel_dp->voltage_max(intel_dp);
>  	if (v >=3D voltage_max)
>  		v =3D voltage_max | DP_TRAIN_MAX_SWING_REACHED;
>  =

> -	preemph_max =3D intel_dp_pre_emphasis_max(intel_dp, v);
> +	preemph_max =3D min(intel_dp->preemph_max(intel_dp),
> +			  dp_pre_emphasis_max(v));
>  	if (p >=3D preemph_max)
>  		p =3D preemph_max | DP_TRAIN_MAX_PRE_EMPHASIS_REACHED;
>  =

> -- =

> 2.24.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
