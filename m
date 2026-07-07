Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id VSK1B8XNTGr5pwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Jul 2026 11:58:29 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 64C4E71A08F
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Jul 2026 11:58:28 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8054C10EC24;
	Tue,  7 Jul 2026 09:58:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C43A10E48D;
 Tue,  7 Jul 2026 09:58:25 +0000 (UTC)
Received: from 81-197-16-175.elisa-laajakaista.fi ([81.197.16.175]
 helo=[192.168.100.133])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.98.2) (envelope-from <luca@coelho.fi>)
 id 1wh2ZJ-00000001VRk-2tf3; Tue, 07 Jul 2026 12:58:23 +0300
Message-ID: <7938f35c5d592d76bf7536e5818efc76cad3acce.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org
Date: Tue, 07 Jul 2026 12:58:20 +0300
In-Reply-To: <20260701153204.4124150-25-imre.deak@intel.com>
References: <20260701153204.4124150-1-imre.deak@intel.com>
 <20260701153204.4124150-25-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-10 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.3-r1932428 (2026-03-21) on
 farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP autolearn=ham autolearn_force=no version=4.0.3-r1932428
Subject: Re: [PATCH v2 24/34] drm/i915/dp_link_training: Use config iterator
 for fallback
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[coelho.fi:mid,coelho.fi:from_mime,lists.freedesktop.org:from_smtp,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email];
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
X-Rspamd-Queue-Id: 64C4E71A08F

