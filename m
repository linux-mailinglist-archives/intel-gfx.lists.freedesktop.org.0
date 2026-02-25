Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KKq1JyDRnmnwXQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 11:38:24 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09FD7195DC7
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 11:38:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F17810E257;
	Wed, 25 Feb 2026 10:38:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mne8wO5T";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FA7810E257;
 Wed, 25 Feb 2026 10:38:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772015899; x=1803551899;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=Jn815aU1dhMcuo/Z4snZLFyOQNRUhoyGjMc6T0bDv0A=;
 b=mne8wO5TIFMEn045UCvm4pP7pzCsKlbp8Uyg3l35v5WVxV2X28/LORQo
 WbbE5QFwuLogK/XprX/Z9pv5b4XC/Dy7mhRwmXeLy6is3yQiKMUpCgXjg
 Ar6MnAwANCEO/QLp8FVLbE9a5tHdlHtQkdCHbAPAO3kq3IMYhRS1d4zH2
 5+Y1BgRNs646QrXY4hk4KYOTht7b/A7TigeywzgfGjC4D7GTkUopvZ0+e
 P0cHcASShyfyJW2Nep5PFu0VIkjBozqQdUYPwBshWpuFyhE5SFGVVET94
 EPNC/paBncCxjg8DUCAvKpbOqTw6Fk06akeKsMjM7WRarKRArLempwIOB w==;
X-CSE-ConnectionGUID: N8hRgT0VS8q69fhwL3PAnQ==
X-CSE-MsgGUID: K8aOO5zVRBuuW/EltckrPQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11711"; a="73119828"
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="73119828"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 02:38:18 -0800
X-CSE-ConnectionGUID: /S8PtpRqRFqML2Stt5xEjg==
X-CSE-MsgGUID: ow/weMVzTB2XQgbqIi1f0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="215305272"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.68])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 02:38:17 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 02/19] drm/i915/overlay: Track current frontbuffer_bits
In-Reply-To: <20260218152806.18885-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260218152806.18885-1-ville.syrjala@linux.intel.com>
 <20260218152806.18885-3-ville.syrjala@linux.intel.com>
Date: Wed, 25 Feb 2026 12:38:13 +0200
Message-ID: <bc1719a455be6d86b6dfd37c573824f2f128625a@intel.com>
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
X-Rspamd-Server: lfdr
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: 09FD7195DC7
X-Rspamd-Action: no action

