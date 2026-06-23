Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 50EFH4ZeOmpR7QcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2026 12:23:02 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67BCF6B63D7
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2026 12:23:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6ED1910EA6F;
	Tue, 23 Jun 2026 10:22:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 444F810EA5C;
 Tue, 23 Jun 2026 10:22:58 +0000 (UTC)
Received: from 87-93-171-105.bb.dnainternet.fi ([87.93.171.105]
 helo=[192.168.101.113])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.98.2) (envelope-from <luca@coelho.fi>)
 id 1wbyHC-0000000145z-2mMP; Tue, 23 Jun 2026 13:22:55 +0300
Message-ID: <d54ec733d1f389776c706eb54fc38e03936e2634.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: imre.deak@intel.com, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org
Date: Tue, 23 Jun 2026 13:22:41 +0300
In-Reply-To: <20260616200849.3534628-6-imre.deak@intel.com>
References: <20260616200849.3534628-1-imre.deak@intel.com>
 <20260616200849.3534628-6-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-9 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.3-r1932428 (2026-03-21) on
 farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP autolearn=ham autolearn_force=no version=4.0.3-r1932428
Subject: Re: [PATCH v2 05/28] drm/i915/dp_link_caps: Move forced link param
 helpers to link caps
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
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,intel.com:email];
	MID_RHS_MATCH_FROM(0.00)[];
	R_DKIM_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luca@coelho.fi,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	TO_DN_NONE(0.00)[];
	DMARC_NA(0.00)[coelho.fi];
	RCVD_TLS_LAST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_COUNT_THREE(0.00)[3]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 67BCF6B63D7

