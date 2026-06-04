Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id jANbNHcZIWqg/AAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 04 Jun 2026 08:21:43 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BFF163D3A5
	for <lists+intel-gfx@lfdr.de>; Thu, 04 Jun 2026 08:21:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=MC+bUWhU;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 479591126AF;
	Thu,  4 Jun 2026 06:21:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFB1A1126BF;
 Thu,  4 Jun 2026 06:21:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780554100; x=1812090100;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=nq2WSK5xmKwm4MzcZ6nt55HrNcSdZYR6vDSVMN8NgtI=;
 b=MC+bUWhUYS0zsk8hEJhcnCkHKanUlplAezuW35CrhmT9jQwSCgfZ6cnI
 oMCSdHCgA2hfnF9cmRR5GH0pP5RIluPwb/wYNz7ljRAfZf+1OYC+pfeo+
 fkCAPLQpn2GmdP39btsJ8y+zE6sc+e7siGQuv6tDyUXb48/Wzp6Jfucp+
 zpXJ+8JHN5WYdc+fwrdX4cN5a+PXopeiV+puNo5Sq8+Z1rrBy+SMj/XNl
 RD2xH/3xJkmIG3aCZ3LT1jHXTMbZ+QiAAe9cxNUFau6rcoO0k4d8koBtP
 9SjlGzYKLCfB5vYdwjtPYIY5AQpMehxL+o5vSX71tHOjXfqXolHtqNqO4 Q==;
X-CSE-ConnectionGUID: I/AqkPERThOwvCns3+PQeQ==
X-CSE-MsgGUID: PfOzr4UFQjOCcEtPuwXzmA==
X-IronPort-AV: E=McAfee;i="6800,10657,11806"; a="85227550"
X-IronPort-AV: E=Sophos;i="6.24,186,1774335600"; d="scan'208";a="85227550"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2026 23:21:39 -0700
X-CSE-ConnectionGUID: syg+rOFuS4WBEebfqI3wUA==
X-CSE-MsgGUID: qXCUPZdnRfWn3mwIYtlaGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,186,1774335600"; d="scan'208";a="248797920"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.245.33])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2026 23:21:37 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: =?utf-8?Q?Micha=C5=82?= Grzelak <michal.grzelak@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Suraj Kandpal <suraj.kandpal@intel.com>, =?utf-8?Q?Micha=C5=82?= Grzelak
 <michal.grzelak@intel.com>
Subject: Re: [PATCH v6 3/8] drm/i915/bios: print VS/PE-O port info
In-Reply-To: <20260603230544.1993439-4-michal.grzelak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260603230544.1993439-1-michal.grzelak@intel.com>
 <20260603230544.1993439-4-michal.grzelak@intel.com>
Date: Thu, 04 Jun 2026 09:21:34 +0300
Message-ID: <53cd94251c2a9272b3de53c5e14d2f608899b9e7@intel.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
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
X-Rspamd-Queue-Id: 3BFF163D3A5

On Thu, 04 Jun 2026, Micha=C5=82 Grzelak <michal.grzelak@intel.com> wrote:
> Issue a debug message when port asks to override default Vswing /
> Preemphasis tables.
>
> Add helper intel_bios_encoder_requests_vspeo() to check if port
> requests for overriding default VS/PE tables.
>
> v3->v4
> - change debug message when requesting VS/PE-O (Suraj)
>
> Signed-off-by: Micha=C5=82 Grzelak <michal.grzelak@intel.com>
> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bios.c | 10 ++++++++++
>  drivers/gpu/drm/i915/display/intel_bios.h |  1 +
>  2 files changed, 11 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index d071f0e5d4380..204176088a7cd 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -2781,6 +2781,11 @@ static void print_ddi_port(const struct intel_bios=
_encoder_data *devdata)
>  			    "Port %c supports dynamic DDI allocation in TCSS\n",
>  			    port_name(port));
>=20=20
> +	if (intel_bios_encoder_requests_vspeo(devdata))
> +		drm_dbg_kms(display->drm,
> +			    "Port %c requests VS/PE-O\n",

I don't think it's helpful to use these acronyms in debug logging.

"vswing/pre-emphasis override"

> +			    port_name(port));
> +
>  	hdmi_level_shift =3D intel_bios_hdmi_level_shift(devdata);
>  	if (hdmi_level_shift >=3D 0) {
>  		drm_dbg_kms(display->drm,
> @@ -3809,6 +3814,11 @@ int intel_bios_hdmi_ddc_pin(const struct intel_bio=
s_encoder_data *devdata)
>  	return map_ddc_pin(devdata->display, devdata->child.ddc_pin);
>  }
>=20=20
> +bool intel_bios_encoder_requests_vspeo(const struct intel_bios_encoder_d=
ata *devdata)
> +{
> +	return devdata->display->vbt.version >=3D 218 && devdata->child.use_vbt=
_vswing;
> +}
> +
>  bool intel_bios_encoder_supports_typec_usb(const struct intel_bios_encod=
er_data *devdata)
>  {
>  	return devdata->display->vbt.version >=3D 195 && devdata->child.dp_usb_=
type_c;
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/=
i915/display/intel_bios.h
> index 75dff27b42289..7a50a272cd27d 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.h
> +++ b/drivers/gpu/drm/i915/display/intel_bios.h
> @@ -73,6 +73,7 @@ bool intel_bios_get_dsc_params(struct intel_encoder *en=
coder,
>  const struct intel_bios_encoder_data *
>  intel_bios_encoder_data_lookup(struct intel_display *display, enum port =
port);
>=20=20
> +bool intel_bios_encoder_requests_vspeo(const struct intel_bios_encoder_d=
ata *devdata);
>  bool intel_bios_encoder_supports_dvi(const struct intel_bios_encoder_dat=
a *devdata);
>  bool intel_bios_encoder_supports_hdmi(const struct intel_bios_encoder_da=
ta *devdata);
>  bool intel_bios_encoder_supports_dp(const struct intel_bios_encoder_data=
 *devdata);

--=20
Jani Nikula, Intel
