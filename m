Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mAIVBXxPxWkU8wQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 16:23:40 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94849337837
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 16:23:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2871210EA18;
	Thu, 26 Mar 2026 15:23:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WkksvHDy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA4D610E9F0;
 Thu, 26 Mar 2026 15:23:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774538617; x=1806074617;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=ehrXsgAOtUVNMpUi3y0gSCEbWLP5tXxSvHjn1k6j20c=;
 b=WkksvHDyPoULDMp1X4f1n2NoVpQgkHPPQ4jsb5i6QwZ5sZivF18HbixZ
 d4iS0Bk8SyCSZfJggMa7L/YySGlJa1ThR1Z8hGOXRvqie9spiW9FlnRTe
 xYqqg3BbO9pPfUyOYge7hbVG4voR/m+tEBBzFz4sOgLonqssdT7N0NYac
 GvlpGRqW07CoSfqpmLtgywO2CzRbl52i5KIAILFfexz3XPU2tGL0n1MAh
 BTn/lhHGZ4sKF0SJA8jL2LN3uyKK/pDgCh3BR3xrXvDfada1CHAV23isS
 QJbM0BQ3b9mxz9oVPjjKp28EFLRp4mPdnldjk2DFcVRaLJLkBuHAQydHG Q==;
X-CSE-ConnectionGUID: bdPoNyOpS1KSvlpge8IeGQ==
X-CSE-MsgGUID: Ak7m1t1gTSqPf3l2yt/SAw==
X-IronPort-AV: E=McAfee;i="6800,10657,11741"; a="86290675"
X-IronPort-AV: E=Sophos;i="6.23,142,1770624000"; d="scan'208";a="86290675"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 08:23:37 -0700
X-CSE-ConnectionGUID: 7Sc7cA2xSzK9+Es3HQFfRg==
X-CSE-MsgGUID: MbeWenLkTSqUSxFnv/YMVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,142,1770624000"; d="scan'208";a="248079877"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.199])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 08:23:35 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 4/5] drm/i915/dsi: Fill BLLPs with blanking packets if
 requested
In-Reply-To: <20260326111814.9800-5-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260326111814.9800-1-ville.syrjala@linux.intel.com>
 <20260326111814.9800-5-ville.syrjala@linux.intel.com>
Date: Thu, 26 Mar 2026 17:23:31 +0200
Message-ID: <59d722395055d35f3408aa785266742c97ae9e91@intel.com>
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
X-Rspamd-Queue-Id: 94849337837
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, 26 Mar 2026, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> TGL/ADL DSI can be configured to fill all BLLPs with blanking
> packets. Currently we enable that always, but the VBT actually
> tells us whether this is desired or not. Hook that up.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c       | 9 +++++----
>  drivers/gpu/drm/i915/display/icl_dsi_regs.h  | 2 +-
>  drivers/gpu/drm/i915/display/intel_dsi.h     | 1 +
>  drivers/gpu/drm/i915/display/intel_dsi_vbt.c | 2 ++
>  4 files changed, 9 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i91=
5/display/icl_dsi.c
> index 6ea37929198c..45ba02486c56 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -765,10 +765,11 @@ gen11_dsi_configure_transcoder(struct intel_encoder=
 *encoder,
>  			}
>  		}
>=20=20
> -		if (DISPLAY_VER(display) >=3D 12) {
> -			if (is_vid_mode(intel_dsi))
> -				tmp |=3D BLANKING_PACKET_ENABLE;
> -		}
> +		if (DISPLAY_VER(display) >=3D 12 &&
> +		    is_vid_mode(intel_dsi) && intel_dsi->blanking_pkt)
> +			tmp |=3D BLANKING_PACKET_ENABLE;
> +		else
> +			tmp &=3D ~BLANKING_PACKET_ENABLE;
>=20=20
>  		/* program DSI operation mode */
>  		if (is_vid_mode(intel_dsi)) {
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi_regs.h b/drivers/gpu/dr=
m/i915/display/icl_dsi_regs.h
> index b601b7632339..641e8f0b8cdb 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi_regs.h
> +++ b/drivers/gpu/drm/i915/display/icl_dsi_regs.h
> @@ -232,7 +232,7 @@
>  #define  CALIBRATION_DISABLED		(0x0 << 4)
>  #define  CALIBRATION_ENABLED_INITIAL_ONLY	(0x2 << 4)
>  #define  CALIBRATION_ENABLED_INITIAL_PERIODIC	(0x3 << 4)
> -#define  BLANKING_PACKET_ENABLE		(1 << 2)
> +#define  BLANKING_PACKET_ENABLE		(1 << 2) /* tgl+ */
>  #define  S3D_ORIENTATION_LANDSCAPE	(1 << 1)
>  #define  EOTP_DISABLED			(1 << 0)
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dsi.h b/drivers/gpu/drm/i=
915/display/intel_dsi.h
> index 0023ac341aa0..f55d48e43af1 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsi.h
> +++ b/drivers/gpu/drm/i915/display/intel_dsi.h
> @@ -80,6 +80,7 @@ struct intel_dsi {
>  	/* NON_BURST_SYNC_PULSE, NON_BURST_SYNC_EVENTS, or BURST_MODE */
>  	int video_mode;
>=20=20
> +	bool blanking_pkt;
>  	bool eot_pkt;
>  	bool clock_stop;
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c b/drivers/gpu/d=
rm/i915/display/intel_dsi_vbt.c
> index 23da7f5f9578..c544871dac0b 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
> @@ -718,6 +718,7 @@ void intel_dsi_log_params(struct intel_dsi *intel_dsi)
>  		   "burst" : "<unknown>");
>  	drm_printf(&p, "Burst mode ratio %d\n", intel_dsi->burst_mode_ratio);
>  	drm_printf(&p, "Reset timer %d\n", intel_dsi->rst_timer_val);
> +	drm_printf(&p, "Blanking packets during BLLP %s\n", str_enabled_disable=
d(intel_dsi->blanking_pkt));
>  	drm_printf(&p, "EoT packet %s\n", str_enabled_disabled(intel_dsi->eot_p=
kt));
>  	drm_printf(&p, "Clock stop during BLLP %s\n", str_enabled_disabled(inte=
l_dsi->clock_stop));
>  	drm_printf(&p, "Mode %s\n", intel_dsi->operation_mode ? "command" : "vi=
deo");
> @@ -770,6 +771,7 @@ bool intel_dsi_vbt_init(struct intel_dsi *intel_dsi, =
u16 panel_id)
>=20=20
>  	drm_dbg_kms(display->drm, "\n");
>=20=20
> +	intel_dsi->blanking_pkt =3D mipi_config->blanking_packets_during_bllp;
>  	intel_dsi->eot_pkt =3D !mipi_config->eot_pkt_disabled;
>  	intel_dsi->clock_stop =3D mipi_config->enable_clk_stop;
>  	intel_dsi->lane_count =3D mipi_config->lane_cnt + 1;

--=20
Jani Nikula, Intel