On Tue, 2026-06-16 at 23:08 +0300, Imre Deak wrote:
> Move the helpers handling forced link parameters to intel_dp_link_caps.c.
> Their functionality is part of the link capability logic and will be
> updated to use the link capability state in follow-up changes.
>=20
> Return the forced link rate and lane count through a
> struct intel_dp_link_config, which is the canonical way the rest of the
> link capability API will also accept and return link configurations.
>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c       | 39 ++++++++++---------
>  .../gpu/drm/i915/display/intel_dp_link_caps.c | 22 +++++++++++
>  .../gpu/drm/i915/display/intel_dp_link_caps.h |  5 +++
>  3 files changed, 47 insertions(+), 19 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index a34d3704a5667..7643fe079e15b 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -364,17 +364,16 @@ int intel_dp_max_common_lane_count(struct intel_dp =
*intel_dp)
>  	return intel_dp->max_common_lane_count;
>  }
> =20
> -static int forced_lane_count(struct intel_dp *intel_dp)
> -{
> -	return clamp(intel_dp->link.force_lane_count, 1, intel_dp_max_common_la=
ne_count(intel_dp));
> -}
> -
>  int intel_dp_max_lane_count(struct intel_dp *intel_dp)
>  {
> +	struct intel_dp_link_caps *link_caps =3D intel_dp->link.caps;
> +	struct intel_dp_link_config forced_params;
>  	int lane_count;
> =20
> +	intel_dp_link_caps_get_forced_params(link_caps, &forced_params);
> +
>  	if (intel_dp->link.force_lane_count)
> -		lane_count =3D forced_lane_count(intel_dp);
> +		lane_count =3D forced_params.lane_count;
>  	else
>  		lane_count =3D intel_dp->link.max_lane_count;
> =20
> @@ -391,8 +390,12 @@ int intel_dp_max_lane_count(struct intel_dp *intel_d=
p)
> =20
>  static int intel_dp_min_lane_count(struct intel_dp *intel_dp)
>  {
> +	struct intel_dp_link_config forced_params;
> +
> +	intel_dp_link_caps_get_forced_params(intel_dp->link.caps, &forced_param=
s);
> +
>  	if (intel_dp->link.force_lane_count)
> -		return forced_lane_count(intel_dp);
> +		return forced_params.lane_count;
> =20
>  	return 1;
>  }
> @@ -1655,23 +1658,17 @@ static void intel_dp_print_rates(struct intel_dp =
*intel_dp)
>  	drm_dbg_kms(display->drm, "common rates: %s\n", seq_buf_str(&s));
>  }
> =20
> -static int forced_link_rate(struct intel_dp *intel_dp)
> -{
> -	int len =3D intel_dp_common_len_rate_limit(intel_dp, intel_dp->link.for=
ce_rate);
> -
> -	if (len =3D=3D 0)
> -		return intel_dp_common_rate(intel_dp, 0);
> -
> -	return intel_dp_common_rate(intel_dp, len - 1);
> -}
> -
>  int
>  intel_dp_max_link_rate(struct intel_dp *intel_dp)
>  {
> +	struct intel_dp_link_caps *link_caps =3D intel_dp->link.caps;
> +	struct intel_dp_link_config forced_params;
>  	int len;
> =20
> +	intel_dp_link_caps_get_forced_params(link_caps, &forced_params);
> +
>  	if (intel_dp->link.force_rate)
> -		return forced_link_rate(intel_dp);
> +		return forced_params.rate;
> =20
>  	len =3D intel_dp_common_len_rate_limit(intel_dp, intel_dp->link.max_rat=
e);
> =20
> @@ -1681,8 +1678,12 @@ intel_dp_max_link_rate(struct intel_dp *intel_dp)
>  static int
>  intel_dp_min_link_rate(struct intel_dp *intel_dp)
>  {
> +	struct intel_dp_link_config forced_params;
> +
> +	intel_dp_link_caps_get_forced_params(intel_dp->link.caps, &forced_param=
s);
> +
>  	if (intel_dp->link.force_rate)
> -		return forced_link_rate(intel_dp);
> +		return forced_params.rate;
> =20
>  	return intel_dp_common_rate(intel_dp, 0);
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/=
gpu/drm/i915/display/intel_dp_link_caps.c
> index 37ffd714c6a42..1d3a3ff007a03 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> @@ -41,6 +41,28 @@ int intel_dp_max_common_rate(struct intel_dp *intel_dp=
)
>  	return intel_dp_common_rate(intel_dp, intel_dp->num_common_rates - 1);
>  }
> =20
> +static int forced_lane_count(struct intel_dp *intel_dp)
> +{
> +	return clamp(intel_dp->link.force_lane_count, 1, intel_dp_max_common_la=
ne_count(intel_dp));
> +}
> +
> +static int forced_link_rate(struct intel_dp *intel_dp)
> +{
> +	int len =3D intel_dp_common_len_rate_limit(intel_dp, intel_dp->link.for=
ce_rate);
> +
> +	if (len =3D=3D 0)
> +		return intel_dp_common_rate(intel_dp, 0);
> +
> +	return intel_dp_common_rate(intel_dp, len - 1);
> +}
> +
> +void intel_dp_link_caps_get_forced_params(struct intel_dp_link_caps *lin=
k_caps,
> +					  struct intel_dp_link_config *forced_params)

Is this really _get_? Usually "get" in the function name in my head
returns something (which in this case would be the forced_params), but
here we're actually setting them.

Should it be _set_, or maybe "parse"?


> +{
> +	forced_params->rate =3D forced_link_rate(link_caps->dp);
> +	forced_params->lane_count =3D forced_lane_count(link_caps->dp);
> +}
> +
>  struct intel_dp_link_caps *intel_dp_link_caps_init(struct intel_dp *inte=
l_dp)
>  {
>  	struct intel_dp_link_caps *link_caps;
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h b/drivers/=
gpu/drm/i915/display/intel_dp_link_caps.h
> index 3248777d1287f..61dbce86ee3d0 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
> @@ -5,12 +5,17 @@
>  #define __INTEL_DP_LINK_CAPS_H__
> =20
>  struct intel_dp;
> +struct intel_dp_link_caps;
> +struct intel_dp_link_config;
> =20
>  int intel_dp_common_len_rate_limit(const struct intel_dp *intel_dp,
>  				   int max_rate);
>  int intel_dp_common_rate(struct intel_dp *intel_dp, int index);
>  int intel_dp_max_common_rate(struct intel_dp *intel_dp);
> =20
> +void intel_dp_link_caps_get_forced_params(struct intel_dp_link_caps *lin=
k_caps,
> +					  struct intel_dp_link_config *forced_params);
> +
>  struct intel_dp_link_caps *intel_dp_link_caps_init(struct intel_dp *inte=
l_dp);
>  void intel_dp_link_caps_cleanup(struct intel_dp_link_caps *link_caps);
> =20

--
Cheers,
Luca.
