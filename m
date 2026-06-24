Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id zAQdC3y8O2oAcAgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 13:16:12 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 610006BD937
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 13:16:11 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC4B110EE9D;
	Wed, 24 Jun 2026 11:16:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41E8E10E067;
 Wed, 24 Jun 2026 11:16:08 +0000 (UTC)
Received: from 87-93-171-105.bb.dnainternet.fi ([87.93.171.105]
 helo=[192.168.101.113])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.98.2) (envelope-from <luca@coelho.fi>)
 id 1wcLaK-000000016aW-3bSv; Wed, 24 Jun 2026 14:16:04 +0300
Message-ID: <29538d55435f6ddd64d0bcfd2ff4504d74e9ab47.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org
Date: Wed, 24 Jun 2026 14:15:59 +0300
In-Reply-To: <20260616200849.3534628-12-imre.deak@intel.com>
References: <20260616200849.3534628-1-imre.deak@intel.com>
 <20260616200849.3534628-12-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-9 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.3-r1932428 (2026-03-21) on
 farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP autolearn=ham autolearn_force=no version=4.0.3-r1932428
Subject: Re: [PATCH v2 11/28] drm/i915/dp_link_caps: Move link config
 tracking to link_caps
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email];
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
X-Rspamd-Queue-Id: 610006BD937

On Tue, 2026-06-16 at 23:08 +0300, Imre Deak wrote:
> Move tracking of the link configurations from struct intel_dp to struct
> intel_dp_link_caps.
>=20
> Previous changes moved the helpers operating on configurations to the
> link caps module, so the state can now be kept internal to that module.
>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.



