Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id cyVYI4yPRmppYgsAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Jul 2026 18:19:24 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E43F26FA146
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Jul 2026 18:19:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7067410E501;
	Thu,  2 Jul 2026 16:19:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 649D610E501;
 Thu,  2 Jul 2026 16:19:21 +0000 (UTC)
Received: from 87-93-171-105.bb.dnainternet.fi ([87.93.171.105]
 helo=[192.168.101.113])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.98.2) (envelope-from <luca@coelho.fi>)
 id 1wfK8C-00000001Msn-0w11; Thu, 02 Jul 2026 19:19:19 +0300
Message-ID: <a88d5c386f20c5af0e0cc6bfc84476ec4cc81af6.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org
Date: Thu, 02 Jul 2026 19:19:14 +0300
In-Reply-To: <20260701153204.4124150-17-imre.deak@intel.com>
References: <20260701153204.4124150-1-imre.deak@intel.com>
 <20260701153204.4124150-17-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-10 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.3-r1932428 (2026-03-21) on
 farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP autolearn=ham autolearn_force=no version=4.0.3-r1932428
Subject: Re: [PATCH v2 16/34] drm/i915/dp_test: Use link caps for compliance
 link configs
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,coelho.fi:mid,coelho.fi:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp];
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
X-Rspamd-Queue-Id: E43F26FA146

