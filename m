Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 6o+kHqyGRmqEXwsAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Jul 2026 17:41:32 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 82EA26F98E5
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Jul 2026 17:41:31 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=SRDovvY2;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09EAE10F479;
	Thu,  2 Jul 2026 15:41:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 198C510F479;
 Thu,  2 Jul 2026 15:41:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783006888; x=1814542888;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=9Ea14lAEOGohg0ov7VbDShfDUsza34y/w/Usg3DtUm4=;
 b=SRDovvY2RwLwayQBdJb14yyhunV6vwVPxjR4Oqh8djEJ6yoQSqO72YFI
 Lo9w/EogvPFu8D9Yo93zDdk/q7a/cmye1aIA5mbKYJ3Q3a6rN8txKcyhN
 I+tTXvZ/CMsETXnIVlCKjwnmQ2bscjuoswcjmeYZ5/UlryoDoCEegsBOe
 PEXZjTncj4tQBG3pof2yGtzkAWDivkP4pBslSiZezrm+07RIwWtjdJbJs
 IUFNBjoSxREAz7kIQAoDkc5UHny0ozUVxrAjgCfJGiNCHIVZ1mA1K1Tyh
 BjdFQ+2qhS3+1GFty8OnVcPCf7MSbjcmA+UhT9bpOZS/KX68YrxsET/pH g==;
X-CSE-ConnectionGUID: FicJ1Sf4TaG91P/tZOSPRQ==
X-CSE-MsgGUID: A0IdAXKBSECgA5tn2X8eyQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11835"; a="83814489"
X-IronPort-AV: E=Sophos;i="6.25,144,1779174000"; d="scan'208";a="83814489"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2026 08:41:28 -0700
X-CSE-ConnectionGUID: 8Kp58UXZQoC0FzXQrBzptQ==
X-CSE-MsgGUID: EnNdNwH/ToKaEQv+xbSOAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,144,1779174000"; d="scan'208";a="282977504"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.245.43])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2026 08:41:25 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, ankit.k.nautiyal@intel.com,
 ville.syrjala@linux.intel.com, suraj.kandpal@intel.com
Subject: Re: [PATCH RESEND v2] drm/i915/display: Program TRANS_VTOTAL from
 mode vtotal
In-Reply-To: <20260617045850.862100-1-mitulkumar.ajitkumar.golani@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260617045850.862100-1-mitulkumar.ajitkumar.golani@intel.com>
Date: Thu, 02 Jul 2026 18:41:21 +0300
Message-ID: <0b7919083586f3ba26159f909f87666ea9b41045@intel.com>
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 82EA26F98E5

On Wed, 17 Jun 2026, Mitul Golani <mitulkumar.ajitkumar.golani@intel.com> w=
rote:
> There are monitors being sensitive to MSA and end up
> blanking out when we override Vtotal, DP transcoder
> uses TRANS_VTOTAL to derive MSA VTotal. Avoid overriding
> crtc_vtotal to 1 on platform which supports VRR Timing
> generator and always program VTOTAL from mode timing in
> transcoder timing paths.

Should this have had Fixes: tag? Does it require a backport?

BR,
Jani.

>
> --v2:
> - Remove write to crtc_state->hw.adjusted_mode.crtc_vtotal
> during intel_vrr_get_config. (Ankit)
> - Fix merge conflicts.
>
> Bspec: 70001
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 17 -----------------
>  drivers/gpu/drm/i915/display/intel_vrr.c     | 10 ----------
>  2 files changed, 27 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index e76aa6c8dab6..42eb4c5bc9b6 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2737,15 +2737,6 @@ void intel_set_transcoder_timings(const struct int=
el_crtc_state *crtc_state,
>  		       HSYNC_START(adjusted_mode->crtc_hsync_start - 1) |
>  		       HSYNC_END(adjusted_mode->crtc_hsync_end - 1));
>=20=20
> -	/*
> -	 * For platforms that always use VRR Timing Generator, the VTOTAL.Vtotal
> -	 * bits are not required. Since the support for these bits is going to
> -	 * be deprecated in upcoming platforms, avoid writing these bits for the
> -	 * platforms that do not use legacy Timing Generator.
> -	 */
> -	if (intel_vrr_always_use_vrr_tg(display))
> -		crtc_vtotal =3D 1;
> -
>  	intel_de_write(display, TRANS_VTOTAL(display, transcoder),
>  		       VACTIVE(crtc_vdisplay - 1) |
>  		       VTOTAL(crtc_vtotal - 1));
> @@ -2834,14 +2825,6 @@ void intel_set_transcoder_timings_lrr(const struct=
 intel_crtc_state *crtc_state,
>  	intel_de_write(display, TRANS_VSYNC(display, transcoder),
>  		       VSYNC_START(adjusted_mode->crtc_vsync_start - 1) |
>  		       VSYNC_END(adjusted_mode->crtc_vsync_end - 1));
> -	/*
> -	 * For platforms that always use VRR Timing Generator, the VTOTAL.Vtotal
> -	 * bits are not required. Since the support for these bits is going to
> -	 * be deprecated in upcoming platforms, avoid writing these bits for the
> -	 * platforms that do not use legacy Timing Generator.
> -	 */
> -	if (intel_vrr_always_use_vrr_tg(display))
> -		crtc_vtotal =3D 1;
>=20=20
>  	/*
>  	 * The double buffer latch point for TRANS_VTOTAL
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i=
915/display/intel_vrr.c
> index cd380fe8fd01..5d9b11185296 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -1102,16 +1102,6 @@ void intel_vrr_get_config(struct intel_crtc_state =
*crtc_state)
>  			crtc_state->vrr.vmin +=3D intel_vrr_vmin_flipline_offset(display);
>  		}
>=20=20
> -		/*
> -		 * For platforms that always use VRR Timing Generator, the VTOTAL.Vtot=
al
> -		 * bits are not filled. Since for these platforms TRAN_VMIN is always
> -		 * filled with crtc_vtotal, use TRAN_VRR_VMIN to get the vtotal for
> -		 * adjusted_mode.
> -		 */
> -		if (intel_vrr_always_use_vrr_tg(display))
> -			crtc_state->hw.adjusted_mode.crtc_vtotal =3D
> -				intel_vrr_vmin_vtotal(crtc_state);
> -
>  		if (HAS_AS_SDP(display)) {
>  			trans_vrr_vsync =3D
>  				intel_de_read(display,

--=20
Jani Nikula, Intel