>  .../drm/i915/display/intel_display_types.h    | 12 -------
>  .../gpu/drm/i915/display/intel_dp_link_caps.c | 36 ++++++++++++++-----
>  2 files changed, 27 insertions(+), 21 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index c84ef29529373..443bb3b5e9fa3 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1841,18 +1841,6 @@ struct intel_dp {
>  	struct {
>  		/* TODO: move the rest of link specific fields to here */
>  		bool active;
> -		/* common rate,lane_count configs in bw order */
> -		int num_configs;
> -#define INTEL_DP_MAX_LANE_COUNT			4
> -#define INTEL_DP_MAX_SUPPORTED_LANE_CONFIGS	(ilog2(INTEL_DP_MAX_LANE_COU=
NT) + 1)
> -#define INTEL_DP_LANE_COUNT_EXP_BITS		order_base_2(INTEL_DP_MAX_SUPPORTE=
D_LANE_CONFIGS)
> -#define INTEL_DP_LINK_RATE_IDX_BITS		(BITS_PER_TYPE(u8) - INTEL_DP_LANE_=
COUNT_EXP_BITS)
> -#define INTEL_DP_MAX_LINK_CONFIGS		(DP_MAX_SUPPORTED_RATES * \
> -						 INTEL_DP_MAX_SUPPORTED_LANE_CONFIGS)
> -		struct intel_dp_link_config_entry {
> -			u8 link_rate_idx:INTEL_DP_LINK_RATE_IDX_BITS;
> -			u8 lane_count_exp:INTEL_DP_LANE_COUNT_EXP_BITS;
> -		} configs[INTEL_DP_MAX_LINK_CONFIGS];
>  		/* Max lane count for the current link */
>  		int max_lane_count;
>  		/* Max rate for the current link */
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/=
gpu/drm/i915/display/intel_dp_link_caps.c
> index 6a37ba8c35e27..05ec933c74407 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> @@ -3,10 +3,12 @@
>   * Copyright =C2=A9 2026 Intel Corporation
>   */
> =20
> +#include <linux/bitops.h>
>  #include <linux/debugfs.h>
>  #include <linux/log2.h>
>  #include <linux/slab.h>
>  #include <linux/sort.h>
> +#include <linux/types.h>
> =20
>  #include <drm/drm_print.h>
> =20
> @@ -18,6 +20,19 @@
>  struct intel_dp_link_caps {
>  	struct intel_dp *dp;
> =20
> +	/* common rate,lane_count configs in bw order */
> +	int num_configs;
> +#define INTEL_DP_MAX_LANE_COUNT			4
> +#define INTEL_DP_MAX_SUPPORTED_LANE_CONFIGS	(ilog2(INTEL_DP_MAX_LANE_COU=
NT) + 1)
> +#define INTEL_DP_LANE_COUNT_EXP_BITS		order_base_2(INTEL_DP_MAX_SUPPORTE=
D_LANE_CONFIGS)
> +#define INTEL_DP_LINK_RATE_IDX_BITS		(BITS_PER_TYPE(u8) - INTEL_DP_LANE_=
COUNT_EXP_BITS)
> +#define INTEL_DP_MAX_LINK_CONFIGS		(DP_MAX_SUPPORTED_RATES * \
> +						 INTEL_DP_MAX_SUPPORTED_LANE_CONFIGS)
> +	struct intel_dp_link_config_entry {
> +		u8 link_rate_idx:INTEL_DP_LINK_RATE_IDX_BITS;
> +		u8 lane_count_exp:INTEL_DP_LANE_COUNT_EXP_BITS;
> +	} configs[INTEL_DP_MAX_LINK_CONFIGS];
> +
>  	/*
>  	 * Forced parameters requested via debugfs. Remains set across sink
>  	 * disconnects.
> @@ -118,6 +133,7 @@ static int link_config_cmp_by_bw(const void *a, const=
 void *b, const void *p)
> =20
>  void intel_dp_link_config_init(struct intel_dp *intel_dp)
>  {
> +	struct intel_dp_link_caps *link_caps =3D intel_dp->link.caps;
>  	struct intel_display *display =3D to_intel_display(intel_dp);
>  	struct intel_dp_link_config_entry *lc;
>  	int num_common_lane_configs;
> @@ -130,12 +146,12 @@ void intel_dp_link_config_init(struct intel_dp *int=
el_dp)
>  	num_common_lane_configs =3D ilog2(intel_dp_max_common_lane_count(intel_=
dp)) + 1;
> =20
>  	if (drm_WARN_ON(display->drm, intel_dp->num_common_rates * num_common_l=
ane_configs >
> -				    ARRAY_SIZE(intel_dp->link.configs)))
> +				    ARRAY_SIZE(link_caps->configs)))
>  		return;
> =20
> -	intel_dp->link.num_configs =3D intel_dp->num_common_rates * num_common_=
lane_configs;
> +	link_caps->num_configs =3D intel_dp->num_common_rates * num_common_lane=
_configs;
> =20
> -	lc =3D &intel_dp->link.configs[0];
> +	lc =3D &link_caps->configs[0];
>  	for (i =3D 0; i < intel_dp->num_common_rates; i++) {
>  		for (j =3D 0; j < num_common_lane_configs; j++) {
>  			lc->lane_count_exp =3D j;
> @@ -145,21 +161,22 @@ void intel_dp_link_config_init(struct intel_dp *int=
el_dp)
>  		}
>  	}
> =20
> -	sort_r(intel_dp->link.configs, intel_dp->link.num_configs,
> -	       sizeof(intel_dp->link.configs[0]),
> +	sort_r(link_caps->configs, link_caps->num_configs,
> +	       sizeof(link_caps->configs[0]),
>  	       link_config_cmp_by_bw, NULL,
>  	       intel_dp);
>  }
> =20
>  void intel_dp_link_config_get(struct intel_dp *intel_dp, int idx, int *l=
ink_rate, int *lane_count)
>  {
> +	struct intel_dp_link_caps *link_caps =3D intel_dp->link.caps;
>  	struct intel_display *display =3D to_intel_display(intel_dp);
>  	const struct intel_dp_link_config_entry *lc;
> =20
> -	if (drm_WARN_ON(display->drm, idx < 0 || idx >=3D intel_dp->link.num_co=
nfigs))
> +	if (drm_WARN_ON(display->drm, idx < 0 || idx >=3D link_caps->num_config=
s))
>  		idx =3D 0;
> =20
> -	lc =3D &intel_dp->link.configs[idx];
> +	lc =3D &link_caps->configs[idx];
> =20
>  	*link_rate =3D intel_dp_link_config_rate(intel_dp, lc);
>  	*lane_count =3D intel_dp_link_config_lane_count(lc);
> @@ -167,13 +184,14 @@ void intel_dp_link_config_get(struct intel_dp *inte=
l_dp, int idx, int *link_rate
> =20
>  int intel_dp_link_config_index(struct intel_dp *intel_dp, int link_rate,=
 int lane_count)
>  {
> +	struct intel_dp_link_caps *link_caps =3D intel_dp->link.caps;
>  	int link_rate_idx =3D intel_dp_rate_index(intel_dp->common_rates, intel=
_dp->num_common_rates,
>  						link_rate);
>  	int lane_count_exp =3D ilog2(lane_count);
>  	int i;
> =20
> -	for (i =3D 0; i < intel_dp->link.num_configs; i++) {
> -		const struct intel_dp_link_config_entry *lc =3D &intel_dp->link.config=
s[i];
> +	for (i =3D 0; i < link_caps->num_configs; i++) {
> +		const struct intel_dp_link_config_entry *lc =3D &link_caps->configs[i]=
;
> =20
>  		if (lc->lane_count_exp =3D=3D lane_count_exp &&
>  		    lc->link_rate_idx =3D=3D link_rate_idx)
