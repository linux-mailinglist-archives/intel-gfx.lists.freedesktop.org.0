Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MAAiCE2CrmlfFQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 09 Mar 2026 09:18:21 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EDB42356A1
	for <lists+intel-gfx@lfdr.de>; Mon, 09 Mar 2026 09:18:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E9C010E4A0;
	Mon,  9 Mar 2026 08:18:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2604B10E4A0;
 Mon,  9 Mar 2026 08:18:18 +0000 (UTC)
Received: from 37-33-19-16.bb.dnainternet.fi ([37.33.19.16]
 helo=[192.168.101.111])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.98.2) (envelope-from <luca@coelho.fi>)
 id 1vzVob-000000039hQ-2RNi; Mon, 09 Mar 2026 10:18:15 +0200
Message-ID: <12fad7f8efd6fccbc2f2d3bbbe955a0eab7f8f64.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org
Date: Mon, 09 Mar 2026 10:18:12 +0200
In-Reply-To: <a64ab4311a047d8e244192ea68f369b5d3c79e32.1772635152.git.jani.nikula@intel.com>
References: <cover.1772635152.git.jani.nikula@intel.com>
 <a64ab4311a047d8e244192ea68f369b5d3c79e32.1772635152.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-8 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.2 (2025-08-27) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP autolearn=ham autolearn_force=no version=4.0.2
Subject: Re: [PATCH 1/8] drm/i915/dmc: simplify stepping info initialization
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
X-Rspamd-Queue-Id: 9EDB42356A1
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.61 / 15.00];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[3];
	MID_RHS_MATCH_FROM(0.00)[];
	R_DKIM_NA(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luca@coelho.fi,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	NEURAL_SPAM(0.00)[0.484];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[coelho.fi];
	RCPT_COUNT_THREE(0.00)[3]
X-Rspamd-Action: no action

On Wed, 2026-03-04 at 16:40 +0200, Jani Nikula wrote:
> Having intel_get_stepping_info() return the pointer that was passed in
> isn't necessary. Just use a pointer to the local variable instead.
>=20
> The initialization to ** didn't make a difference, because it was always
> overridden.
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.


>  drivers/gpu/drm/i915/display/intel_dmc.c | 12 +++++-------
>  1 file changed, 5 insertions(+), 7 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i=
915/display/intel_dmc.c
> index c3b411259a0c..4e763f2f17c7 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -418,15 +418,12 @@ bool intel_dmc_has_payload(struct intel_display *di=
splay)
>  	return has_dmc_id_fw(display, DMC_FW_MAIN);
>  }
> =20
> -static const struct stepping_info *
> -intel_get_stepping_info(struct intel_display *display,
> -			struct stepping_info *si)
> +static void initialize_stepping_info(struct intel_display *display, stru=
ct stepping_info *si)
>  {
>  	const char *step_name =3D intel_step_name(INTEL_DISPLAY_STEP(display));
> =20
>  	si->stepping =3D step_name[0];
>  	si->substepping =3D step_name[1];
> -	return si;
>  }
> =20
>  static void gen9_set_dc_state_debugmask(struct intel_display *display)
> @@ -1274,8 +1271,7 @@ static int parse_dmc_fw(struct intel_dmc *dmc, cons=
t struct firmware *fw)
>  	struct intel_css_header *css_header;
>  	struct intel_package_header *package_header;
>  	struct intel_dmc_header_base *dmc_header;
> -	struct stepping_info display_info =3D { '*', '*'};
> -	const struct stepping_info *si =3D intel_get_stepping_info(display, &di=
splay_info);
> +	struct stepping_info si =3D {};
>  	enum intel_dmc_id dmc_id;
>  	u32 readcount =3D 0;
>  	u32 r, offset;
> @@ -1283,6 +1279,8 @@ static int parse_dmc_fw(struct intel_dmc *dmc, cons=
t struct firmware *fw)
>  	if (!fw)
>  		return -EINVAL;
> =20
> +	initialize_stepping_info(display, &si);
> +
>  	/* Extract CSS Header information */
>  	css_header =3D (struct intel_css_header *)fw->data;
>  	r =3D parse_dmc_fw_css(dmc, css_header, fw->size);
> @@ -1293,7 +1291,7 @@ static int parse_dmc_fw(struct intel_dmc *dmc, cons=
t struct firmware *fw)
> =20
>  	/* Extract Package Header information */
>  	package_header =3D (struct intel_package_header *)&fw->data[readcount];
> -	r =3D parse_dmc_fw_package(dmc, package_header, si, fw->size - readcoun=
t);
> +	r =3D parse_dmc_fw_package(dmc, package_header, &si, fw->size - readcou=
nt);
>  	if (!r)
>  		return -EINVAL;
> =20
