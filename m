Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id eqb+M3jOTGooqAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Jul 2026 12:01:28 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E39FA71A10D
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Jul 2026 12:01:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 761EB10EC30;
	Tue,  7 Jul 2026 10:01:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3278210EC30;
 Tue,  7 Jul 2026 10:01:17 +0000 (UTC)
Received: from 81-197-16-175.elisa-laajakaista.fi ([81.197.16.175]
 helo=[192.168.100.133])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.98.2) (envelope-from <luca@coelho.fi>)
 id 1wh2c5-00000001VSe-35OO; Tue, 07 Jul 2026 13:01:15 +0300
Message-ID: <b4bdad352216e503aa9504b62f9255f40d837d6f.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org
Date: Tue, 07 Jul 2026 13:01:11 +0300
In-Reply-To: <20260701153204.4124150-26-imre.deak@intel.com>
References: <20260701153204.4124150-1-imre.deak@intel.com>
 <20260701153204.4124150-26-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-10 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.3-r1932428 (2026-03-21) on
 farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP autolearn=ham autolearn_force=no version=4.0.3-r1932428
Subject: Re: [PATCH v2 25/34] drm/i915/dp_link_training: Disable failed
 config during fallback
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
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[coelho.fi];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_THREE(0.00)[3];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luca@coelho.fi,intel-gfx-bounces@lists.freedesktop.org];
	RSPAMD_EMAILBL_FAIL(0.00)[intel-gfx-bounces@lists.freedesktop.org:query timed out,imre.deak.intel.com:query timed out];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,coelho.fi:mid,coelho.fi:from_mime,intel.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E39FA71A10D

