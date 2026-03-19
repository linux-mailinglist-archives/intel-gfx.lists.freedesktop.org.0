Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sNkbMrPru2liqQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2026 13:27:31 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C90D62CB281
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2026 13:27:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39BC110E9E4;
	Thu, 19 Mar 2026 12:27:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GxgzZHJu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C981C10E9E4;
 Thu, 19 Mar 2026 12:27:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773923248; x=1805459248;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=u+Ncvv/vlqOJGRDH2hQq199yni/hNou2xDGsmVNoIFM=;
 b=GxgzZHJu4i02mOhkU/nyj7LAnkQB2tmvEcphnAsyhEvXhb9aETvt3Lv+
 Lr+OdoKMBXVQb9rSmunG31+kMw2oz7tIA8vuzdxHZ31/4oaM/RX/5B+sz
 RL/xVZ2bw9lStQ55eMib7O8bQDIiBCuFc4Unvk3gGzhLh51bUXgJ7fI/2
 cl9H9r/8/c72W7co0+JEoY2XffhDqXBgEOTVmMJIhudg3GuVXESMmeuTR
 qal5XCpeCYTEpP/1aJwOrm5h8UUbKbAWxRqOKD8uR/I6MLQaqKhTPdak1
 znIhtTTI0ziR5L5NlktrRiQt5aDoLiCN/fGiquAsas6KKM1fT/FOBGLPH Q==;
X-CSE-ConnectionGUID: SRAKlqSwScyFDrSSr1c7bw==
X-CSE-MsgGUID: 7TA8FV4SR5OF7HcmxV7sYg==
X-IronPort-AV: E=McAfee;i="6800,10657,11733"; a="86352549"
X-IronPort-AV: E=Sophos;i="6.23,129,1770624000"; d="scan'208";a="86352549"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2026 05:27:27 -0700
X-CSE-ConnectionGUID: bBVDCeUWSpezPnaRqnjn4Q==
X-CSE-MsgGUID: ywPPClKfQ2OLmY625i0C8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,129,1770624000"; d="scan'208";a="222978794"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.129])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2026 05:27:25 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 1/9] drm/i915/wm: Nuke is_planar from skl+ wm structures
In-Reply-To: <20260319114034.7093-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260319114034.7093-1-ville.syrjala@linux.intel.com>
 <20260319114034.7093-2-ville.syrjala@linux.intel.com>
Date: Thu, 19 Mar 2026 14:27:20 +0200
Message-ID: <b7104ac740c65969295fb3a4830d26de608a2008@intel.com>
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
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ARC_NA(0.00)[]
X-Rspamd-Queue-Id: C90D62CB281
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, 19 Mar 2026, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> We don't need is_planar in either the actual watermarks or the
> wm_params structure used during the wm computation. Get rid
> of both.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> ---
>  drivers/gpu/drm/i915/display/intel_display_types.h | 1 -
>  drivers/gpu/drm/i915/display/skl_watermark.c       | 6 +-----
>  2 files changed, 1 insertion(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index d3a9ace4c9d1..93b8b2f91484 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -851,7 +851,6 @@ struct skl_plane_wm {
>  		struct skl_wm_level wm0;
>  		struct skl_wm_level trans_wm;
>  	} sagv;
> -	bool is_planar;
>  };
>=20=20
>  struct skl_pipe_wm {
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/d=
rm/i915/display/skl_watermark.c
> index b1f9546b8cda..0f99a3264f05 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -63,7 +63,6 @@ static void skl_sagv_disable(struct intel_display *disp=
lay);
>  struct skl_wm_params {
>  	bool x_tiled, y_tiled;
>  	bool rc_surface;
> -	bool is_planar;
>  	u32 width;
>  	u8 cpp;
>  	u32 plane_pixel_rate;
> @@ -1675,10 +1674,9 @@ skl_compute_wm_params(const struct intel_crtc_stat=
e *crtc_state,
>  	wp->y_tiled =3D modifier !=3D I915_FORMAT_MOD_X_TILED &&
>  		intel_fb_is_tiled_modifier(modifier);
>  	wp->rc_surface =3D intel_fb_is_ccs_modifier(modifier);
> -	wp->is_planar =3D intel_format_info_is_yuv_semiplanar(format, modifier);
>=20=20
>  	wp->width =3D width;
> -	if (color_plane =3D=3D 1 && wp->is_planar)
> +	if (color_plane =3D=3D 1 && intel_format_info_is_yuv_semiplanar(format,=
 modifier))
>  		wp->width /=3D 2;
>=20=20
>  	wp->cpp =3D format->cpp[color_plane];
> @@ -2073,8 +2071,6 @@ static int skl_build_plane_wm_uv(struct intel_crtc_=
state *crtc_state,
>  	struct skl_wm_params wm_params;
>  	int ret;
>=20=20
> -	wm->is_planar =3D true;
> -
>  	/* uv plane watermarks must also be validated for NV12/Planar */
>  	ret =3D skl_compute_plane_wm_params(crtc_state, plane_state,
>  					  &wm_params, 1);

--=20
Jani Nikula, Intel
