Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mK9BJjFPxWkU8wQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 16:22:25 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E72FC3377FD
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 16:22:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25B1210E1FE;
	Thu, 26 Mar 2026 15:22:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mwBz2tPX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3620010E9A9;
 Thu, 26 Mar 2026 15:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774538543; x=1806074543;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=t4znAYmkwE/QFMTQkZ24sPOd3zaEzYXPZASso3LFnVY=;
 b=mwBz2tPXV9oP98gW8idwLpQOmb1Su5dFS6QJzYfY8TutOtbHtqLM/T68
 i04XYP+Y5An7Ku8YTUgeNTe78t9CdNoXzsUJOy1jSbDxVAKadVXFA6Li6
 4rPJ0/ZdcibGHbgQuM7LSps3cBZeddJQNtT+PAEh/+uKxlvvLECs9Z4XZ
 IZ81ofxxrEbEOS5KdEXhZsApc8pzOoYszSU1MMN3y9apGDb3DcvJjwF9p
 nIzOt7ehswG7NDEY8Z7Xjt5/urywhgHtXRt6/WsM58ysXDrkdgqhfcnUF
 DAWfTBpFOubawEJqfdBS7MqooD3IVpZB0CPh8tlJoYNrP7JvFyC81DL/U A==;
X-CSE-ConnectionGUID: +jC96ZoJSeKe2zl4iEPsjQ==
X-CSE-MsgGUID: Y3RhYYqDTAqFnXil0m7gxw==
X-IronPort-AV: E=McAfee;i="6800,10657,11741"; a="75314284"
X-IronPort-AV: E=Sophos;i="6.23,142,1770624000"; d="scan'208";a="75314284"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 08:22:22 -0700
X-CSE-ConnectionGUID: bPSs0S7mRgObzWGN43THow==
X-CSE-MsgGUID: oayp6OkYQECC731EiWk1fw==
X-ExtLoop1: 1
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.199])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 08:22:19 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 2/5] drm/i915/dsi: s/eotp_pkt/eot_pkt/
In-Reply-To: <20260326111814.9800-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260326111814.9800-1-ville.syrjala@linux.intel.com>
 <20260326111814.9800-3-ville.syrjala@linux.intel.com>
Date: Thu, 26 Mar 2026 17:22:16 +0200
Message-ID: <dd598a54a852038b91659752d3357220d2a54d68@intel.com>
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: E72FC3377FD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, 26 Mar 2026, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> eotp =3D=3D "End of Transmission Packet". Drop the redundant
> extra 'p' from 'eotp_pkt', and make the thing a boolean
> while at it.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c       | 2 +-
>  drivers/gpu/drm/i915/display/intel_dsi.h     | 3 +--
>  drivers/gpu/drm/i915/display/intel_dsi_vbt.c | 4 ++--
>  drivers/gpu/drm/i915/display/vlv_dsi.c       | 2 +-
>  4 files changed, 5 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i91=
5/display/icl_dsi.c
> index a763f2b13ff2..6ea37929198c 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -711,7 +711,7 @@ gen11_dsi_configure_transcoder(struct intel_encoder *=
encoder,
>  		dsi_trans =3D dsi_port_to_transcoder(port);
>  		tmp =3D intel_de_read(display, DSI_TRANS_FUNC_CONF(dsi_trans));
>=20=20
> -		if (intel_dsi->eotp_pkt)
> +		if (intel_dsi->eot_pkt)
>  			tmp &=3D ~EOTP_DISABLED;
>  		else
>  			tmp |=3D EOTP_DISABLED;
> diff --git a/drivers/gpu/drm/i915/display/intel_dsi.h b/drivers/gpu/drm/i=
915/display/intel_dsi.h
> index 489d26ffd235..8e39d2b52c54 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsi.h
> +++ b/drivers/gpu/drm/i915/display/intel_dsi.h
> @@ -80,8 +80,7 @@ struct intel_dsi {
>  	/* NON_BURST_SYNC_PULSE, NON_BURST_SYNC_EVENTS, or BURST_MODE */
>  	int video_mode;
>=20=20
> -	/* eot for MIPI_EOT_DISABLE register */
> -	u8 eotp_pkt;
> +	bool eot_pkt;
>  	u8 clock_stop;
>=20=20
>  	u8 escape_clk_div;
> diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c b/drivers/gpu/d=
rm/i915/display/intel_dsi_vbt.c
> index 18755a8e613d..51f6a5b82cb2 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
> @@ -718,7 +718,7 @@ void intel_dsi_log_params(struct intel_dsi *intel_dsi)
>  		   "burst" : "<unknown>");
>  	drm_printf(&p, "Burst mode ratio %d\n", intel_dsi->burst_mode_ratio);
>  	drm_printf(&p, "Reset timer %d\n", intel_dsi->rst_timer_val);
> -	drm_printf(&p, "Eot %s\n", str_enabled_disabled(intel_dsi->eotp_pkt));
> +	drm_printf(&p, "EoT packet %s\n", str_enabled_disabled(intel_dsi->eot_p=
kt));
>  	drm_printf(&p, "Clockstop %s\n", str_enabled_disabled(!intel_dsi->clock=
_stop));
>  	drm_printf(&p, "Mode %s\n", intel_dsi->operation_mode ? "command" : "vi=
deo");
>  	if (intel_dsi->dual_link =3D=3D DSI_DUAL_LINK_FRONT_BACK)
> @@ -770,7 +770,7 @@ bool intel_dsi_vbt_init(struct intel_dsi *intel_dsi, =
u16 panel_id)
>=20=20
>  	drm_dbg_kms(display->drm, "\n");
>=20=20
> -	intel_dsi->eotp_pkt =3D mipi_config->eot_pkt_disabled ? 0 : 1;
> +	intel_dsi->eot_pkt =3D !mipi_config->eot_pkt_disabled;
>  	intel_dsi->clock_stop =3D mipi_config->enable_clk_stop ? 1 : 0;
>  	intel_dsi->lane_count =3D mipi_config->lane_cnt + 1;
>  	intel_dsi->pixel_format =3D
> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i91=
5/display/vlv_dsi.c
> index 36591d724638..d4db73c184e5 100644
> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
> @@ -1367,7 +1367,7 @@ static void intel_dsi_prepare(struct intel_encoder =
*encoder,
>  	}
>=20=20
>  	tmp =3D 0;
> -	if (intel_dsi->eotp_pkt =3D=3D 0)
> +	if (!intel_dsi->eot_pkt)
>  		tmp |=3D EOT_DISABLE;
>  	if (intel_dsi->clock_stop)
>  		tmp |=3D CLOCKSTOP;

--=20
Jani Nikula, Intel