On Wed, 2026-07-01 at 18:31 +0300, Imre Deak wrote:
> Disable the link configuration that failed training when selecting
> fallback parameters.
>=20
> Fallback still selects the next configuration using the existing
> fallback order, but now also removes the failed configuration from the
> allowed set. Functionally, this only affects the case where an MST <-> SS=
T
> mode switch occurs on the same root connector: previously, a configuratio=
n
> that failed training in one mode could be reused in the other mode due
> to the differing config iteration orders.
>=20
> The current fallback logic also sets a temporary maximum link limit
> across the allowed configurations to constrain subsequent modesets. This
> legacy behavior is preserved for now; it will be removed once the
> fallback logic relies solely on the individually disabled configurations
> to restrict the allowed set.
>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_dp_link_caps.c | 55 +++++++++++++++++++
>  .../gpu/drm/i915/display/intel_dp_link_caps.h |  3 +
>  .../drm/i915/display/intel_dp_link_training.c | 19 +++++++
>  3 files changed, 77 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/=
gpu/drm/i915/display/intel_dp_link_caps.c
> index c947e6511fbc5..76b7c0fc90115 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> @@ -596,6 +596,21 @@ bool intel_dp_link_caps_filter_add(struct intel_dp_l=
ink_caps *link_caps,
>  	return true;
>  }
> =20
> +static bool intel_dp_link_caps_filter_remove(struct intel_dp_link_caps *=
link_caps,
> +					     struct intel_dp_link_caps_filter *filter,
> +					     const struct intel_dp_link_config *config)
> +{
> +	int idx;
> +
> +	idx =3D find_config_idx(link_caps, get_allowed_config_filter(link_caps)=
, config);
> +	if (idx < 0)
> +		return false;
> +
> +	filter->config_mask &=3D ~BIT(idx);
> +
> +	return true;
> +}
> +
>  static void set_max_link_limits(struct intel_dp_link_caps *link_caps,
>  				const struct intel_dp_link_config *max_link_limits)
>  {
> @@ -618,6 +633,46 @@ static void reset_max_link_limits_reenable_all(struc=
t intel_dp_link_caps *link_c
>  	reset_max_link_limits(link_caps);
>  }
> =20
> +/**
> + * intel_dp_link_caps_disable_config - disable a configuration
> + * @link_caps: link capabilities state
> + * @config: configuration to disable
> + *
> + * Disable the configuration identified by @config. This removes the
> + * configuration from the set of allowed configurations. The disabling
> + * shouldn't leave the remaining configuration set empty.
> + *
> + * The configuration remains disallowed until intel_dp_link_caps() with
> + * reset=3D%true or changed sink capabilities is called, or
> + * intel_dp_link_caps_reset() is called. Each of these happens after a
> + * new sink is connected or the currently connected sink changes its
> + * capabilities.
> + *
> + * Return:
> + * - %true  if @config was valid and the derived state was updated.
> + * - %false if @config was invalid or the remaining configuration set
> + *   would remain empty.
> + */
> +bool intel_dp_link_caps_disable_config(struct intel_dp_link_caps *link_c=
aps,
> +				       const struct intel_dp_link_config *config)
> +{
> +	struct intel_dp_link_caps_filter enabled_configs =3D link_caps->enabled=
_configs;
> +	struct intel_dp_link_config forced_params;
> +
> +	if (!intel_dp_link_caps_filter_remove(link_caps, &enabled_configs, conf=
ig))
> +		return false;
> +
> +	intel_dp_link_caps_get_forced_params(link_caps, &forced_params);
> +
> +	if (!calc_allowed_config_filter(link_caps, enabled_configs,
> +					&link_caps->max_limits, &forced_params).config_mask)
> +		return false;
> +
> +	link_caps->enabled_configs =3D enabled_configs;
> +
> +	return true;
> +}
> +
>  /**
>   * intel_dp_link_caps_get_max_limits - get the current maximum link limi=
ts
>   * @link_caps: link capabilities state
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h b/drivers/=
gpu/drm/i915/display/intel_dp_link_caps.h
> index 5c0d660062149..56c585eb5a135 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
> @@ -136,6 +136,9 @@ bool intel_dp_link_caps_get_max_config(struct intel_d=
p_link_caps *link_caps,
>  void intel_dp_link_caps_get_max_bw_config(struct intel_dp_link_caps *lin=
k_caps,
>  					  struct intel_dp_link_config *max_config);
> =20
> +bool intel_dp_link_caps_disable_config(struct intel_dp_link_caps *link_c=
aps,
> +				       const struct intel_dp_link_config *config);
> +
>  void intel_dp_link_caps_get_max_limits(struct intel_dp_link_caps *link_c=
aps,
>  				       struct intel_dp_link_config *max_link_limits);
>  bool intel_dp_link_caps_set_max_limits(struct intel_dp_link_caps *link_c=
aps,
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/driv=
ers/gpu/drm/i915/display/intel_dp_link_training.c
> index 1c12503908d80..a592bfab5ff0e 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -1894,6 +1894,10 @@ static int intel_dp_get_link_train_fallback_values=
(struct intel_dp *intel_dp,
>  	struct intel_display *display =3D to_intel_display(intel_dp);
>  	struct intel_dp_link_caps *link_caps =3D intel_dp->link.caps;
>  	struct intel_dp_link_config max_link_limits;
> +	struct intel_dp_link_config current_config =3D {
> +		.rate =3D crtc_state->port_clock,
> +		.lane_count =3D crtc_state->lane_count,
> +	};
>  	int new_link_rate;
>  	int new_lane_count;
>  	int err =3D -1;
> @@ -1920,6 +1924,13 @@ static int intel_dp_get_link_train_fallback_values=
(struct intel_dp *intel_dp,
>  	intel_dp_link_caps_get_max_limits(link_caps, &max_link_limits);
>  	intel_dp_link_caps_reset_max_limits(link_caps);
> =20
> +	/*
> +	 * TODO: Make fallback depend only on disabling the current config,
> +	 * once max_limit no longer constrains the allowed config set. Then
> +	 * disabling the current config will define the allowed configs for
> +	 * the subsequent modeset, so there will be no need to select a
> +	 * reduced config separately here.
> +	 */
>  	if (!reduce_link_params(intel_dp, crtc_state, &new_link_rate, &new_lane=
_count))
>  		goto out_restore_max_limits;
> =20
> @@ -1933,6 +1944,14 @@ static int intel_dp_get_link_train_fallback_values=
(struct intel_dp *intel_dp,
>  		goto out_restore_max_limits;
>  	}
> =20
> +	/*
> +	 * Shouldn't fail: the current config was enabled, and reducing the
> +	 * link parameters should still leave the fallback config allowed.
> +	 */
> +	if (drm_WARN_ON(display->drm,
> +			!intel_dp_link_caps_disable_config(link_caps, &current_config)))
> +		return -1;
> +
>  	lt_dbg(intel_dp, DP_PHY_DPRX,
>  	       "Reducing link parameters from %dx%d to %dx%d\n",
>  	       crtc_state->lane_count, crtc_state->port_clock,

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.
