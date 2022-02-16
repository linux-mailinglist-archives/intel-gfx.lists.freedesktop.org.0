Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 940464B849B
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Feb 2022 10:39:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0ACC10E711;
	Wed, 16 Feb 2022 09:39:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B2E010E6FA
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Feb 2022 09:39:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645004368; x=1676540368;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=qi3K44FwgD3VcyJDNzPp5Z4EEKbVbXuCOah5vlGweA0=;
 b=dwWbAlObz8G85kbU3kxlf20TV0AjLrirv2LlKeezg1RDboE4l73IDbs6
 7j4pqmMBAXR8DLpwpYayypAzJz89Cdbv9+CwaaYJpaGf25IL5sJKoSLDn
 QXpA6EbG477BEyeJTJRnmlqGCqh5xedzC+0vzorkTzC85hYkDAzNMXjAG
 EGviADiAepAXWiQLDJjBdFjlP4WcVwru15GNvhnDZli8nRvNAXSdHQ0JI
 R77ZWAUqeubP7Gf8AZzliW0FAPgEVMckv7LtQK/IyaERz8G2sjevUklvG
 oqHsOf0qRO1BQ8q1wSvVFhmjhwR6xGr2xoDywHKrNaWstoTxZk05tYYOe w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10259"; a="275143492"
X-IronPort-AV: E=Sophos;i="5.88,373,1635231600"; d="scan'208";a="275143492"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 01:39:27 -0800
X-IronPort-AV: E=Sophos;i="5.88,373,1635231600"; d="scan'208";a="529365674"
Received: from rbilei-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.13.113])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 01:39:26 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220211090629.15555-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220211090629.15555-1-ville.syrjala@linux.intel.com>
 <20220211090629.15555-4-ville.syrjala@linux.intel.com>
Date: Wed, 16 Feb 2022 11:39:21 +0200
Message-ID: <874k4z5ewm.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 3/8] drm/i915: Introduce scaled_planes
 bitmask
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

On Fri, 11 Feb 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Add another plane bitmask, this time tracking which planes are
> scaled. This is going to be useful in ILK watermark computations,
> and skl+ pipe scaler assignments.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_atomic_plane.c  | 5 +++++
>  drivers/gpu/drm/i915/display/intel_display_types.h | 1 +
>  2 files changed, 6 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/=
gpu/drm/i915/display/intel_atomic_plane.c
> index bba2f105b7dd..79720bd5a485 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> @@ -323,6 +323,7 @@ void intel_plane_set_invisible(struct intel_crtc_stat=
e *crtc_state,
>  	struct intel_plane *plane =3D to_intel_plane(plane_state->uapi.plane);
>=20=20
>  	crtc_state->active_planes &=3D ~BIT(plane->id);
> +	crtc_state->scaled_planes &=3D ~BIT(plane->id);
>  	crtc_state->nv12_planes &=3D ~BIT(plane->id);
>  	crtc_state->c8_planes &=3D ~BIT(plane->id);
>  	crtc_state->data_rate[plane->id] =3D 0;
> @@ -536,6 +537,10 @@ int intel_plane_atomic_check_with_state(const struct=
 intel_crtc_state *old_crtc_
>  	if (new_plane_state->uapi.visible)
>  		new_crtc_state->active_planes |=3D BIT(plane->id);
>=20=20
> +	if (new_plane_state->uapi.visible &&
> +	    intel_plane_is_scaled(new_plane_state))
> +		new_crtc_state->scaled_planes |=3D BIT(plane->id);
> +
>  	if (new_plane_state->uapi.visible &&
>  	    intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier))
>  		new_crtc_state->nv12_planes |=3D BIT(plane->id);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index 60e15226a8cb..7a5c1e334449 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1168,6 +1168,7 @@ struct intel_crtc_state {
>=20=20
>  	/* bitmask of actually visible planes (enum plane_id) */
>  	u8 active_planes;
> +	u8 scaled_planes;
>  	u8 nv12_planes;
>  	u8 c8_planes;

--=20
Jani Nikula, Intel Open Source Graphics Center
