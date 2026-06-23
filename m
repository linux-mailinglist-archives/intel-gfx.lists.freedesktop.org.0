Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id DfIFHXNgOmr87QcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2026 12:31:15 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E41B56B64AF
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2026 12:31:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7935210EA83;
	Tue, 23 Jun 2026 10:31:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A788610EA7C;
 Tue, 23 Jun 2026 10:31:11 +0000 (UTC)
Received: from 87-93-171-105.bb.dnainternet.fi ([87.93.171.105]
 helo=[192.168.101.113])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.98.2) (envelope-from <luca@coelho.fi>)
 id 1wbyPL-0000000148P-2jXZ; Tue, 23 Jun 2026 13:31:09 +0300
Message-ID: <d071dd25621b1fe89d59059bdf87dfcb99146fd1.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org
Date: Tue, 23 Jun 2026 13:31:06 +0300
In-Reply-To: <20260616200849.3534628-9-imre.deak@intel.com>
References: <20260616200849.3534628-1-imre.deak@intel.com>
 <20260616200849.3534628-9-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-9 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.3-r1932428 (2026-03-21) on
 farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP autolearn=ham autolearn_force=no version=4.0.3-r1932428
Subject: Re: [PATCH v2 08/28] drm/i915/dp_link_training: Use helpers to get
 forced link params
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[coelho.fi:mid,coelho.fi:from_mime,lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email];
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
X-Rspamd-Queue-Id: E41B56B64AF

On Tue, 2026-06-16 at 23:08 +0300, Imre Deak wrote:
> Use intel_dp_link_caps_get_forced_params() in the link training fallback
> code instead of directly accessing the state. This allows the link caps
> module to track changes to forced parameters internally.
>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.



>  .../drm/i915/display/intel_dp_link_training.c | 22 ++++++++++++++-----
>  1 file changed, 16 insertions(+), 6 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/driv=
ers/gpu/drm/i915/display/intel_dp_link_training.c
> index cbef3d45baf9c..61ada34ab9c8e 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -1850,18 +1850,22 @@ static bool reduce_link_params_in_bw_order(struct=
 intel_dp *intel_dp,
>  					   const struct intel_crtc_state *crtc_state,
>  					   int *new_link_rate, int *new_lane_count)
>  {
> +	struct intel_dp_link_caps *link_caps =3D intel_dp->link.caps;
> +	struct intel_dp_link_config forced_params;
>  	int link_rate;
>  	int lane_count;
>  	int i;
> =20
> +	intel_dp_link_caps_get_forced_params(link_caps, &forced_params);
> +
>  	i =3D intel_dp_link_config_index(intel_dp, crtc_state->port_clock, crtc=
_state->lane_count);
>  	for (i--; i >=3D 0; i--) {
>  		intel_dp_link_config_get(intel_dp, i, &link_rate, &lane_count);
> =20
> -		if ((intel_dp->link.force_rate &&
> -		     intel_dp->link.force_rate !=3D link_rate) ||
> -		    (intel_dp->link.force_lane_count &&
> -		     intel_dp->link.force_lane_count !=3D lane_count))
> +		if ((forced_params.rate &&
> +		     forced_params.rate !=3D link_rate) ||
> +		    (forced_params.lane_count &&
> +		     forced_params.lane_count !=3D lane_count))
>  			continue;
> =20
>  		break;
> @@ -1878,10 +1882,13 @@ static bool reduce_link_params_in_bw_order(struct=
 intel_dp *intel_dp,
> =20
>  static int reduce_link_rate(struct intel_dp *intel_dp, int current_rate)
>  {
> +	struct intel_dp_link_caps *link_caps =3D intel_dp->link.caps;
> +	struct intel_dp_link_config forced_params;
>  	int rate_index;
>  	int new_rate;
> =20
> -	if (intel_dp->link.force_rate)
> +	intel_dp_link_caps_get_forced_params(link_caps, &forced_params);
> +	if (forced_params.rate)
>  		return -1;
> =20
>  	rate_index =3D intel_dp_rate_index(intel_dp->common_rates,
> @@ -1902,7 +1909,10 @@ static int reduce_link_rate(struct intel_dp *intel=
_dp, int current_rate)
> =20
>  static int reduce_lane_count(struct intel_dp *intel_dp, int current_lane=
_count)
>  {
> -	if (intel_dp->link.force_lane_count)
> +	struct intel_dp_link_config forced_params;
> +
> +	intel_dp_link_caps_get_forced_params(intel_dp->link.caps, &forced_param=
s);
> +	if (forced_params.lane_count)
>  		return -1;
> =20
>  	if (current_lane_count =3D=3D 1)