On Wed, 18 Feb 2026, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Store the current frontbuffer_bits in the overlay data. The
> main benefit here is that we get rid of the 'crtc->pipe'
> usage from intel_overlay_flip_prepare() which will have to
> move to the i915 side of the parent vs. display driver split.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_overlay.c | 19 ++++++++++++-------
>  1 file changed, 12 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/d=
rm/i915/display/intel_overlay.c
> index 33a38d116c90..dd04e75fe3a7 100644
> --- a/drivers/gpu/drm/i915/display/intel_overlay.c
> +++ b/drivers/gpu/drm/i915/display/intel_overlay.c
> @@ -205,6 +205,7 @@ struct intel_overlay {
>  	struct drm_i915_gem_object *reg_bo;
>  	struct overlay_registers __iomem *regs;
>  	u32 flip_addr;
> +	u32 frontbuffer_bits;
>  	/* flip handling */
>  	struct i915_active last_flip;
>  	void (*flip_complete)(struct intel_overlay *ovl);
> @@ -255,7 +256,8 @@ alloc_request(struct intel_overlay *overlay, void (*f=
n)(struct intel_overlay *))
>  }
>=20=20
>  /* overlay needs to be disable in OCMD reg */
> -static int intel_overlay_on(struct intel_overlay *overlay)
> +static int intel_overlay_on(struct intel_overlay *overlay,
> +			    u32 frontbuffer_bits)
>  {
>  	struct intel_display *display =3D overlay->display;
>  	struct i915_request *rq;
> @@ -274,6 +276,7 @@ static int intel_overlay_on(struct intel_overlay *ove=
rlay)
>  	}
>=20=20
>  	overlay->active =3D true;
> +	overlay->frontbuffer_bits =3D frontbuffer_bits;
>=20=20
>  	if (display->platform.i830)
>  		i830_overlay_clock_gating(display, false);
> @@ -293,7 +296,6 @@ static void intel_overlay_flip_prepare(struct intel_o=
verlay *overlay,
>  				       struct i915_vma *vma)
>  {
>  	struct intel_display *display =3D overlay->display;
> -	enum pipe pipe =3D overlay->crtc->pipe;
>  	struct intel_frontbuffer *frontbuffer =3D NULL;
>=20=20
>  	drm_WARN_ON(display->drm, overlay->old_vma);
> @@ -302,7 +304,7 @@ static void intel_overlay_flip_prepare(struct intel_o=
verlay *overlay,
>  		frontbuffer =3D intel_frontbuffer_get(intel_bo_to_drm_bo(vma->obj));
>=20=20
>  	intel_frontbuffer_track(overlay->frontbuffer, frontbuffer,
> -				INTEL_FRONTBUFFER_OVERLAY(pipe));
> +				overlay->frontbuffer_bits);
>=20=20
>  	if (overlay->frontbuffer)
>  		intel_frontbuffer_put(overlay->frontbuffer);
> @@ -364,7 +366,7 @@ static void intel_overlay_release_old_vma(struct inte=
l_overlay *overlay)
>  	if (drm_WARN_ON(display->drm, !vma))
>  		return;
>=20=20
> -	intel_frontbuffer_flip(display, INTEL_FRONTBUFFER_OVERLAY(overlay->crtc=
->pipe));
> +	intel_frontbuffer_flip(display, overlay->frontbuffer_bits);
>=20=20
>  	i915_vma_unpin(vma);
>  	i915_vma_put(vma);
> @@ -382,9 +384,8 @@ static void intel_overlay_off_tail(struct intel_overl=
ay *overlay)
>=20=20
>  	intel_overlay_release_old_vma(overlay);
>=20=20
> -	overlay->crtc->overlay =3D NULL;
> -	overlay->crtc =3D NULL;

The movement of these to intel_overlay_switch_off() seems like an
unrelated change. Maybe mention in the commit message at a minimum.

BR,
Jani.

>  	overlay->active =3D false;
> +	overlay->frontbuffer_bits =3D 0;
>=20=20
>  	if (display->platform.i830)
>  		i830_overlay_clock_gating(display, true);
> @@ -506,6 +507,7 @@ void intel_overlay_reset(struct intel_display *displa=
y)
>  	overlay->old_yscale =3D 0;
>  	overlay->crtc =3D NULL;
>  	overlay->active =3D false;
> +	overlay->frontbuffer_bits =3D 0;
>  }
>=20=20
>  static int packed_depth_bytes(u32 format)
> @@ -836,7 +838,7 @@ static int intel_overlay_do_put_image(struct intel_ov=
erlay *overlay,
>  			OCONF_PIPE_A : OCONF_PIPE_B;
>  		iowrite32(oconfig, &regs->OCONFIG);
>=20=20
> -		ret =3D intel_overlay_on(overlay);
> +		ret =3D intel_overlay_on(overlay, INTEL_FRONTBUFFER_OVERLAY(pipe));
>  		if (ret !=3D 0)
>  			goto out_unpin;
>  	}
> @@ -924,6 +926,9 @@ int intel_overlay_switch_off(struct intel_overlay *ov=
erlay)
>=20=20
>  	iowrite32(0, &overlay->regs->OCMD);
>=20=20
> +	overlay->crtc->overlay =3D NULL;
> +	overlay->crtc =3D NULL;
> +
>  	return intel_overlay_off(overlay);
>  }

--=20
Jani Nikula, Intel
