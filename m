Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cC9mGIIX1mnwAwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 10:53:22 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B9E1F3B9574
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 10:53:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 102B910E59A;
	Wed,  8 Apr 2026 08:53:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZGl5nf04";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BA8410E59A;
 Wed,  8 Apr 2026 08:53:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775638399; x=1807174399;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=YKhr2LCUHKT9FQ7KsqiOWah+B6ZgGypRdsSX5Jh4UBg=;
 b=ZGl5nf04hdHOQC8baFVjlLDsJF/urVdIq38B7kxIqM3+7nmLfoAMuEPM
 HjFCdhLE9ROJBleiF5NTUIHPlMNAo2GA4Du2xAuiBd/KDq6/Kj5uV7TpV
 D8VQObwMLzuDOwbZHWl3Q9pVTcYemY+t1MOY2stukwE+y74yXvFLfmDrX
 UMuIWg+ElRzGgEy3hv4lFXROhS9hIchlgvsICa27H4cZ3Q7QaZ8pjh/T8
 zjmNAsbLhlzGAZIVyFKkPqNwvSH7AgXdByF6UA5O8UyK1oYY3Jh7QyKhm
 TN2SX//z1qRhmBmd3HQZzqR/SIAH8fQUkjC++ZQAkDf0biY6F6nUo61B3 A==;
X-CSE-ConnectionGUID: mNi5X7YMTtCiHI5UVVEW6w==
X-CSE-MsgGUID: 6FbBhWDHSJW4PJYbFn3iMg==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="76803235"
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="76803235"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 01:53:19 -0700
X-CSE-ConnectionGUID: DKp1O163Q0SwlyqPV/1Vsg==
X-CSE-MsgGUID: dT48V5YYSj+DloLiJtMFoQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="233289948"
Received: from krybak-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.32])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 01:53:16 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 09/12] drm/i915/fb: Use i915_gtt_view_is_*()
In-Reply-To: <20260407155053.32156-10-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260407155053.32156-1-ville.syrjala@linux.intel.com>
 <20260407155053.32156-10-ville.syrjala@linux.intel.com>
Date: Wed, 08 Apr 2026 11:53:14 +0300
Message-ID: <cad8b7bf7594dad1f16a8bd0afd69e8e97efc0a1@intel.com>
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
	NEURAL_HAM(-0.00)[-0.999];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: B9E1F3B9574
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, 07 Apr 2026, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Replace the naked GTT view type checks with the new
> i915_gtt_view_is_*() helpers. This isolates some of
> the code from GTT view implementation details.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_fb.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i9=
15/display/intel_fb.c
> index 52a619088e8e..ceed695d3ad4 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -1284,7 +1284,7 @@ bool intel_plane_uses_fence(const struct intel_plan=
e_state *plane_state)
>=20=20
>  	return DISPLAY_VER(display) < 4 ||
>  		(plane->fbc && !plane_state->no_fbc_reason &&
> -		 plane_state->view.gtt.type =3D=3D I915_GTT_VIEW_NORMAL);
> +		 i915_gtt_view_is_normal(&plane_state->view.gtt));
>  }
>=20=20
>  static int intel_fb_pitch(const struct intel_framebuffer *fb, int color_=
plane, unsigned int rotation)
> @@ -1506,7 +1506,7 @@ static u32 calc_plane_remap_info(const struct intel=
_framebuffer *fb, int color_p
>  			       plane_view_height_tiles(fb, color_plane, dims, y));
>  	}
>=20=20
> -	if (view->gtt.type =3D=3D I915_GTT_VIEW_ROTATED) {
> +	if (i915_gtt_view_is_rotated(&view->gtt)) {
>  		drm_WARN_ON(display->drm, remap_info->linear);
>  		check_array_bounds(display, view->gtt.rotated.plane, color_plane);
>=20=20
> @@ -1531,7 +1531,7 @@ static u32 calc_plane_remap_info(const struct intel=
_framebuffer *fb, int color_p
>  		/* rotate the tile dimensions to match the GTT view */
>  		swap(tile_width, tile_height);
>  	} else {
> -		drm_WARN_ON(display->drm, view->gtt.type !=3D I915_GTT_VIEW_REMAPPED);
> +		drm_WARN_ON(display->drm, !i915_gtt_view_is_remapped(&view->gtt));
>=20=20
>  		check_array_bounds(display, view->gtt.remapped.plane, color_plane);
>=20=20
> @@ -1632,7 +1632,7 @@ static void intel_fb_view_init(struct intel_display=
 *display,
>  	memset(view, 0, sizeof(*view));
>  	view->gtt.type =3D view_type;
>=20=20
> -	if (view_type =3D=3D I915_GTT_VIEW_REMAPPED &&
> +	if (i915_gtt_view_is_remapped(&view->gtt) &&
>  	    (display->platform.alderlake_p || DISPLAY_VER(display) >=3D 14))
>  		view->gtt.remapped.plane_alignment =3D SZ_2M / PAGE_SIZE;
>  }

--=20
Jani Nikula, Intel
