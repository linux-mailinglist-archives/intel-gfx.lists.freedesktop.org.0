Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YNewOqVPxWkU8wQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 16:24:21 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 02ADB337855
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 16:24:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50CA210EA62;
	Thu, 26 Mar 2026 15:24:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cj7JTmhv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EBC710EA50;
 Thu, 26 Mar 2026 15:24:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774538658; x=1806074658;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=tQ/jIv/dff7gsrg1Lx6H55w7sSiNdJhpHGn9/ed9GVA=;
 b=cj7JTmhvPjo569CoV6URojENQ5MdKMhvKZluIK0P9QDF9JYemuK+B5p4
 87PW1ltuswNWfNkjNYrCZB2RAfsDmRqq9YQY+w89CfahGFZV+upsoCqcR
 FGYz/IWwDQpKxxP3ySYZ+FWVOhhJc6G8EI0KRpyMErWVzUX1EG0fFh2NK
 wmlXp3KR9tazABR6vbIBioFVFEe4VY+DusUgtH3MgP/Ri1Td+GjleauuJ
 BzBbYMjZXzbBNl3bnozXyzfSYzc4iKanDUxbEQgOKbZ/Wb/IVv9yCKDjh
 /Ojpfjn8qKOgeNm9BPqEj2z9Ka8da19EUDhM4Dc1rQ03Zhg8fIntJvzLN A==;
X-CSE-ConnectionGUID: gxGbQ/rgS1GLM/ddc39Osw==
X-CSE-MsgGUID: vRqTt9++Slym06HI1Pe4AA==
X-IronPort-AV: E=McAfee;i="6800,10657,11741"; a="98220069"
X-IronPort-AV: E=Sophos;i="6.23,142,1770624000"; d="scan'208";a="98220069"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 08:24:18 -0700
X-CSE-ConnectionGUID: 7PcqxGQXT6WOJ/N3Mc/Trg==
X-CSE-MsgGUID: 8SFFGscDSPO6+OHXkaNEdw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,142,1770624000"; d="scan'208";a="224958777"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.199])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 08:24:17 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 5/5] drm/i915/dsi: Place clock into LP during LPM if
 requested
In-Reply-To: <20260326111814.9800-6-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260326111814.9800-1-ville.syrjala@linux.intel.com>
 <20260326111814.9800-6-ville.syrjala@linux.intel.com>
Date: Thu, 26 Mar 2026 17:24:12 +0200
Message-ID: <c44b5729e197c9d8ad1b9da1b87b0601a73eede7@intel.com>
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
X-Rspamd-Queue-Id: 02ADB337855
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, 26 Mar 2026, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> TGL/ADL DSI can be configured to place the clock lane into
> LP state during LPM, if otherwise configured for continuous
> HS clock.
>
> Hook that up. VBT tells us whether this should be done.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c       | 6 ++++++
>  drivers/gpu/drm/i915/display/icl_dsi_regs.h  | 1 +
>  drivers/gpu/drm/i915/display/intel_dsi.h     | 1 +
>  drivers/gpu/drm/i915/display/intel_dsi_vbt.c | 2 ++
>  4 files changed, 10 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i91=
5/display/icl_dsi.c
> index 45ba02486c56..afbaa0465842 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -729,6 +729,12 @@ gen11_dsi_configure_transcoder(struct intel_encoder =
*encoder,
>  		else
>  			tmp |=3D CLK_HS_CONTINUOUS;
>=20=20
> +		if (DISPLAY_VER(display) >=3D 12 &&
> +		    intel_dsi->lp_clock_during_lpm)
> +			tmp |=3D LP_CLK_DURING_LPM;
> +		else
> +			tmp &=3D ~LP_CLK_DURING_LPM;
> +
>  		/* configure buffer threshold limit to minimum */
>  		tmp &=3D ~PIX_BUF_THRESHOLD_MASK;
>  		tmp |=3D PIX_BUF_THRESHOLD_1_4;
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi_regs.h b/drivers/gpu/dr=
m/i915/display/icl_dsi_regs.h
> index 641e8f0b8cdb..55ab57adcb0f 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi_regs.h
> +++ b/drivers/gpu/drm/i915/display/icl_dsi_regs.h
> @@ -227,6 +227,7 @@
>  #define  CLK_ENTER_LP_AFTER_DATA	(0x0 << 8)
>  #define  CLK_HS_OR_LP			(0x2 << 8)
>  #define  CLK_HS_CONTINUOUS		(0x3 << 8)
> +#define  LP_CLK_DURING_LPM		(1 << 7) /* tgl+ */
>  #define  LINK_CALIBRATION_MASK		(0x3 << 4)
>  #define  LINK_CALIBRATION_SHIFT		4
>  #define  CALIBRATION_DISABLED		(0x0 << 4)
> diff --git a/drivers/gpu/drm/i915/display/intel_dsi.h b/drivers/gpu/drm/i=
915/display/intel_dsi.h
> index f55d48e43af1..9fcdabbf3740 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsi.h
> +++ b/drivers/gpu/drm/i915/display/intel_dsi.h
> @@ -80,6 +80,7 @@ struct intel_dsi {
>  	/* NON_BURST_SYNC_PULSE, NON_BURST_SYNC_EVENTS, or BURST_MODE */
>  	int video_mode;
>=20=20
> +	bool lp_clock_during_lpm;
>  	bool blanking_pkt;
>  	bool eot_pkt;
>  	bool clock_stop;
> diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c b/drivers/gpu/d=
rm/i915/display/intel_dsi_vbt.c
> index c544871dac0b..fe12041e913c 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
> @@ -718,6 +718,7 @@ void intel_dsi_log_params(struct intel_dsi *intel_dsi)
>  		   "burst" : "<unknown>");
>  	drm_printf(&p, "Burst mode ratio %d\n", intel_dsi->burst_mode_ratio);
>  	drm_printf(&p, "Reset timer %d\n", intel_dsi->rst_timer_val);
> +	drm_printf(&p, "LP clock during LPM %s\n", str_enabled_disabled(intel_d=
si->lp_clock_during_lpm));
>  	drm_printf(&p, "Blanking packets during BLLP %s\n", str_enabled_disable=
d(intel_dsi->blanking_pkt));
>  	drm_printf(&p, "EoT packet %s\n", str_enabled_disabled(intel_dsi->eot_p=
kt));
>  	drm_printf(&p, "Clock stop during BLLP %s\n", str_enabled_disabled(inte=
l_dsi->clock_stop));
> @@ -771,6 +772,7 @@ bool intel_dsi_vbt_init(struct intel_dsi *intel_dsi, =
u16 panel_id)
>=20=20
>  	drm_dbg_kms(display->drm, "\n");
>=20=20
> +	intel_dsi->lp_clock_during_lpm =3D mipi_config->lp_clock_during_lpm;
>  	intel_dsi->blanking_pkt =3D mipi_config->blanking_packets_during_bllp;
>  	intel_dsi->eot_pkt =3D !mipi_config->eot_pkt_disabled;
>  	intel_dsi->clock_stop =3D mipi_config->enable_clk_stop;

--=20
Jani Nikula, Intel
