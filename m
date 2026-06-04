Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Y/MGAJMYIWqK/AAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 04 Jun 2026 08:17:55 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B1D563D35E
	for <lists+intel-gfx@lfdr.de>; Thu, 04 Jun 2026 08:17:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=XDt8o5bd;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5521B1126A4;
	Thu,  4 Jun 2026 06:17:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A30B1126A2;
 Thu,  4 Jun 2026 06:17:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780553871; x=1812089871;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=VewMYKYNxJ/lLTYp0EjWtZx8EnEQWJi+/7gmjpPrlzM=;
 b=XDt8o5bd89YfPzGBTVnmNEXuABUZTWwtoE48ltK6/XBxbuplqq9ThmR1
 ECHldZs3JlW0UVzASTA/EcX76/Tn15dTxMG0rIqRR/P7zg6oJORkvWoz/
 M0kz3szcqJ/TgsfM6mULRO2GbSvAtmdpRq4vYa4c4EvmMDElE0QgtLb4I
 IWPE1qQbD30rtQ+cB8XVrE4B3SOw3quPoUWZZLl+etX1r2e4mgOquOWUs
 RNowXUpU/cEF6t3dO+17Jl8vX2YBaNKD+1q/xvDhM5QLqUwIG5lg7nsBh
 dF0VsGdK6nzDE38+5cKnFF64cd8GPkdiowpjXgTUzZTCTg+P9n6Op9rnB A==;
X-CSE-ConnectionGUID: I2zbdcPmSWqZNJtd10o0cQ==
X-CSE-MsgGUID: QfwZD/kER5qmXdKrkynJXg==
X-IronPort-AV: E=McAfee;i="6800,10657,11806"; a="80515144"
X-IronPort-AV: E=Sophos;i="6.24,186,1774335600"; d="scan'208";a="80515144"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2026 23:17:50 -0700
X-CSE-ConnectionGUID: 8ui+0tk5Tw6qe2suNQFDVA==
X-CSE-MsgGUID: hOOir+qxRUOUJArg9s7Fsg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,186,1774335600"; d="scan'208";a="282555123"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.245.33])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2026 23:17:48 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: =?utf-8?Q?Micha=C5=82?= Grzelak <michal.grzelak@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Suraj Kandpal <suraj.kandpal@intel.com>, =?utf-8?Q?Micha=C5=82?= Grzelak
 <michal.grzelak@intel.com>
Subject: Re: [PATCH v6 1/8] drm/i915/bios: search for VBT #57 by default
In-Reply-To: <20260603230544.1993439-2-michal.grzelak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260603230544.1993439-1-michal.grzelak@intel.com>
 <20260603230544.1993439-2-michal.grzelak@intel.com>
Date: Thu, 04 Jun 2026 09:17:44 +0300
Message-ID: <364052e487b8627fefa31f49a9f1d594f4aa9987@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,intel.com:mid,intel.com:dkim,intel.com:from_mime,intel.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3B1D563D35E

On Thu, 04 Jun 2026, Micha=C5=82 Grzelak <michal.grzelak@intel.com> wrote:
> Start searching for Vswing / Preemphasis Override Block during VBT
> parsing at init_bdb_blocks().
>
> Check for failure since pre-ICL GOPs do not contain the block. Check
> also if VBT version is appropriately up-to-date.
>
> Issue a debug message when port requests to override VS/PE and parsing
> VBT #57 for the platform has not yet been implemented.
>
> v3->v4
> - add Bspec (Suraj)
>
> Bspec: 32063
> Signed-off-by: Micha=C5=82 Grzelak <michal.grzelak@intel.com>
> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bios.c | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index b6fe87c29aa7c..420b09b4d01ef 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -200,6 +200,8 @@ static const struct {
>  	  .min_size =3D sizeof(struct bdb_mipi_sequence) },
>  	{ .section_id =3D BDB_COMPRESSION_PARAMETERS,
>  	  .min_size =3D sizeof(struct bdb_compression_parameters), },
> +	{ .section_id =3D BDB_VSWING_PREEMPH,
> +	  .min_size =3D sizeof(struct bdb_vswing_preemph), },
>  	{ .section_id =3D BDB_GENERIC_DTD,
>  	  .min_size =3D sizeof(struct bdb_generic_dtd), },
>  };
> @@ -2183,6 +2185,23 @@ parse_compression_parameters(struct intel_display =
*display)
>  	}
>  }
>=20=20
> +static void
> +parse_vswing_preemph_override(struct intel_display *display)
> +{
> +	const struct bdb_vswing_preemph *block;
> +
> +	if (display->vbt.version < 218)
> +		return;
> +
> +	block =3D bdb_find_section(display, BDB_VSWING_PREEMPH);
> +
> +	/* pre-ICL GOPs don't have VBT #57 */
> +	if (!block)
> +		return;
> +
> +	drm_dbg_kms(display->drm, "valid VS/PE-O request but not yet supported\=
n");
> +}
> +
>  static u8 translate_iboost(struct intel_display *display, u8 val)
>  {
>  	static const u8 mapping[] =3D { 1, 3, 7 }; /* See VBT spec */
> @@ -3274,6 +3293,7 @@ void intel_bios_init(struct intel_display *display)
>=20=20
>  	/* Depends on child device list */
>  	parse_compression_parameters(display);
> +	parse_vswing_preemph_override(display);

This does not depend on the child device list
(display->vbt.display_devices) which is filled by
parse_general_definitions(). The call should be placed at the end of the
group above this.

BR,
Jani.

>=20=20
>  out:
>  	if (!vbt) {

--=20
Jani Nikula, Intel