On Wed, 2026-07-01 at 18:31 +0300, Imre Deak wrote:
> Use the link caps configuration mask when applying DP compliance test
> link parameters during state computation.
>=20
> Preserve the legacy behavior of falling back to all configurations with
> the requested lane count if the requested rate and lane count pair is
> not allowed.
>=20
> In case no valid configuration is found fail the modeset.
>=20
> v2:
> - Rebase on changes using a filter object instead of a mask of
>   configuration indices.
> - Rebase on changes using an iteration object.
>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c      |  3 +-
>  drivers/gpu/drm/i915/display/intel_dp_test.c | 96 +++++++++++++++++++-
>  drivers/gpu/drm/i915/display/intel_dp_test.h |  3 +-
>  3 files changed, 99 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index b10bbbf0f49bf..42bb1c7622525 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2808,7 +2808,8 @@ intel_dp_compute_config_limits(struct intel_dp *int=
el_dp,
>  		limits->link_config_filter =3D new_filter;
>  	}
> =20
> -	intel_dp_test_compute_config(intel_dp, crtc_state, limits);
> +	if (!intel_dp_test_compute_config(connector, crtc_state, limits))
> +		return false;
> =20
>  	return intel_dp_compute_config_link_bpp_limits(connector,
>  						       crtc_state,
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_test.c b/drivers/gpu/d=
rm/i915/display/intel_dp_test.c
> index da7632536dace..ec7fa690910bb 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_test.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_test.c
> @@ -28,11 +28,92 @@ void intel_dp_test_reset(struct intel_dp *intel_dp)
>  	memset(&intel_dp->compliance, 0, sizeof(intel_dp->compliance));
>  }
> =20
> +static bool set_filter_for_lane_count(struct intel_connector *connector,
> +				      struct intel_dp_link_caps *link_caps,
> +				      int lane_count,
> +				      struct link_config_limits *limits)
> +{
> +	struct intel_dp_link_config link_config;
> +	struct intel_dp_link_caps_order order =3D
> +		intel_dp_link_caps_connector_compute_order(connector);
> +	struct intel_dp_link_caps_filter new_filter =3D INTEL_DP_LINK_CAPS_FILT=
ER_NONE;
> +	struct intel_dp_link_caps_iter iter;
> +	bool found =3D false;
> +
> +	intel_dp_link_caps_iter_start(&iter, link_caps, order, limits->link_con=
fig_filter);
> +	for_each_dp_link_config(&iter, &link_config) {
> +		if (link_config.lane_count !=3D lane_count)
> +			continue;
> +
> +		intel_dp_link_caps_filter_add(link_caps, &new_filter, &link_config);
> +		found =3D true;
> +	}
> +	intel_dp_link_caps_iter_end(&iter);
> +
> +	if (!found)
> +		return false;
> +
> +	limits->link_config_filter =3D new_filter;
> +
> +	return true;
> +}
> +
> +static bool set_filter_for_link_config(struct intel_connector *connector=
,
> +				       struct intel_dp_link_caps *link_caps,
> +				       const struct intel_dp_link_config *link_params,
> +				       struct link_config_limits *limits)
> +{
> +	struct intel_dp_link_caps_filter new_filter =3D INTEL_DP_LINK_CAPS_FILT=
ER_NONE;
> +
> +	if (!intel_dp_link_caps_filter_add(link_caps, &new_filter, link_params)=
)
> +		return false;
> +
> +	limits->link_config_filter =3D new_filter;
> +
> +	return true;
> +}
> +
> +static bool set_filter_for_link_params(struct intel_connector *connector=
,
> +				       int link_rate, int lane_count,
> +				       struct link_config_limits *limits)
> +{
> +	struct intel_dp *intel_dp =3D intel_attached_dp(connector);
> +	struct intel_encoder *encoder =3D &dp_to_dig_port(intel_dp)->base;
> +	struct intel_dp_link_caps *link_caps =3D intel_dp->link.caps;
> +	struct intel_display *display =3D to_intel_display(intel_dp);
> +	struct intel_dp_link_config requested_config;
> +
> +	requested_config.rate =3D link_rate;
> +	requested_config.lane_count =3D lane_count;
> +
> +	if (set_filter_for_link_config(connector, link_caps, &requested_config,=
 limits))
> +		return true;
> +
> +	/*
> +	 * Preserve the legacy behavior: if the requested (rate, lane_count)
> +	 * combination is not an allowed config, fall back to all configs
> +	 * matching the requested lane count.
> +	 *
> +	 * TODO: Recheck whether this behavior is actually correct.
> +	 */
> +	if (set_filter_for_lane_count(connector, link_caps, lane_count, limits)=
)
> +		return true;
> +
> +	drm_dbg_kms(display->drm,
> +		    "[ENCODER:%d:%s] Invalid autotest link config parameters: %dx%d\n"=
,
> +		    encoder->base.base.id, encoder->base.name,
> +		    requested_config.lane_count,
> +		    requested_config.rate);
> +
> +	return false;
> +}
> +
>  /* Adjust link config limits based on compliance test requests. */
> -void intel_dp_test_compute_config(struct intel_dp *intel_dp,
> +bool intel_dp_test_compute_config(struct intel_connector *connector,
>  				  struct intel_crtc_state *pipe_config,
>  				  struct link_config_limits *limits)
>  {
> +	struct intel_dp *intel_dp =3D intel_attached_dp(connector);
>  	struct intel_dp_link_caps *link_caps =3D intel_dp->link.caps;
>  	struct intel_display *display =3D to_intel_display(intel_dp);
> =20
> @@ -51,6 +132,11 @@ void intel_dp_test_compute_config(struct intel_dp *in=
tel_dp,
>  	if (intel_dp->compliance.test_type =3D=3D DP_TEST_LINK_TRAINING) {
>  		int index;
> =20
> +		/*
> +		 * TODO: Remove the following min/max link limit setup
> +		 * after converting to use the link configuration filter
> +		 * instead in limits.
> +		 */
>  		/* Validate the compliance test data since max values
>  		 * might have changed due to link train fallback.
>  		 */
> @@ -65,7 +151,15 @@ void intel_dp_test_compute_config(struct intel_dp *in=
tel_dp,
>  			limits->min_lane_count =3D intel_dp->compliance.test_lane_count;
>  			limits->max_lane_count =3D intel_dp->compliance.test_lane_count;
>  		}
> +
> +		if (!set_filter_for_link_params(connector,
> +						intel_dp->compliance.test_link_rate,
> +						intel_dp->compliance.test_lane_count,
> +						limits))
> +			return false;
>  	}
> +
> +	return true;
>  }
> =20
>  /* Compliance test status bits  */
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_test.h b/drivers/gpu/d=
rm/i915/display/intel_dp_test.h
> index dcc167e4c7f65..a08f37a63dc9a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_test.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp_test.h
> @@ -6,6 +6,7 @@
> =20
>  #include <linux/types.h>
> =20
> +struct intel_connector;
>  struct intel_crtc_state;
>  struct intel_display;
>  struct intel_dp;
> @@ -13,7 +14,7 @@ struct link_config_limits;
> =20
>  void intel_dp_test_reset(struct intel_dp *intel_dp);
>  void intel_dp_test_request(struct intel_dp *intel_dp);
> -void intel_dp_test_compute_config(struct intel_dp *intel_dp,
> +bool intel_dp_test_compute_config(struct intel_connector *connector,
>  				  struct intel_crtc_state *pipe_config,
>  				  struct link_config_limits *limits);
>  bool intel_dp_test_phy(struct intel_dp *intel_dp);

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.
