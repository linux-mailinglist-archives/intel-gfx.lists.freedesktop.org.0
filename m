Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id OlUGAUaIS2p0UwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 12:49:42 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EF6470F782
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 12:49:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F272D10E362;
	Mon,  6 Jul 2026 10:49:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D39DE10E281;
 Mon,  6 Jul 2026 10:49:38 +0000 (UTC)
Received: from 87-93-171-105.bb.dnainternet.fi ([87.93.171.105]
 helo=[192.168.101.113])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.98.2) (envelope-from <luca@coelho.fi>)
 id 1wggtM-00000001Tef-18RA; Mon, 06 Jul 2026 13:49:36 +0300
Message-ID: <c496755d198f317620e2cfaae20851aa3fc206a8.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org
Date: Mon, 06 Jul 2026 13:49:35 +0300
In-Reply-To: <20260701153204.4124150-20-imre.deak@intel.com>
References: <20260701153204.4124150-1-imre.deak@intel.com>
 <20260701153204.4124150-20-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-10 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.3-r1932428 (2026-03-21) on
 farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP autolearn=ham autolearn_force=no version=4.0.3-r1932428
Subject: Re: [PATCH v2 19/34] drm/i915/dp: Use link caps for eDP DSC config
 selection
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,coelho.fi:mid,coelho.fi:from_mime,lists.freedesktop.org:from_smtp,intel.com:email];
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
X-Rspamd-Queue-Id: 7EF6470F782

On Wed, 2026-07-01 at 18:31 +0300, Imre Deak wrote:
> Use the link caps helper to select the maximum eDP link configuration
> for DSC computation, instead of using the separate max rate and lane
> count limits, which may not form a valid configuration after individual
> configs are disabled by fallback.
>=20
> This is a step towards unifying configuration selection and iteration
> across connector types and between compute and fallback paths.
>=20
> The state computation should likely consider all allowed configurations,
> as noted in the code comment; for now keep the existing eDP DSC behavior
> of selecting the maximum configuration determined by the eDP connector
> rate / lane config iteration order.
>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 17 ++++++++++++++---
>  1 file changed, 14 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index c6920afb50902..79e3334d24332 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2248,7 +2248,7 @@ static int dsc_compute_compressed_bpp(struct intel_=
dp *intel_dp,
>  				      int pipe_bpp)
>  {
>  	struct intel_display *display =3D to_intel_display(intel_dp);
> -	const struct intel_connector *connector =3D to_intel_connector(conn_sta=
te->connector);
> +	struct intel_connector *connector =3D to_intel_connector(conn_state->co=
nnector);
>  	int min_bpp_x16, max_bpp_x16, bpp_step_x16;
>  	int bpp_x16;
>  	int ret;
> @@ -2260,8 +2260,19 @@ static int dsc_compute_compressed_bpp(struct intel=
_dp *intel_dp,
>  	max_bpp_x16 =3D align_max_compressed_bpp_x16(connector, pipe_config->ou=
tput_format,
>  						   pipe_bpp, max_bpp_x16);
>  	if (intel_dp_is_edp(intel_dp)) {
> -		pipe_config->port_clock =3D limits->max_rate;
> -		pipe_config->lane_count =3D limits->max_lane_count;
> +		struct intel_dp_link_config max_link_config;
> +
> +		/*
> +		 * FIXME: Clarify why eDP does not use the regular SST BW
> +		 * check and instead always uses the maximum link config,
> +		 * regardless of intel_dp::use_max_params. Then unify this eDP
> +		 * path with the regular DP path.
> +		 */

Are you planning to clarify this? Will it be part of your current
refactoring (maybe in later patches)?

> +		if (!intel_dp_get_connector_max_link_config(connector, limits, &max_li=
nk_config))
> +			return -EINVAL;
> +
> +		pipe_config->port_clock =3D max_link_config.rate;
> +		pipe_config->lane_count =3D max_link_config.lane_count;
> =20
>  		pipe_config->dsc.compressed_bpp_x16 =3D max_bpp_x16;
> =20

Regardless:

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.
