Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id hIwKK3WhTGpWnQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Jul 2026 08:49:25 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C52171820D
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Jul 2026 08:49:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57F9D10E450;
	Tue,  7 Jul 2026 06:49:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE91D10E450;
 Tue,  7 Jul 2026 06:49:22 +0000 (UTC)
Received: from 81-197-16-175.elisa-laajakaista.fi ([81.197.16.175]
 helo=[192.168.100.133])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.98.2) (envelope-from <luca@coelho.fi>)
 id 1wgzcM-00000001VD5-1D3k; Tue, 07 Jul 2026 09:49:20 +0300
Message-ID: <9955c6dd386f00455bf16731e078fd93c273fdfe.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org
Date: Tue, 07 Jul 2026 09:49:17 +0300
In-Reply-To: <20260701153204.4124150-22-imre.deak@intel.com>
References: <20260701153204.4124150-1-imre.deak@intel.com>
 <20260701153204.4124150-22-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-10 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.3-r1932428 (2026-03-21) on
 farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP autolearn=ham autolearn_force=no version=4.0.3-r1932428
Subject: Re: [PATCH v2 21/34] drm/i915/dp_mst: Use link caps for MST DSC
 config selection
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
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp];
	MID_RHS_MATCH_FROM(0.00)[];
	R_DKIM_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luca@coelho.fi,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[coelho.fi];
	RCVD_TLS_LAST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_COUNT_THREE(0.00)[3]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0C52171820D

On Wed, 2026-07-01 at 18:31 +0300, Imre Deak wrote:
> Use the link caps helper to select the maximum DP MST link configuration
> for DSC computation, instead of using the separate max rate and lane
> count limits, which may not form a valid configuration after individual
> configs are disabled by fallback.
>=20
> Also look up the maximum rate for state computation via the configuration
> mask when checking the DSC hblank expansion quirk.
>=20
> This is a step towards unifying configuration selection and iteration
> across connector types and between compute and fallback paths.
>=20
> The state computation should likely consider all allowed configurations,
> as noted in the code comment; for now keep the existing DP MST DSC
> behavior of selecting the maximum BW configuration determined by the MST
> connector BW config iteration order.
>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 40 +++++++++++++++++----
>  1 file changed, 33 insertions(+), 7 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/dr=
m/i915/display/intel_dp_mst.c
> index 47b8563f85e4d..df6e54508e5d4 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -477,6 +477,7 @@ static int mst_stream_dsc_compute_link_config(struct =
intel_dp *intel_dp,
>  {
>  	struct intel_display *display =3D to_intel_display(intel_dp);
>  	struct intel_connector *connector =3D to_intel_connector(conn_state->co=
nnector);
> +	struct intel_dp_link_config max_link_config;
> =20
>  	crtc_state->pipe_bpp =3D limits->pipe.max_bpp;
> =20
> @@ -484,8 +485,17 @@ static int mst_stream_dsc_compute_link_config(struct=
 intel_dp *intel_dp,
>  		    "DSC Sink supported compressed min bpp " FXP_Q4_FMT " compressed m=
ax bpp " FXP_Q4_FMT "\n",
>  		    FXP_Q4_ARGS(limits->link.min_bpp_x16), FXP_Q4_ARGS(limits->link.ma=
x_bpp_x16));
> =20
> -	crtc_state->lane_count =3D limits->max_lane_count;
> -	crtc_state->port_clock =3D limits->max_rate;
> +	/*
> +	 * FIXME: Use a proper iteration over the link configurations, instead
> +	 * of using only the max BW config. For instance UHBR rate configs may
> +	 * have additional limitations over non-UHBR ones, due to the DSC DPT
> +	 * bpp maximum limit.
> +	 */
> +	if (!intel_dp_get_connector_max_link_config(connector, limits, &max_lin=
k_config))
> +		return -EINVAL;
> +
> +	crtc_state->port_clock =3D max_link_config.rate;
> +	crtc_state->lane_count =3D max_link_config.lane_count;
> =20
>  	return intel_dp_mtp_tu_compute_config(intel_dp, crtc_state, conn_state,
>  					      limits->link.min_bpp_x16,
> @@ -501,6 +511,20 @@ static int mode_hblank_period_ns(const struct drm_di=
splay_mode *mode)
>  				     mode->crtc_clock);
>  }
> =20
> +static int get_connector_max_rate(const struct intel_connector *connecto=
r,
> +				  const struct link_config_limits *limits)
> +{
> +	struct intel_dp *intel_dp =3D intel_attached_dp((struct intel_connector=
 *)connector);
> +	struct intel_dp_link_caps *link_caps =3D intel_dp->link.caps;
> +	struct intel_dp_link_config max_link_config;
> +
> +	intel_dp_link_caps_get_max_config(link_caps,
> +					  INTEL_DP_LINK_CAPS_ORDER_KEY_RATE_LANE,
> +					  limits->link_config_filter, &max_link_config);
> +
> +	return max_link_config.rate;
> +}
> +
>  static bool
>  hblank_expansion_quirk_needs_dsc(const struct intel_connector *connector=
,
>  				 const struct intel_crtc_state *crtc_state,
> @@ -511,11 +535,13 @@ hblank_expansion_quirk_needs_dsc(const struct intel=
_connector *connector,
>  	bool is_uhbr_sink =3D connector->mst.dp &&
>  			    drm_dp_128b132b_supported(connector->mst.dp->dpcd);
>  	int hblank_limit =3D is_uhbr_sink ? 500 : 300;
> +	int max_rate;
> =20
>  	if (!connector->dp.dsc_hblank_expansion_quirk)
>  		return false;
> =20
> -	if (is_uhbr_sink && !drm_dp_is_uhbr_rate(limits->max_rate))
> +	max_rate =3D get_connector_max_rate(connector, limits);
> +	if (is_uhbr_sink && !drm_dp_is_uhbr_rate(max_rate))
>  		return false;
> =20
>  	if (mode_hblank_period_ns(adjusted_mode) > hblank_limit)
> @@ -537,6 +563,7 @@ adjust_limits_for_dsc_hblank_expansion_quirk(struct i=
ntel_dp *intel_dp,
>  	struct intel_display *display =3D to_intel_display(connector);
>  	const struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	int min_bpp_x16 =3D limits->link.min_bpp_x16;
> +	int max_rate;
> =20
>  	if (!hblank_expansion_quirk_needs_dsc(connector, crtc_state, limits))
>  		return true;
> @@ -563,11 +590,10 @@ adjust_limits_for_dsc_hblank_expansion_quirk(struct=
 intel_dp *intel_dp,
>  		return true;
>  	}
> =20
> -	drm_WARN_ON(display->drm, limits->min_rate !=3D limits->max_rate);
> -
> -	if (limits->max_rate < 540000)
> +	max_rate =3D get_connector_max_rate(connector, limits);
> +	if (max_rate < 540000)
>  		min_bpp_x16 =3D fxp_q4_from_int(13);
> -	else if (limits->max_rate < 810000)
> +	else if (max_rate < 810000)
>  		min_bpp_x16 =3D fxp_q4_from_int(10);
> =20
>  	if (limits->link.min_bpp_x16 >=3D min_bpp_x16)


Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.
