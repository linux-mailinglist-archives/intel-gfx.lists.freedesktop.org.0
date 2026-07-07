Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id s8zgBjLNTGrSpwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Jul 2026 11:56:02 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BB7771A01B
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Jul 2026 11:56:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFDBF899B3;
	Tue,  7 Jul 2026 09:55:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 232EF899B3;
 Tue,  7 Jul 2026 09:55:59 +0000 (UTC)
Received: from 81-197-16-175.elisa-laajakaista.fi ([81.197.16.175]
 helo=[192.168.100.133])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.98.2) (envelope-from <luca@coelho.fi>)
 id 1wh2Wy-00000001VRG-2Esk; Tue, 07 Jul 2026 12:55:57 +0300
Message-ID: <3d57cd41697bb618ae9f3e6bd263a3ad612aaaaa.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org
Date: Tue, 07 Jul 2026 12:55:55 +0300
In-Reply-To: <20260701153204.4124150-24-imre.deak@intel.com>
References: <20260701153204.4124150-1-imre.deak@intel.com>
 <20260701153204.4124150-24-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-10 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.3-r1932428 (2026-03-21) on
 farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP autolearn=ham autolearn_force=no version=4.0.3-r1932428
Subject: Re: [PATCH v2 23/34] drm/i915/dp_link_training: Reset the max link
 limits in the fallback code
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp,intel.com:email,coelho.fi:mid,coelho.fi:from_mime];
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
X-Rspamd-Queue-Id: 5BB7771A01B

On Wed, 2026-07-01 at 18:31 +0300, Imre Deak wrote:
> The target maximum rate/lane count selected by the fallback logic may
> exceed the current link_caps max_limits' rate/lane count, the latter of
> which are used as a limit by the lookup functions when filtering allowed
> configurations. To ensure the fallback search finds all relevant
> candidates, temporarily reset the link_caps max_limits to the maximum
> common supported capabilities.
>=20
> After the fallback search completes, set the link_caps max_limits to the
> configuration selected by the fallback logic, as before, determining
> the allowed configurations for a subsequent modeset.
>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  .../drm/i915/display/intel_dp_link_training.c | 39 ++++++++++++++++---
>  1 file changed, 34 insertions(+), 5 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/driv=
ers/gpu/drm/i915/display/intel_dp_link_training.c
> index b521dd11b62a7..7fdcc299daea5 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -1960,10 +1960,12 @@ static bool reduce_link_params(struct intel_dp *i=
ntel_dp, const struct intel_crt
>  static int intel_dp_get_link_train_fallback_values(struct intel_dp *inte=
l_dp,
>  						   const struct intel_crtc_state *crtc_state)
>  {
> +	struct intel_display *display =3D to_intel_display(intel_dp);
>  	struct intel_dp_link_caps *link_caps =3D intel_dp->link.caps;
>  	struct intel_dp_link_config max_link_limits;
>  	int new_link_rate;
>  	int new_lane_count;
> +	int err =3D -1;
> =20
>  	if (intel_dp_is_edp(intel_dp) && !intel_dp->use_max_params) {
>  		lt_dbg(intel_dp, DP_PHY_DPRX,
> @@ -1972,14 +1974,32 @@ static int intel_dp_get_link_train_fallback_value=
s(struct intel_dp *intel_dp,
>  		return 0;
>  	}
> =20
> +	/*
> +	 * Temporarily reset the max link limit before selecting the fallback
> +	 * config.
> +	 *
> +	 * After fallback, the current logic narrows the allowed configurations
> +	 * to the selected config's rate and lane count. That can make a later
> +	 * fallback candidate fall outside the current max_limit, so reset it
> +	 * before searching.
> +	 *
> +	 * TODO: Constrain the allowed configurations by only disabling individ=
ual
> +	 * configurations and remove setting maximum link parameters.
> +	 */
> +	intel_dp_link_caps_get_max_limits(link_caps, &max_link_limits);
> +	intel_dp_link_caps_reset_max_limits(link_caps);
> +
>  	if (!reduce_link_params(intel_dp, crtc_state, &new_link_rate, &new_lane=
_count))
> -		return -1;
> +		goto out_restore_max_limits;
> =20
>  	if (intel_dp_is_edp(intel_dp) &&
>  	    !intel_dp_can_link_train_fallback_for_edp(intel_dp, new_link_rate, =
new_lane_count)) {
>  		lt_dbg(intel_dp, DP_PHY_DPRX,
>  		       "Retrying Link training for eDP with same parameters\n");
> -		return 0;
> +
> +		err =3D 0;
> +
> +		goto out_restore_max_limits;
>  	}
> =20
>  	lt_dbg(intel_dp, DP_PHY_DPRX,
> @@ -1990,10 +2010,19 @@ static int intel_dp_get_link_train_fallback_value=
s(struct intel_dp *intel_dp,
>  	max_link_limits.rate =3D new_link_rate;
>  	max_link_limits.lane_count =3D new_lane_count;
> =20
> -	/* TODO: handle an update failure */
> -	intel_dp_link_caps_set_max_limits(link_caps, &max_link_limits);
> +	err =3D 0;
> =20
> -	return 0;
> +out_restore_max_limits:
> +	/*
> +	 * Shouldn't fail: setting max_limits can only fail if they drop below
> +	 * the optionally forced rate/lane-count parameters, but the reduced
> +	 * config was chosen to satisfy those constraints.
> +	 */
> +	if (drm_WARN_ON(display->drm,
> +			!intel_dp_link_caps_set_max_limits(link_caps, &max_link_limits)))
> +		err =3D -1;
> +
> +	return err;
>  }
> =20
>  static bool intel_dp_schedule_fallback_link_training(struct intel_atomic=
_state *state,

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.
