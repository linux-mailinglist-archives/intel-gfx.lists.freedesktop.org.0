Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ucwGAzNGRmpBNgsAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Jul 2026 13:06:27 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 809E16F669E
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Jul 2026 13:06:26 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E809E10F2CB;
	Thu,  2 Jul 2026 11:06:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C61C10F2CB;
 Thu,  2 Jul 2026 11:06:23 +0000 (UTC)
Received: from [62.183.198.118] (helo=[10.147.29.230])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.98.2) (envelope-from <luca@coelho.fi>)
 id 1wfFFJ-00000001MFc-299v; Thu, 02 Jul 2026 14:06:21 +0300
Message-ID: <f1fea9a8679405d066dae779085448f7f3978442.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org
Date: Thu, 02 Jul 2026 14:06:16 +0300
In-Reply-To: <20260701153204.4124150-14-imre.deak@intel.com>
References: <20260701153204.4124150-1-imre.deak@intel.com>
 <20260701153204.4124150-14-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-9 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.3-r1932428 (2026-03-21) on
 farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=ham autolearn_force=no version=4.0.3-r1932428
Subject: Re: [PATCH v2 13/34] drm/i915/dp_link_caps: Add helper to query max
 BW link configuration
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,coelho.fi:mid,coelho.fi:from_mime,intel.com:email];
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
X-Rspamd-Queue-Id: 809E16F669E

On Wed, 2026-07-01 at 18:31 +0300, Imre Deak wrote:
> Add a helper to query the link configuration among the currently allowed
> configurations with the maximum link BW.
>=20
> This will be used by follow-up changes to unify the max BW link config
> query during mode validation and TBT BW calculation.
>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_dp_link_caps.c   | 17 +++++++++++++++++
>  .../gpu/drm/i915/display/intel_dp_link_caps.h   |  3 +++
>  2 files changed, 20 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/=
gpu/drm/i915/display/intel_dp_link_caps.c
> index d00bb8047de2f..c209c8a935234 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> @@ -550,6 +550,23 @@ bool intel_dp_link_caps_get_max_config(struct intel_=
dp_link_caps *link_caps,
>  	return true;
>  }
> =20
> +/**
> + * intel_dp_link_caps_get_max_bw_config - get maximum BW link configurat=
ion
> + * @link_caps: link capabilities state
> + * @max_config: returned maximum link configuration
> + *
> + * Return the maximum BW link configuration among the currently
> + * allowed configurations.
> + */
> +void intel_dp_link_caps_get_max_bw_config(struct intel_dp_link_caps *lin=
k_caps,
> +					  struct intel_dp_link_config *max_config)
> +{
> +	if (!intel_dp_link_caps_get_max_config(link_caps,
> +					       bw_desc_config_order().key, INTEL_DP_LINK_CAPS_FILTER_ALL,
> +					       max_config))
> +		*max_config =3D INTEL_DP_LINK_CONFIG_NULL;
> +}
> +
>  static int find_config_idx(struct intel_dp_link_caps *link_caps,
>  			   struct intel_dp_link_caps_filter filter,
>  			   const struct intel_dp_link_config *link_config)
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h b/drivers/=
gpu/drm/i915/display/intel_dp_link_caps.h
> index 6dd2ce64e24ed..667bd70b2396d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
> @@ -146,6 +146,9 @@ bool intel_dp_link_caps_get_max_config(struct intel_d=
p_link_caps *link_caps,
>  				       struct intel_dp_link_caps_filter filter,
>  				       struct intel_dp_link_config *max_config);
> =20
> +void intel_dp_link_caps_get_max_bw_config(struct intel_dp_link_caps *lin=
k_caps,
> +					  struct intel_dp_link_config *max_config);
> +
>  void intel_dp_link_caps_get_max_limits(struct intel_dp_link_caps *link_c=
aps,
>  				       struct intel_dp_link_config *max_link_limits);
>  bool intel_dp_link_caps_set_max_limits(struct intel_dp_link_caps *link_c=
aps,

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.
