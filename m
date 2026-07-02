Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id xAB7LKdFRmoHNgsAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Jul 2026 13:04:07 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB8696F6605
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Jul 2026 13:04:06 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8236310F2D7;
	Thu,  2 Jul 2026 11:04:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 247DE10F2D6;
 Thu,  2 Jul 2026 11:04:04 +0000 (UTC)
Received: from [62.183.198.118] (helo=[10.147.29.230])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.98.2) (envelope-from <luca@coelho.fi>)
 id 1wfFCz-00000001MF0-0vPM; Thu, 02 Jul 2026 14:04:02 +0300
Message-ID: <ca67336e985f9cbf8079c89bcc4387563cc00b0f.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org
Date: Thu, 02 Jul 2026 14:03:52 +0300
In-Reply-To: <20260701153204.4124150-13-imre.deak@intel.com>
References: <20260701153204.4124150-1-imre.deak@intel.com>
 <20260701153204.4124150-13-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-9 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.3-r1932428 (2026-03-21) on
 farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=ham autolearn_force=no version=4.0.3-r1932428
Subject: Re: [PATCH v2 12/34] drm/i915/dp: Add link configuration filter for
 modeset computation
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.61 / 15.00];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[coelho.fi];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luca@coelho.fi,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_THREE(0.00)[3];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,intel.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EB8696F6605

On Wed, 2026-07-01 at 18:31 +0300, Imre Deak wrote:
> Add link_config_filter to link_config_limits to track the set of valid
> link configurations during modeset state computation. Keep the existing
> min/max rate and lane count limits for now, until all users are
> converted to use the configuration filter.
>=20
> Add the helpers required to select the maximum configuration from the
> currently allowed configuration set. This will be used by follow-up
> changes as well to query the maximum link configuration without having
> to iterate the configurations.
>=20
> v2:
> - Rebase on changes using a filter object instead of a mask of
>   configuration indices.
> - Rebase on changes using an iteration object.
>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c       | 42 +++++++++++++++--
>  drivers/gpu/drm/i915/display/intel_dp.h       | 11 +++++
>  .../gpu/drm/i915/display/intel_dp_link_caps.c | 46 +++++++++++++++++++
>  .../gpu/drm/i915/display/intel_dp_link_caps.h |  6 +++
>  4 files changed, 102 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 23001541283b4..bc333bc9296b2 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2577,6 +2577,20 @@ bool intel_dp_mode_valid_with_dsc(struct intel_con=
nector *connector,
>  					       bw_overhead_flags);
>  }
> =20
> +bool
> +intel_dp_get_connector_max_link_config(struct intel_connector *connector=
,
> +				       const struct link_config_limits *limits,
> +				       struct intel_dp_link_config *max_link_config)
> +{
> +	struct intel_dp *intel_dp =3D intel_attached_dp(connector);
> +	struct intel_dp_link_caps *link_caps =3D intel_dp->link.caps;
> +	struct intel_dp_link_caps_order order =3D
> +		intel_dp_link_caps_connector_compute_order(connector);
> +
> +	return intel_dp_link_caps_get_max_config(link_caps, order.key, limits->=
link_config_filter,
> +						 max_link_config);
> +}
> +
>  /*
>   * Calculate the output link min, max bpp values in limits based on the =
pipe bpp
>   * range, crtc_state and dsc mode. Return true on success.
> @@ -2593,6 +2607,7 @@ intel_dp_compute_config_link_bpp_limits(struct inte=
l_connector *connector,
>  		&crtc_state->hw.adjusted_mode;
>  	const struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	const struct intel_encoder *encoder =3D &dp_to_dig_port(intel_dp)->base=
;
> +	struct intel_dp_link_config max_link_config;
>  	int max_link_bpp_x16;
> =20
>  	max_link_bpp_x16 =3D min(crtc_state->max_link_bpp_x16,
> @@ -2622,14 +2637,17 @@ intel_dp_compute_config_link_bpp_limits(struct in=
tel_connector *connector,
> =20
>  	limits->link.max_bpp_x16 =3D max_link_bpp_x16;
> =20
> +	if (!intel_dp_get_connector_max_link_config(connector, limits, &max_lin=
k_config))
> +		return false;
> +
>  	drm_dbg_kms(display->drm,
> -		    "[ENCODER:%d:%s][CRTC:%d:%s] DP link limits: pixel clock %d kHz DS=
C %s max lanes %d max rate %d max pipe_bpp %d min link_bpp " FXP_Q4_FMT " m=
ax link_bpp " FXP_Q4_FMT "\n",
> +		    "[ENCODER:%d:%s][CRTC:%d:%s] DP link limits: pixel clock %d kHz DS=
C %s max link %dx%d max pipe_bpp %d min link_bpp " FXP_Q4_FMT " max link_bp=
p " FXP_Q4_FMT "\n",
>  		    encoder->base.base.id, encoder->base.name,
>  		    crtc->base.base.id, crtc->base.name,
>  		    adjusted_mode->crtc_clock,
>  		    str_on_off(dsc),
> -		    limits->max_lane_count,
> -		    limits->max_rate,
> +		    max_link_config.lane_count,
> +		    max_link_config.rate,
>  		    limits->pipe.max_bpp,
>  		    FXP_Q4_ARGS(limits->link.min_bpp_x16),
>  		    FXP_Q4_ARGS(limits->link.max_bpp_x16));
> @@ -2680,10 +2698,15 @@ intel_dp_compute_config_limits(struct intel_dp *i=
ntel_dp,
>  			       struct link_config_limits *limits)
>  {
>  	struct intel_display *display =3D to_intel_display(intel_dp);
> +	struct intel_dp_link_caps *link_caps =3D intel_dp->link.caps;
>  	bool is_mst =3D intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST);
>  	struct intel_connector *connector =3D
>  		to_intel_connector(conn_state->connector);
> =20
> +	/*
> +	 * Remove the following min/max rate and lane count setup, once
> +	 * all users are converted to use link_config_mask instead.
> +	 */

