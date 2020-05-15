Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E7CF51D59AA
	for <lists+intel-gfx@lfdr.de>; Fri, 15 May 2020 21:08:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43B806ED17;
	Fri, 15 May 2020 19:08:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD8BA6ED17
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 May 2020 19:08:37 +0000 (UTC)
IronPort-SDR: BcAXT0Wc2uKVYlzkq6u8snCor0e0NugNlueFLWE0dXF1JAQiGn4bkFmp/7huIlOyoVrCJastcz
 B3NadfqbAquA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2020 12:08:37 -0700
IronPort-SDR: vkpanUka0bVXV67QdaIqJjbx5o1so7BWS36K2lLLd9fRLiHomuljMGkC/V3IwMqN5Nd+3JBk+Q
 EvJvZdCWjvgg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,396,1583222400"; d="scan'208";a="438419085"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com)
 ([10.165.21.211])
 by orsmga005.jf.intel.com with ESMTP; 15 May 2020 12:08:37 -0700
Date: Fri, 15 May 2020 12:09:44 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20200515190944.GA20478@intel.com>
References: <20200512174145.3186-1-ville.syrjala@linux.intel.com>
 <20200512174145.3186-5-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200512174145.3186-5-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 4/7] drm/i915: Add {preemph,
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, May 12, 2020 at 08:41:42PM +0300, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Different platforms have different max vswing/preemph settings.
> Turn that into a pair vfuncs so we can decouple intel_dp.c and
> intel_ddi.c further.
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

This is so much cleaner, thanks for the patch,

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

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
> index 798889f72495..f873fd03ac14 100644
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
> index 87876fce91a5..46e91574f178 100644
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
> index 4952918d0904..6d790633e667 100644
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
> @@ -8325,6 +8291,15 @@ bool intel_dp_init(struct drm_i915_private *dev_pr=
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

> 2.26.2
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