On Wed, 2026-07-01 at 18:31 +0300, Imre Deak wrote:
> Switch the fallback loop to use the link configuration iterator to
> select a fallback configuration.
>=20
> This also allows unexporting and removing from the link caps interface
> all the common link rate query helpers and the helpers that accept or
> return a link configuration index.
>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_dp_link_caps.c |  45 +-----
>  .../gpu/drm/i915/display/intel_dp_link_caps.h |   9 --
>  .../drm/i915/display/intel_dp_link_training.c | 143 +++++-------------
>  3 files changed, 39 insertions(+), 158 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/=
gpu/drm/i915/display/intel_dp_link_caps.c
> index 766dc9a98e05a..c947e6511fbc5 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> @@ -249,7 +249,7 @@ static int intel_dp_common_len_rate_limit(struct inte=
l_dp_link_caps *link_caps,
>  				       link_caps->num_rates, max_rate);
>  }
> =20
> -int intel_dp_common_rate(struct intel_dp_link_caps *link_caps, int index=
)
> +static int intel_dp_common_rate(struct intel_dp_link_caps *link_caps, in=
t index)
>  {
>  	struct intel_display *display =3D to_intel_display(link_caps->dp);
> =20
> @@ -260,15 +260,8 @@ int intel_dp_common_rate(struct intel_dp_link_caps *=
link_caps, int index)
>  	return link_caps->rates[index];
>  }
> =20
> -int intel_dp_link_caps_common_rate_idx(struct intel_dp_link_caps *link_c=
aps, int rate)
> -{
> -	return intel_dp_rate_index(link_caps->rates,
> -				   link_caps->num_rates,
> -				   rate);
> -}
> -
>  /* Theoretical max between source and sink */
> -int intel_dp_max_common_rate(struct intel_dp_link_caps *link_caps)
> +static int intel_dp_max_common_rate(struct intel_dp_link_caps *link_caps=
)
>  {
>  	return intel_dp_common_rate(link_caps, link_caps->num_rates - 1);
>  }
> @@ -870,40 +863,6 @@ bool intel_dp_link_caps_update(struct intel_dp_link_=
caps *link_caps,
>  	return link_params_changed;
>  }
> =20
> -void intel_dp_link_config_get(struct intel_dp_link_caps *link_caps,
> -			      int idx, int *link_rate, int *lane_count)
> -{
> -	struct intel_display *display =3D to_intel_display(link_caps->dp);
> -	struct intel_dp_link_config config;
> -
> -	if (drm_WARN_ON(display->drm, idx < 0 || idx >=3D link_caps->num_config=
s))
> -		idx =3D 0;
> -
> -	to_intel_dp_link_config(link_caps, idx, &config);
> -
> -	*link_rate =3D config.rate;
> -	*lane_count =3D config.lane_count;
> -}
> -
> -int intel_dp_link_config_index(struct intel_dp_link_caps *link_caps,
> -			       int link_rate, int lane_count)
> -{
> -	int link_rate_idx =3D intel_dp_rate_index(link_caps->rates, link_caps->=
num_rates,
> -						link_rate);
> -	int lane_count_exp =3D ilog2(lane_count);
> -	int i;
> -
> -	for (i =3D 0; i < link_caps->num_configs; i++) {
> -		const struct intel_dp_link_config_entry *lce =3D &link_caps->configs[i=
];
> -
> -		if (lce->lane_count_exp =3D=3D lane_count_exp &&
> -		    lce->link_rate_idx =3D=3D link_rate_idx)
> -			return i;
> -	}
> -
> -	return -1;
> -}
> -
>  /**
>   * intel_dp_link_caps_reset - reset link capability restrictions
>   * @link_caps: link capabilities state
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h b/drivers/=
gpu/drm/i915/display/intel_dp_link_caps.h
> index bb785c15c91f6..5c0d660062149 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
> @@ -119,20 +119,11 @@ intel_dp_link_caps_connector_compute_order(struct i=
ntel_connector *connector);
>  struct intel_dp_link_caps_order
>  intel_dp_link_caps_connector_fallback_order(bool is_mst);
> =20
> -int intel_dp_common_rate(struct intel_dp_link_caps *link_caps, int index=
);
> -int intel_dp_link_caps_common_rate_idx(struct intel_dp_link_caps *link_c=
aps, int rate);
> -int intel_dp_max_common_rate(struct intel_dp_link_caps *link_caps);
> -
>  void intel_dp_link_caps_print_common_rates(struct intel_dp_link_caps *li=
nk_caps);
> =20
>  void intel_dp_link_caps_get_forced_params(struct intel_dp_link_caps *lin=
k_caps,
>  					  struct intel_dp_link_config *forced_params);
> =20
> -int intel_dp_link_config_index(struct intel_dp_link_caps *link_caps,
> -			       int link_rate, int lane_count);
> -void intel_dp_link_config_get(struct intel_dp_link_caps *link_caps,
> -			      int idx, int *link_rate, int *lane_count);
> -
>  bool intel_dp_link_caps_filter_add(struct intel_dp_link_caps *link_caps,
>  				   struct intel_dp_link_caps_filter *filter,
>  				   const struct intel_dp_link_config *config);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/driv=
ers/gpu/drm/i915/display/intel_dp_link_training.c
> index 7fdcc299daea5..1c12503908d80 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -1846,115 +1846,46 @@ static bool intel_dp_can_link_train_fallback_for=
_edp(struct intel_dp *intel_dp,
>  	return true;
>  }
> =20
> -static bool reduce_link_params_in_bw_order(struct intel_dp *intel_dp,
> -					   const struct intel_crtc_state *crtc_state,
> -					   int *new_link_rate, int *new_lane_count)
> -{
> -	struct intel_dp_link_caps *link_caps =3D intel_dp->link.caps;
> -	struct intel_dp_link_config forced_params;
> -	int link_rate;
> -	int lane_count;
> -	int i;
> -
> -	intel_dp_link_caps_get_forced_params(link_caps, &forced_params);
> -
> -	i =3D intel_dp_link_config_index(intel_dp->link.caps,
> -				       crtc_state->port_clock, crtc_state->lane_count);
> -	for (i--; i >=3D 0; i--) {
> -		intel_dp_link_config_get(intel_dp->link.caps, i, &link_rate, &lane_cou=
nt);
> -
> -		if ((forced_params.rate &&
> -		     forced_params.rate !=3D link_rate) ||
> -		    (forced_params.lane_count &&
> -		     forced_params.lane_count !=3D lane_count))
> -			continue;
> -
> -		break;
> -	}
> -
> -	if (i < 0)
> -		return false;
> -
> -	*new_link_rate =3D link_rate;
> -	*new_lane_count =3D lane_count;
> -
> -	return true;
> -}
> -
> -static int reduce_link_rate(struct intel_dp *intel_dp, int current_rate)
> -{
> -	struct intel_dp_link_caps *link_caps =3D intel_dp->link.caps;
> -	struct intel_dp_link_config forced_params;
> -	int rate_index;
> -	int new_rate;
> -
> -	intel_dp_link_caps_get_forced_params(link_caps, &forced_params);
> -	if (forced_params.rate)
> -		return -1;
> -
> -	rate_index =3D intel_dp_link_caps_common_rate_idx(link_caps,
> -							current_rate);
> -
> -	if (rate_index <=3D 0)
> -		return -1;
> -
> -	new_rate =3D intel_dp_common_rate(link_caps, rate_index - 1);
> -
> -	/* TODO: Make switching from UHBR to non-UHBR rates work. */
> -	if (drm_dp_is_uhbr_rate(current_rate) !=3D drm_dp_is_uhbr_rate(new_rate=
))
> -		return -1;
> -
> -	return new_rate;
> -}
> -
> -static int reduce_lane_count(struct intel_dp *intel_dp, int current_lane=
_count)
> -{
> -	struct intel_dp_link_config forced_params;
> -
> -	intel_dp_link_caps_get_forced_params(intel_dp->link.caps, &forced_param=
s);
> -	if (forced_params.lane_count)
> -		return -1;
> -
> -	if (current_lane_count =3D=3D 1)
> -		return -1;
> -
> -	return current_lane_count >> 1;
> -}
> -
> -static bool reduce_link_params_in_rate_lane_order(struct intel_dp *intel=
_dp,
> -						  const struct intel_crtc_state *crtc_state,
> -						  int *new_link_rate, int *new_lane_count)
> -{
> -	struct intel_dp_link_caps *link_caps =3D intel_dp->link.caps;
> -	int link_rate;
> -	int lane_count;
> -
> -	lane_count =3D crtc_state->lane_count;
> -	link_rate =3D reduce_link_rate(intel_dp, crtc_state->port_clock);
> -	if (link_rate < 0) {
> -		lane_count =3D reduce_lane_count(intel_dp, crtc_state->lane_count);
> -		link_rate =3D intel_dp_max_common_rate(link_caps);
> -	}
> -
> -	if (lane_count < 0)
> -		return false;
> -
> -	*new_link_rate =3D link_rate;
> -	*new_lane_count =3D lane_count;
> -
> -	return true;
> -}
> -
>  static bool reduce_link_params(struct intel_dp *intel_dp, const struct i=
ntel_crtc_state *crtc_state,
>  			       int *new_link_rate, int *new_lane_count)
>  {
> -	/* TODO: Use the same fallback logic on SST as on MST. */
> -	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST))
> -		return reduce_link_params_in_bw_order(intel_dp, crtc_state,
> -						      new_link_rate, new_lane_count);
> -	else
> -		return reduce_link_params_in_rate_lane_order(intel_dp, crtc_state,
> -							     new_link_rate, new_lane_count);
> +	struct intel_dp_link_caps *link_caps =3D intel_dp->link.caps;
> +	bool is_mst =3D intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST);
> +	struct intel_dp_link_caps_order order =3D
> +		intel_dp_link_caps_connector_fallback_order(is_mst);
> +	struct intel_dp_link_config old_config =3D {
> +		.rate =3D crtc_state->port_clock,
> +		.lane_count =3D crtc_state->lane_count,
> +	};
> +	struct intel_dp_link_caps_iter iter;
> +	struct intel_dp_link_config config;
> +	bool old_found =3D false;
> +	bool new_found =3D false;
> +
> +	intel_dp_link_caps_iter_start(&iter, link_caps, order, INTEL_DP_LINK_CA=
PS_FILTER_ALL);
> +	for_each_dp_link_config(&iter, &config) {
> +		if (!old_found) {
> +			if (config.rate =3D=3D old_config.rate &&
> +			    config.lane_count =3D=3D old_config.lane_count)
> +				old_found =3D true;
> +
> +			continue;
> +		}
> +
> +		if (!is_mst &&
> +		    drm_dp_is_uhbr_rate(config.rate) !=3D
> +		    drm_dp_is_uhbr_rate(old_config.rate))
> +			continue;
> +
> +		*new_link_rate =3D config.rate;
> +		*new_lane_count =3D config.lane_count;
> +		new_found =3D true;
> +
> +		break;
> +	}
> +	intel_dp_link_caps_iter_end(&iter);
> +
> +	return new_found;
>  }
> =20
>  static int intel_dp_get_link_train_fallback_values(struct intel_dp *inte=
l_dp,

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.