Should there be a "TODO" here to make it easier to grep for?


>  	limits->min_rate =3D intel_dp_min_link_rate(intel_dp);
>  	limits->max_rate =3D intel_dp_max_link_rate(intel_dp);
> =20
> @@ -2692,6 +2715,8 @@ intel_dp_compute_config_limits(struct intel_dp *int=
el_dp,
>  	limits->min_lane_count =3D intel_dp_min_lane_count(intel_dp);
>  	limits->max_lane_count =3D intel_dp_max_lane_count(intel_dp);
> =20
> +	limits->link_config_filter =3D INTEL_DP_LINK_CAPS_FILTER_ALL;
> +
>  	limits->pipe.min_bpp =3D intel_dp_min_bpp(crtc_state->output_format);
>  	if (is_mst) {
>  		/*
> @@ -2755,6 +2780,9 @@ intel_dp_compute_config_limits(struct intel_dp *int=
el_dp,
>  			    crtc_state->pipe_bpp, limits->pipe.max_bpp);
> =20
>  	if (is_mst || intel_dp->use_max_params) {
> +		struct intel_dp_link_caps_filter new_filter =3D INTEL_DP_LINK_CAPS_FIL=
TER_NONE;
> +		struct intel_dp_link_config max_config;
> +
>  		/*
>  		 * For MST we always configure max link bw - the spec doesn't
>  		 * seem to suggest we should do otherwise.
> @@ -2768,6 +2796,14 @@ intel_dp_compute_config_limits(struct intel_dp *in=
tel_dp,
>  		 */
>  		limits->min_lane_count =3D limits->max_lane_count;
>  		limits->min_rate =3D limits->max_rate;
> +
> +		if (!intel_dp_get_connector_max_link_config(connector, limits, &max_co=
nfig))
> +			return false;
> +
> +		if (!intel_dp_link_caps_filter_add(link_caps, &new_filter, &max_config=
))
> +			return false;
> +
> +		limits->link_config_filter =3D new_filter;
>  	}
> =20
>  	intel_dp_test_compute_config(intel_dp, crtc_state, limits);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i9=
15/display/intel_dp.h
> index 02b691df67555..13872b8c4975e 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -8,6 +8,8 @@
> =20
>  #include <linux/types.h>
> =20
> +#include "intel_dp_link_caps.h"
> +
>  enum intel_output_format;
>  enum pipe;
>  enum port;
> @@ -22,11 +24,17 @@ struct intel_crtc_state;
>  struct intel_digital_port;
>  struct intel_display;
>  struct intel_dp;
> +struct intel_dp_link_config;
>  struct intel_encoder;
> =20
>  struct link_config_limits {
> +	/*
> +	 * TODO: Remove the following min/max rate and lane count limits
> +	 * once all users are converted to use link_config_mask instead.
> +	 */

...it would be consistent with this, at least.


>  	int min_rate, max_rate;
>  	int min_lane_count, max_lane_count;
> +	struct intel_dp_link_caps_filter link_config_filter;
>  	struct {
>  		/* Uncompressed DSC input or link output bpp in 1 bpp units */
>  		int min_bpp, max_bpp;
> @@ -144,6 +152,9 @@ int intel_dp_dsc_compute_max_bpp(const struct intel_c=
onnector *connector,
>  				 u8 dsc_max_bpc);
>  int intel_dp_compute_min_compressed_bpp_x16(struct intel_connector *conn=
ector,
>  					    enum intel_output_format output_format);
> +bool intel_dp_get_connector_max_link_config(struct intel_connector *conn=
ector,
> +					    const struct link_config_limits *limits,
> +					    struct intel_dp_link_config *max_link_config);
>  bool intel_dp_mode_valid_with_dsc(struct intel_connector *connector,
>  				  int link_clock, int lane_count,
>  				  int mode_clock, int mode_hdisplay,
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/=
gpu/drm/i915/display/intel_dp_link_caps.c
> index 4482e1f9d6cd8..d00bb8047de2f 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> @@ -504,6 +504,52 @@ void intel_dp_link_caps_iter_end(struct intel_dp_lin=
k_caps_iter *iter)
>  	memset(iter, 0, sizeof(*iter));
>  }
> =20
> +/**
> + * intel_dp_link_caps_get_max_config - get the maximum config in a given=
 order
> + * @link_caps: link capabilities state
> + * @order_key: ordering key used to rank candidate configurations
> + * @filter: filter for candidate configurations
> + * @max_config: returned maximum link configuration
> + *
> + * Find the last configuration among the currently allowed
> + * configurations filtered by @filter in the iteration order
> + * selected by @order_key, and store it in @max_config.
> + *
> + * See also:
> + * - &enum intel_dp_link_caps_order_key
> + *
> + * Returns:
> + * %true if a maximum config is returned
> + * %false otherwise.
> + */
> +bool intel_dp_link_caps_get_max_config(struct intel_dp_link_caps *link_c=
aps,
> +				       enum intel_dp_link_caps_order_key order_key,
> +				       struct intel_dp_link_caps_filter filter,
> +				       struct intel_dp_link_config *max_config)
> +{
> +	struct intel_dp_link_caps_order order =3D {
> +		.key =3D order_key,
> +		.dir =3D INTEL_DP_LINK_CAPS_ORDER_DIR_DESC
> +	};
> +	struct intel_dp_link_config iter_config;
> +	struct intel_dp_link_caps_iter iter;
> +	bool found =3D false;
> +
> +	intel_dp_link_caps_iter_start(&iter, link_caps, order, filter);
> +	for_each_dp_link_config(&iter, &iter_config) {
> +		found =3D true;
> +		break;
> +	}
> +	intel_dp_link_caps_iter_end(&iter);
> +
> +	if (!found)
> +		return false;
> +
> +	*max_config =3D iter_config;
> +
> +	return true;
> +}
> +
>  static int find_config_idx(struct intel_dp_link_caps *link_caps,
>  			   struct intel_dp_link_caps_filter filter,
>  			   const struct intel_dp_link_config *link_config)
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h b/drivers/=
gpu/drm/i915/display/intel_dp_link_caps.h
> index dcbde890809bc..6dd2ce64e24ed 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
> @@ -29,6 +29,7 @@ struct intel_dp_link_config;
>   *
>   * See also:
>   *  - &struct intel_dp_link_caps_order
> + *  - intel_dp_link_caps_get_max_config()
>   */
>  enum intel_dp_link_caps_order_key {
>  	INTEL_DP_LINK_CAPS_ORDER_KEY_BW,
> @@ -140,6 +141,11 @@ bool intel_dp_link_caps_filter_add(struct intel_dp_l=
ink_caps *link_caps,
>  				   struct intel_dp_link_caps_filter *filter,
>  				   const struct intel_dp_link_config *config);
> =20
> +bool intel_dp_link_caps_get_max_config(struct intel_dp_link_caps *link_c=
aps,
> +				       enum intel_dp_link_caps_order_key order_key,
> +				       struct intel_dp_link_caps_filter filter,
> +				       struct intel_dp_link_config *max_config);
> +
>  void intel_dp_link_caps_get_max_limits(struct intel_dp_link_caps *link_c=
aps,
>  				       struct intel_dp_link_config *max_link_limits);
>  bool intel_dp_link_caps_set_max_limits(struct intel_dp_link_caps *link_c=
aps,

Small nit, but regardless:

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.
